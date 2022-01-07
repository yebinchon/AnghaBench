; ModuleID = '/home/carl/AnghaBench/vlc/src/os2/extr_thread.c_vlc_cancel_self.c'
source_filename = "/home/carl/AnghaBench/vlc/src/os2/extr_thread.c_vlc_cancel_self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_thread = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlc_thread*)* @vlc_cancel_self to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_cancel_self(%struct.vlc_thread* %0) #0 {
  %2 = alloca %struct.vlc_thread*, align 8
  %3 = alloca %struct.vlc_thread*, align 8
  store %struct.vlc_thread* %0, %struct.vlc_thread** %2, align 8
  %4 = load %struct.vlc_thread*, %struct.vlc_thread** %2, align 8
  store %struct.vlc_thread* %4, %struct.vlc_thread** %3, align 8
  %5 = load %struct.vlc_thread*, %struct.vlc_thread** %3, align 8
  %6 = icmp ne %struct.vlc_thread* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i64 @likely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.vlc_thread*, %struct.vlc_thread** %3, align 8
  %12 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  br label %13

13:                                               ; preds = %10, %1
  ret void
}

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
