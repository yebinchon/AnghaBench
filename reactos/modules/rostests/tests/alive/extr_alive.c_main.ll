; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/alive/extr_alive.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/alive/extr_alive.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STD_OUTPUT_HANDLE = common dso_local global i32 0, align 4
@StandardOutput = common dso_local global i64 0, align 8
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@Message = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Alive for %dd %dh %d' %d\22   \0D\00", align 1
@d = common dso_local global i32 0, align 4
@h = common dso_local global i32 0, align 4
@m = common dso_local global i32 0, align 4
@s = common dso_local global i32 0, align 4
@CharactersToWrite = common dso_local global i32 0, align 4
@WrittenCharacters = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i32, i32* @STD_OUTPUT_HANDLE, align 4
  %7 = call i64 @GetStdHandle(i32 %6)
  store i64 %7, i64* @StandardOutput, align 8
  %8 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %9 = load i64, i64* @StandardOutput, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %12, i32* %3, align 4
  br label %51

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %48, %13
  %15 = load i64, i64* @TRUE, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %49

17:                                               ; preds = %14
  %18 = load i32, i32* @Message, align 4
  %19 = load i32, i32* @d, align 4
  %20 = load i32, i32* @h, align 4
  %21 = load i32, i32* @m, align 4
  %22 = load i32, i32* @s, align 4
  %23 = call i32 @wsprintf(i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* @CharactersToWrite, align 4
  %24 = load i64, i64* @StandardOutput, align 8
  %25 = load i32, i32* @Message, align 4
  %26 = load i32, i32* @CharactersToWrite, align 4
  %27 = call i32 @WriteConsole(i64 %24, i32 %25, i32 %26, i32* @WrittenCharacters, i32* null)
  %28 = call i32 @Sleep(i32 1000)
  %29 = load i32, i32* @s, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @s, align 4
  %31 = load i32, i32* @s, align 4
  %32 = icmp eq i32 60, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %17
  store i32 0, i32* @s, align 4
  %34 = load i32, i32* @m, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @m, align 4
  br label %36

36:                                               ; preds = %33, %17
  %37 = load i32, i32* @m, align 4
  %38 = icmp eq i32 60, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  store i32 0, i32* @m, align 4
  %40 = load i32, i32* @h, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* @h, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* @h, align 4
  %44 = icmp eq i32 24, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  store i32 0, i32* @h, align 4
  %46 = load i32, i32* @d, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* @d, align 4
  br label %48

48:                                               ; preds = %45, %42
  br label %14

49:                                               ; preds = %14
  %50 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %11
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @GetStdHandle(i32) #1

declare dso_local i32 @wsprintf(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @WriteConsole(i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @Sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
