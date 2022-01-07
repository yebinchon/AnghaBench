; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/tokentest/extr_tokentest.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/tokentest/extr_tokentest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"Current process Token:\0A\00", align 1
@TOKEN_QUERY = common dso_local global i32 0, align 4
@TOKEN_QUERY_SOURCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"ZwOpenProcessToken() failed: 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"System Token: 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"CreateInitialSystemToken() return: 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"press return\00", align 1
@SE_CREATE_TOKEN_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [512 x i32], align 16
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 (...) @GetCurrentProcess()
  %12 = load i32, i32* @TOKEN_QUERY, align 4
  %13 = load i32, i32* @TOKEN_QUERY_SOURCE, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @ZwOpenProcessToken(i32 %11, i32 %14, i32* %9)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @NT_SUCCESS(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @DisplayToken(i32 %20)
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @CloseHandle(i32 %22)
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %24, %19
  %28 = call i32 @CreateInitialSystemToken(i32* %7)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @NT_SUCCESS(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @DisplayToken(i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @CloseHandle(i32 %37)
  br label %42

39:                                               ; preds = %27
  %40 = load i32, i32* %6, align 4
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %32
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %44 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 0
  %45 = call i32 @gets(i32* %44)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ZwOpenProcessToken(i32, i32, i32*) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @DisplayToken(i32) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @CreateInitialSystemToken(i32*) #1

declare dso_local i32 @gets(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
