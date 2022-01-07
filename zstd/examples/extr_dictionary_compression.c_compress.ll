; ModuleID = '/home/carl/AnghaBench/zstd/examples/extr_dictionary_compression.c_compress.c'
source_filename = "/home/carl/AnghaBench/zstd/examples/extr_dictionary_compression.c_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"ZSTD_createCCtx() failed!\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%25s : %6u -> %7u - %s \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32*)* @compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compress(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @mallocAndLoadFile_orDie(i8* %13, i64* %7)
  store i8* %14, i8** %8, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i64 @ZSTD_compressBound(i64 %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i8* @malloc_orDie(i64 %17)
  store i8* %18, i8** %10, align 8
  %19 = call i32* (...) @ZSTD_createCCtx()
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @CHECK(i32 %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %24 = load i32*, i32** %11, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @ZSTD_compress_usingCDict(i32* %24, i8* %25, i64 %26, i8* %27, i64 %28, i32* %29)
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  %32 = call i32 @CHECK_ZSTD(i64 %31)
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i64, i64* %12, align 8
  %36 = call i32 @saveFile_orDie(i8* %33, i8* %34, i64 %35)
  %37 = load i8*, i8** %4, align 8
  %38 = load i64, i64* %7, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i64, i64* %12, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %37, i32 %39, i32 %41, i8* %42)
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @ZSTD_freeCCtx(i32* %44)
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @free(i8* %48)
  ret void
}

declare dso_local i8* @mallocAndLoadFile_orDie(i8*, i64*) #1

declare dso_local i64 @ZSTD_compressBound(i64) #1

declare dso_local i8* @malloc_orDie(i64) #1

declare dso_local i32* @ZSTD_createCCtx(...) #1

declare dso_local i32 @CHECK(i32, i8*) #1

declare dso_local i64 @ZSTD_compress_usingCDict(i32*, i8*, i64, i8*, i64, i32*) #1

declare dso_local i32 @CHECK_ZSTD(i64) #1

declare dso_local i32 @saveFile_orDie(i8*, i8*, i64) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32, i8*) #1

declare dso_local i32 @ZSTD_freeCCtx(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
