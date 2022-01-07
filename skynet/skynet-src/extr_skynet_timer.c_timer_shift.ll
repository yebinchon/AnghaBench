; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_timer.c_timer_shift.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_timer.c_timer_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer = type { i32 }

@TIME_NEAR = common dso_local global i32 0, align 4
@TIME_NEAR_SHIFT = common dso_local global i32 0, align 4
@TIME_LEVEL_MASK = common dso_local global i32 0, align 4
@TIME_LEVEL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer*)* @timer_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_shift(%struct.timer* %0) #0 {
  %2 = alloca %struct.timer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.timer* %0, %struct.timer** %2, align 8
  %8 = load i32, i32* @TIME_NEAR, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.timer*, %struct.timer** %2, align 8
  %10 = getelementptr inbounds %struct.timer, %struct.timer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.timer*, %struct.timer** %2, align 8
  %17 = call i32 @move_list(%struct.timer* %16, i32 3, i32 0)
  br label %49

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @TIME_NEAR_SHIFT, align 4
  %21 = ashr i32 %19, %20
  store i32 %21, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %39, %18
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = sub nsw i32 %24, 1
  %26 = and i32 %23, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @TIME_LEVEL_MASK, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.timer*, %struct.timer** %2, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @move_list(%struct.timer* %35, i32 %36, i32 %37)
  br label %48

39:                                               ; preds = %28
  %40 = load i32, i32* @TIME_LEVEL_SHIFT, align 4
  %41 = load i32, i32* %3, align 4
  %42 = shl i32 %41, %40
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* @TIME_LEVEL_SHIFT, align 4
  %44 = load i32, i32* %5, align 4
  %45 = ashr i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %22

48:                                               ; preds = %34, %22
  br label %49

49:                                               ; preds = %48, %15
  ret void
}

declare dso_local i32 @move_list(%struct.timer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
