; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_directx_va.c_profile_supported.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_directx_va.c_profile_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@AV_CODEC_ID_H264 = common dso_local global i64 0, align 8
@AV_CODEC_ID_HEVC = common dso_local global i64 0, align 8
@FF_PROFILE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_11__*)* @profile_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @profile_supported(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %85

18:                                               ; preds = %3
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  br label %31

27:                                               ; preds = %18
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i32 [ %26, %23 ], [ %30, %27 ]
  store i32 %32, i32* %8, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AV_CODEC_ID_H264, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = call i64 @h264_get_profile_level(%struct.TYPE_9__* %39, i32* %9, i32* null, i32* null)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %42, %38
  br label %45

45:                                               ; preds = %44, %31
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @AV_CODEC_ID_HEVC, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = call i64 @hevc_get_profile_level(%struct.TYPE_9__* %52, i32* %10, i32* null, i32* null)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %55, %51
  br label %58

58:                                               ; preds = %57, %45
  store i32 0, i32* %11, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp sle i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 1, i32* %11, align 4
  br label %83

62:                                               ; preds = %58
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32* %66, i32** %12, align 8
  br label %67

67:                                               ; preds = %79, %62
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @FF_PROFILE_UNKNOWN, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %67
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 1, i32* %11, align 4
  br label %82

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78
  %80 = load i32*, i32** %12, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %12, align 8
  br label %67

82:                                               ; preds = %77, %67
  br label %83

83:                                               ; preds = %82, %61
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %83, %17
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i64 @h264_get_profile_level(%struct.TYPE_9__*, i32*, i32*, i32*) #1

declare dso_local i64 @hevc_get_profile_level(%struct.TYPE_9__*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
