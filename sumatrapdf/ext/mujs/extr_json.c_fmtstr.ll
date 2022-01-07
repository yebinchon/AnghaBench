; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_json.c_fmtstr.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_json.c_fmtstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fmtstr.HEX = internal global i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\\u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32**, i8*)* @fmtstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fmtstr(i32* %0, i32** %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32**, i32*** %5, align 8
  %10 = call i32 @js_putc(i32* %8, i32** %9, i8 signext 34)
  br label %11

11:                                               ; preds = %106, %3
  %12 = load i8*, i8** %6, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %107

15:                                               ; preds = %11
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @chartorune(i32* %7, i8* %16)
  %18 = load i8*, i8** %6, align 8
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %6, align 8
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %50 [
    i32 34, label %22
    i32 92, label %26
    i32 8, label %30
    i32 12, label %34
    i32 10, label %38
    i32 13, label %42
    i32 9, label %46
  ]

22:                                               ; preds = %15
  %23 = load i32*, i32** %4, align 8
  %24 = load i32**, i32*** %5, align 8
  %25 = call i32 @js_puts(i32* %23, i32** %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %106

26:                                               ; preds = %15
  %27 = load i32*, i32** %4, align 8
  %28 = load i32**, i32*** %5, align 8
  %29 = call i32 @js_puts(i32* %27, i32** %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %106

30:                                               ; preds = %15
  %31 = load i32*, i32** %4, align 8
  %32 = load i32**, i32*** %5, align 8
  %33 = call i32 @js_puts(i32* %31, i32** %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %106

34:                                               ; preds = %15
  %35 = load i32*, i32** %4, align 8
  %36 = load i32**, i32*** %5, align 8
  %37 = call i32 @js_puts(i32* %35, i32** %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %106

38:                                               ; preds = %15
  %39 = load i32*, i32** %4, align 8
  %40 = load i32**, i32*** %5, align 8
  %41 = call i32 @js_puts(i32* %39, i32** %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %106

42:                                               ; preds = %15
  %43 = load i32*, i32** %4, align 8
  %44 = load i32**, i32*** %5, align 8
  %45 = call i32 @js_puts(i32* %43, i32** %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %106

46:                                               ; preds = %15
  %47 = load i32*, i32** %4, align 8
  %48 = load i32**, i32*** %5, align 8
  %49 = call i32 @js_puts(i32* %47, i32** %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %106

50:                                               ; preds = %15
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 32
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = icmp sgt i32 %54, 127
  br i1 %55, label %56, label %99

56:                                               ; preds = %53, %50
  %57 = load i32*, i32** %4, align 8
  %58 = load i32**, i32*** %5, align 8
  %59 = call i32 @js_puts(i32* %57, i32** %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %60 = load i32*, i32** %4, align 8
  %61 = load i32**, i32*** %5, align 8
  %62 = load i8*, i8** @fmtstr.HEX, align 8
  %63 = load i32, i32* %7, align 4
  %64 = ashr i32 %63, 12
  %65 = and i32 %64, 15
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %62, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = call i32 @js_putc(i32* %60, i32** %61, i8 signext %68)
  %70 = load i32*, i32** %4, align 8
  %71 = load i32**, i32*** %5, align 8
  %72 = load i8*, i8** @fmtstr.HEX, align 8
  %73 = load i32, i32* %7, align 4
  %74 = ashr i32 %73, 8
  %75 = and i32 %74, 15
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %72, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = call i32 @js_putc(i32* %70, i32** %71, i8 signext %78)
  %80 = load i32*, i32** %4, align 8
  %81 = load i32**, i32*** %5, align 8
  %82 = load i8*, i8** @fmtstr.HEX, align 8
  %83 = load i32, i32* %7, align 4
  %84 = ashr i32 %83, 4
  %85 = and i32 %84, 15
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %82, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = call i32 @js_putc(i32* %80, i32** %81, i8 signext %88)
  %90 = load i32*, i32** %4, align 8
  %91 = load i32**, i32*** %5, align 8
  %92 = load i8*, i8** @fmtstr.HEX, align 8
  %93 = load i32, i32* %7, align 4
  %94 = and i32 %93, 15
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = call i32 @js_putc(i32* %90, i32** %91, i8 signext %97)
  br label %105

99:                                               ; preds = %53
  %100 = load i32*, i32** %4, align 8
  %101 = load i32**, i32*** %5, align 8
  %102 = load i32, i32* %7, align 4
  %103 = trunc i32 %102 to i8
  %104 = call i32 @js_putc(i32* %100, i32** %101, i8 signext %103)
  br label %106

105:                                              ; preds = %56
  br label %106

106:                                              ; preds = %105, %99, %46, %42, %38, %34, %30, %26, %22
  br label %11

107:                                              ; preds = %11
  %108 = load i32*, i32** %4, align 8
  %109 = load i32**, i32*** %5, align 8
  %110 = call i32 @js_putc(i32* %108, i32** %109, i8 signext 34)
  ret void
}

declare dso_local i32 @js_putc(i32*, i32**, i8 signext) #1

declare dso_local i32 @chartorune(i32*, i8*) #1

declare dso_local i32 @js_puts(i32*, i32**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
