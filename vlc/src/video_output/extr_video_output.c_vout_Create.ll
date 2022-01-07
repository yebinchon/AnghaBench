; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_video_output.c_vout_Create.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_video_output.c_vout_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i32, i32, %struct.TYPE_30__, i32, i32, i32, i32*, i32*, i32, i32*, %struct.TYPE_29__, i8*, %struct.TYPE_28__, i32, i32, i32, %struct.TYPE_27__, %struct.TYPE_24__ }
%struct.TYPE_30__ = type { i32* }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { i8*, i8*, i8* }
%struct.TYPE_27__ = type { %struct.TYPE_26__, %struct.TYPE_25__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i64, i64 }
%struct.TYPE_24__ = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"video-splitter\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"window\00", align 1
@VLC_VAR_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"wdummy\00", align 1
@VOUT_CROP_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"spu\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"osd\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"video-title-show\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"video-title-timeout\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"video-title-position\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"drop-late-frames\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"video-wallpaper\00", align 1
@VOUT_WINDOW_STATE_BELOW = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"video-on-top\00", align 1
@VOUT_WINDOW_STATE_ABOVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_31__* @vout_Create(i32* %0) #0 {
  %2 = alloca %struct.TYPE_31__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_31__*, align 8
  %5 = alloca %struct.TYPE_32__*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call %struct.TYPE_31__* @vout_CreateCommon(i32* %6)
  store %struct.TYPE_31__* %7, %struct.TYPE_31__** %4, align 8
  %8 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %9 = icmp ne %struct.TYPE_31__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %2, align 8
  br label %179

11:                                               ; preds = %1
  %12 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  store %struct.TYPE_32__* %14, %struct.TYPE_32__** %5, align 8
  %15 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %18 = call i32 @vout_IntfInit(%struct.TYPE_31__* %17)
  %19 = call i64 @config_GetType(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %23 = call i32* @var_InheritString(%struct.TYPE_31__* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %25

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi i32* [ %23, %21 ], [ null, %24 ]
  %27 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %27, i32 0, i32 6
  store i32* %26, i32** %28, align 8
  %29 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %29, i32 0, i32 6
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %35 = load i32, i32* @VLC_VAR_STRING, align 4
  %36 = call i32 @var_Create(%struct.TYPE_31__* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %38 = call i32 @var_SetString(%struct.TYPE_31__* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %33, %25
  %40 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %40, i32 0, i32 17
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %43, i32 0, i32 16
  %45 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %47, i32 0, i32 16
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* @VOUT_CROP_NONE, align 4
  %52 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %52, i32 0, i32 16
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 8
  %56 = call i32 (...) @vout_snapshot_New()
  %57 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %57, i32 0, i32 15
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %59, i32 0, i32 14
  %61 = call i32 @vout_statistic_Init(i32* %60)
  %62 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %63 = call i8* @var_InheritBool(%struct.TYPE_31__* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %64 = icmp ne i8* %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %39
  %66 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %67 = call i8* @var_InheritBool(%struct.TYPE_31__* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %65, %39
  %70 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %71 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %72 = call i32* @spu_Create(%struct.TYPE_31__* %70, %struct.TYPE_31__* %71)
  br label %74

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73, %69
  %75 = phi i32* [ %72, %69 ], [ null, %73 ]
  %76 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %76, i32 0, i32 7
  store i32* %75, i32** %77, align 8
  %78 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %78, i32 0, i32 13
  %80 = call i32 @vout_control_Init(i32* %79)
  %81 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %82 = call i8* @var_InheritBool(%struct.TYPE_31__* %81, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %83 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %83, i32 0, i32 12
  %85 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %84, i32 0, i32 2
  store i8* %82, i8** %85, align 8
  %86 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %87 = call i8* @var_InheritInteger(%struct.TYPE_31__* %86, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %88 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %88, i32 0, i32 12
  %90 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %89, i32 0, i32 1
  store i8* %87, i8** %90, align 8
  %91 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %92 = call i8* @var_InheritInteger(%struct.TYPE_31__* %91, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %93 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %93, i32 0, i32 12
  %95 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %94, i32 0, i32 0
  store i8* %92, i8** %95, align 8
  %96 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %97 = call i32 @vout_InitInterlacingSupport(%struct.TYPE_31__* %96)
  %98 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %99 = call i8* @var_InheritBool(%struct.TYPE_31__* %98, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %100 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %100, i32 0, i32 11
  store i8* %99, i8** %101, align 8
  %102 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %102, i32 0, i32 10
  %104 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %103, i32 0, i32 0
  %105 = call i32 @vlc_mutex_init(i32* %104)
  %106 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %106, i32 0, i32 9
  store i32* null, i32** %107, align 8
  %108 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %108, i32 0, i32 8
  %110 = call i32 @vlc_mutex_init(i32* %109)
  %111 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %112 = call i32* @vout_display_window_New(%struct.TYPE_31__* %111)
  %113 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %114, i32 0, i32 0
  store i32* %112, i32** %115, align 8
  %116 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %134

121:                                              ; preds = %74
  %122 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %122, i32 0, i32 7
  %124 = load i32*, i32** %123, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %127, i32 0, i32 7
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @spu_Destroy(i32* %129)
  br label %131

131:                                              ; preds = %126, %121
  %132 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %133 = call i32 @vlc_object_delete(%struct.TYPE_31__* %132)
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %2, align 8
  br label %179

134:                                              ; preds = %74
  %135 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %135, i32 0, i32 6
  %137 = load i32*, i32** %136, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %141 = call i32 @var_Destroy(%struct.TYPE_31__* %140, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %134
  %143 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %143, i32 0, i32 1
  store i32 0, i32* %144, align 4
  %145 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %145, i32 0, i32 5
  %147 = call i32 @vlc_mutex_init(i32* %146)
  %148 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %148, i32 0, i32 4
  %150 = call i32 @VLC_TICK_FROM_MS(i32 10)
  %151 = call i32 @vout_chrono_Init(i32* %149, i32 5, i32 %150)
  %152 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %152, i32 0, i32 3
  %154 = call i32 @atomic_init(i32* %153, i32 0)
  %155 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %156 = call i8* @var_InheritBool(%struct.TYPE_31__* %155, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %165

158:                                              ; preds = %142
  %159 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* @VOUT_WINDOW_STATE_BELOW, align 4
  %164 = call i32 @vout_window_SetState(i32* %162, i32 %163)
  br label %177

165:                                              ; preds = %142
  %166 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %167 = call i8* @var_InheritBool(%struct.TYPE_31__* %166, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %176

169:                                              ; preds = %165
  %170 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* @VOUT_WINDOW_STATE_ABOVE, align 4
  %175 = call i32 @vout_window_SetState(i32* %173, i32 %174)
  br label %176

176:                                              ; preds = %169, %165
  br label %177

177:                                              ; preds = %176, %158
  %178 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  store %struct.TYPE_31__* %178, %struct.TYPE_31__** %2, align 8
  br label %179

179:                                              ; preds = %177, %131, %10
  %180 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  ret %struct.TYPE_31__* %180
}

declare dso_local %struct.TYPE_31__* @vout_CreateCommon(i32*) #1

declare dso_local i32 @vout_IntfInit(%struct.TYPE_31__*) #1

declare dso_local i64 @config_GetType(i8*) #1

declare dso_local i32* @var_InheritString(%struct.TYPE_31__*, i8*) #1

declare dso_local i32 @var_Create(%struct.TYPE_31__*, i8*, i32) #1

declare dso_local i32 @var_SetString(%struct.TYPE_31__*, i8*, i8*) #1

declare dso_local i32 @vout_snapshot_New(...) #1

declare dso_local i32 @vout_statistic_Init(i32*) #1

declare dso_local i8* @var_InheritBool(%struct.TYPE_31__*, i8*) #1

declare dso_local i32* @spu_Create(%struct.TYPE_31__*, %struct.TYPE_31__*) #1

declare dso_local i32 @vout_control_Init(i32*) #1

declare dso_local i8* @var_InheritInteger(%struct.TYPE_31__*, i8*) #1

declare dso_local i32 @vout_InitInterlacingSupport(%struct.TYPE_31__*) #1

declare dso_local i32 @vlc_mutex_init(i32*) #1

declare dso_local i32* @vout_display_window_New(%struct.TYPE_31__*) #1

declare dso_local i32 @spu_Destroy(i32*) #1

declare dso_local i32 @vlc_object_delete(%struct.TYPE_31__*) #1

declare dso_local i32 @var_Destroy(%struct.TYPE_31__*, i8*) #1

declare dso_local i32 @vout_chrono_Init(i32*, i32, i32) #1

declare dso_local i32 @VLC_TICK_FROM_MS(i32) #1

declare dso_local i32 @atomic_init(i32*, i32) #1

declare dso_local i32 @vout_window_SetState(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
