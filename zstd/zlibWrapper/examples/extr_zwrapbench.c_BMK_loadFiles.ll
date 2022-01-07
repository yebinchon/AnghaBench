; ModuleID = '/home/carl/AnghaBench/zstd/zlibWrapper/examples/extr_zwrapbench.c_BMK_loadFiles.c'
source_filename = "/home/carl/AnghaBench/zstd/zlibWrapper/examples/extr_zwrapbench.c_BMK_loadFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"Ignoring %s directory...       \0A\00", align 1
@UTIL_FILESIZE_UNKNOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Cannot determine size of %s ...    \0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"impossible to open file %s\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Loading %s...       \0D\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"could not read %s\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"no data to bench\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64*, i8**, i32)* @BMK_loadFiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BMK_loadFiles(i8* %0, i64 %1, i64* %2, i8** %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32 %4, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %125, %5
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %128

21:                                               ; preds = %17
  %22 = load i8**, i8*** %9, align 8
  %23 = load i32, i32* %13, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @UTIL_getFileSize(i8* %26)
  store i64 %27, i64* %15, align 8
  %28 = load i8**, i8*** %9, align 8
  %29 = load i32, i32* %13, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @UTIL_isDirectory(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %21
  %36 = load i8**, i8*** %9, align 8
  %37 = load i32, i32* %13, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %40)
  %42 = load i64*, i64** %8, align 8
  %43 = load i32, i32* %13, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  store i64 0, i64* %45, align 8
  br label %125

46:                                               ; preds = %21
  %47 = load i64, i64* %15, align 8
  %48 = load i64, i64* @UTIL_FILESIZE_UNKNOWN, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load i8**, i8*** %9, align 8
  %52 = load i32, i32* %13, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  %57 = load i64*, i64** %8, align 8
  %58 = load i32, i32* %13, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  store i64 0, i64* %60, align 8
  br label %125

61:                                               ; preds = %46
  %62 = load i8**, i8*** %9, align 8
  %63 = load i32, i32* %13, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i32* @fopen(i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %67, i32** %14, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %61
  %71 = load i8**, i8*** %9, align 8
  %72 = load i32, i32* %13, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 (i32, i8*, ...) @EXM_THROW(i32 10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %75)
  br label %77

77:                                               ; preds = %70, %61
  %78 = load i8**, i8*** %9, align 8
  %79 = load i32, i32* %13, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @DISPLAYUPDATE(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %82)
  %84 = load i64, i64* %15, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* %11, align 8
  %87 = sub i64 %85, %86
  %88 = icmp ugt i64 %84, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %77
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* %11, align 8
  %92 = sub i64 %90, %91
  store i64 %92, i64* %15, align 8
  %93 = load i32, i32* %13, align 4
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %89, %77
  %95 = load i8*, i8** %6, align 8
  %96 = load i64, i64* %11, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  %98 = load i64, i64* %15, align 8
  %99 = load i32*, i32** %14, align 8
  %100 = call i64 @fread(i8* %97, i32 1, i64 %98, i32* %99)
  store i64 %100, i64* %16, align 8
  %101 = load i64, i64* %16, align 8
  %102 = load i64, i64* %15, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %94
  %105 = load i8**, i8*** %9, align 8
  %106 = load i32, i32* %13, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 (i32, i8*, ...) @EXM_THROW(i32 11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %109)
  br label %111

111:                                              ; preds = %104, %94
  %112 = load i64, i64* %16, align 8
  %113 = load i64, i64* %11, align 8
  %114 = add i64 %113, %112
  store i64 %114, i64* %11, align 8
  %115 = load i64, i64* %15, align 8
  %116 = load i64*, i64** %8, align 8
  %117 = load i32, i32* %13, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  store i64 %115, i64* %119, align 8
  %120 = load i64, i64* %15, align 8
  %121 = load i64, i64* %12, align 8
  %122 = add i64 %121, %120
  store i64 %122, i64* %12, align 8
  %123 = load i32*, i32** %14, align 8
  %124 = call i32 @fclose(i32* %123)
  br label %125

125:                                              ; preds = %111, %50, %35
  %126 = load i32, i32* %13, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %13, align 4
  br label %17

128:                                              ; preds = %17
  %129 = load i64, i64* %12, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = call i32 (i32, i8*, ...) @EXM_THROW(i32 12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %133

133:                                              ; preds = %131, %128
  ret void
}

declare dso_local i64 @UTIL_getFileSize(i8*) #1

declare dso_local i64 @UTIL_isDirectory(i8*) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @EXM_THROW(i32, i8*, ...) #1

declare dso_local i32 @DISPLAYUPDATE(i32, i8*, i8*) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
