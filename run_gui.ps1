$execution_provider="cuda"
$execution_threads=8
$temp_frame_quality=0
$output_video_quality=0
$max_memory=""

Set-Location $PSScriptRoot
.\venv\Scripts\activate

$Env:HF_HOME = "./huggingface"

python.exe run.py `
--frame-processor face_swapper face_enhancer `
--execution-provider=$execution_provider `
--execution-threads=$execution_threads `
--temp-frame-quality=$temp_frame_quality `
--output-video-quality=$output_video_quality
