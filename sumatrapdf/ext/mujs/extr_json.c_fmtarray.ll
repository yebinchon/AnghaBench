; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_json.c_fmtarray.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_json.c_fmtarray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"cyclic object value\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32**, i8*, i32)* @fmtarray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fmtarray(i32* %0, i32** %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [32 x i8], align 16
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @js_gettop(i32* %12)
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %9, align 4
  store i32 4, i32* %10, align 4
  br label %15

15:                                               ; preds = %36, %4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i64 @js_isobject(i32* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @js_toobject(i32* %25, i32 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = call i64 @js_toobject(i32* %28, i32 -1)
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @js_typeerror(i32* %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %24
  br label %35

35:                                               ; preds = %34, %19
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %15

39:                                               ; preds = %15
  %40 = load i32*, i32** %5, align 8
  %41 = load i32**, i32*** %6, align 8
  %42 = call i32 @js_putc(i32* %40, i32** %41, i8 signext 91)
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @js_getlength(i32* %43, i32 -1)
  store i32 %44, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %82, %39
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %85

49:                                               ; preds = %45
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32*, i32** %5, align 8
  %54 = load i32**, i32*** %6, align 8
  %55 = call i32 @js_putc(i32* %53, i32** %54, i8 signext 44)
  br label %56

56:                                               ; preds = %52, %49
  %57 = load i8*, i8** %7, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load i32*, i32** %5, align 8
  %61 = load i32**, i32*** %6, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  %65 = call i32 @fmtindent(i32* %60, i32** %61, i8* %62, i32 %64)
  br label %66

66:                                               ; preds = %59, %56
  %67 = load i32*, i32** %5, align 8
  %68 = load i32**, i32*** %6, align 8
  %69 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @js_itoa(i8* %69, i32 %70)
  %72 = load i8*, i8** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  %75 = call i32 @fmtvalue(i32* %67, i32** %68, i32 %71, i8* %72, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %66
  %78 = load i32*, i32** %5, align 8
  %79 = load i32**, i32*** %6, align 8
  %80 = call i32 @js_puts(i32* %78, i32** %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %77, %66
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %45

85:                                               ; preds = %45
  %86 = load i8*, i8** %7, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load i32*, i32** %5, align 8
  %93 = load i32**, i32*** %6, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @fmtindent(i32* %92, i32** %93, i8* %94, i32 %95)
  br label %97

97:                                               ; preds = %91, %88, %85
  %98 = load i32*, i32** %5, align 8
  %99 = load i32**, i32*** %6, align 8
  %100 = call i32 @js_putc(i32* %98, i32** %99, i8 signext 93)
  ret void
}

declare dso_local i32 @js_gettop(i32*) #1

declare dso_local i64 @js_isobject(i32*, i32) #1

declare dso_local i64 @js_toobject(i32*, i32) #1

declare dso_local i32 @js_typeerror(i32*, i8*) #1

declare dso_local i32 @js_putc(i32*, i32**, i8 signext) #1

declare dso_local i32 @js_getlength(i32*, i32) #1

declare dso_local i32 @fmtindent(i32*, i32**, i8*, i32) #1

declare dso_local i32 @fmtvalue(i32*, i32**, i32, i8*, i32) #1

declare dso_local i32 @js_itoa(i8*, i32) #1

declare dso_local i32 @js_puts(i32*, i32**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
