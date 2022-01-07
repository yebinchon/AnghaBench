; ModuleID = '/home/carl/AnghaBench/vlc/src/test/extr_timer.c_callback.c'
source_filename = "/home/carl/AnghaBench/vlc/src/test/extr_timer.c_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_data = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.timer_data*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.timer_data*
  store %struct.timer_data* %5, %struct.timer_data** %3, align 8
  %6 = load %struct.timer_data*, %struct.timer_data** %3, align 8
  %7 = getelementptr inbounds %struct.timer_data, %struct.timer_data* %6, i32 0, i32 0
  %8 = call i32 @vlc_mutex_lock(i32* %7)
  %9 = load %struct.timer_data*, %struct.timer_data** %3, align 8
  %10 = getelementptr inbounds %struct.timer_data, %struct.timer_data* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @vlc_timer_getoverrun(i32 %11)
  %13 = add nsw i64 1, %12
  %14 = load %struct.timer_data*, %struct.timer_data** %3, align 8
  %15 = getelementptr inbounds %struct.timer_data, %struct.timer_data* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, %13
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %15, align 4
  %20 = load %struct.timer_data*, %struct.timer_data** %3, align 8
  %21 = getelementptr inbounds %struct.timer_data, %struct.timer_data* %20, i32 0, i32 1
  %22 = call i32 @vlc_cond_signal(i32* %21)
  %23 = load %struct.timer_data*, %struct.timer_data** %3, align 8
  %24 = getelementptr inbounds %struct.timer_data, %struct.timer_data* %23, i32 0, i32 0
  %25 = call i32 @vlc_mutex_unlock(i32* %24)
  ret void
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i64 @vlc_timer_getoverrun(i32) #1

declare dso_local i32 @vlc_cond_signal(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
