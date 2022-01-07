; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_pulse.c_stream_read_cb.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_pulse.c_stream_read_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32, i32*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"cannot peek stream\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"cannot determine latency\00", align 1
@BLOCK_FLAG_DISCONTINUITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i8*)* @stream_read_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stream_read_cb(i32* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %7, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %8, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = udiv i64 %20, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %10, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = call i64 @pa_stream_peek(i32* %26, i8** %9, i64* %5)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %3
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @vlc_pa_error(%struct.TYPE_7__* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %126

35:                                               ; preds = %3
  %36 = call i32 (...) @vlc_tick_now()
  store i32 %36, i32* %11, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = call i64 @pa_stream_get_latency(i32* %37, i64* %12, i32* %13)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @vlc_pa_error(%struct.TYPE_7__* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %126

46:                                               ; preds = %35
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i64, i64* %12, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %11, align 4
  br label %61

55:                                               ; preds = %46
  %56 = load i64, i64* %12, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = sub nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %55, %49
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @es_out_SetPCR(i32 %64, i32 %65)
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %61
  br label %123

75:                                               ; preds = %61
  %76 = load i64, i64* %5, align 8
  %77 = call %struct.TYPE_9__* @block_Alloc(i64 %76)
  store %struct.TYPE_9__* %77, %struct.TYPE_9__** %14, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %79 = icmp ne %struct.TYPE_9__* %78, null
  %80 = zext i1 %79 to i32
  %81 = call i64 @likely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %119

83:                                               ; preds = %75
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load i8*, i8** %9, align 8
  %88 = load i64, i64* %5, align 8
  %89 = call i32 @memcpy(i32 %86, i8* %87, i64 %88)
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 3
  store i32 %93, i32* %97, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %83
  %103 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  store i32 0, i32* %109, align 8
  br label %110

110:                                              ; preds = %102, %83
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %118 = call i32 @es_out_Send(i32 %113, i32* %116, %struct.TYPE_9__* %117)
  br label %122

119:                                              ; preds = %75
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  store i32 1, i32* %121, align 8
  br label %122

122:                                              ; preds = %119, %110
  br label %123

123:                                              ; preds = %122, %74
  %124 = load i32*, i32** %4, align 8
  %125 = call i32 @pa_stream_drop(i32* %124)
  br label %126

126:                                              ; preds = %123, %40, %29
  ret void
}

declare dso_local i64 @pa_stream_peek(i32*, i8**, i64*) #1

declare dso_local i32 @vlc_pa_error(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @vlc_tick_now(...) #1

declare dso_local i64 @pa_stream_get_latency(i32*, i64*, i32*) #1

declare dso_local i32 @es_out_SetPCR(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_9__* @block_Alloc(i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @es_out_Send(i32, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @pa_stream_drop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
