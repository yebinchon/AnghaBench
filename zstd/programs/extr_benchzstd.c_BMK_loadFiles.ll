; ModuleID = '/home/carl/AnghaBench/zstd/programs/extr_benchzstd.c_BMK_loadFiles.c'
source_filename = "/home/carl/AnghaBench/zstd/programs/extr_benchzstd.c_BMK_loadFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"Ignoring %s directory...       \0A\00", align 1
@UTIL_FILESIZE_UNKNOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Cannot evaluate size of %s, ignoring ... \0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"impossible to open file %s\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Loading %s...       \0D\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"could not read %s\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"no data to bench\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64*, i8**, i32, i32)* @BMK_loadFiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BMK_loadFiles(i8* %0, i64 %1, i64* %2, i8** %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  br label %19

19:                                               ; preds = %127, %6
  %20 = load i32, i32* %15, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %130

23:                                               ; preds = %19
  %24 = load i8**, i8*** %10, align 8
  %25 = load i32, i32* %15, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @UTIL_getFileSize(i8* %28)
  store i64 %29, i64* %16, align 8
  %30 = load i8**, i8*** %10, align 8
  %31 = load i32, i32* %15, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @UTIL_isDirectory(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %23
  %38 = load i8**, i8*** %10, align 8
  %39 = load i32, i32* %15, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = load i64*, i64** %9, align 8
  %45 = load i32, i32* %15, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  store i64 0, i64* %47, align 8
  br label %127

48:                                               ; preds = %23
  %49 = load i64, i64* %16, align 8
  %50 = load i64, i64* @UTIL_FILESIZE_UNKNOWN, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = load i8**, i8*** %10, align 8
  %54 = load i32, i32* %15, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  %59 = load i64*, i64** %9, align 8
  %60 = load i32, i32* %15, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  store i64 0, i64* %62, align 8
  br label %127

63:                                               ; preds = %48
  %64 = load i8**, i8*** %10, align 8
  %65 = load i32, i32* %15, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = call i32* @fopen(i8* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %69, i32** %17, align 8
  %70 = load i32*, i32** %17, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %63
  %73 = load i8**, i8*** %10, align 8
  %74 = load i32, i32* %15, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (i32, i8*, ...) @RETURN_ERROR_INT(i32 10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %72, %63
  %80 = load i8**, i8*** %10, align 8
  %81 = load i32, i32* %15, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @DISPLAYUPDATE(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %84)
  %86 = load i64, i64* %16, align 8
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* %13, align 8
  %89 = sub i64 %87, %88
  %90 = icmp ugt i64 %86, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %79
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* %13, align 8
  %94 = sub i64 %92, %93
  store i64 %94, i64* %16, align 8
  %95 = load i32, i32* %15, align 4
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %91, %79
  %97 = load i8*, i8** %7, align 8
  %98 = load i64, i64* %13, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  %100 = load i64, i64* %16, align 8
  %101 = load i32*, i32** %17, align 8
  %102 = call i64 @fread(i8* %99, i32 1, i64 %100, i32* %101)
  store i64 %102, i64* %18, align 8
  %103 = load i64, i64* %18, align 8
  %104 = load i64, i64* %16, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %96
  %107 = load i8**, i8*** %10, align 8
  %108 = load i32, i32* %15, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 (i32, i8*, ...) @RETURN_ERROR_INT(i32 11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %111)
  br label %113

113:                                              ; preds = %106, %96
  %114 = load i64, i64* %18, align 8
  %115 = load i64, i64* %13, align 8
  %116 = add i64 %115, %114
  store i64 %116, i64* %13, align 8
  %117 = load i64, i64* %16, align 8
  %118 = load i64*, i64** %9, align 8
  %119 = load i32, i32* %15, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  store i64 %117, i64* %121, align 8
  %122 = load i64, i64* %16, align 8
  %123 = load i64, i64* %14, align 8
  %124 = add i64 %123, %122
  store i64 %124, i64* %14, align 8
  %125 = load i32*, i32** %17, align 8
  %126 = call i32 @fclose(i32* %125)
  br label %127

127:                                              ; preds = %113, %52, %37
  %128 = load i32, i32* %15, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %15, align 4
  br label %19

130:                                              ; preds = %19
  %131 = load i64, i64* %14, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = call i32 (i32, i8*, ...) @RETURN_ERROR_INT(i32 12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %130
  ret i32 0
}

declare dso_local i64 @UTIL_getFileSize(i8*) #1

declare dso_local i64 @UTIL_isDirectory(i8*) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @RETURN_ERROR_INT(i32, i8*, ...) #1

declare dso_local i32 @DISPLAYUPDATE(i32, i8*, i8*) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
