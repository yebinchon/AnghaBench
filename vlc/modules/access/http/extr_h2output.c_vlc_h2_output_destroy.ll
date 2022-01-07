; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2output.c_vlc_h2_output_destroy.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2output.c_vlc_h2_output_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_output = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlc_h2_output_destroy(%struct.vlc_h2_output* %0) #0 {
  %2 = alloca %struct.vlc_h2_output*, align 8
  store %struct.vlc_h2_output* %0, %struct.vlc_h2_output** %2, align 8
  %3 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %4 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %3, i32 0, i32 1
  %5 = call i32 @vlc_mutex_lock(i32* %4)
  %6 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %7 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %6, i32 0, i32 0
  store i32 1, i32* %7, align 4
  %8 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %9 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %8, i32 0, i32 2
  %10 = call i32 @vlc_cond_signal(i32* %9)
  %11 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %12 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %11, i32 0, i32 1
  %13 = call i32 @vlc_mutex_unlock(i32* %12)
  %14 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %15 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @vlc_cancel(i32 %16)
  %18 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %19 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @vlc_join(i32 %20, i32* null)
  %22 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %23 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %22, i32 0, i32 2
  %24 = call i32 @vlc_cond_destroy(i32* %23)
  %25 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %26 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %25, i32 0, i32 1
  %27 = call i32 @vlc_mutex_destroy(i32* %26)
  %28 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %29 = call i32 @vlc_h2_output_flush_unlocked(%struct.vlc_h2_output* %28)
  %30 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %2, align 8
  %31 = call i32 @free(%struct.vlc_h2_output* %30)
  ret void
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_cond_signal(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @vlc_cancel(i32) #1

declare dso_local i32 @vlc_join(i32, i32*) #1

declare dso_local i32 @vlc_cond_destroy(i32*) #1

declare dso_local i32 @vlc_mutex_destroy(i32*) #1

declare dso_local i32 @vlc_h2_output_flush_unlocked(%struct.vlc_h2_output*) #1

declare dso_local i32 @free(%struct.vlc_h2_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
