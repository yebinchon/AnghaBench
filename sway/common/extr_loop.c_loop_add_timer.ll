; ModuleID = '/home/carl/AnghaBench/sway/common/extr_loop.c_loop_add_timer.c'
source_filename = "/home/carl/AnghaBench/sway/common/extr_loop.c_loop_add_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_timer = type { void (i8*)*, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.loop = type { i32 }

@SWAY_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Unable to allocate memory for timer\00", align 1
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.loop_timer* @loop_add_timer(%struct.loop* %0, i32 %1, void (i8*)* %2, i8* %3) #0 {
  %5 = alloca %struct.loop_timer*, align 8
  %6 = alloca %struct.loop*, align 8
  %7 = alloca i32, align 4
  %8 = alloca void (i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.loop_timer*, align 8
  %11 = alloca i64, align 8
  store %struct.loop* %0, %struct.loop** %6, align 8
  store i32 %1, i32* %7, align 4
  store void (i8*)* %2, void (i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = call %struct.loop_timer* @calloc(i32 1, i32 32)
  store %struct.loop_timer* %12, %struct.loop_timer** %10, align 8
  %13 = load %struct.loop_timer*, %struct.loop_timer** %10, align 8
  %14 = icmp ne %struct.loop_timer* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @SWAY_ERROR, align 4
  %17 = call i32 @sway_log(i32 %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store %struct.loop_timer* null, %struct.loop_timer** %5, align 8
  br label %69

18:                                               ; preds = %4
  %19 = load void (i8*)*, void (i8*)** %8, align 8
  %20 = load %struct.loop_timer*, %struct.loop_timer** %10, align 8
  %21 = getelementptr inbounds %struct.loop_timer, %struct.loop_timer* %20, i32 0, i32 0
  store void (i8*)* %19, void (i8*)** %21, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load %struct.loop_timer*, %struct.loop_timer** %10, align 8
  %24 = getelementptr inbounds %struct.loop_timer, %struct.loop_timer* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %26 = load %struct.loop_timer*, %struct.loop_timer** %10, align 8
  %27 = getelementptr inbounds %struct.loop_timer, %struct.loop_timer* %26, i32 0, i32 1
  %28 = call i32 @clock_gettime(i32 %25, %struct.TYPE_2__* %27)
  %29 = load i32, i32* %7, align 4
  %30 = sdiv i32 %29, 1000
  %31 = sext i32 %30 to i64
  %32 = load %struct.loop_timer*, %struct.loop_timer** %10, align 8
  %33 = getelementptr inbounds %struct.loop_timer, %struct.loop_timer* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, %31
  store i64 %36, i64* %34, align 8
  %37 = load i32, i32* %7, align 4
  %38 = srem i32 %37, 1000
  %39 = mul nsw i32 %38, 1000000
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %11, align 8
  %41 = load %struct.loop_timer*, %struct.loop_timer** %10, align 8
  %42 = getelementptr inbounds %struct.loop_timer, %struct.loop_timer* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %11, align 8
  %46 = add nsw i64 %44, %45
  %47 = icmp sge i64 %46, 1000000000
  br i1 %47, label %48, label %56

48:                                               ; preds = %18
  %49 = load %struct.loop_timer*, %struct.loop_timer** %10, align 8
  %50 = getelementptr inbounds %struct.loop_timer, %struct.loop_timer* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %51, align 8
  %54 = load i64, i64* %11, align 8
  %55 = sub nsw i64 %54, 1000000000
  store i64 %55, i64* %11, align 8
  br label %56

56:                                               ; preds = %48, %18
  %57 = load i64, i64* %11, align 8
  %58 = load %struct.loop_timer*, %struct.loop_timer** %10, align 8
  %59 = getelementptr inbounds %struct.loop_timer, %struct.loop_timer* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, %57
  store i64 %62, i64* %60, align 8
  %63 = load %struct.loop*, %struct.loop** %6, align 8
  %64 = getelementptr inbounds %struct.loop, %struct.loop* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.loop_timer*, %struct.loop_timer** %10, align 8
  %67 = call i32 @list_add(i32 %65, %struct.loop_timer* %66)
  %68 = load %struct.loop_timer*, %struct.loop_timer** %10, align 8
  store %struct.loop_timer* %68, %struct.loop_timer** %5, align 8
  br label %69

69:                                               ; preds = %56, %15
  %70 = load %struct.loop_timer*, %struct.loop_timer** %5, align 8
  ret %struct.loop_timer* %70
}

declare dso_local %struct.loop_timer* @calloc(i32, i32) #1

declare dso_local i32 @sway_log(i32, i8*) #1

declare dso_local i32 @clock_gettime(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @list_add(i32, %struct.loop_timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
