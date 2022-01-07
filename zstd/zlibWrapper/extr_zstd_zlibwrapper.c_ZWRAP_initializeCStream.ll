; ModuleID = '/home/carl/AnghaBench/zstd/zlibWrapper/extr_zstd_zlibwrapper.c_ZWRAP_initializeCStream.c'
source_filename = "/home/carl/AnghaBench/zstd/zlibWrapper/extr_zstd_zlibwrapper.c_ZWRAP_initializeCStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"- ZWRAP_initializeCStream=%p\0A\00", align 1
@Z_STREAM_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [92 x i8] c"pledgedSrcSize=%d windowLog=%d chainLog=%d hashLog=%d searchLog=%d minMatch=%d strategy=%d\0A\00", align 1
@Z_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i64, i64)* @ZWRAP_initializeCStream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ZWRAP_initializeCStream(%struct.TYPE_8__* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %13 = call i32 (i8*, ...) @LOG_WRAPPERC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %12)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = icmp eq %struct.TYPE_8__* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16, %4
  %22 = load i32, i32* @Z_STREAM_ERROR, align 4
  store i32 %22, i32* %5, align 4
  br label %71

23:                                               ; preds = %16
  %24 = load i64, i64* %9, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %9, align 8
  br label %30

30:                                               ; preds = %26, %23
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %8, align 8
  call void @ZSTD_getParams(%struct.TYPE_9__* sret %10, i32 %33, i64 %34, i64 %35)
  %36 = load i64, i64* %9, align 8
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i8*, ...) @LOG_WRAPPERC(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %40, i32 %43, i32 %46, i32 %49, i32 %52, i32 %55)
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i64 @ZSTD_initCStream_advanced(i32* %59, i8* %60, i64 %61, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %10, i64 %62)
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i64 @ZSTD_isError(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %30
  %68 = load i32, i32* @Z_STREAM_ERROR, align 4
  store i32 %68, i32* %5, align 4
  br label %71

69:                                               ; preds = %30
  %70 = load i32, i32* @Z_OK, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %69, %67, %21
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @LOG_WRAPPERC(i8*, ...) #1

declare dso_local void @ZSTD_getParams(%struct.TYPE_9__* sret, i32, i64, i64) #1

declare dso_local i64 @ZSTD_initCStream_advanced(i32*, i8*, i64, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8, i64) #1

declare dso_local i64 @ZSTD_isError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
