; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_decoder.c_decoder_init.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_decoder.c_decoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decoder = type { %struct.video_buffer* }
%struct.video_buffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decoder_init(%struct.decoder* %0, %struct.video_buffer* %1) #0 {
  %3 = alloca %struct.decoder*, align 8
  %4 = alloca %struct.video_buffer*, align 8
  store %struct.decoder* %0, %struct.decoder** %3, align 8
  store %struct.video_buffer* %1, %struct.video_buffer** %4, align 8
  %5 = load %struct.video_buffer*, %struct.video_buffer** %4, align 8
  %6 = load %struct.decoder*, %struct.decoder** %3, align 8
  %7 = getelementptr inbounds %struct.decoder, %struct.decoder* %6, i32 0, i32 0
  store %struct.video_buffer* %5, %struct.video_buffer** %7, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
