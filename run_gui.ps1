$execution-provider="cuda"
$execution-threads=8
$video-quality=1

Set-Location $PSScriptRoot
.\venv\Scripts\activate

$Env:HF_HOME = "./huggingface"

python.exe run.py `
--frame-processor face_swapper face_enhancer `
--execution-provider=$execution-provider `
--execution-threads=$execution-threads `
--video-quality=$video-quality
