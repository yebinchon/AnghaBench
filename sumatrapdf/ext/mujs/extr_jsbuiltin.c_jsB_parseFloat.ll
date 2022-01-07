; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsbuiltin.c_jsB_parseFloat.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsbuiltin.c_jsB_parseFloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"Infinity\00", align 1
@INFINITY = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"+Infinity\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"-Infinity\00", align 1
@NAN = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @jsB_parseFloat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jsB_parseFloat(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca double, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i8* @js_tostring(i32* %6, i32 1)
  store i8* %7, i8** %3, align 8
  br label %8

8:                                                ; preds = %20, %1
  %9 = load i8*, i8** %3, align 8
  %10 = load i8, i8* %9, align 1
  %11 = call i64 @jsY_iswhite(i8 signext %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  %16 = call i64 @jsY_isnewline(i8 signext %15)
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %13, %8
  %19 = phi i1 [ true, %8 ], [ %17, %13 ]
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %3, align 8
  br label %8

23:                                               ; preds = %18
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @strncmp(i8* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32*, i32** %2, align 8
  %29 = load double, double* @INFINITY, align 8
  %30 = call i32 @js_pushnumber(i32* %28, double %29)
  br label %65

31:                                               ; preds = %23
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @strncmp(i8* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 9)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32*, i32** %2, align 8
  %37 = load double, double* @INFINITY, align 8
  %38 = call i32 @js_pushnumber(i32* %36, double %37)
  br label %64

39:                                               ; preds = %31
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @strncmp(i8* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 9)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = load i32*, i32** %2, align 8
  %45 = load double, double* @INFINITY, align 8
  %46 = fneg double %45
  %47 = call i32 @js_pushnumber(i32* %44, double %46)
  br label %63

48:                                               ; preds = %39
  %49 = load i8*, i8** %3, align 8
  %50 = call double @js_stringtofloat(i8* %49, i8** %4)
  store double %50, double* %5, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = icmp eq i8* %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32*, i32** %2, align 8
  %56 = load double, double* @NAN, align 8
  %57 = call i32 @js_pushnumber(i32* %55, double %56)
  br label %62

58:                                               ; preds = %48
  %59 = load i32*, i32** %2, align 8
  %60 = load double, double* %5, align 8
  %61 = call i32 @js_pushnumber(i32* %59, double %60)
  br label %62

62:                                               ; preds = %58, %54
  br label %63

63:                                               ; preds = %62, %43
  br label %64

64:                                               ; preds = %63, %35
  br label %65

65:                                               ; preds = %64, %27
  ret void
}

declare dso_local i8* @js_tostring(i32*, i32) #1

declare dso_local i64 @jsY_iswhite(i8 signext) #1

declare dso_local i64 @jsY_isnewline(i8 signext) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @js_pushnumber(i32*, double) #1

declare dso_local double @js_stringtofloat(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
