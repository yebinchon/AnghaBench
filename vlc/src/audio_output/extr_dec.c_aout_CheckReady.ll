; ModuleID = '/home/carl/AnghaBench/vlc/src/audio_output/extr_dec.c_aout_CheckReady.c'
source_filename = "/home/carl/AnghaBench/vlc/src/audio_output/extr_dec.c_aout_CheckReady.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__, %struct.TYPE_6__, i32*, i32, %struct.TYPE_8__, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64 }

@AOUT_DEC_SUCCESS = common dso_local global i32 0, align 4
@memory_order_acquire = common dso_local global i32 0, align 4
@AOUT_RESTART_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"restarting output...\00", align 1
@AOUT_FILTERS_CFG_INIT = common dso_local global i32 0, align 4
@AOUT_DEC_CHANGED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"restarting filters...\00", align 1
@AOUT_RESAMPLING_NONE = common dso_local global i32 0, align 4
@AOUT_DEC_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @aout_CheckReady to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aout_CheckReady(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call %struct.TYPE_7__* @aout_owner(i32* %6)
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %3, align 8
  %8 = load i32, i32* @AOUT_DEC_SUCCESS, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 7
  %11 = load i32, i32* @memory_order_acquire, align 4
  %12 = call i32 @atomic_exchange_explicit(i32* %10, i32 0, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %128

16:                                               ; preds = %1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load i32*, i32** %2, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @aout_FiltersDelete(i32* %23, i32* %26)
  br label %28

28:                                               ; preds = %22, %16
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @AOUT_RESTART_OUTPUT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %80

33:                                               ; preds = %28
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @msg_Dbg(i32* %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @aout_OutputDelete(i32* %42)
  br label %44

44:                                               ; preds = %41, %33
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 6
  %51 = bitcast %struct.TYPE_8__* %48 to i8*
  %52 = bitcast %struct.TYPE_8__* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 8, i1 false)
  %53 = bitcast %struct.TYPE_8__* %46 to i8*
  %54 = bitcast %struct.TYPE_8__* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 8, i1 false)
  %55 = load i32, i32* @AOUT_FILTERS_CFG_INIT, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load i32*, i32** %2, align 8
  %59 = call i64 @aout_OutputNew(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %44
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %61, %44
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @aout_volume_SetFormat(i32 %68, i64 %72)
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @AOUT_RESTART_OUTPUT, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %65
  %78 = load i32, i32* @AOUT_DEC_CHANGED, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %65
  br label %80

80:                                               ; preds = %79, %28
  %81 = load i32*, i32** %2, align 8
  %82 = call i32 @msg_Dbg(i32* %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* @AOUT_RESAMPLING_NONE, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  store i32 %83, i32* %86, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %127

92:                                               ; preds = %80
  %93 = load i32*, i32** %2, align 8
  %94 = call i32 @VLC_OBJECT(i32* %93)
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 3
  %105 = call i32* @aout_FiltersNewWithClock(i32 %94, i32 %98, %struct.TYPE_8__* %100, %struct.TYPE_8__* %102, i32* %104)
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  store i32* %105, i32** %107, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %118

112:                                              ; preds = %92
  %113 = load i32*, i32** %2, align 8
  %114 = call i32 @aout_OutputDelete(i32* %113)
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  store i64 0, i64* %117, align 8
  br label %118

118:                                              ; preds = %112, %92
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @aout_FiltersSetClockDelay(i32* %121, i32 %125)
  br label %127

127:                                              ; preds = %118, %80
  br label %128

128:                                              ; preds = %127, %1
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = load i32, i32* %4, align 4
  br label %138

136:                                              ; preds = %128
  %137 = load i32, i32* @AOUT_DEC_FAILED, align 4
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i32 [ %135, %134 ], [ %137, %136 ]
  ret i32 %139
}

declare dso_local %struct.TYPE_7__* @aout_owner(i32*) #1

declare dso_local i32 @atomic_exchange_explicit(i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @aout_FiltersDelete(i32*, i32*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*) #1

declare dso_local i32 @aout_OutputDelete(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @aout_OutputNew(i32*) #1

declare dso_local i32 @aout_volume_SetFormat(i32, i64) #1

declare dso_local i32* @aout_FiltersNewWithClock(i32, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @VLC_OBJECT(i32*) #1

declare dso_local i32 @aout_FiltersSetClockDelay(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
