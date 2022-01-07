; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_muxedit.c_GetFrameInfo.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_muxedit.c_GetFrameInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }

@ANMF_CHUNK_SIZE = common dso_local global i64 0, align 8
@kChunks = common dso_local global %struct.TYPE_7__* null, align 8
@IDX_ANMF = common dso_local global i64 0, align 8
@WEBP_MUX_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@WEBP_MUX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32*, i32*)* @GetFrameInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetFrameInfo(%struct.TYPE_6__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %10, align 8
  %14 = load i64, i64* @ANMF_CHUNK_SIZE, align 8
  store i64 %14, i64* %11, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @kChunks, align 8
  %19 = load i64, i64* @IDX_ANMF, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %17, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %11, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i32, i32* @WEBP_MUX_INVALID_ARGUMENT, align 4
  store i32 %36, i32* %5, align 4
  br label %59

37:                                               ; preds = %4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 0
  %42 = call i32 @GetLE24(i64 %41)
  %43 = mul nsw i32 2, %42
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 3
  %49 = call i32 @GetLE24(i64 %48)
  %50 = mul nsw i32 2, %49
  %51 = load i32*, i32** %8, align 8
  store i32 %50, i32* %51, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 12
  %56 = call i32 @GetLE24(i64 %55)
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @WEBP_MUX_OK, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %37, %35
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @GetLE24(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
