; ModuleID = '/home/carl/AnghaBench/zstd/lib/dictBuilder/extr_zdict.c_ZDICT_finalizeDictionary.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/dictBuilder/extr_zdict.c_ZDICT_finalizeDictionary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@g_compressionLevel_default = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ZDICT_finalizeDictionary\00", align 1
@dstSize_tooSmall = common dso_local global i32 0, align 4
@ZDICT_CONTENTSIZE_MIN = common dso_local global i64 0, align 8
@srcSize_wrong = common dso_local global i32 0, align 4
@ZDICT_DICTSIZE_MIN = common dso_local global i64 0, align 8
@ZSTD_MAGIC_DICTIONARY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"\0D%70s\0D\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"statistics ... \0A\00", align 1
@HBUFFSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZDICT_finalizeDictionary(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64* %5, i32 %6, %struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca [256 x i32], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  store i8* %0, i8** %10, align 8
  store i64 %1, i64* %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i8* %4, i8** %14, align 8
  store i64* %5, i64** %15, align 8
  store i32 %6, i32* %16, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %8
  %31 = load i32, i32* @g_compressionLevel_default, align 4
  br label %35

32:                                               ; preds = %8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  br label %35

35:                                               ; preds = %32, %30
  %36 = phi i32 [ %31, %30 ], [ %34, %32 ]
  store i32 %36, i32* %19, align 4
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %20, align 4
  %39 = call i32 @DEBUGLOG(i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %13, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* @dstSize_tooSmall, align 4
  %45 = call i64 @ERROR(i32 %44)
  store i64 %45, i64* %9, align 8
  br label %137

46:                                               ; preds = %35
  %47 = load i64, i64* %13, align 8
  %48 = load i64, i64* @ZDICT_CONTENTSIZE_MIN, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @srcSize_wrong, align 4
  %52 = call i64 @ERROR(i32 %51)
  store i64 %52, i64* %9, align 8
  br label %137

53:                                               ; preds = %46
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* @ZDICT_DICTSIZE_MIN, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* @dstSize_tooSmall, align 4
  %59 = call i64 @ERROR(i32 %58)
  store i64 %59, i64* %9, align 8
  br label %137

60:                                               ; preds = %53
  %61 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 0
  %62 = load i32, i32* @ZSTD_MAGIC_DICTIONARY, align 4
  %63 = call i32 @MEM_writeLE32(i32* %61, i32 %62)
  %64 = load i8*, i8** %12, align 8
  %65 = load i64, i64* %13, align 8
  %66 = call i32 @XXH64(i8* %64, i64 %65, i32 0)
  store i32 %66, i32* %21, align 4
  %67 = load i32, i32* %21, align 4
  %68 = urem i32 %67, 2147450880
  %69 = add i32 %68, 32768
  store i32 %69, i32* %22, align 4
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %60
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  br label %78

76:                                               ; preds = %60
  %77 = load i32, i32* %22, align 4
  br label %78

78:                                               ; preds = %76, %73
  %79 = phi i32 [ %75, %73 ], [ %77, %76 ]
  store i32 %79, i32* %23, align 4
  %80 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 0
  %81 = getelementptr inbounds i32, i32* %80, i64 4
  %82 = load i32, i32* %23, align 4
  %83 = call i32 @MEM_writeLE32(i32* %81, i32 %82)
  store i64 8, i64* %17, align 8
  %84 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %85 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %86 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 0
  %87 = load i64, i64* %17, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i64, i64* %17, align 8
  %90 = sub i64 256, %89
  %91 = trunc i64 %90 to i32
  %92 = load i32, i32* %19, align 4
  %93 = load i8*, i8** %14, align 8
  %94 = load i64*, i64** %15, align 8
  %95 = load i32, i32* %16, align 4
  %96 = load i8*, i8** %12, align 8
  %97 = load i64, i64* %13, align 8
  %98 = load i32, i32* %20, align 4
  %99 = call i64 @ZDICT_analyzeEntropy(i32* %88, i32 %91, i32 %92, i8* %93, i64* %94, i32 %95, i8* %96, i64 %97, i32 %98)
  store i64 %99, i64* %24, align 8
  %100 = load i64, i64* %24, align 8
  %101 = call i64 @ZDICT_isError(i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %78
  %104 = load i64, i64* %24, align 8
  store i64 %104, i64* %9, align 8
  br label %137

105:                                              ; preds = %78
  %106 = load i64, i64* %24, align 8
  %107 = load i64, i64* %17, align 8
  %108 = add i64 %107, %106
  store i64 %108, i64* %17, align 8
  %109 = load i64, i64* %17, align 8
  %110 = load i64, i64* %13, align 8
  %111 = add i64 %109, %110
  %112 = load i64, i64* %11, align 8
  %113 = icmp ugt i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %105
  %115 = load i64, i64* %11, align 8
  %116 = load i64, i64* %17, align 8
  %117 = sub i64 %115, %116
  store i64 %117, i64* %13, align 8
  br label %118

118:                                              ; preds = %114, %105
  %119 = load i64, i64* %17, align 8
  %120 = load i64, i64* %13, align 8
  %121 = add i64 %119, %120
  store i64 %121, i64* %25, align 8
  %122 = load i8*, i8** %10, align 8
  %123 = load i64, i64* %25, align 8
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  store i8* %124, i8** %26, align 8
  %125 = load i8*, i8** %26, align 8
  %126 = load i64, i64* %13, align 8
  %127 = sub i64 0, %126
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = load i8*, i8** %12, align 8
  %130 = load i64, i64* %13, align 8
  %131 = call i32 @memmove(i8* %128, i8* %129, i64 %130)
  %132 = load i8*, i8** %10, align 8
  %133 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 0
  %134 = load i64, i64* %17, align 8
  %135 = call i32 @memcpy(i8* %132, i32* %133, i64 %134)
  %136 = load i64, i64* %25, align 8
  store i64 %136, i64* %9, align 8
  br label %137

137:                                              ; preds = %118, %103, %57, %50, %43
  %138 = load i64, i64* %9, align 8
  ret i64 %138
}

declare dso_local i32 @DEBUGLOG(i32, i8*) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @MEM_writeLE32(i32*, i32) #1

declare dso_local i32 @XXH64(i8*, i64, i32) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, ...) #1

declare dso_local i64 @ZDICT_analyzeEntropy(i32*, i32, i32, i8*, i64*, i32, i8*, i64, i32) #1

declare dso_local i64 @ZDICT_isError(i64) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
