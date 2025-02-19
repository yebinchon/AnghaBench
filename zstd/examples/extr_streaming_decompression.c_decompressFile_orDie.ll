; ModuleID = '/home/carl/AnghaBench/zstd/examples/extr_streaming_decompression.c_decompressFile_orDie.c'
source_filename = "/home/carl/AnghaBench/zstd/examples/extr_streaming_decompression.c_decompressFile_orDie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i64, i64, i64, i32 }
%struct.TYPE_5__ = type { i8*, i64, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stdout = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"ZSTD_createDCtx() failed!\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"input is empty\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"EOF before end of stream: %zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @decompressFile_orDie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decompressFile_orDie(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__, align 8
  %15 = alloca %struct.TYPE_5__, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = call i32* @fopen_orDie(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %18, i32** %3, align 8
  %19 = call i64 (...) @ZSTD_DStreamInSize()
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i8* @malloc_orDie(i64 %20)
  store i8* %21, i8** %5, align 8
  %22 = load i32*, i32** @stdout, align 8
  store i32* %22, i32** %6, align 8
  %23 = call i64 (...) @ZSTD_DStreamOutSize()
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i8* @malloc_orDie(i64 %24)
  store i8* %25, i8** %8, align 8
  %26 = call i32* (...) @ZSTD_createDCtx()
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = icmp ne i32* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @CHECK(i32 %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i64, i64* %4, align 8
  store i64 %31, i64* %10, align 8
  store i64 0, i64* %12, align 8
  store i32 1, i32* %13, align 4
  br label %32

32:                                               ; preds = %69, %1
  %33 = load i8*, i8** %5, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = call i64 @fread_orDie(i8* %33, i64 %34, i32* %35)
  store i64 %36, i64* %11, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %70

38:                                               ; preds = %32
  store i32 0, i32* %13, align 4
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %40 = load i8*, i8** %5, align 8
  store i8* %40, i8** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %42 = load i64, i64* %11, align 8
  store i64 %42, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 4
  store i32 0, i32* %45, align 8
  br label %46

46:                                               ; preds = %52, %38
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %48, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %54 = load i8*, i8** %8, align 8
  store i8* %54, i8** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %56 = load i64, i64* %7, align 8
  store i64 %56, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  store i32 0, i32* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 3
  store i32 0, i32* %58, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = call i64 @ZSTD_decompressStream(i32* %59, %struct.TYPE_5__* %15, %struct.TYPE_6__* %14)
  store i64 %60, i64* %16, align 8
  %61 = load i64, i64* %16, align 8
  %62 = call i32 @CHECK_ZSTD(i64 %61)
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @fwrite_orDie(i8* %63, i32 %65, i32* %66)
  %68 = load i64, i64* %16, align 8
  store i64 %68, i64* %12, align 8
  br label %46

69:                                               ; preds = %46
  br label %32

70:                                               ; preds = %32
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* @stderr, align 4
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %76 = call i32 @exit(i32 1) #3
  unreachable

77:                                               ; preds = %70
  %78 = load i64, i64* %12, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i32, i32* @stderr, align 4
  %82 = load i64, i64* %12, align 8
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %82)
  %84 = call i32 @exit(i32 1) #3
  unreachable

85:                                               ; preds = %77
  %86 = load i32*, i32** %9, align 8
  %87 = call i32 @ZSTD_freeDCtx(i32* %86)
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 @fclose_orDie(i32* %88)
  %90 = load i32*, i32** %6, align 8
  %91 = call i32 @fclose_orDie(i32* %90)
  %92 = load i8*, i8** %5, align 8
  %93 = call i32 @free(i8* %92)
  %94 = load i8*, i8** %8, align 8
  %95 = call i32 @free(i8* %94)
  ret void
}

declare dso_local i32* @fopen_orDie(i8*, i8*) #1

declare dso_local i64 @ZSTD_DStreamInSize(...) #1

declare dso_local i8* @malloc_orDie(i64) #1

declare dso_local i64 @ZSTD_DStreamOutSize(...) #1

declare dso_local i32* @ZSTD_createDCtx(...) #1

declare dso_local i32 @CHECK(i32, i8*) #1

declare dso_local i64 @fread_orDie(i8*, i64, i32*) #1

declare dso_local i64 @ZSTD_decompressStream(i32*, %struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i32 @CHECK_ZSTD(i64) #1

declare dso_local i32 @fwrite_orDie(i8*, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @ZSTD_freeDCtx(i32*) #1

declare dso_local i32 @fclose_orDie(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
