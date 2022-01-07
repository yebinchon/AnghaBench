; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_pp.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_pp.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"-mm\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = call i32* @js_newstate(i32* null, i32* null, i32 0)
  store i32* %9, i32** %6, align 8
  store i32 1, i32* %8, align 4
  br label %10

10:                                               ; preds = %66, %2
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %69

14:                                               ; preds = %10
  %15 = load i8**, i8*** %5, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  store i32 1, i32* %7, align 4
  br label %65

23:                                               ; preds = %14
  %24 = load i8**, i8*** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  store i32 2, i32* %7, align 4
  br label %64

32:                                               ; preds = %23
  %33 = load i8**, i8*** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  store i32 3, i32* %7, align 4
  br label %63

41:                                               ; preds = %32
  %42 = load i32*, i32** %6, align 8
  %43 = call i64 @js_try(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i32*, i32** %6, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @js_trystring(i32* %47, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %49 = call i32 @js_report(i32* %46, i32 %48)
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @js_pop(i32* %50, i32 1)
  br label %66

52:                                               ; preds = %41
  %53 = load i32*, i32** %6, align 8
  %54 = load i8**, i8*** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @js_ppfile(i32* %53, i8* %58, i32 %59)
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @js_endtry(i32* %61)
  br label %63

63:                                               ; preds = %52, %40
  br label %64

64:                                               ; preds = %63, %31
  br label %65

65:                                               ; preds = %64, %22
  br label %66

66:                                               ; preds = %65, %45
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %10

69:                                               ; preds = %10
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @js_gc(i32* %70, i32 0)
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @js_freestate(i32* %72)
  ret i32 0
}

declare dso_local i32* @js_newstate(i32*, i32*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @js_try(i32*) #1

declare dso_local i32 @js_report(i32*, i32) #1

declare dso_local i32 @js_trystring(i32*, i32, i8*) #1

declare dso_local i32 @js_pop(i32*, i32) #1

declare dso_local i32 @js_ppfile(i32*, i8*, i32) #1

declare dso_local i32 @js_endtry(i32*) #1

declare dso_local i32 @js_gc(i32*, i32) #1

declare dso_local i32 @js_freestate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
