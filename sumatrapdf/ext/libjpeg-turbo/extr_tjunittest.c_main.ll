; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_tjunittest.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_tjunittest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"-yuv\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"-alloc\00", align 1
@alloc = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-?\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Testing automatic buffer allocation\0A\00", align 1
@YUVENCODE = common dso_local global i32 0, align 4
@yuv = common dso_local global i32 0, align 4
@_3byteFormats = common dso_local global i32 0, align 4
@TJSAMP_444 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@_4byteFormats = common dso_local global i32 0, align 4
@TJSAMP_422 = common dso_local global i32 0, align 4
@TJSAMP_420 = common dso_local global i32 0, align 4
@TJSAMP_440 = common dso_local global i32 0, align 4
@_onlyGray = common dso_local global i32 0, align 4
@TJSAMP_GRAY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"\0A--------------------\0A\0A\00", align 1
@YUVDECODE = common dso_local global i32 0, align 4
@_onlyRGB = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"test_yuv0\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"test_yuv1\00", align 1
@exitStatus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %59

10:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %11

11:                                               ; preds = %55, %10
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %58

15:                                               ; preds = %11
  %16 = load i8**, i8*** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  store i32 1, i32* %6, align 4
  br label %24

24:                                               ; preds = %23, %15
  %25 = load i8**, i8*** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @strcasecmp(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  store i32 1, i32* @alloc, align 4
  br label %33

33:                                               ; preds = %32, %24
  %34 = load i8**, i8*** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @strncasecmp(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %33
  %42 = load i8**, i8*** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %41, %33
  %50 = load i8**, i8*** %5, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @usage(i8* %52)
  br label %54

54:                                               ; preds = %49, %41
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %11

58:                                               ; preds = %11
  br label %59

59:                                               ; preds = %58, %2
  %60 = load i32, i32* @alloc, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %59
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* @YUVENCODE, align 4
  store i32 %68, i32* @yuv, align 4
  store i32 0, i32* @alloc, align 4
  br label %69

69:                                               ; preds = %67, %64
  %70 = load i32, i32* @_3byteFormats, align 4
  %71 = load i32, i32* @TJSAMP_444, align 4
  %72 = call i32 @doTest(i32 35, i32 39, i32 %70, i32 2, i32 %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %73 = load i32, i32* @_4byteFormats, align 4
  %74 = load i32, i32* @TJSAMP_444, align 4
  %75 = call i32 @doTest(i32 39, i32 41, i32 %73, i32 4, i32 %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %76 = load i32, i32* @_3byteFormats, align 4
  %77 = load i32, i32* @TJSAMP_422, align 4
  %78 = call i32 @doTest(i32 41, i32 35, i32 %76, i32 2, i32 %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %79 = load i32, i32* @_4byteFormats, align 4
  %80 = load i32, i32* @TJSAMP_422, align 4
  %81 = call i32 @doTest(i32 35, i32 39, i32 %79, i32 4, i32 %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %82 = load i32, i32* @_3byteFormats, align 4
  %83 = load i32, i32* @TJSAMP_420, align 4
  %84 = call i32 @doTest(i32 39, i32 41, i32 %82, i32 2, i32 %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %85 = load i32, i32* @_4byteFormats, align 4
  %86 = load i32, i32* @TJSAMP_420, align 4
  %87 = call i32 @doTest(i32 41, i32 35, i32 %85, i32 4, i32 %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %88 = load i32, i32* @_3byteFormats, align 4
  %89 = load i32, i32* @TJSAMP_440, align 4
  %90 = call i32 @doTest(i32 35, i32 39, i32 %88, i32 2, i32 %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %91 = load i32, i32* @_4byteFormats, align 4
  %92 = load i32, i32* @TJSAMP_440, align 4
  %93 = call i32 @doTest(i32 39, i32 41, i32 %91, i32 4, i32 %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %94 = load i32, i32* @_onlyGray, align 4
  %95 = load i32, i32* @TJSAMP_GRAY, align 4
  %96 = call i32 @doTest(i32 35, i32 39, i32 %94, i32 1, i32 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %97 = load i32, i32* @_3byteFormats, align 4
  %98 = load i32, i32* @TJSAMP_GRAY, align 4
  %99 = call i32 @doTest(i32 39, i32 41, i32 %97, i32 2, i32 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %100 = load i32, i32* @_4byteFormats, align 4
  %101 = load i32, i32* @TJSAMP_GRAY, align 4
  %102 = call i32 @doTest(i32 41, i32 35, i32 %100, i32 4, i32 %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %103 = call i32 (...) @bufSizeTest()
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %145

106:                                              ; preds = %69
  %107 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %108 = load i32, i32* @YUVDECODE, align 4
  store i32 %108, i32* @yuv, align 4
  %109 = load i32, i32* @_onlyRGB, align 4
  %110 = load i32, i32* @TJSAMP_444, align 4
  %111 = call i32 @doTest(i32 48, i32 48, i32 %109, i32 1, i32 %110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %112 = load i32, i32* @_onlyRGB, align 4
  %113 = load i32, i32* @TJSAMP_444, align 4
  %114 = call i32 @doTest(i32 35, i32 39, i32 %112, i32 1, i32 %113, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %115 = load i32, i32* @_onlyRGB, align 4
  %116 = load i32, i32* @TJSAMP_422, align 4
  %117 = call i32 @doTest(i32 48, i32 48, i32 %115, i32 1, i32 %116, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %118 = load i32, i32* @_onlyRGB, align 4
  %119 = load i32, i32* @TJSAMP_422, align 4
  %120 = call i32 @doTest(i32 39, i32 41, i32 %118, i32 1, i32 %119, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %121 = load i32, i32* @_onlyRGB, align 4
  %122 = load i32, i32* @TJSAMP_420, align 4
  %123 = call i32 @doTest(i32 48, i32 48, i32 %121, i32 1, i32 %122, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %124 = load i32, i32* @_onlyRGB, align 4
  %125 = load i32, i32* @TJSAMP_420, align 4
  %126 = call i32 @doTest(i32 41, i32 35, i32 %124, i32 1, i32 %125, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %127 = load i32, i32* @_onlyRGB, align 4
  %128 = load i32, i32* @TJSAMP_440, align 4
  %129 = call i32 @doTest(i32 48, i32 48, i32 %127, i32 1, i32 %128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %130 = load i32, i32* @_onlyRGB, align 4
  %131 = load i32, i32* @TJSAMP_440, align 4
  %132 = call i32 @doTest(i32 35, i32 39, i32 %130, i32 1, i32 %131, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %133 = load i32, i32* @_onlyRGB, align 4
  %134 = load i32, i32* @TJSAMP_GRAY, align 4
  %135 = call i32 @doTest(i32 48, i32 48, i32 %133, i32 1, i32 %134, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %136 = load i32, i32* @_onlyRGB, align 4
  %137 = load i32, i32* @TJSAMP_GRAY, align 4
  %138 = call i32 @doTest(i32 35, i32 39, i32 %136, i32 1, i32 %137, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %139 = load i32, i32* @_onlyGray, align 4
  %140 = load i32, i32* @TJSAMP_GRAY, align 4
  %141 = call i32 @doTest(i32 48, i32 48, i32 %139, i32 1, i32 %140, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %142 = load i32, i32* @_onlyGray, align 4
  %143 = load i32, i32* @TJSAMP_GRAY, align 4
  %144 = call i32 @doTest(i32 39, i32 41, i32 %142, i32 1, i32 %143, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %145

145:                                              ; preds = %106, %69
  %146 = load i32, i32* @exitStatus, align 4
  ret i32 %146
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @doTest(i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @bufSizeTest(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
