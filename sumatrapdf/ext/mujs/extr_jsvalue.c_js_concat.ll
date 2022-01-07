; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsvalue.c_js_concat.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsvalue.c_js_concat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JS_HNONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @js_concat(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @JS_HNONE, align 4
  %10 = call i32 @js_toprimitive(i32* %8, i32 -2, i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @JS_HNONE, align 4
  %13 = call i32 @js_toprimitive(i32* %11, i32 -1, i32 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = call i64 @js_isstring(i32* %14, i32 -2)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load i32*, i32** %2, align 8
  %19 = call i64 @js_isstring(i32* %18, i32 -1)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %60

21:                                               ; preds = %17, %1
  %22 = load i32*, i32** %2, align 8
  %23 = call i8* @js_tostring(i32* %22, i32 -2)
  store i8* %23, i8** %3, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = call i8* @js_tostring(i32* %24, i32 -1)
  store i8* %25, i8** %4, align 8
  %26 = load i32*, i32** %2, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = call i64 @strlen(i8* %27)
  %29 = load i8*, i8** %4, align 8
  %30 = call i64 @strlen(i8* %29)
  %31 = add nsw i64 %28, %30
  %32 = add nsw i64 %31, 1
  %33 = call i8* @js_malloc(i32* %26, i64 %32)
  store i8* %33, i8** %5, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @strcpy(i8* %34, i8* %35)
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @strcat(i8* %37, i8* %38)
  %40 = load i32*, i32** %2, align 8
  %41 = call i64 @js_try(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %21
  %44 = load i32*, i32** %2, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @js_free(i32* %44, i8* %45)
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @js_throw(i32* %47)
  br label %49

49:                                               ; preds = %43, %21
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @js_pop(i32* %50, i32 2)
  %52 = load i32*, i32** %2, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @js_pushstring(i32* %52, i8* %53)
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @js_endtry(i32* %55)
  %57 = load i32*, i32** %2, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @js_free(i32* %57, i8* %58)
  br label %72

60:                                               ; preds = %17
  %61 = load i32*, i32** %2, align 8
  %62 = call double @js_tonumber(i32* %61, i32 -2)
  store double %62, double* %6, align 8
  %63 = load i32*, i32** %2, align 8
  %64 = call double @js_tonumber(i32* %63, i32 -1)
  store double %64, double* %7, align 8
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @js_pop(i32* %65, i32 2)
  %67 = load i32*, i32** %2, align 8
  %68 = load double, double* %6, align 8
  %69 = load double, double* %7, align 8
  %70 = fadd double %68, %69
  %71 = call i32 @js_pushnumber(i32* %67, double %70)
  br label %72

72:                                               ; preds = %60, %49
  ret void
}

declare dso_local i32 @js_toprimitive(i32*, i32, i32) #1

declare dso_local i64 @js_isstring(i32*, i32) #1

declare dso_local i8* @js_tostring(i32*, i32) #1

declare dso_local i8* @js_malloc(i32*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i64 @js_try(i32*) #1

declare dso_local i32 @js_free(i32*, i8*) #1

declare dso_local i32 @js_throw(i32*) #1

declare dso_local i32 @js_pop(i32*, i32) #1

declare dso_local i32 @js_pushstring(i32*, i8*) #1

declare dso_local i32 @js_endtry(i32*) #1

declare dso_local double @js_tonumber(i32*, i32) #1

declare dso_local i32 @js_pushnumber(i32*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
