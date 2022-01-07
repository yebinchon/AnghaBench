; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/imageio/extr_imageio_util.c_ImgIoUtilReadFile.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/imageio/extr_imageio_util.c_ImgIoUtilReadFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"cannot open input file '%s'\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"memory allocation failure when reading file %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Could not read %d bytes of data from file %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ImgIoUtilReadFile(i8* %0, i8** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @WSTRCMP(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %15, %3
  %21 = phi i1 [ true, %3 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i8**, i8*** %6, align 8
  %27 = load i64*, i64** %7, align 8
  %28 = call i32 @ImgIoUtilReadFromStdin(i8** %26, i64* %27)
  store i32 %28, i32* %4, align 4
  br label %100

29:                                               ; preds = %20
  %30 = load i8**, i8*** %6, align 8
  %31 = icmp eq i8** %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i64*, i64** %7, align 8
  %34 = icmp eq i64* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %29
  store i32 0, i32* %4, align 4
  br label %100

36:                                               ; preds = %32
  %37 = load i8**, i8*** %6, align 8
  store i8* null, i8** %37, align 8
  %38 = load i64*, i64** %7, align 8
  store i64 0, i64* %38, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i32* @WFOPEN(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %40, i32** %11, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load i32, i32* @stderr, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = bitcast i8* %45 to i32*
  %47 = ptrtoint i32* %46 to i32
  %48 = call i32 (i32, i8*, i32, ...) @WFPRINTF(i32 %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  store i32 0, i32* %4, align 4
  br label %100

49:                                               ; preds = %36
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* @SEEK_END, align 4
  %52 = call i32 @fseek(i32* %50, i32 0, i32 %51)
  %53 = load i32*, i32** %11, align 8
  %54 = call i64 @ftell(i32* %53)
  store i64 %54, i64* %10, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* @SEEK_SET, align 4
  %57 = call i32 @fseek(i32* %55, i32 0, i32 %56)
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, 1
  %60 = call i64 @malloc(i64 %59)
  %61 = inttoptr i64 %60 to i8*
  store i8* %61, i8** %9, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %49
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @fclose(i32* %65)
  %67 = load i32, i32* @stderr, align 4
  %68 = load i8*, i8** %5, align 8
  %69 = bitcast i8* %68 to i32*
  %70 = ptrtoint i32* %69 to i32
  %71 = call i32 (i32, i8*, i32, ...) @WFPRINTF(i32 %67, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  store i32 0, i32* %4, align 4
  br label %100

72:                                               ; preds = %49
  %73 = load i8*, i8** %9, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @fread(i8* %73, i64 %74, i32 1, i32* %75)
  %77 = icmp eq i32 %76, 1
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %8, align 4
  %79 = load i32*, i32** %11, align 8
  %80 = call i32 @fclose(i32* %79)
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %72
  %84 = load i32, i32* @stderr, align 4
  %85 = load i64, i64* %10, align 8
  %86 = trunc i64 %85 to i32
  %87 = load i8*, i8** %5, align 8
  %88 = bitcast i8* %87 to i32*
  %89 = call i32 (i32, i8*, i32, ...) @WFPRINTF(i32 %84, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %86, i32* %88)
  %90 = load i8*, i8** %9, align 8
  %91 = call i32 @free(i8* %90)
  store i32 0, i32* %4, align 4
  br label %100

92:                                               ; preds = %72
  %93 = load i8*, i8** %9, align 8
  %94 = load i64, i64* %10, align 8
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  store i8 0, i8* %95, align 1
  %96 = load i8*, i8** %9, align 8
  %97 = load i8**, i8*** %6, align 8
  store i8* %96, i8** %97, align 8
  %98 = load i64, i64* %10, align 8
  %99 = load i64*, i64** %7, align 8
  store i64 %98, i64* %99, align 8
  store i32 1, i32* %4, align 4
  br label %100

100:                                              ; preds = %92, %83, %64, %43, %35, %25
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @WSTRCMP(i8*, i8*) #1

declare dso_local i32 @ImgIoUtilReadFromStdin(i8**, i64*) #1

declare dso_local i32* @WFOPEN(i8*, i8*) #1

declare dso_local i32 @WFPRINTF(i32, i8*, i32, ...) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fread(i8*, i64, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
