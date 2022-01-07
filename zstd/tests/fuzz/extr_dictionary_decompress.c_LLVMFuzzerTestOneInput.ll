; ModuleID = '/home/carl/AnghaBench/zstd/tests/fuzz/extr_dictionary_decompress.c_LLVMFuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/fuzz/extr_dictionary_decompress.c_LLVMFuzzerTestOneInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@dctx = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i32* @FUZZ_dataProducer_create(i32* %11, i64 %12)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i64 @FUZZ_dataProducer_reserveDataPrefix(i32* %14)
  store i64 %15, i64* %4, align 8
  store i8* null, i8** %7, align 8
  %16 = load i8*, i8** @dctx, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = call i8* (...) @ZSTD_createDCtx()
  store i8* %19, i8** @dctx, align 8
  %20 = load i8*, i8** @dctx, align 8
  %21 = call i32 @FUZZ_ASSERT(i8* %20)
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i32*, i32** %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call { i8*, i32 } @FUZZ_train(i32* %23, i64 %24, i32* %25)
  %27 = bitcast %struct.TYPE_3__* %8 to { i8*, i32 }*
  %28 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %27, i32 0, i32 0
  %29 = extractvalue { i8*, i32 } %26, 0
  store i8* %29, i8** %28, align 8
  %30 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %27, i32 0, i32 1
  %31 = extractvalue { i8*, i32 } %26, 1
  store i32 %31, i32* %30, align 8
  %32 = bitcast %struct.TYPE_3__* %6 to i8*
  %33 = bitcast %struct.TYPE_3__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 16, i1 false)
  %34 = load i32*, i32** %5, align 8
  %35 = call i64 @FUZZ_dataProducer_uint32Range(i32* %34, i32 0, i32 1)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %22
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i8* @ZSTD_createDDict(i8* %39, i32 %41)
  store i8* %42, i8** %7, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @FUZZ_ASSERT(i8* %43)
  br label %59

45:                                               ; preds = %22
  %46 = load i8*, i8** @dctx, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = call i64 @FUZZ_dataProducer_uint32Range(i32* %51, i32 0, i32 1)
  %53 = trunc i64 %52 to i32
  %54 = load i32*, i32** %5, align 8
  %55 = call i64 @FUZZ_dataProducer_uint32Range(i32* %54, i32 0, i32 2)
  %56 = trunc i64 %55 to i32
  %57 = call i32 @ZSTD_DCtx_loadDictionary_advanced(i8* %46, i8* %48, i32 %50, i32 %53, i32 %56)
  %58 = call i32 @FUZZ_ZASSERT(i32 %57)
  br label %59

59:                                               ; preds = %45, %37
  %60 = load i32*, i32** %5, align 8
  %61 = load i64, i64* %4, align 8
  %62 = mul i64 10, %61
  %63 = trunc i64 %62 to i32
  %64 = call i64 @FUZZ_dataProducer_uint32Range(i32* %60, i32 0, i32 %63)
  store i64 %64, i64* %9, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i8* @malloc(i64 %65)
  store i8* %66, i8** %10, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 @FUZZ_ASSERT(i8* %67)
  %69 = load i8*, i8** %7, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %59
  %72 = load i8*, i8** @dctx, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i32*, i32** %3, align 8
  %76 = load i64, i64* %4, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 @ZSTD_decompress_usingDDict(i8* %72, i8* %73, i64 %74, i32* %75, i64 %76, i8* %77)
  br label %86

79:                                               ; preds = %59
  %80 = load i8*, i8** @dctx, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load i32*, i32** %3, align 8
  %84 = load i64, i64* %4, align 8
  %85 = call i32 @ZSTD_decompressDCtx(i8* %80, i8* %81, i64 %82, i32* %83, i64 %84)
  br label %86

86:                                               ; preds = %79, %71
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 @free(i8* %87)
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @free(i8* %90)
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @FUZZ_dataProducer_free(i32* %92)
  %94 = load i8*, i8** %7, align 8
  %95 = call i32 @ZSTD_freeDDict(i8* %94)
  %96 = load i8*, i8** @dctx, align 8
  %97 = call i32 @ZSTD_freeDCtx(i8* %96)
  store i8* null, i8** @dctx, align 8
  ret i32 0
}

declare dso_local i32* @FUZZ_dataProducer_create(i32*, i64) #1

declare dso_local i64 @FUZZ_dataProducer_reserveDataPrefix(i32*) #1

declare dso_local i8* @ZSTD_createDCtx(...) #1

declare dso_local i32 @FUZZ_ASSERT(i8*) #1

declare dso_local { i8*, i32 } @FUZZ_train(i32*, i64, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @FUZZ_dataProducer_uint32Range(i32*, i32, i32) #1

declare dso_local i8* @ZSTD_createDDict(i8*, i32) #1

declare dso_local i32 @FUZZ_ZASSERT(i32) #1

declare dso_local i32 @ZSTD_DCtx_loadDictionary_advanced(i8*, i8*, i32, i32, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @ZSTD_decompress_usingDDict(i8*, i8*, i64, i32*, i64, i8*) #1

declare dso_local i32 @ZSTD_decompressDCtx(i8*, i8*, i64, i32*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @FUZZ_dataProducer_free(i32*) #1

declare dso_local i32 @ZSTD_freeDDict(i8*) #1

declare dso_local i32 @ZSTD_freeDCtx(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
