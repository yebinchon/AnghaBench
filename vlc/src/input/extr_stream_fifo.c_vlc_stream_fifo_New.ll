; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_stream_fifo.c_vlc_stream_fifo_New.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_stream_fifo.c_vlc_stream_fifo_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_stream_fifo = type { i32, i32* }
%struct.TYPE_5__ = type { i32, i32*, i32 }
%struct.vlc_stream_fifo_private = type { %struct.vlc_stream_fifo* }

@vlc_stream_fifo_Destroy = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@vlc_stream_fifo_Block = common dso_local global i32 0, align 4
@vlc_stream_fifo_Control = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vlc_stream_fifo* @vlc_stream_fifo_New(i32* %0, %struct.TYPE_5__** %1) #0 {
  %3 = alloca %struct.vlc_stream_fifo*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca %struct.vlc_stream_fifo*, align 8
  %7 = alloca %struct.vlc_stream_fifo_private*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %5, align 8
  %9 = call %struct.vlc_stream_fifo* @malloc(i32 16)
  store %struct.vlc_stream_fifo* %9, %struct.vlc_stream_fifo** %6, align 8
  %10 = load %struct.vlc_stream_fifo*, %struct.vlc_stream_fifo** %6, align 8
  %11 = icmp eq %struct.vlc_stream_fifo* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.vlc_stream_fifo* null, %struct.vlc_stream_fifo** %3, align 8
  br label %65

16:                                               ; preds = %2
  %17 = call i32* (...) @block_FifoNew()
  %18 = load %struct.vlc_stream_fifo*, %struct.vlc_stream_fifo** %6, align 8
  %19 = getelementptr inbounds %struct.vlc_stream_fifo, %struct.vlc_stream_fifo* %18, i32 0, i32 1
  store i32* %17, i32** %19, align 8
  %20 = load %struct.vlc_stream_fifo*, %struct.vlc_stream_fifo** %6, align 8
  %21 = getelementptr inbounds %struct.vlc_stream_fifo, %struct.vlc_stream_fifo* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load %struct.vlc_stream_fifo*, %struct.vlc_stream_fifo** %6, align 8
  %29 = call i32 @free(%struct.vlc_stream_fifo* %28)
  store %struct.vlc_stream_fifo* null, %struct.vlc_stream_fifo** %3, align 8
  br label %65

30:                                               ; preds = %16
  %31 = load %struct.vlc_stream_fifo*, %struct.vlc_stream_fifo** %6, align 8
  %32 = getelementptr inbounds %struct.vlc_stream_fifo, %struct.vlc_stream_fifo* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* @vlc_stream_fifo_Destroy, align 4
  %35 = call %struct.TYPE_5__* @vlc_stream_CustomNew(i32* %33, i32 %34, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %8, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %37 = icmp eq %struct.TYPE_5__* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %30
  %42 = load %struct.vlc_stream_fifo*, %struct.vlc_stream_fifo** %6, align 8
  %43 = getelementptr inbounds %struct.vlc_stream_fifo, %struct.vlc_stream_fifo* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @block_FifoRelease(i32* %44)
  %46 = load %struct.vlc_stream_fifo*, %struct.vlc_stream_fifo** %6, align 8
  %47 = call i32 @free(%struct.vlc_stream_fifo* %46)
  store %struct.vlc_stream_fifo* null, %struct.vlc_stream_fifo** %3, align 8
  br label %65

48:                                               ; preds = %30
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %50 = call %struct.vlc_stream_fifo_private* @vlc_stream_Private(%struct.TYPE_5__* %49)
  store %struct.vlc_stream_fifo_private* %50, %struct.vlc_stream_fifo_private** %7, align 8
  %51 = load %struct.vlc_stream_fifo*, %struct.vlc_stream_fifo** %6, align 8
  %52 = load %struct.vlc_stream_fifo_private*, %struct.vlc_stream_fifo_private** %7, align 8
  %53 = getelementptr inbounds %struct.vlc_stream_fifo_private, %struct.vlc_stream_fifo_private* %52, i32 0, i32 0
  store %struct.vlc_stream_fifo* %51, %struct.vlc_stream_fifo** %53, align 8
  %54 = load i32, i32* @vlc_stream_fifo_Block, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  store i32* null, i32** %58, align 8
  %59 = load i32, i32* @vlc_stream_fifo_Control, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %63 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %63, align 8
  %64 = load %struct.vlc_stream_fifo*, %struct.vlc_stream_fifo** %6, align 8
  store %struct.vlc_stream_fifo* %64, %struct.vlc_stream_fifo** %3, align 8
  br label %65

65:                                               ; preds = %48, %41, %27, %15
  %66 = load %struct.vlc_stream_fifo*, %struct.vlc_stream_fifo** %3, align 8
  ret %struct.vlc_stream_fifo* %66
}

declare dso_local %struct.vlc_stream_fifo* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @block_FifoNew(...) #1

declare dso_local i32 @free(%struct.vlc_stream_fifo*) #1

declare dso_local %struct.TYPE_5__* @vlc_stream_CustomNew(i32*, i32, i32, i8*) #1

declare dso_local i32 @block_FifoRelease(i32*) #1

declare dso_local %struct.vlc_stream_fifo_private* @vlc_stream_Private(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
