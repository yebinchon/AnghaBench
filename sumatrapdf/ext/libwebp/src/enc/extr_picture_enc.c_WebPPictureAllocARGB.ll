; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_picture_enc.c_WebPPictureAllocARGB.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_picture_enc.c_WebPPictureAllocARGB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i8* }

@VP8_ENC_ERROR_BAD_DIMENSION = common dso_local global i32 0, align 4
@WEBP_ALIGN_CST = common dso_local global i32 0, align 4
@VP8_ENC_ERROR_OUT_OF_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WebPPictureAllocARGB(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = mul nsw i32 %10, %11
  store i32 %12, i32* %9, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @WebPSafeFree(i8* %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = call i32 @WebPPictureResetBufferARGB(%struct.TYPE_5__* %21)
  %23 = load i32, i32* %6, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25, %3
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = load i32, i32* @VP8_ENC_ERROR_BAD_DIMENSION, align 4
  %31 = call i32 @WebPEncodingSetError(%struct.TYPE_5__* %29, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %55

32:                                               ; preds = %25
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @WEBP_ALIGN_CST, align 4
  %35 = add nsw i32 %33, %34
  %36 = call i8* @WebPSafeMalloc(i32 %35, i32 4)
  store i8* %36, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = load i32, i32* @VP8_ENC_ERROR_OUT_OF_MEMORY, align 4
  %42 = call i32 @WebPEncodingSetError(%struct.TYPE_5__* %40, i32 %41)
  store i32 %42, i32* %4, align 4
  br label %55

43:                                               ; preds = %32
  %44 = load i8*, i8** %8, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = call i64 @WEBP_ALIGN(i8* %47)
  %49 = inttoptr i64 %48 to i32*
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i32* %49, i32** %51, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  store i32 1, i32* %4, align 4
  br label %55

55:                                               ; preds = %43, %39, %28
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @WebPSafeFree(i8*) #1

declare dso_local i32 @WebPPictureResetBufferARGB(%struct.TYPE_5__*) #1

declare dso_local i32 @WebPEncodingSetError(%struct.TYPE_5__*, i32) #1

declare dso_local i8* @WebPSafeMalloc(i32, i32) #1

declare dso_local i64 @WEBP_ALIGN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
