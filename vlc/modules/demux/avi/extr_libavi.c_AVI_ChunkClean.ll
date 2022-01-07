; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/avi/extr_libavi.c_AVI_ChunkClean.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/avi/extr_libavi.c_AVI_ChunkClean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (%struct.TYPE_8__*)* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_8__*, %struct.TYPE_8__* }

@AVI_Chunk_Function = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"unknown chunk: %4.4s (not unloaded)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AVI_ChunkClean(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = icmp ne %struct.TYPE_8__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %69

11:                                               ; preds = %2
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %6, align 8
  br label %16

16:                                               ; preds = %19, %11
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = icmp ne %struct.TYPE_8__* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %7, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  call void @AVI_ChunkClean(i32* %24, %struct.TYPE_8__* %25)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = call i32 @free(%struct.TYPE_8__* %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %6, align 8
  br label %16

29:                                               ; preds = %16
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @AVI_ChunkFunctionFind(i64 %33)
  store i32 %34, i32* %5, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** @AVI_Chunk_Function, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %39, align 8
  %41 = icmp ne i32 (%struct.TYPE_8__*)* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %29
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** @AVI_Chunk_Function, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %47, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = call i32 %48(%struct.TYPE_8__* %49)
  br label %65

51:                                               ; preds = %29
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load i32*, i32** %3, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = bitcast i64* %61 to i8*
  %63 = call i32 @msg_Warn(i32* %58, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %57, %51
  br label %65

65:                                               ; preds = %64, %42
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %68, align 8
  br label %69

69:                                               ; preds = %65, %10
  ret void
}

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i32 @AVI_ChunkFunctionFind(i64) #1

declare dso_local i32 @msg_Warn(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
