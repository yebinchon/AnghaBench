; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_mediacodec.c_VideoHXXX_OnNewBlock.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_mediacodec.c_VideoHXXX_OnNewBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_14__, %struct.TYPE_19__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__, i64, %struct.TYPE_13__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_13__ = type { %struct.hxxx_helper }
%struct.hxxx_helper = type { %struct.TYPE_16__, %struct.TYPE_15__, i32* (%struct.hxxx_helper*, i32*, i32*)* }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"SPS/PPS changed during playback and video size are different. Restart it !\00", align 1
@DECODE_FLAG_RESTART = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"SPS/PPS changed during playback. Drain it\00", align 1
@DECODE_FLAG_DRAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32**)* @VideoHXXX_OnNewBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VideoHXXX_OnNewBlock(%struct.TYPE_18__* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.hxxx_helper*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32** %1, i32*** %5, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  store %struct.TYPE_19__* %14, %struct.TYPE_19__** %6, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  store %struct.hxxx_helper* %17, %struct.hxxx_helper** %7, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %24

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %23, %22
  %25 = phi i32* [ null, %22 ], [ %8, %23 ]
  store i32* %25, i32** %9, align 8
  %26 = load %struct.hxxx_helper*, %struct.hxxx_helper** %7, align 8
  %27 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %26, i32 0, i32 2
  %28 = load i32* (%struct.hxxx_helper*, i32*, i32*)*, i32* (%struct.hxxx_helper*, i32*, i32*)** %27, align 8
  %29 = load %struct.hxxx_helper*, %struct.hxxx_helper** %7, align 8
  %30 = load i32**, i32*** %5, align 8
  %31 = load i32*, i32** %30, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32* %28(%struct.hxxx_helper* %29, i32* %31, i32* %32)
  %34 = load i32**, i32*** %5, align 8
  store i32* %33, i32** %34, align 8
  %35 = load i32**, i32*** %5, align 8
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %132

39:                                               ; preds = %24
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %128

42:                                               ; preds = %39
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %89 [
    i32 129, label %47
    i32 128, label %65
  ]

47:                                               ; preds = %42
  %48 = load %struct.hxxx_helper*, %struct.hxxx_helper** %7, align 8
  %49 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load %struct.hxxx_helper*, %struct.hxxx_helper** %7, align 8
  %55 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53, %47
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %61 = call i32 @H264SetCSD(%struct.TYPE_18__* %60, i32* %10)
  store i32 %61, i32* %11, align 4
  br label %64

62:                                               ; preds = %53
  %63 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %62, %59
  br label %89

65:                                               ; preds = %42
  %66 = load %struct.hxxx_helper*, %struct.hxxx_helper** %7, align 8
  %67 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %65
  %72 = load %struct.hxxx_helper*, %struct.hxxx_helper** %7, align 8
  %73 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load %struct.hxxx_helper*, %struct.hxxx_helper** %7, align 8
  %79 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %77, %71, %65
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %85 = call i32 @HEVCSetCSD(%struct.TYPE_18__* %84, i32* %10)
  store i32 %85, i32* %11, align 4
  br label %88

86:                                               ; preds = %77
  %87 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %86, %83
  br label %89

89:                                               ; preds = %42, %88, %64
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @VLC_SUCCESS, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32, i32* %11, align 4
  store i32 %94, i32* %3, align 4
  br label %132

95:                                               ; preds = %89
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %95
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %119, label %104

104:                                              ; preds = %98, %95
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %112 = call i32 @msg_Err(%struct.TYPE_18__* %111, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  br label %113

113:                                              ; preds = %110, %104
  %114 = load i32, i32* @DECODE_FLAG_RESTART, align 4
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %127

119:                                              ; preds = %98
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %121 = call i32 @msg_Err(%struct.TYPE_18__* %120, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %122 = load i32, i32* @DECODE_FLAG_DRAIN, align 4
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %119, %113
  br label %128

128:                                              ; preds = %127, %39
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %130 = load i32**, i32*** %5, align 8
  %131 = call i32 @Video_OnNewBlock(%struct.TYPE_18__* %129, i32** %130)
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %128, %93, %38
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @H264SetCSD(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @HEVCSetCSD(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @Video_OnNewBlock(%struct.TYPE_18__*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
