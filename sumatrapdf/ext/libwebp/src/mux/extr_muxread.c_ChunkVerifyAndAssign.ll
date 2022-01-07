; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_muxread.c_ChunkVerifyAndAssign.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_muxread.c_ChunkVerifyAndAssign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }

@CHUNK_HEADER_SIZE = common dso_local global i64 0, align 8
@WEBP_MUX_NOT_ENOUGH_DATA = common dso_local global i32 0, align 4
@TAG_SIZE = common dso_local global i32 0, align 4
@MAX_CHUNK_PAYLOAD = common dso_local global i64 0, align 8
@WEBP_MUX_BAD_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64, i64, i32)* @ChunkVerifyAndAssign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ChunkVerifyAndAssign(i32* %0, i32* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_3__, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @WEBP_MUX_NOT_ENOUGH_DATA, align 4
  store i32 %19, i32* %6, align 4
  br label %58

20:                                               ; preds = %5
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* @TAG_SIZE, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i64 @GetLE32(i32* %24)
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* @MAX_CHUNK_PAYLOAD, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @WEBP_MUX_BAD_DATA, align 4
  store i32 %30, i32* %6, align 4
  br label %58

31:                                               ; preds = %20
  %32 = load i64, i64* %12, align 8
  %33 = call i64 @SizeWithPadding(i64 %32)
  store i64 %33, i64* %14, align 8
  %34 = load i64, i64* %14, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @WEBP_MUX_BAD_DATA, align 4
  store i32 %38, i32* %6, align 4
  br label %58

39:                                               ; preds = %31
  %40 = load i64, i64* %14, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @WEBP_MUX_NOT_ENOUGH_DATA, align 4
  store i32 %44, i32* %6, align 4
  br label %58

45:                                               ; preds = %39
  %46 = load i32*, i32** %8, align 8
  %47 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i32* %48, i32** %49, align 8
  %50 = load i64, i64* %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i64 %50, i64* %51, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = call i64 @GetLE32(i32* %55)
  %57 = call i32 @ChunkAssignData(i32* %52, %struct.TYPE_3__* %13, i32 %53, i64 %56)
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %45, %43, %37, %29, %18
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i64 @GetLE32(i32*) #1

declare dso_local i64 @SizeWithPadding(i64) #1

declare dso_local i32 @ChunkAssignData(i32*, %struct.TYPE_3__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
