$execution_provider="cuda"
$execution_threads=8
$video_quality=1

Set-Location $PSScriptRoot
.\venv\Scripts\activate

$Env:HF_HOME = "./huggingface"

python.exe run.py `
--frame-processor face_swapper face_enhancer `
--execution-provider=$execution_provider `
--execution-threads=$execution_threads `
--video-quality=$video_quality
