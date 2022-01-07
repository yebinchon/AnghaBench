; ModuleID = '/home/carl/AnghaBench/zstd/tests/extr_fullbench.c_benchFiles.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/extr_fullbench.c_benchFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Pb opening %s\0A\00", align 1
@UTIL_FILESIZE_UNKNOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Cannot measure size of %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"Not enough memory for '%s' full size; testing %u MB only... \0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"\0AError: not enough memory!\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Loading %s...       \0D\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"\0AError: problem reading file '%s' !!    \0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"\0D%70s\0D\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [8 x i8] c" %s : \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32, i32, i32)* @benchFiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @benchFiles(i32 %0, i8** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %128, %5
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %131

23:                                               ; preds = %19
  %24 = load i8**, i8*** %8, align 8
  %25 = load i32, i32* %12, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %13, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = call i32* @fopen(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %30, i32** %14, align 8
  %31 = load i32*, i32** %14, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load i8*, i8** %13, align 8
  %35 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  store i32 11, i32* %6, align 4
  br label %132

36:                                               ; preds = %23
  %37 = load i8*, i8** %13, align 8
  %38 = call i32 @UTIL_getFileSize(i8* %37)
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* @UTIL_FILESIZE_UNKNOWN, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i8*, i8** %13, align 8
  %44 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  %45 = load i32*, i32** %14, align 8
  %46 = call i32 @fclose(i32* %45)
  store i32 11, i32* %6, align 4
  br label %132

47:                                               ; preds = %36
  %48 = load i32, i32* %16, align 4
  %49 = mul nsw i32 %48, 3
  %50 = call i32 @BMK_findMaxMem(i32 %49)
  %51 = sdiv i32 %50, 3
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %15, align 8
  %53 = load i64, i64* %15, align 8
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* %16, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load i32, i32* %16, align 4
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %15, align 8
  br label %60

60:                                               ; preds = %57, %47
  %61 = load i64, i64* %15, align 8
  %62 = trunc i64 %61 to i32
  %63 = load i32, i32* %16, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i8*, i8** %13, align 8
  %67 = load i64, i64* %15, align 8
  %68 = lshr i64 %67, 20
  %69 = trunc i64 %68 to i32
  %70 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i8* %66, i32 %69)
  br label %71

71:                                               ; preds = %65, %60
  %72 = load i64, i64* %15, align 8
  %73 = call i8* @malloc(i64 %72)
  store i8* %73, i8** %17, align 8
  %74 = load i8*, i8** %17, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %71
  %77 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %78 = load i32*, i32** %14, align 8
  %79 = call i32 @fclose(i32* %78)
  store i32 12, i32* %6, align 4
  br label %132

80:                                               ; preds = %71
  %81 = load i8*, i8** %13, align 8
  %82 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %81)
  %83 = load i8*, i8** %17, align 8
  %84 = load i64, i64* %15, align 8
  %85 = load i32*, i32** %14, align 8
  %86 = call i64 @fread(i8* %83, i32 1, i64 %84, i32* %85)
  store i64 %86, i64* %18, align 8
  %87 = load i32*, i32** %14, align 8
  %88 = call i32 @fclose(i32* %87)
  %89 = load i64, i64* %18, align 8
  %90 = load i64, i64* %15, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %80
  %93 = load i8*, i8** %13, align 8
  %94 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i8* %93)
  %95 = load i8*, i8** %17, align 8
  %96 = call i32 @free(i8* %95)
  store i32 13, i32* %6, align 4
  br label %132

97:                                               ; preds = %80
  %98 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0))
  %99 = load i8*, i8** %13, align 8
  %100 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %99)
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %97
  %104 = load i32, i32* %7, align 4
  %105 = load i8*, i8** %17, align 8
  %106 = load i64, i64* %15, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @benchMem(i32 %104, i8* %105, i64 %106, i32 %107, i32 %108)
  br label %125

110:                                              ; preds = %97
  store i32 0, i32* %7, align 4
  br label %111

111:                                              ; preds = %121, %110
  %112 = load i32, i32* %7, align 4
  %113 = icmp slt i32 %112, 100
  br i1 %113, label %114, label %124

114:                                              ; preds = %111
  %115 = load i32, i32* %7, align 4
  %116 = load i8*, i8** %17, align 8
  %117 = load i64, i64* %15, align 8
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @benchMem(i32 %115, i8* %116, i64 %117, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %114
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  br label %111

124:                                              ; preds = %111
  br label %125

125:                                              ; preds = %124, %103
  %126 = load i8*, i8** %17, align 8
  %127 = call i32 @free(i8* %126)
  br label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %12, align 4
  br label %19

131:                                              ; preds = %19
  store i32 0, i32* %6, align 4
  br label %132

132:                                              ; preds = %131, %92, %76, %42, %33
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @DISPLAY(i8*, ...) #1

declare dso_local i32 @UTIL_getFileSize(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @BMK_findMaxMem(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @benchMem(i32, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
