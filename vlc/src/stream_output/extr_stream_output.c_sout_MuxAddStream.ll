; ModuleID = '/home/carl/AnghaBench/vlc/src/stream_output/extr_stream_output.c_sout_MuxAddStream.c'
source_filename = "/home/carl/AnghaBench/vlc/src/stream_output/extr_stream_output.c_sout_MuxAddStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32*, i32* }
%struct.TYPE_13__ = type { i64 (%struct.TYPE_13__*, %struct.TYPE_14__*)*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [113 x i8] c"cannot add a new stream (unsupported while muxing to this format). You can try increasing sout-mux-caching value\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"adding a new input\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"cannot add this stream\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @sout_MuxAddStream(%struct.TYPE_13__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = call i32 @msg_Err(%struct.TYPE_13__* %17, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %77

19:                                               ; preds = %11, %2
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = call i32 @msg_Dbg(%struct.TYPE_13__* %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %22 = call %struct.TYPE_14__* @malloc(i32 24)
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %6, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %24 = icmp ne %struct.TYPE_14__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %77

26:                                               ; preds = %19
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @es_format_Copy(i32* %28, i32* %29)
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 3
  store i32* %32, i32** %34, align 8
  %35 = call i32 (...) @block_FifoNew()
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 2
  store i32* null, i32** %39, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %47 = call i32 @TAB_APPEND(i32 %42, i32 %45, %struct.TYPE_14__* %46)
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i64 (%struct.TYPE_13__*, %struct.TYPE_14__*)*, i64 (%struct.TYPE_13__*, %struct.TYPE_14__*)** %49, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = call i64 %50(%struct.TYPE_13__* %51, %struct.TYPE_14__* %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %26
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = call i32 @msg_Err(%struct.TYPE_13__* %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %65 = call i32 @TAB_REMOVE(i32 %60, i32 %63, %struct.TYPE_14__* %64)
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @block_FifoRelease(i32 %68)
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = call i32 @es_format_Clean(i32* %71)
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %74 = call i32 @free(%struct.TYPE_14__* %73)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %77

75:                                               ; preds = %26
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %76, %struct.TYPE_14__** %3, align 8
  br label %77

77:                                               ; preds = %75, %55, %25, %16
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  ret %struct.TYPE_14__* %78
}

declare dso_local i32 @msg_Err(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_13__*, i8*) #1

declare dso_local %struct.TYPE_14__* @malloc(i32) #1

declare dso_local i32 @es_format_Copy(i32*, i32*) #1

declare dso_local i32 @block_FifoNew(...) #1

declare dso_local i32 @TAB_APPEND(i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @TAB_REMOVE(i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @block_FifoRelease(i32) #1

declare dso_local i32 @es_format_Clean(i32*) #1

declare dso_local i32 @free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
