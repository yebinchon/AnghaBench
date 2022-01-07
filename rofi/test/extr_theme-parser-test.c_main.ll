; ModuleID = '/home/carl/AnghaBench/rofi/test/extr_theme-parser-test.c_main.c'
source_filename = "/home/carl/AnghaBench/rofi/test/extr_theme-parser-test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"C\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to set locale.\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@CK_NORMAL = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i32 @cmd_set_arguments(i32 %9, i8** %10)
  %12 = load i32, i32* @LC_ALL, align 4
  %13 = call i32* @setlocale(i32 %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %18, i32* %3, align 4
  br label %38

19:                                               ; preds = %2
  %20 = call i32* (...) @theme_parser_suite()
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32* @srunner_create(i32* %21)
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* @CK_NORMAL, align 4
  %25 = call i32 @srunner_run_all(i32* %23, i32 %24)
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @srunner_ntests_failed(i32* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @srunner_free(i32* %28)
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %19
  %33 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %36

34:                                               ; preds = %19
  %35 = load i32, i32* @EXIT_FAILURE, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %15
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @cmd_set_arguments(i32, i8**) #1

declare dso_local i32* @setlocale(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32* @theme_parser_suite(...) #1

declare dso_local i32* @srunner_create(i32*) #1

declare dso_local i32 @srunner_run_all(i32*, i32) #1

declare dso_local i32 @srunner_ntests_failed(i32*) #1

declare dso_local i32 @srunner_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
