; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_video.c_lavc_GetFrame.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_video.c_lavc_GetFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVCodecContext = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32*, i32 }
%struct.TYPE_12__ = type { i32*, i32**, i64*, i32** }

@AV_NUM_DATA_POINTERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.AVCodecContext*, %struct.TYPE_12__*, i32)* @lavc_GetFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lavc_GetFrame(%struct.AVCodecContext* %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.AVCodecContext*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.AVCodecContext* %0, %struct.AVCodecContext** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.AVCodecContext*, %struct.AVCodecContext** %5, align 8
  %14 = getelementptr inbounds %struct.AVCodecContext, %struct.AVCodecContext* %13, i32 0, i32 1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %8, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %9, align 8
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %42, %3
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @AV_NUM_DATA_POINTERS, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %19
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 3
  %26 = load i32**, i32*** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  store i32* null, i32** %29, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 2
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i32**, i32*** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %23
  %43 = load i32, i32* %10, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %19

45:                                               ; preds = %19
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = call i32 @vlc_mutex_lock(i32* %49)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %88

55:                                               ; preds = %45
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %55
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = call i32 @vlc_mutex_unlock(i32* %62)
  %64 = load %struct.AVCodecContext*, %struct.AVCodecContext** %5, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @avcodec_default_get_buffer2(%struct.AVCodecContext* %64, %struct.TYPE_12__* %65, i32 %66)
  store i32 %67, i32* %4, align 4
  br label %117

68:                                               ; preds = %55
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %70 = load %struct.AVCodecContext*, %struct.AVCodecContext** %5, align 8
  %71 = load %struct.AVCodecContext*, %struct.AVCodecContext** %5, align 8
  %72 = getelementptr inbounds %struct.AVCodecContext, %struct.AVCodecContext* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.AVCodecContext*, %struct.AVCodecContext** %5, align 8
  %75 = getelementptr inbounds %struct.AVCodecContext, %struct.AVCodecContext* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @lavc_UpdateVideoFormat(%struct.TYPE_10__* %69, %struct.AVCodecContext* %70, i32 %73, i32 %76, i32* null)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %68
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %81 = call i64 @decoder_UpdateVideoOutput(%struct.TYPE_10__* %80, i32* null)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79, %68
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = call i32 @vlc_mutex_unlock(i32* %85)
  store i32 -1, i32* %4, align 4
  br label %117

87:                                               ; preds = %79
  br label %88

88:                                               ; preds = %87, %45
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %101

93:                                               ; preds = %88
  %94 = load %struct.AVCodecContext*, %struct.AVCodecContext** %5, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %96 = call i32 @lavc_va_GetFrame(%struct.AVCodecContext* %94, %struct.TYPE_12__* %95)
  store i32 %96, i32* %11, align 4
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = call i32 @vlc_mutex_unlock(i32* %98)
  %100 = load i32, i32* %11, align 4
  store i32 %100, i32* %4, align 4
  br label %117

101:                                              ; preds = %88
  %102 = load %struct.AVCodecContext*, %struct.AVCodecContext** %5, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %104 = call i32 @lavc_dr_GetFrame(%struct.AVCodecContext* %102, %struct.TYPE_12__* %103)
  store i32 %104, i32* %12, align 4
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = call i32 @vlc_mutex_unlock(i32* %106)
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %101
  %111 = load %struct.AVCodecContext*, %struct.AVCodecContext** %5, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @avcodec_default_get_buffer2(%struct.AVCodecContext* %111, %struct.TYPE_12__* %112, i32 %113)
  store i32 %114, i32* %12, align 4
  br label %115

115:                                              ; preds = %110, %101
  %116 = load i32, i32* %12, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %115, %93, %83, %60
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @avcodec_default_get_buffer2(%struct.AVCodecContext*, %struct.TYPE_12__*, i32) #1

declare dso_local i64 @lavc_UpdateVideoFormat(%struct.TYPE_10__*, %struct.AVCodecContext*, i32, i32, i32*) #1

declare dso_local i64 @decoder_UpdateVideoOutput(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @lavc_va_GetFrame(%struct.AVCodecContext*, %struct.TYPE_12__*) #1

declare dso_local i32 @lavc_dr_GetFrame(%struct.AVCodecContext*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
