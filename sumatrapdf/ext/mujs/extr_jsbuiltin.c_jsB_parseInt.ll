; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsbuiltin.c_jsB_parseInt.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsbuiltin.c_jsB_parseInt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAN = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @jsB_parseInt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jsB_parseInt(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i8* @js_tostring(i32* %8, i32 1)
  store i8* %9, i8** %3, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i64 @js_isdefined(i32* %10, i32 2)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @js_tointeger(i32* %14, i32 2)
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi i32 [ %15, %13 ], [ 10, %16 ]
  store i32 %18, i32* %4, align 4
  store double 1.000000e+00, double* %5, align 8
  br label %19

19:                                               ; preds = %31, %17
  %20 = load i8*, i8** %3, align 8
  %21 = load i8, i8* %20, align 1
  %22 = call i64 @jsY_iswhite(i8 signext %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** %3, align 8
  %26 = load i8, i8* %25, align 1
  %27 = call i64 @jsY_isnewline(i8 signext %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i1 [ true, %19 ], [ %28, %24 ]
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %3, align 8
  br label %19

34:                                               ; preds = %29
  %35 = load i8*, i8** %3, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 45
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i8*, i8** %3, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %3, align 8
  store double -1.000000e+00, double* %5, align 8
  br label %51

42:                                               ; preds = %34
  %43 = load i8*, i8** %3, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 43
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i8*, i8** %3, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %3, align 8
  br label %50

50:                                               ; preds = %47, %42
  br label %51

51:                                               ; preds = %50, %39
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %51
  store i32 10, i32* %4, align 4
  %55 = load i8*, i8** %3, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 48
  br i1 %59, label %60, label %75

60:                                               ; preds = %54
  %61 = load i8*, i8** %3, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 120
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load i8*, i8** %3, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 88
  br i1 %71, label %72, label %75

72:                                               ; preds = %66, %60
  %73 = load i8*, i8** %3, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 2
  store i8* %74, i8** %3, align 8
  store i32 16, i32* %4, align 4
  br label %75

75:                                               ; preds = %72, %66, %54
  br label %87

76:                                               ; preds = %51
  %77 = load i32, i32* %4, align 4
  %78 = icmp slt i32 %77, 2
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %4, align 4
  %81 = icmp sgt i32 %80, 36
  br i1 %81, label %82, label %86

82:                                               ; preds = %79, %76
  %83 = load i32*, i32** %2, align 8
  %84 = load double, double* @NAN, align 8
  %85 = call i32 @js_pushnumber(i32* %83, double %84)
  br label %104

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %86, %75
  %88 = load i8*, i8** %3, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call double @strtol(i8* %88, i8** %7, i32 %89)
  store double %90, double* %6, align 8
  %91 = load i8*, i8** %3, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = icmp eq i8* %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load i32*, i32** %2, align 8
  %96 = load double, double* @NAN, align 8
  %97 = call i32 @js_pushnumber(i32* %95, double %96)
  br label %104

98:                                               ; preds = %87
  %99 = load i32*, i32** %2, align 8
  %100 = load double, double* %6, align 8
  %101 = load double, double* %5, align 8
  %102 = fmul double %100, %101
  %103 = call i32 @js_pushnumber(i32* %99, double %102)
  br label %104

104:                                              ; preds = %82, %98, %94
  ret void
}

declare dso_local i8* @js_tostring(i32*, i32) #1

declare dso_local i64 @js_isdefined(i32*, i32) #1

declare dso_local i32 @js_tointeger(i32*, i32) #1

declare dso_local i64 @jsY_iswhite(i8 signext) #1

declare dso_local i64 @jsY_isnewline(i8 signext) #1

declare dso_local i32 @js_pushnumber(i32*, double) #1

declare dso_local double @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
