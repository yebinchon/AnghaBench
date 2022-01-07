; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/psicc/extr_psicc.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/psicc/extr_psicc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"psicc\00", align 1
@xoptind = common dso_local global i32 0, align 4
@cInProf = common dso_local global i32* null, align 8
@cOutProf = common dso_local global i32* null, align 8
@stdout = common dso_local global i32 0, align 4
@OutFile = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"wt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %7, align 8
  %8 = call i32 @InitUtils(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i32 @HandleSwitches(i32 %9, i8** %10)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @xoptind, align 4
  %14 = sub nsw i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 (...) @Help()
  br label %22

22:                                               ; preds = %20, %17, %2
  %23 = load i32*, i32** @cInProf, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32*, i32** @cOutProf, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 (...) @Help()
  br label %30

30:                                               ; preds = %28, %25, %22
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @stdout, align 4
  store i32 %34, i32* @OutFile, align 4
  br label %42

35:                                               ; preds = %30
  %36 = load i8**, i8*** %5, align 8
  %37 = load i32, i32* @xoptind, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @fopen(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %41, i32* @OutFile, align 4
  br label %42

42:                                               ; preds = %35, %33
  %43 = load i32*, i32** @cInProf, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @GenerateCSA(i32* %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32*, i32** @cOutProf, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @GenerateCRD(i32* %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* @OutFile, align 4
  %59 = call i32 @fclose(i32 %58)
  br label %60

60:                                               ; preds = %57, %54
  ret i32 0
}

declare dso_local i32 @InitUtils(i32*, i8*) #1

declare dso_local i32 @HandleSwitches(i32, i8**) #1

declare dso_local i32 @Help(...) #1

declare dso_local i32 @fopen(i8*, i8*) #1

declare dso_local i32 @GenerateCSA(i32*) #1

declare dso_local i32 @GenerateCRD(i32*) #1

declare dso_local i32 @fclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
