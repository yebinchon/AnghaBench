; ModuleID = '/home/carl/AnghaBench/vlc/modules/visualization/extr_goom.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/visualization/extr_goom.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_17__ = type { i64, i32*, i32, i32, i32, i32, i32, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"goom-width\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"goom-height\00", align 1
@VLC_CODEC_RGB32 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"no suitable vout module\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@MAX_SPEED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"goom-speed\00", align 1
@VLC_TICK_0 = common dso_local global i32 0, align 4
@Thread = common dso_local global i32 0, align 4
@VLC_THREAD_PRIORITY_LOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"cannot launch goom thread\00", align 1
@VLC_CODEC_FL32 = common dso_local global i32 0, align 4
@DoWork = common dso_local global i32 0, align 4
@Flush = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %9, %struct.TYPE_18__** %4, align 8
  %10 = call %struct.TYPE_17__* @calloc(i32 1, i32 80)
  store %struct.TYPE_17__* %10, %struct.TYPE_17__** %5, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 4
  store %struct.TYPE_17__* %10, %struct.TYPE_17__** %12, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %14 = call i32 @var_InheritInteger(%struct.TYPE_18__* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %6, align 4
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %16 = call i32 @var_InheritInteger(%struct.TYPE_18__* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  store i32 %17, i32* %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 3
  store i32 %24, i32* %27, align 4
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 2
  store i32 %24, i32* %30, align 8
  %31 = load i32, i32* @VLC_CODEC_RGB32, align 4
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 6
  store i32 %31, i32* %34, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 5
  store i32 1, i32* %37, align 4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 4
  store i32 1, i32* %40, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 8
  %44 = call i32* @aout_filter_GetVout(%struct.TYPE_18__* %41, %struct.TYPE_13__* %43)
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  store i32* %44, i32** %46, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %1
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %53 = call i32 @msg_Err(%struct.TYPE_18__* %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %55 = call i32 @free(%struct.TYPE_17__* %54)
  %56 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %56, i32* %2, align 4
  br label %143

57:                                               ; preds = %1
  %58 = load i64, i64* @MAX_SPEED, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %60 = call i32 @var_InheritInteger(%struct.TYPE_18__* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %61 = sext i32 %60 to i64
  %62 = sub nsw i64 %58, %61
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %57
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %69, %57
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 3
  %75 = call i32 @vlc_mutex_init(i32* %74)
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 2
  %78 = call i32 @vlc_cond_init(i32* %77)
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 7
  store i64 0, i64* %80, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 6
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @date_Init(i32* %82, i32 %87, i32 1)
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 6
  %91 = load i32, i32* @VLC_TICK_0, align 4
  %92 = call i32 @date_Set(i32* %90, i32 %91)
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = call i32 @aout_FormatNbChannels(%struct.TYPE_14__* %95)
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 4
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 4
  %101 = load i32, i32* @Thread, align 4
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %103 = load i32, i32* @VLC_THREAD_PRIORITY_LOW, align 4
  %104 = call i64 @vlc_clone(i32* %100, i32 %101, %struct.TYPE_17__* %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %72
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %108 = call i32 @msg_Err(%struct.TYPE_18__* %107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 3
  %111 = call i32 @vlc_mutex_destroy(i32* %110)
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 2
  %114 = call i32 @vlc_cond_destroy(i32* %113)
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @vout_Close(i32* %117)
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %120 = call i32 @free(%struct.TYPE_17__* %119)
  %121 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %121, i32* %2, align 4
  br label %143

122:                                              ; preds = %72
  %123 = load i32, i32* @VLC_CODEC_FL32, align 4
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  store i32 %123, i32* %127, align 8
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = bitcast %struct.TYPE_14__* %130 to i8*
  %135 = bitcast %struct.TYPE_14__* %133 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %134, i8* align 8 %135, i64 8, i1 false)
  %136 = load i32, i32* @DoWork, align 4
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* @Flush, align 4
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %122, %106, %51
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local %struct.TYPE_17__* @calloc(i32, i32) #1

declare dso_local i32 @var_InheritInteger(%struct.TYPE_18__*, i8*) #1

declare dso_local i32* @aout_filter_GetVout(%struct.TYPE_18__*, %struct.TYPE_13__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @free(%struct.TYPE_17__*) #1

declare dso_local i32 @vlc_mutex_init(i32*) #1

declare dso_local i32 @vlc_cond_init(i32*) #1

declare dso_local i32 @date_Init(i32*, i32, i32) #1

declare dso_local i32 @date_Set(i32*, i32) #1

declare dso_local i32 @aout_FormatNbChannels(%struct.TYPE_14__*) #1

declare dso_local i64 @vlc_clone(i32*, i32, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @vlc_mutex_destroy(i32*) #1

declare dso_local i32 @vlc_cond_destroy(i32*) #1

declare dso_local i32 @vout_Close(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
