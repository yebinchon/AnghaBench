; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2output_test.c_frame.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2output_test.c_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_frame = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vlc_h2_frame* (i8)* @frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vlc_h2_frame* @frame(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.vlc_h2_frame*, align 8
  store i8 %0, i8* %2, align 1
  %4 = call %struct.vlc_h2_frame* @vlc_h2_frame_data(i32 1, i8* %2, i32 1, i32 0)
  store %struct.vlc_h2_frame* %4, %struct.vlc_h2_frame** %3, align 8
  %5 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %3, align 8
  %6 = icmp ne %struct.vlc_h2_frame* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %3, align 8
  ret %struct.vlc_h2_frame* %9
}

declare dso_local %struct.vlc_h2_frame* @vlc_h2_frame_data(i32, i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
