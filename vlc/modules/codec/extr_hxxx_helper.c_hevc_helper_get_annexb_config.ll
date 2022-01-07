; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_hxxx_helper.c_hevc_helper_get_annexb_config.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_hxxx_helper.c_hevc_helper_get_annexb_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hxxx_helper = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal* }
%struct.hxxx_helper_nal = type { i32 }

@HEVC_VPS_ID_MAX = common dso_local global i32 0, align 4
@HEVC_SPS_ID_MAX = common dso_local global i32 0, align 4
@HEVC_PPS_ID_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hevc_helper_get_annexb_config(%struct.hxxx_helper* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.hxxx_helper*, align 8
  %4 = alloca [3 x %struct.hxxx_helper_nal*], align 16
  %5 = alloca [3 x i64], align 16
  %6 = alloca [3 x i64], align 16
  store %struct.hxxx_helper* %0, %struct.hxxx_helper** %3, align 8
  %7 = load %struct.hxxx_helper*, %struct.hxxx_helper** %3, align 8
  %8 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %1
  %13 = load %struct.hxxx_helper*, %struct.hxxx_helper** %3, align 8
  %14 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load %struct.hxxx_helper*, %struct.hxxx_helper** %3, align 8
  %20 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %12, %1
  store i32* null, i32** %2, align 8
  br label %72

25:                                               ; preds = %18
  %26 = getelementptr inbounds [3 x %struct.hxxx_helper_nal*], [3 x %struct.hxxx_helper_nal*]* %4, i64 0, i64 0
  %27 = load %struct.hxxx_helper*, %struct.hxxx_helper** %3, align 8
  %28 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 5
  %30 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %29, align 8
  store %struct.hxxx_helper_nal* %30, %struct.hxxx_helper_nal** %26, align 8
  %31 = getelementptr inbounds %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %26, i64 1
  %32 = load %struct.hxxx_helper*, %struct.hxxx_helper** %3, align 8
  %33 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 4
  %35 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %34, align 8
  store %struct.hxxx_helper_nal* %35, %struct.hxxx_helper_nal** %31, align 8
  %36 = getelementptr inbounds %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %31, i64 1
  %37 = load %struct.hxxx_helper*, %struct.hxxx_helper** %3, align 8
  %38 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  %40 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %39, align 8
  store %struct.hxxx_helper_nal* %40, %struct.hxxx_helper_nal** %36, align 8
  %41 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 0
  %42 = load %struct.hxxx_helper*, %struct.hxxx_helper** %3, align 8
  %43 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %41, align 8
  %46 = getelementptr inbounds i64, i64* %41, i64 1
  %47 = load %struct.hxxx_helper*, %struct.hxxx_helper** %3, align 8
  %48 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %46, align 8
  %51 = getelementptr inbounds i64, i64* %46, i64 1
  %52 = load %struct.hxxx_helper*, %struct.hxxx_helper** %3, align 8
  %53 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %51, align 8
  %56 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %57 = load i32, i32* @HEVC_VPS_ID_MAX, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %56, align 8
  %60 = getelementptr inbounds i64, i64* %56, i64 1
  %61 = load i32, i32* @HEVC_SPS_ID_MAX, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %60, align 8
  %64 = getelementptr inbounds i64, i64* %60, i64 1
  %65 = load i32, i32* @HEVC_PPS_ID_MAX, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %64, align 8
  %68 = getelementptr inbounds [3 x %struct.hxxx_helper_nal*], [3 x %struct.hxxx_helper_nal*]* %4, i64 0, i64 0
  %69 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 0
  %70 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %71 = call i32* @hxxx_helper_get_annexb_config(%struct.hxxx_helper_nal** %68, i64* %69, i64* %70, i32 3)
  store i32* %71, i32** %2, align 8
  br label %72

72:                                               ; preds = %25, %24
  %73 = load i32*, i32** %2, align 8
  ret i32* %73
}

declare dso_local i32* @hxxx_helper_get_annexb_config(%struct.hxxx_helper_nal**, i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
