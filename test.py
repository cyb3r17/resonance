import whisper

model = whisper.load_model("turbo")
result = model.transcribe("src/new.mp3")
print(result["text"])