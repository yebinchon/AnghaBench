; ModuleID = '/home/carl/AnghaBench/zstd/tests/extr_decodecorpus.c_genRandomDict.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/extr_decodecorpus.c_genRandomDict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"Error: could not allocate space for samples\0A\00", align 1
@ZDICT_CONTENTSIZE_MIN = common dso_local global i64 0, align 8
@ZDICT_DICTSIZE_MIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Error: dictionary size is too small\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Could not finalize dictionary: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, i64*)* @genRandomDict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genRandomDict(i32 %0, i32 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i64], align 16
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_4__, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 4, i32* %11, align 4
  %23 = call i64* @malloc(i32 40000)
  store i64* %23, i64** %13, align 8
  %24 = load i64*, i64** %13, align 8
  %25 = icmp eq i64* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %107

28:                                               ; preds = %4
  store i32 1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i64 1, i64* %16, align 8
  br label %29

29:                                               ; preds = %53, %28
  %30 = load i32, i32* %14, align 4
  %31 = icmp ule i32 %30, 4
  br i1 %31, label %32, label %58

32:                                               ; preds = %29
  %33 = load i64, i64* %16, align 8
  %34 = load i32, i32* %14, align 4
  %35 = sub i32 %34, 1
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 %36
  store i64 %33, i64* %37, align 8
  store i64 0, i64* %17, align 8
  br label %38

38:                                               ; preds = %50, %32
  %39 = load i64, i64* %17, align 8
  %40 = load i64, i64* %16, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load i32, i32* %14, align 4
  %44 = zext i32 %43 to i64
  %45 = load i64*, i64** %13, align 8
  %46 = load i32, i32* %15, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %15, align 4
  %48 = zext i32 %46 to i64
  %49 = getelementptr inbounds i64, i64* %45, i64 %48
  store i64 %44, i64* %49, align 8
  br label %50

50:                                               ; preds = %42
  %51 = load i64, i64* %17, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %17, align 8
  br label %38

53:                                               ; preds = %38
  %54 = load i32, i32* %14, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %14, align 4
  %56 = load i64, i64* %16, align 8
  %57 = mul i64 %56, 16
  store i64 %57, i64* %16, align 8
  br label %29

58:                                               ; preds = %29
  store i64 0, i64* %18, align 8
  %59 = load i64, i64* %8, align 8
  %60 = udiv i64 %59, 4
  %61 = call i64 @MAX(i64 %60, i32 256)
  store i64 %61, i64* %20, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %20, align 8
  %64 = sub i64 %62, %63
  store i64 %64, i64* %21, align 8
  %65 = load i64*, i64** %9, align 8
  %66 = load i64, i64* %20, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  store i64* %67, i64** %22, align 8
  %68 = load i64, i64* %21, align 8
  %69 = load i64, i64* @ZDICT_CONTENTSIZE_MIN, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %58
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* @ZDICT_DICTSIZE_MIN, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71, %58
  %76 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %103

77:                                               ; preds = %71
  %78 = call i32 @memset(%struct.TYPE_4__* %19, i32 0, i32 8)
  %79 = load i32, i32* %6, align 4
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32 %79, i32* %80, align 4
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 1, i32* %81, align 4
  %82 = load i64*, i64** %22, align 8
  %83 = bitcast i64* %82 to i8*
  %84 = load i64, i64* %21, align 8
  %85 = call i32 @RAND_buffer(i32* %7, i8* %83, i64 %84)
  %86 = load i64*, i64** %9, align 8
  %87 = load i64, i64* %8, align 8
  %88 = load i64*, i64** %22, align 8
  %89 = load i64, i64* %21, align 8
  %90 = load i64*, i64** %13, align 8
  %91 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %92 = bitcast %struct.TYPE_4__* %19 to i64*
  %93 = load i64, i64* %92, align 4
  %94 = call i64 @ZDICT_finalizeDictionary(i64* %86, i64 %87, i64* %88, i64 %89, i64* %90, i64* %91, i32 4, i64 %93)
  store i64 %94, i64* %18, align 8
  %95 = load i64, i64* %18, align 8
  %96 = call i64 @ZDICT_isError(i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %77
  %99 = load i64, i64* %18, align 8
  %100 = call i32 @ZDICT_getErrorName(i64 %99)
  %101 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  store i32 1, i32* %10, align 4
  br label %102

102:                                              ; preds = %98, %77
  br label %103

103:                                              ; preds = %102, %75
  %104 = load i64*, i64** %13, align 8
  %105 = call i32 @free(i64* %104)
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %103, %26
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i64* @malloc(i32) #1

declare dso_local i32 @DISPLAY(i8*, ...) #1

declare dso_local i64 @MAX(i64, i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @RAND_buffer(i32*, i8*, i64) #1

declare dso_local i64 @ZDICT_finalizeDictionary(i64*, i64, i64*, i64, i64*, i64*, i32, i64) #1

declare dso_local i64 @ZDICT_isError(i64) #1

declare dso_local i32 @ZDICT_getErrorName(i64) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
