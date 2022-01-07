; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_h264_nal.c_h264_get_level_limits.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_h264_nal.c_h264_get_level_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64, i32 }

@H264_LEVEL_NUMBER_1_1 = common dso_local global i64 0, align 8
@H264_LEVEL_NUMBER_1_B = common dso_local global i64 0, align 8
@h264_levels_limits = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*)* @h264_get_level_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @h264_get_level_limits(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @H264_LEVEL_NUMBER_1_1, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @H264_CONSTRAINT_SET_FLAG(i32 3)
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i64, i64* @H264_LEVEL_NUMBER_1_B, align 8
  store i64 %20, i64* %4, align 8
  br label %21

21:                                               ; preds = %19, %12, %1
  store i64 0, i64* %5, align 8
  br label %22

22:                                               ; preds = %41, %21
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @h264_levels_limits, align 8
  %25 = call i64 @ARRAY_SIZE(%struct.TYPE_6__* %24)
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @h264_levels_limits, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @h264_levels_limits, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i32* %39, i32** %2, align 8
  br label %45

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %5, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %5, align 8
  br label %22

44:                                               ; preds = %22
  store i32* null, i32** %2, align 8
  br label %45

45:                                               ; preds = %44, %35
  %46 = load i32*, i32** %2, align 8
  ret i32* %46
}

declare dso_local i32 @H264_CONSTRAINT_SET_FLAG(i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
