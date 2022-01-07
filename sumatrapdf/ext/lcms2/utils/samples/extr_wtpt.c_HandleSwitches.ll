; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/samples/extr_wtpt.c_HandleSwitches.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/samples/extr_wtpt.c_HandleSwitches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"lcx\00", align 1
@EOF = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@lShowLab = common dso_local global i8* null, align 8
@lShowLCh = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@lShowXYZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Unknown option - run without args to see valid ones.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @HandleSwitches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HandleSwitches(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  br label %6

6:                                                ; preds = %22, %2
  %7 = load i32, i32* %3, align 4
  %8 = load i8**, i8*** %4, align 8
  %9 = call i32 @xgetopt(i32 %7, i8** %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @EOF, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %6
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %20 [
    i32 108, label %14
    i32 99, label %16
    i32 120, label %18
  ]

14:                                               ; preds = %12
  %15 = load i8*, i8** @TRUE, align 8
  store i8* %15, i8** @lShowLab, align 8
  br label %22

16:                                               ; preds = %12
  %17 = load i8*, i8** @TRUE, align 8
  store i8* %17, i8** @lShowLCh, align 8
  br label %22

18:                                               ; preds = %12
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* @lShowXYZ, align 4
  br label %22

20:                                               ; preds = %12
  %21 = call i32 @FatalError(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %18, %16, %14
  br label %6

23:                                               ; preds = %6
  ret void
}

declare dso_local i32 @xgetopt(i32, i8**, i8*) #1

declare dso_local i32 @FatalError(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
