; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_fps_counter.c_check_interval_expired.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_fps_counter.c_check_interval_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fps_counter = type { i64, i64, i64 }

@FPS_COUNTER_INTERVAL_MS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fps_counter*, i64)* @check_interval_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_interval_expired(%struct.fps_counter* %0, i64 %1) #0 {
  %3 = alloca %struct.fps_counter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.fps_counter* %0, %struct.fps_counter** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.fps_counter*, %struct.fps_counter** %3, align 8
  %8 = getelementptr inbounds %struct.fps_counter, %struct.fps_counter* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp slt i64 %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %34

12:                                               ; preds = %2
  %13 = load %struct.fps_counter*, %struct.fps_counter** %3, align 8
  %14 = call i32 @display_fps(%struct.fps_counter* %13)
  %15 = load %struct.fps_counter*, %struct.fps_counter** %3, align 8
  %16 = getelementptr inbounds %struct.fps_counter, %struct.fps_counter* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.fps_counter*, %struct.fps_counter** %3, align 8
  %18 = getelementptr inbounds %struct.fps_counter, %struct.fps_counter* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.fps_counter*, %struct.fps_counter** %3, align 8
  %21 = getelementptr inbounds %struct.fps_counter, %struct.fps_counter* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %19, %22
  %24 = load i64, i64* @FPS_COUNTER_INTERVAL_MS, align 8
  %25 = sdiv i64 %23, %24
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* @FPS_COUNTER_INTERVAL_MS, align 8
  %28 = load i64, i64* %5, align 8
  %29 = mul nsw i64 %27, %28
  %30 = load %struct.fps_counter*, %struct.fps_counter** %3, align 8
  %31 = getelementptr inbounds %struct.fps_counter, %struct.fps_counter* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, %29
  store i64 %33, i64* %31, align 8
  br label %34

34:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @display_fps(%struct.fps_counter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
