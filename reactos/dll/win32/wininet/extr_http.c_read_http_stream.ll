; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_read_http_stream.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_read_http_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 (%struct.TYPE_11__*, %struct.TYPE_10__*, i32*, i64, i64*, i32)*, i64 (%struct.TYPE_11__*, %struct.TYPE_10__*)* }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"WriteFile failed: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, i32*, i64, i64*, i32)* @read_http_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_http_stream(%struct.TYPE_10__* %0, i32* %1, i64 %2, i64* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64 (%struct.TYPE_11__*, %struct.TYPE_10__*, i32*, i64, i64*, i32)*, i64 (%struct.TYPE_11__*, %struct.TYPE_10__*, i32*, i64, i64*, i32)** %19, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64*, i64** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i64 %20(%struct.TYPE_11__* %23, %struct.TYPE_10__* %24, i32* %25, i64 %26, i64* %27, i32 %28)
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* @ERROR_SUCCESS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i64*, i64** %9, align 8
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %33, %5
  %36 = load i64*, i64** %9, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp sle i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %90

46:                                               ; preds = %35
  %47 = load i64*, i64** %9, align 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load i64*, i64** %9, align 8
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @WriteFile(i64 %53, i32* %54, i64 %56, i64* %13, i32* null)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %50
  %61 = call i32 (...) @GetLastError()
  %62 = call i32 @FIXME(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %60, %50
  br label %64

64:                                               ; preds = %63, %46
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* @ERROR_SUCCESS, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i64*, i64** %9, align 8
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %68, %64
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i64 (%struct.TYPE_11__*, %struct.TYPE_10__*)*, i64 (%struct.TYPE_11__*, %struct.TYPE_10__*)** %78, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %84 = call i64 %79(%struct.TYPE_11__* %82, %struct.TYPE_10__* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %72, %68
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %88 = call i32 @commit_cache_entry(%struct.TYPE_10__* %87)
  br label %89

89:                                               ; preds = %86, %72
  br label %90

90:                                               ; preds = %89, %35
  %91 = load i64, i64* %11, align 8
  ret i64 %91
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @WriteFile(i64, i32*, i64, i64*, i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @commit_cache_entry(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
