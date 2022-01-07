; ModuleID = '/home/carl/AnghaBench/tig/src/extr_tig.c_open_pager_mode.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_tig.c_open_pager_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REQ_VIEW_PAGER = common dso_local global i32 0, align 4
@opt_rev_args = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"--stdin\00", align 1
@OPEN_FORWARD_STDIN = common dso_local global i32 0, align 4
@opt_cmdline_args = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"--pretty=raw\00", align 1
@OPEN_STDIN = common dso_local global i32 0, align 4
@REQ_VIEW_DIFF = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Ignoring stdin.\00", align 1
@REQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @open_pager_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_pager_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @REQ_VIEW_PAGER, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %26

7:                                                ; preds = %1
  %8 = load i32, i32* @opt_rev_args, align 4
  %9 = call i64 @argv_contains(i32 %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load i32, i32* @OPEN_FORWARD_STDIN, align 4
  %13 = call i32 @open_main_view(i32* null, i32 %12)
  br label %25

14:                                               ; preds = %7
  %15 = load i32, i32* @opt_cmdline_args, align 4
  %16 = call i64 @argv_contains(i32 %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @OPEN_STDIN, align 4
  %20 = call i32 @open_main_view(i32* null, i32 %19)
  br label %24

21:                                               ; preds = %14
  %22 = load i32, i32* @OPEN_STDIN, align 4
  %23 = call i32 @open_pager_view(i32* null, i32 %22)
  br label %24

24:                                               ; preds = %21, %18
  br label %25

25:                                               ; preds = %24, %11
  br label %47

26:                                               ; preds = %1
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @REQ_VIEW_DIFF, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load i32, i32* @opt_rev_args, align 4
  %32 = call i64 @argv_contains(i32 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @OPEN_FORWARD_STDIN, align 4
  %36 = call i32 @open_diff_view(i32* null, i32 %35)
  br label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @OPEN_STDIN, align 4
  %39 = call i32 @open_diff_view(i32* null, i32 %38)
  br label %40

40:                                               ; preds = %37, %34
  br label %46

41:                                               ; preds = %26
  %42 = load i32, i32* @STDIN_FILENO, align 4
  %43 = call i32 @close(i32 %42)
  %44 = call i32 @report(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* %3, align 4
  store i32 %45, i32* %2, align 4
  br label %49

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %25
  %48 = load i32, i32* @REQ_NONE, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %41
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @argv_contains(i32, i8*) #1

declare dso_local i32 @open_main_view(i32*, i32) #1

declare dso_local i32 @open_pager_view(i32*, i32) #1

declare dso_local i32 @open_diff_view(i32*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @report(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
