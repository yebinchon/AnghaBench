; ModuleID = '/home/carl/AnghaBench/zstd/tests/fuzz/extr_dictionary_loader.c_LLVMFuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/fuzz/extr_dictionary_loader.c_LLVMFuzzerTestOneInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"Dict load method %d\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Dict content type %d\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Dict size %u\00", align 1
@ZSTD_dct_rawContent = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"Raw must always succeed!\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Incorrect regenerated size\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Corruption!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i32* @FUZZ_dataProducer_create(i32* %13, i64 %14)
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i8* @FUZZ_dataProducer_uint32Range(i32* %16, i32 0, i32 1)
  %18 = ptrtoint i8* %17 to i64
  store i64 %18, i64* %4, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = call i8* @FUZZ_dataProducer_uint32Range(i32* %20, i32 0, i32 2)
  %22 = ptrtoint i8* %21 to i64
  store i64 %22, i64* %7, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i64 @FUZZ_dataProducer_remainingBytes(i32* %23)
  store i64 %24, i64* %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @DEBUGLOG(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i64, i64* %7, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @DEBUGLOG(i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i64, i64* %4, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @DEBUGLOG(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load i64, i64* %4, align 8
  %34 = call i8* @malloc(i64 %33)
  store i8* %34, i8** %8, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @FUZZ_ASSERT(i8* %35)
  %37 = load i64, i64* %4, align 8
  %38 = call i64 @ZSTD_compressBound(i64 %37)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i8* @malloc(i64 %39)
  store i8* %40, i8** %10, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @FUZZ_ASSERT(i8* %41)
  %43 = load i8*, i8** %10, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i32*, i32** %3, align 8
  %46 = load i64, i64* %4, align 8
  %47 = load i32*, i32** %3, align 8
  %48 = load i64, i64* %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i64, i64* %7, align 8
  %51 = call i64 @compress(i8* %43, i64 %44, i32* %45, i64 %46, i32* %47, i64 %48, i32 %49, i64 %50)
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %11, align 8
  %53 = call i64 @ZSTD_isError(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %2
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @ZSTD_dct_rawContent, align 8
  %58 = icmp ne i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @FUZZ_ASSERT_MSG(i32 %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %84

61:                                               ; preds = %2
  %62 = load i8*, i8** %8, align 8
  %63 = load i64, i64* %4, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load i32*, i32** %3, align 8
  %67 = load i64, i64* %4, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i64, i64* %7, align 8
  %70 = call i64 @decompress(i8* %62, i64 %63, i8* %64, i64 %65, i32* %66, i64 %67, i32 %68, i64 %69)
  store i64 %70, i64* %12, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* %4, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @FUZZ_ASSERT_MSG(i32 %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %76 = load i32*, i32** %3, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = load i64, i64* %4, align 8
  %79 = call i32 @memcmp(i32* %76, i8* %77, i64 %78)
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i32 @FUZZ_ASSERT_MSG(i32 %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %84

84:                                               ; preds = %61, %55
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 @free(i8* %85)
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @free(i8* %87)
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @FUZZ_dataProducer_free(i32* %89)
  ret i32 0
}

declare dso_local i32* @FUZZ_dataProducer_create(i32*, i64) #1

declare dso_local i8* @FUZZ_dataProducer_uint32Range(i32*, i32, i32) #1

declare dso_local i64 @FUZZ_dataProducer_remainingBytes(i32*) #1

declare dso_local i32 @DEBUGLOG(i32, i8*, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @FUZZ_ASSERT(i8*) #1

declare dso_local i64 @ZSTD_compressBound(i64) #1

declare dso_local i64 @compress(i8*, i64, i32*, i64, i32*, i64, i32, i64) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i32 @FUZZ_ASSERT_MSG(i32, i8*) #1

declare dso_local i64 @decompress(i8*, i64, i8*, i64, i32*, i64, i32, i64) #1

declare dso_local i32 @memcmp(i32*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @FUZZ_dataProducer_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
