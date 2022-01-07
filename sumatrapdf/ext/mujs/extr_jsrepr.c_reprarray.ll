; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsrepr.c_reprarray.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsrepr.c_reprarray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32**)* @reprarray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reprarray(i32* %0, i32** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32** %1, i32*** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @js_gettop(i32* %7)
  %9 = sub nsw i32 %8, 1
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %32, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %10
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @js_isobject(i32* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @js_toobject(i32* %20, i32 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i64 @js_toobject(i32* %23, i32 -1)
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i32*, i32** %3, align 8
  %28 = load i32**, i32*** %4, align 8
  %29 = call i32 @js_puts(i32* %27, i32** %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %71

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30, %14
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %10

35:                                               ; preds = %10
  %36 = load i32*, i32** %3, align 8
  %37 = load i32**, i32*** %4, align 8
  %38 = call i32 @js_putc(i32* %36, i32** %37, i8 signext 91)
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @js_getlength(i32* %39, i32 -1)
  store i32 %40, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %64, %35
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32*, i32** %3, align 8
  %50 = load i32**, i32*** %4, align 8
  %51 = call i32 @js_puts(i32* %49, i32** %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32*, i32** %3, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i64 @js_hasindex(i32* %53, i32 -1, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i32*, i32** %3, align 8
  %59 = load i32**, i32*** %4, align 8
  %60 = call i32 @reprvalue(i32* %58, i32** %59)
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @js_pop(i32* %61, i32 1)
  br label %63

63:                                               ; preds = %57, %52
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %41

67:                                               ; preds = %41
  %68 = load i32*, i32** %3, align 8
  %69 = load i32**, i32*** %4, align 8
  %70 = call i32 @js_putc(i32* %68, i32** %69, i8 signext 93)
  br label %71

71:                                               ; preds = %67, %26
  ret void
}

declare dso_local i32 @js_gettop(i32*) #1

declare dso_local i64 @js_isobject(i32*, i32) #1

declare dso_local i64 @js_toobject(i32*, i32) #1

declare dso_local i32 @js_puts(i32*, i32**, i8*) #1

declare dso_local i32 @js_putc(i32*, i32**, i8 signext) #1

declare dso_local i32 @js_getlength(i32*, i32) #1

declare dso_local i64 @js_hasindex(i32*, i32, i32) #1

declare dso_local i32 @reprvalue(i32*, i32**) #1

declare dso_local i32 @js_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
