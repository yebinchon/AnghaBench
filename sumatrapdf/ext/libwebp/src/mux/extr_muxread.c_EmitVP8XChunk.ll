; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_muxread.c_EmitVP8XChunk.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_muxread.c_EmitVP8XChunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHUNK_HEADER_SIZE = common dso_local global i64 0, align 8
@VP8X_CHUNK_SIZE = common dso_local global i64 0, align 8
@MAX_CANVAS_SIZE = common dso_local global i32 0, align 4
@MAX_IMAGE_AREA = common dso_local global i32 0, align 4
@TAG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32, i64)* @EmitVP8XChunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @EmitVP8XChunk(i32* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %11 = load i64, i64* @VP8X_CHUNK_SIZE, align 8
  %12 = add i64 %10, %11
  store i64 %12, i64* %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp sge i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = icmp sge i32 %16, 1
  br label %18

18:                                               ; preds = %15, %4
  %19 = phi i1 [ false, %4 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @MAX_CANVAS_SIZE, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @MAX_CANVAS_SIZE, align 4
  %28 = icmp sle i32 %26, %27
  br label %29

29:                                               ; preds = %25, %18
  %30 = phi i1 [ false, %18 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load i32, i32* @MAX_IMAGE_AREA, align 4
  %37 = icmp slt i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = call i64 @MKFOURCC(i8 signext 86, i8 signext 80, i8 signext 56, i8 signext 88)
  %42 = call i32 @PutLE32(i32* %40, i64 %41)
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* @TAG_SIZE, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i64, i64* @VP8X_CHUNK_SIZE, align 8
  %48 = call i32 @PutLE32(i32* %46, i64 %47)
  %49 = load i32*, i32** %5, align 8
  %50 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @PutLE32(i32* %51, i64 %52)
  %54 = load i32*, i32** %5, align 8
  %55 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  %58 = load i32, i32* %6, align 4
  %59 = sub nsw i32 %58, 1
  %60 = call i32 @PutLE24(i32* %57, i32 %59)
  %61 = load i32*, i32** %5, align 8
  %62 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = getelementptr inbounds i32, i32* %63, i64 7
  %65 = load i32, i32* %7, align 4
  %66 = sub nsw i32 %65, 1
  %67 = call i32 @PutLE24(i32* %64, i32 %66)
  %68 = load i32*, i32** %5, align 8
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  ret i32* %70
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @PutLE32(i32*, i64) #1

declare dso_local i64 @MKFOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @PutLE24(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
