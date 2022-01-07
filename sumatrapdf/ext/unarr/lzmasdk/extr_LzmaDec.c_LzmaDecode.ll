; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/lzmasdk/extr_LzmaDec.c_LzmaDecode.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/lzmasdk/extr_LzmaDec.c_LzmaDecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32* }

@LZMA_STATUS_NOT_SPECIFIED = common dso_local global i64 0, align 8
@RC_INIT_SIZE = common dso_local global i64 0, align 8
@SZ_ERROR_INPUT_EOF = common dso_local global i64 0, align 8
@SZ_OK = common dso_local global i64 0, align 8
@LZMA_STATUS_NEEDS_MORE_INPUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @LzmaDecode(i32* %0, i64* %1, i32* %2, i64* %3, i32* %4, i32 %5, i32 %6, i64* %7, i32* %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_7__, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i32* %0, i32** %11, align 8
  store i64* %1, i64** %12, align 8
  store i32* %2, i32** %13, align 8
  store i64* %3, i64** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i64* %7, i64** %18, align 8
  store i32* %8, i32** %19, align 8
  %24 = load i64*, i64** %12, align 8
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %22, align 8
  %26 = load i64*, i64** %14, align 8
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %23, align 8
  %28 = load i64*, i64** %14, align 8
  store i64 0, i64* %28, align 8
  %29 = load i64*, i64** %12, align 8
  store i64 0, i64* %29, align 8
  %30 = load i64, i64* @LZMA_STATUS_NOT_SPECIFIED, align 8
  %31 = load i64*, i64** %18, align 8
  store i64 %30, i64* %31, align 8
  %32 = load i64, i64* %23, align 8
  %33 = load i64, i64* @RC_INIT_SIZE, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %9
  %36 = load i64, i64* @SZ_ERROR_INPUT_EOF, align 8
  store i64 %36, i64* %10, align 8
  br label %74

37:                                               ; preds = %9
  %38 = call i32 @LzmaDec_Construct(%struct.TYPE_7__* %20)
  %39 = load i32*, i32** %15, align 8
  %40 = load i32, i32* %16, align 4
  %41 = load i32*, i32** %19, align 8
  %42 = call i32 @LzmaDec_AllocateProbs(%struct.TYPE_7__* %20, i32* %39, i32 %40, i32* %41)
  %43 = call i32 @RINOK(i32 %42)
  %44 = load i32*, i32** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  store i32* %44, i32** %45, align 8
  %46 = load i64, i64* %22, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  store i64 %46, i64* %47, align 8
  %48 = call i32 @LzmaDec_Init(%struct.TYPE_7__* %20)
  %49 = load i64, i64* %23, align 8
  %50 = load i64*, i64** %14, align 8
  store i64 %49, i64* %50, align 8
  %51 = load i64, i64* %22, align 8
  %52 = load i32*, i32** %13, align 8
  %53 = load i64*, i64** %14, align 8
  %54 = load i32, i32* %17, align 4
  %55 = load i64*, i64** %18, align 8
  %56 = call i64 @LzmaDec_DecodeToDic(%struct.TYPE_7__* %20, i64 %51, i32* %52, i64* %53, i32 %54, i64* %55)
  store i64 %56, i64* %21, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %12, align 8
  store i64 %58, i64* %59, align 8
  %60 = load i64, i64* %21, align 8
  %61 = load i64, i64* @SZ_OK, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %37
  %64 = load i64*, i64** %18, align 8
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @LZMA_STATUS_NEEDS_MORE_INPUT, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i64, i64* @SZ_ERROR_INPUT_EOF, align 8
  store i64 %69, i64* %21, align 8
  br label %70

70:                                               ; preds = %68, %63, %37
  %71 = load i32*, i32** %19, align 8
  %72 = call i32 @LzmaDec_FreeProbs(%struct.TYPE_7__* %20, i32* %71)
  %73 = load i64, i64* %21, align 8
  store i64 %73, i64* %10, align 8
  br label %74

74:                                               ; preds = %70, %35
  %75 = load i64, i64* %10, align 8
  ret i64 %75
}

declare dso_local i32 @LzmaDec_Construct(%struct.TYPE_7__*) #1

declare dso_local i32 @RINOK(i32) #1

declare dso_local i32 @LzmaDec_AllocateProbs(%struct.TYPE_7__*, i32*, i32, i32*) #1

declare dso_local i32 @LzmaDec_Init(%struct.TYPE_7__*) #1

declare dso_local i64 @LzmaDec_DecodeToDic(%struct.TYPE_7__*, i64, i32*, i64*, i32, i64*) #1

declare dso_local i32 @LzmaDec_FreeProbs(%struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
