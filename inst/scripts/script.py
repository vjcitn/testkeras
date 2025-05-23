import numpy as np
from tensorflow import keras
from tensorflow.keras.layers import Dense

# Generate dummy data
data = np.random.rand(1000, 10)
labels = np.random.randint(2, size=(1000, 1))

# Define the model
model = keras.Sequential([
    Dense(32, activation='relu', input_shape=(10,)),
    Dense(1, activation='sigmoid')
])

# Compile the model
model.compile(optimizer='adam',
              loss='binary_crossentropy',
              metrics=['accuracy'])

# Train the model
model.fit(data, labels, epochs=10, batch_size=32)

# Evaluate the model
loss, accuracy = model.evaluate(data, labels)
print(f'Loss: {loss:.2f}')
print(f'Accuracy: {accuracy:.2f}')
