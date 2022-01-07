; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/psicc/extr_psicc.c_HandleSwitches.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/psicc/extr_psicc.c_HandleSwitches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"uUbBI:i:O:o:T:t:c:C:n:N:\00", align 1
@EOF = common dso_local global i32 0, align 4
@xoptarg = common dso_local global i8* null, align 8
@cInProf = common dso_local global i8* null, align 8
@cOutProf = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@BlackPointCompensation = common dso_local global i8* null, align 8
@Intent = common dso_local global i32 0, align 4
@Undecorated = common dso_local global i8* null, align 8
@PrecalcMode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"ERROR: Unknown precalc mode '%d'\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Precalc mode already specified\00", align 1
@NumOfGridPoints = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"Unknown option - run without args to see valid ones.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @HandleSwitches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HandleSwitches(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  br label %6

6:                                                ; preds = %57, %2
  %7 = load i32, i32* %3, align 4
  %8 = load i8**, i8*** %4, align 8
  %9 = call i32 @xgetopt(i32 %7, i8** %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @EOF, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %58

12:                                               ; preds = %6
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %55 [
    i32 105, label %14
    i32 73, label %14
    i32 111, label %16
    i32 79, label %16
    i32 98, label %18
    i32 66, label %18
    i32 116, label %20
    i32 84, label %20
    i32 85, label %32
    i32 117, label %32
    i32 99, label %34
    i32 67, label %34
    i32 110, label %47
    i32 78, label %47
  ]

14:                                               ; preds = %12, %12
  %15 = load i8*, i8** @xoptarg, align 8
  store i8* %15, i8** @cInProf, align 8
  br label %57

16:                                               ; preds = %12, %12
  %17 = load i8*, i8** @xoptarg, align 8
  store i8* %17, i8** @cOutProf, align 8
  br label %57

18:                                               ; preds = %12, %12
  %19 = load i8*, i8** @TRUE, align 8
  store i8* %19, i8** @BlackPointCompensation, align 8
  br label %57

20:                                               ; preds = %12, %12
  %21 = load i8*, i8** @xoptarg, align 8
  %22 = call i8* @atoi(i8* %21)
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* @Intent, align 4
  %24 = load i32, i32* @Intent, align 4
  %25 = icmp sgt i32 %24, 3
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 3, i32* @Intent, align 4
  br label %27

27:                                               ; preds = %26, %20
  %28 = load i32, i32* @Intent, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 0, i32* @Intent, align 4
  br label %31

31:                                               ; preds = %30, %27
  br label %57

32:                                               ; preds = %12, %12
  %33 = load i8*, i8** @TRUE, align 8
  store i8* %33, i8** @Undecorated, align 8
  br label %57

34:                                               ; preds = %12, %12
  %35 = load i8*, i8** @xoptarg, align 8
  %36 = call i8* @atoi(i8* %35)
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* @PrecalcMode, align 4
  %38 = load i32, i32* @PrecalcMode, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @PrecalcMode, align 4
  %42 = icmp sgt i32 %41, 2
  br i1 %42, label %43, label %46

43:                                               ; preds = %40, %34
  %44 = load i32, i32* @PrecalcMode, align 4
  %45 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %43, %40
  br label %57

47:                                               ; preds = %12, %12
  %48 = load i32, i32* @PrecalcMode, align 4
  %49 = icmp ne i32 %48, 1
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %47
  %53 = load i8*, i8** @xoptarg, align 8
  %54 = call i8* @atoi(i8* %53)
  store i8* %54, i8** @NumOfGridPoints, align 8
  br label %57

55:                                               ; preds = %12
  %56 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %52, %46, %32, %31, %18, %16, %14
  br label %6

58:                                               ; preds = %6
  ret void
}

declare dso_local i32 @xgetopt(i32, i8**, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @FatalError(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
