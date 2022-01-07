; ModuleID = '/home/carl/AnghaBench/vlc/src/config/extr_help.c_Help.c'
source_filename = "/home/carl/AnghaBench/vlc/src/config/extr_help.c_Help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@vlc_usage = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"vlc\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"=core\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"longhelp\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"full-help\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @Help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Help(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = call i32 (...) @ShowConsole()
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* @vlc_usage, align 4
  %14 = call i8* @_(i32 %13)
  %15 = call i32 @printf(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @Usage(i32* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %18 = call i32 (...) @print_help_on_full_help()
  br label %56

19:                                               ; preds = %8, %2
  %20 = load i8*, i8** %4, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @vlc_usage, align 4
  %28 = call i8* @_(i32 %27)
  %29 = call i32 @printf(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @Usage(i32* %30, i8* null)
  %32 = call i32 (...) @print_help_on_full_help()
  br label %55

33:                                               ; preds = %22, %19
  %34 = load i8*, i8** %4, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @vlc_usage, align 4
  %42 = call i8* @_(i32 %41)
  %43 = call i32 @printf(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @Usage(i32* %44, i8* null)
  br label %54

46:                                               ; preds = %36, %33
  %47 = load i8*, i8** %4, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32*, i32** %3, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @Usage(i32* %50, i8* %51)
  br label %53

53:                                               ; preds = %49, %46
  br label %54

54:                                               ; preds = %53, %40
  br label %55

55:                                               ; preds = %54, %26
  br label %56

56:                                               ; preds = %55, %12
  %57 = call i32 (...) @PauseConsole()
  ret void
}

declare dso_local i32 @ShowConsole(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @_(i32) #1

declare dso_local i32 @Usage(i32*, i8*) #1

declare dso_local i32 @print_help_on_full_help(...) #1

declare dso_local i32 @PauseConsole(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
