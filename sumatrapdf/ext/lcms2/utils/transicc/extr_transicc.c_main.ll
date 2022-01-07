; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/transicc/extr_transicc.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/transicc/extr_transicc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmsMAXCHANNELS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"LittleCMS ColorSpace conversion calculator - 4.3 [LittleCMS %2.2f]\0A\00", align 1
@LCMS_VERSION = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"transicc\00", align 1
@Verbose = common dso_local global i32 0, align 4
@hIT8in = common dso_local global i32* null, align 8
@nMaxPatches = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@lIsFloat = common dso_local global i64 0, align 8
@hTrans = common dso_local global i32 0, align 4
@hIT8out = common dso_local global i32* null, align 8
@CGATSoutFilename = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* @cmsMAXCHANNELS, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* @cmsMAXCHANNELS, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %20 = load i32, i32* @cmsMAXCHANNELS, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %23 = load i32, i32* @stderr, align 4
  %24 = load double, double* @LCMS_VERSION, align 8
  %25 = fdiv double %24, 1.000000e+03
  %26 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), double %25)
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @InitUtils(i32* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* @Verbose, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = call i32 (...) @Help()
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %121

33:                                               ; preds = %2
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i8**, i8*** %5, align 8
  %37 = call i32 @HandleSwitches(i32* %34, i32 %35, i8** %36)
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @OpenTransforms(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %121

42:                                               ; preds = %33
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i8**, i8*** %5, align 8
  %46 = call i32 @OpenCGATSFiles(i32* %43, i32 %44, i8** %45)
  br label %47

47:                                               ; preds = %99, %42
  %48 = load i32*, i32** @hIT8in, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @nMaxPatches, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %100

55:                                               ; preds = %50
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  %59 = call i32 @TakeCGATSValues(i32* %56, i32 %57, i32* %22)
  br label %68

60:                                               ; preds = %47
  %61 = load i32, i32* @stdin, align 4
  %62 = call i64 @feof(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %100

65:                                               ; preds = %60
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @TakeFloatValues(i32* %66, i32* %22)
  br label %68

68:                                               ; preds = %65, %55
  %69 = load i64, i64* @lIsFloat, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* @hTrans, align 4
  %74 = call i32 @cmsDoTransform(i32* %72, i32 %73, i32* %22, i32* %19, i32 1)
  br label %79

75:                                               ; preds = %68
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* @hTrans, align 4
  %78 = call i32 @cmsDoTransform(i32* %76, i32 %77, i32* %22, i32* %16, i32 1)
  br label %79

79:                                               ; preds = %75, %71
  %80 = load i32*, i32** @hIT8out, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32*, i32** %10, align 8
  %84 = call i32 @PutCGATSValues(i32* %83, i32* %19)
  br label %99

85:                                               ; preds = %79
  %86 = load i64, i64* @lIsFloat, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i32*, i32** %10, align 8
  %90 = call i32 @PrintFloatResults(i32* %89, i32* %19)
  %91 = load i32*, i32** %10, align 8
  %92 = call i32 @PrintPCSFloat(i32* %91, i32* %22)
  br label %98

93:                                               ; preds = %85
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @PrintEncodedResults(i32* %94, i32* %16)
  %96 = load i32*, i32** %10, align 8
  %97 = call i32 @PrintPCSEncoded(i32* %96, i32* %22)
  br label %98

98:                                               ; preds = %93, %88
  br label %99

99:                                               ; preds = %98, %82
  br label %47

100:                                              ; preds = %64, %54
  %101 = load i32*, i32** %10, align 8
  %102 = call i32 @CloseTransforms(i32* %101)
  %103 = load i32*, i32** @hIT8in, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i32*, i32** %10, align 8
  %107 = load i32*, i32** @hIT8in, align 8
  %108 = call i32 @cmsIT8Free(i32* %106, i32* %107)
  br label %109

109:                                              ; preds = %105, %100
  %110 = load i32*, i32** @hIT8out, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load i32*, i32** %10, align 8
  %114 = load i32*, i32** @hIT8out, align 8
  %115 = load i32, i32* @CGATSoutFilename, align 4
  %116 = call i32 @cmsIT8SaveToFile(i32* %113, i32* %114, i32 %115)
  %117 = load i32*, i32** %10, align 8
  %118 = load i32*, i32** @hIT8out, align 8
  %119 = call i32 @cmsIT8Free(i32* %117, i32* %118)
  br label %120

120:                                              ; preds = %112, %109
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %121

121:                                              ; preds = %120, %41, %31
  %122 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fprintf(i32, i8*, double) #2

declare dso_local i32 @InitUtils(i32*, i8*) #2

declare dso_local i32 @Help(...) #2

declare dso_local i32 @HandleSwitches(i32*, i32, i8**) #2

declare dso_local i32 @OpenTransforms(i32*) #2

declare dso_local i32 @OpenCGATSFiles(i32*, i32, i8**) #2

declare dso_local i32 @TakeCGATSValues(i32*, i32, i32*) #2

declare dso_local i64 @feof(i32) #2

declare dso_local i32 @TakeFloatValues(i32*, i32*) #2

declare dso_local i32 @cmsDoTransform(i32*, i32, i32*, i32*, i32) #2

declare dso_local i32 @PutCGATSValues(i32*, i32*) #2

declare dso_local i32 @PrintFloatResults(i32*, i32*) #2

declare dso_local i32 @PrintPCSFloat(i32*, i32*) #2

declare dso_local i32 @PrintEncodedResults(i32*, i32*) #2

declare dso_local i32 @PrintPCSEncoded(i32*, i32*) #2

declare dso_local i32 @CloseTransforms(i32*) #2

declare dso_local i32 @cmsIT8Free(i32*, i32*) #2

declare dso_local i32 @cmsIT8SaveToFile(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
