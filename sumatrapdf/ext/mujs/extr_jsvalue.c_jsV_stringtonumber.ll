; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsvalue.c_jsV_stringtonumber.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsvalue.c_jsV_stringtonumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"Infinity\00", align 1
@INFINITY = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"+Infinity\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"-Infinity\00", align 1
@NAN = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @jsV_stringtonumber(i32* %0, i8* %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca double, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %8

8:                                                ; preds = %20, %2
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  %11 = call i64 @jsY_iswhite(i8 signext %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = call i64 @jsY_isnewline(i8 signext %15)
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %13, %8
  %19 = phi i1 [ true, %8 ], [ %17, %13 ]
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %5, align 8
  br label %8

23:                                               ; preds = %18
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 48
  br i1 %28, label %29, label %51

29:                                               ; preds = %23
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 120
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 88
  br i1 %40, label %41, label %51

41:                                               ; preds = %35, %29
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  %50 = call double @strtol(i8* %49, i8** %6, i32 16)
  store double %50, double* %7, align 8
  br label %82

51:                                               ; preds = %41, %35, %23
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @strncmp(i8* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load double, double* @INFINITY, align 8
  store double %56, double* %7, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 8
  store i8* %58, i8** %6, align 8
  br label %81

59:                                               ; preds = %51
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @strncmp(i8* %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 9)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load double, double* @INFINITY, align 8
  store double %64, double* %7, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 9
  store i8* %66, i8** %6, align 8
  br label %80

67:                                               ; preds = %59
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @strncmp(i8* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 9)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = load double, double* @INFINITY, align 8
  %73 = fneg double %72
  store double %73, double* %7, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 9
  store i8* %75, i8** %6, align 8
  br label %79

76:                                               ; preds = %67
  %77 = load i8*, i8** %5, align 8
  %78 = call double @js_stringtofloat(i8* %77, i8** %6)
  store double %78, double* %7, align 8
  br label %79

79:                                               ; preds = %76, %71
  br label %80

80:                                               ; preds = %79, %63
  br label %81

81:                                               ; preds = %80, %55
  br label %82

82:                                               ; preds = %81, %47
  br label %83

83:                                               ; preds = %95, %82
  %84 = load i8*, i8** %6, align 8
  %85 = load i8, i8* %84, align 1
  %86 = call i64 @jsY_iswhite(i8 signext %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  %89 = load i8*, i8** %6, align 8
  %90 = load i8, i8* %89, align 1
  %91 = call i64 @jsY_isnewline(i8 signext %90)
  %92 = icmp ne i64 %91, 0
  br label %93

93:                                               ; preds = %88, %83
  %94 = phi i1 [ true, %83 ], [ %92, %88 ]
  br i1 %94, label %95, label %98

95:                                               ; preds = %93
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %6, align 8
  br label %83

98:                                               ; preds = %93
  %99 = load i8*, i8** %6, align 8
  %100 = load i8, i8* %99, align 1
  %101 = icmp ne i8 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load double, double* @NAN, align 8
  store double %103, double* %3, align 8
  br label %106

104:                                              ; preds = %98
  %105 = load double, double* %7, align 8
  store double %105, double* %3, align 8
  br label %106

106:                                              ; preds = %104, %102
  %107 = load double, double* %3, align 8
  ret double %107
}

declare dso_local i64 @jsY_iswhite(i8 signext) #1

declare dso_local i64 @jsY_isnewline(i8 signext) #1

declare dso_local double @strtol(i8*, i8**, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local double @js_stringtofloat(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
