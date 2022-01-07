; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_hxxx_helper.c_h264_helper_get_annexb_config.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_hxxx_helper.c_h264_helper_get_annexb_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hxxx_helper = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal* }
%struct.hxxx_helper_nal = type { i32 }

@H264_SPS_ID_MAX = common dso_local global i32 0, align 4
@H264_PPS_ID_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @h264_helper_get_annexb_config(%struct.hxxx_helper* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.hxxx_helper*, align 8
  %4 = alloca [2 x %struct.hxxx_helper_nal*], align 16
  %5 = alloca [2 x i64], align 16
  %6 = alloca [2 x i64], align 16
  store %struct.hxxx_helper* %0, %struct.hxxx_helper** %3, align 8
  %7 = load %struct.hxxx_helper*, %struct.hxxx_helper** %3, align 8
  %8 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.hxxx_helper*, %struct.hxxx_helper** %3, align 8
  %14 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %1
  store i32* null, i32** %2, align 8
  br label %52

19:                                               ; preds = %12
  %20 = getelementptr inbounds [2 x %struct.hxxx_helper_nal*], [2 x %struct.hxxx_helper_nal*]* %4, i64 0, i64 0
  %21 = load %struct.hxxx_helper*, %struct.hxxx_helper** %3, align 8
  %22 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %23, align 8
  store %struct.hxxx_helper_nal* %24, %struct.hxxx_helper_nal** %20, align 8
  %25 = getelementptr inbounds %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %20, i64 1
  %26 = load %struct.hxxx_helper*, %struct.hxxx_helper** %3, align 8
  %27 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %28, align 8
  store %struct.hxxx_helper_nal* %29, %struct.hxxx_helper_nal** %25, align 8
  %30 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %31 = load %struct.hxxx_helper*, %struct.hxxx_helper** %3, align 8
  %32 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %30, align 8
  %35 = getelementptr inbounds i64, i64* %30, i64 1
  %36 = load %struct.hxxx_helper*, %struct.hxxx_helper** %3, align 8
  %37 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %35, align 8
  %40 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %41 = load i32, i32* @H264_SPS_ID_MAX, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %40, align 8
  %44 = getelementptr inbounds i64, i64* %40, i64 1
  %45 = load i32, i32* @H264_PPS_ID_MAX, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %44, align 8
  %48 = getelementptr inbounds [2 x %struct.hxxx_helper_nal*], [2 x %struct.hxxx_helper_nal*]* %4, i64 0, i64 0
  %49 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %50 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %51 = call i32* @hxxx_helper_get_annexb_config(%struct.hxxx_helper_nal** %48, i64* %49, i64* %50, i32 2)
  store i32* %51, i32** %2, align 8
  br label %52

52:                                               ; preds = %19, %18
  %53 = load i32*, i32** %2, align 8
  ret i32* %53
}

declare dso_local i32* @hxxx_helper_get_annexb_config(%struct.hxxx_helper_nal**, i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
