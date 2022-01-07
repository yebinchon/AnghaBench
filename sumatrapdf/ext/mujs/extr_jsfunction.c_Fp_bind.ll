; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsfunction.c_Fp_bind.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsfunction.c_Fp_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"not a function\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"prototype\00", align 1
@callbound = common dso_local global i32 0, align 4
@constructbound = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"[bind]\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"__TargetFunction__\00", align 1
@JS_READONLY = common dso_local global i32 0, align 4
@JS_DONTENUM = common dso_local global i32 0, align 4
@JS_DONTCONF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"__BoundThis__\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"__BoundArguments__\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Fp_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Fp_bind(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @js_gettop(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @js_iscallable(i32* %8, i32 0)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @js_typeerror(i32* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %1
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @js_getlength(i32* %15, i32 0)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = sub nsw i32 %18, 2
  %20 = icmp sgt i32 %17, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = sub nsw i32 %22, 2
  %24 = load i32, i32* %5, align 4
  %25 = sub nsw i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %27

26:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %21
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @js_getproperty(i32* %28, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32*, i32** %2, align 8
  %31 = load i32, i32* @callbound, align 4
  %32 = load i32, i32* @constructbound, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @js_newcconstructor(i32* %30, i32 %31, i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @js_copy(i32* %35, i32 0)
  %37 = load i32*, i32** %2, align 8
  %38 = load i32, i32* @JS_READONLY, align 4
  %39 = load i32, i32* @JS_DONTENUM, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @JS_DONTCONF, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @js_defproperty(i32* %37, i32 -2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @js_copy(i32* %44, i32 1)
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* @JS_READONLY, align 4
  %48 = load i32, i32* @JS_DONTENUM, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @JS_DONTCONF, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @js_defproperty(i32* %46, i32 -2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @js_newarray(i32* %53)
  store i32 2, i32* %3, align 4
  br label %55

55:                                               ; preds = %67, %27
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load i32*, i32** %2, align 8
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @js_copy(i32* %60, i32 %61)
  %63 = load i32*, i32** %2, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sub nsw i32 %64, 2
  %66 = call i32 @js_setindex(i32* %63, i32 -2, i32 %65)
  br label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %55

70:                                               ; preds = %55
  %71 = load i32*, i32** %2, align 8
  %72 = load i32, i32* @JS_READONLY, align 4
  %73 = load i32, i32* @JS_DONTENUM, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @JS_DONTCONF, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @js_defproperty(i32* %71, i32 -2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %76)
  ret void
}

declare dso_local i32 @js_gettop(i32*) #1

declare dso_local i32 @js_iscallable(i32*, i32) #1

declare dso_local i32 @js_typeerror(i32*, i8*) #1

declare dso_local i32 @js_getlength(i32*, i32) #1

declare dso_local i32 @js_getproperty(i32*, i32, i8*) #1

declare dso_local i32 @js_newcconstructor(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @js_copy(i32*, i32) #1

declare dso_local i32 @js_defproperty(i32*, i32, i8*, i32) #1

declare dso_local i32 @js_newarray(i32*) #1

declare dso_local i32 @js_setindex(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
