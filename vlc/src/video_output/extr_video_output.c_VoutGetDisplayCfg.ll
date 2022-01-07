; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_video_output.c_VoutGetDisplayCfg.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_video_output.c_VoutGetDisplayCfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_12__ = type { i8*, i8* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"autoscale\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"monitor-par\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"zoom\00", align 1
@VLC_VIDEO_ALIGN_CENTER = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"align\00", align 1
@VOUT_ALIGN_LEFT = common dso_local global i32 0, align 4
@VLC_VIDEO_ALIGN_LEFT = common dso_local global i8* null, align 8
@VOUT_ALIGN_RIGHT = common dso_local global i32 0, align 4
@VLC_VIDEO_ALIGN_RIGHT = common dso_local global i8* null, align 8
@VOUT_ALIGN_TOP = common dso_local global i32 0, align 4
@VLC_VIDEO_ALIGN_TOP = common dso_local global i8* null, align 8
@VOUT_ALIGN_BOTTOM = common dso_local global i32 0, align 4
@VLC_VIDEO_ALIGN_BOTTOM = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_14__*, %struct.TYPE_13__*)* @VoutGetDisplayCfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @VoutGetDisplayCfg(i32* %0, %struct.TYPE_14__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %6, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @var_GetInteger(i32* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %7, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @var_GetInteger(i32* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  br label %28

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %8, align 4
  br label %38

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ 0, %37 ]
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @var_GetBool(i32* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = call i64 @var_InheritURational(i32* %47, i32* %9, i32* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %38
  %51 = load i32, i32* %9, align 4
  %52 = icmp ule i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %10, align 4
  %55 = icmp ule i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53, %50, %38
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %57

57:                                               ; preds = %56, %53
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  store i32 %63, i32* %67, align 4
  store i32 1000, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @var_GetFloat(i32* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %71 = mul i32 %68, %70
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @vlc_ureduce(i32* %12, i32* %11, i32 %72, i32 %73, i32 0)
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  store i32 %79, i32* %82, align 4
  %83 = load i8*, i8** @VLC_VIDEO_ALIGN_CENTER, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  store i8* %83, i8** %86, align 8
  %87 = load i8*, i8** @VLC_VIDEO_ALIGN_CENTER, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  store i8* %87, i8** %90, align 8
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @var_GetInteger(i32* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @VOUT_ALIGN_LEFT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %57
  %98 = load i8*, i8** @VLC_VIDEO_ALIGN_LEFT, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 1
  store i8* %98, i8** %101, align 8
  br label %113

102:                                              ; preds = %57
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* @VOUT_ALIGN_RIGHT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load i8*, i8** @VLC_VIDEO_ALIGN_RIGHT, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  store i8* %108, i8** %111, align 8
  br label %112

112:                                              ; preds = %107, %102
  br label %113

113:                                              ; preds = %112, %97
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* @VOUT_ALIGN_TOP, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load i8*, i8** @VLC_VIDEO_ALIGN_TOP, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  store i8* %119, i8** %122, align 8
  br label %134

123:                                              ; preds = %113
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* @VOUT_ALIGN_BOTTOM, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load i8*, i8** @VLC_VIDEO_ALIGN_BOTTOM, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  store i8* %129, i8** %132, align 8
  br label %133

133:                                              ; preds = %128, %123
  br label %134

134:                                              ; preds = %133, %118
  ret void
}

declare dso_local i32 @var_GetInteger(i32*, i8*) #1

declare dso_local i32 @var_GetBool(i32*, i8*) #1

declare dso_local i64 @var_InheritURational(i32*, i32*, i32*, i8*) #1

declare dso_local i32 @var_GetFloat(i32*, i8*) #1

declare dso_local i32 @vlc_ureduce(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
