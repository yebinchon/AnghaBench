; ModuleID = '/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/zstd/extr_fse_decompress.c_FSE_decompress_wksp.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/zstd/extr_fse_decompress.c_FSE_decompress_wksp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FSE_MAX_SYMBOL_VALUE = common dso_local global i32 0, align 4
@tableLog_tooLarge = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FSE_decompress_wksp(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i16*, align 8
  %23 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %16, align 8
  %26 = load i32*, i32** %16, align 8
  store i32* %26, i32** %17, align 8
  %27 = load i32, i32* @FSE_MAX_SYMBOL_VALUE, align 4
  store i32 %27, i32* %19, align 4
  store i64 0, i64* %23, align 8
  %28 = call i32 @FSE_STATIC_ASSERT(i32 1)
  %29 = load i8*, i8** %14, align 8
  %30 = bitcast i8* %29 to i32*
  %31 = load i64, i64* %23, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32* %32, i32** %21, align 8
  %33 = load i32, i32* %13, align 4
  %34 = call i64 @FSE_DTABLE_SIZE_U32(i32 %33)
  %35 = load i64, i64* %23, align 8
  %36 = add i64 %35, %34
  store i64 %36, i64* %23, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = bitcast i8* %37 to i32*
  %39 = load i64, i64* %23, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = bitcast i32* %40 to i16*
  store i16* %41, i16** %22, align 8
  %42 = load i32, i32* @FSE_MAX_SYMBOL_VALUE, align 4
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = mul i64 2, %44
  %46 = trunc i64 %45 to i32
  %47 = call i32 @ALIGN(i32 %46, i32 4)
  %48 = ashr i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %23, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %23, align 8
  %52 = load i64, i64* %23, align 8
  %53 = shl i64 %52, 2
  %54 = load i64, i64* %15, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %7
  %57 = load i32, i32* @tableLog_tooLarge, align 4
  %58 = call i64 @ERROR(i32 %57)
  store i64 %58, i64* %8, align 8
  br label %106

59:                                               ; preds = %7
  %60 = load i8*, i8** %14, align 8
  %61 = bitcast i8* %60 to i32*
  %62 = load i64, i64* %23, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = bitcast i32* %63 to i8*
  store i8* %64, i8** %14, align 8
  %65 = load i64, i64* %23, align 8
  %66 = shl i64 %65, 2
  %67 = load i64, i64* %15, align 8
  %68 = sub i64 %67, %66
  store i64 %68, i64* %15, align 8
  %69 = load i16*, i16** %22, align 8
  %70 = load i32*, i32** %16, align 8
  %71 = load i64, i64* %12, align 8
  %72 = call i64 @FSE_readNCount(i16* %69, i32* %19, i32* %18, i32* %70, i64 %71)
  store i64 %72, i64* %20, align 8
  %73 = load i64, i64* %20, align 8
  %74 = call i64 @FSE_isError(i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %59
  %77 = load i64, i64* %20, align 8
  store i64 %77, i64* %8, align 8
  br label %106

78:                                               ; preds = %59
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp ugt i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32, i32* @tableLog_tooLarge, align 4
  %84 = call i64 @ERROR(i32 %83)
  store i64 %84, i64* %8, align 8
  br label %106

85:                                               ; preds = %78
  %86 = load i64, i64* %20, align 8
  %87 = load i32*, i32** %17, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 %86
  store i32* %88, i32** %17, align 8
  %89 = load i64, i64* %20, align 8
  %90 = load i64, i64* %12, align 8
  %91 = sub i64 %90, %89
  store i64 %91, i64* %12, align 8
  %92 = load i32*, i32** %21, align 8
  %93 = load i16*, i16** %22, align 8
  %94 = load i32, i32* %19, align 4
  %95 = load i32, i32* %18, align 4
  %96 = load i8*, i8** %14, align 8
  %97 = load i64, i64* %15, align 8
  %98 = call i32 @FSE_buildDTable_wksp(i32* %92, i16* %93, i32 %94, i32 %95, i8* %96, i64 %97)
  %99 = call i32 @CHECK_F(i32 %98)
  %100 = load i8*, i8** %9, align 8
  %101 = load i64, i64* %10, align 8
  %102 = load i32*, i32** %17, align 8
  %103 = load i64, i64* %12, align 8
  %104 = load i32*, i32** %21, align 8
  %105 = call i64 @FSE_decompress_usingDTable(i8* %100, i64 %101, i32* %102, i64 %103, i32* %104)
  store i64 %105, i64* %8, align 8
  br label %106

106:                                              ; preds = %85, %82, %76, %56
  %107 = load i64, i64* %8, align 8
  ret i64 %107
}

declare dso_local i32 @FSE_STATIC_ASSERT(i32) #1

declare dso_local i64 @FSE_DTABLE_SIZE_U32(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @FSE_readNCount(i16*, i32*, i32*, i32*, i64) #1

declare dso_local i64 @FSE_isError(i64) #1

declare dso_local i32 @CHECK_F(i32) #1

declare dso_local i32 @FSE_buildDTable_wksp(i32*, i16*, i32, i32, i8*, i64) #1

declare dso_local i64 @FSE_decompress_usingDTable(i8*, i64, i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
