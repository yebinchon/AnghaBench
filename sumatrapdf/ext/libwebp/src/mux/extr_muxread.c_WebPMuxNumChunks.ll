; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_muxread.c_WebPMuxNumChunks.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_muxread.c_WebPMuxNumChunks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@WEBP_MUX_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@kChunks = common dso_local global %struct.TYPE_6__* null, align 8
@WEBP_MUX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WebPMuxNumChunks(%struct.TYPE_5__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = icmp eq %struct.TYPE_5__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32*, i32** %7, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @WEBP_MUX_INVALID_ARGUMENT, align 4
  store i32 %16, i32* %4, align 4
  br label %45

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @IsWPI(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @MuxImageCount(i32 %24, i32 %25)
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  br label %43

28:                                               ; preds = %17
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32** @MuxGetChunkListFromId(%struct.TYPE_5__* %29, i32 %30)
  store i32** %31, i32*** %8, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @ChunkGetIndexFromId(i32 %32)
  store i64 %33, i64* %9, align 8
  %34 = load i32**, i32*** %8, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kChunks, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @CountChunks(i32* %35, i32 %40)
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %28, %21
  %44 = load i32, i32* @WEBP_MUX_OK, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %15
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @IsWPI(i32) #1

declare dso_local i32 @MuxImageCount(i32, i32) #1

declare dso_local i32** @MuxGetChunkListFromId(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @ChunkGetIndexFromId(i32) #1

declare dso_local i32 @CountChunks(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
