; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_vp8l_dec.c_AllocateAndInitRescaler.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_vp8l_dec.c_AllocateAndInitRescaler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@VP8_STATUS_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.TYPE_6__*)* @AllocateAndInitRescaler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AllocateAndInitRescaler(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 4, i32* %6, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = mul nsw i32 8, %29
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = add i64 4, %34
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = add i64 %35, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = call i64 @WebPSafeMalloc(i32 %41, i32 4)
  %43 = inttoptr i64 %42 to i32*
  store i32* %43, i32** %16, align 8
  %44 = load i32*, i32** %16, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %2
  %47 = load i32, i32* @VP8_STATUS_OUT_OF_MEMORY, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  store i32 0, i32* %3, align 4
  br label %82

50:                                               ; preds = %2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i32*, i32** %16, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i32* %57, i32** %59, align 8
  %60 = load i32*, i32** %16, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i32* %60, i32** %62, align 8
  %63 = load i32*, i32** %16, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  store i32* %64, i32** %16, align 8
  %65 = load i32*, i32** %16, align 8
  store i32* %65, i32** %12, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = load i32*, i32** %16, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 %68
  store i32* %70, i32** %16, align 8
  %71 = load i32*, i32** %16, align 8
  store i32* %71, i32** %14, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32*, i32** %14, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32*, i32** %12, align 8
  %81 = call i32 @WebPRescalerInit(i32* %74, i32 %75, i32 %76, i32* %77, i32 %78, i32 %79, i32 0, i32 4, i32* %80)
  store i32 1, i32* %3, align 4
  br label %82

82:                                               ; preds = %50, %46
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i64 @WebPSafeMalloc(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @WebPRescalerInit(i32*, i32, i32, i32*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
