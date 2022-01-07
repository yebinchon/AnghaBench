; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_shell.c_AddToCommandLineHistory.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_shell.c_AddToCommandLineHistory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"AddToCommandLineHistory(%s)\0A\00", align 1
@LINES_IN_COMMAND_BUFFER = common dso_local global i64 0, align 8
@aszCommandLines = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"AddToCommandLineHistory(): command line already exists\0A\00", align 1
@ulCommandInPos = common dso_local global i64 0, align 8
@ulCommandCurrentPos = common dso_local global i64 0, align 8
@ulCommandLastPos = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AddToCommandLineHistory(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 (...) @ENTER_FUNC()
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @DPRINT(i32 %5)
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @PICE_strlen(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %57

10:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %11

11:                                               ; preds = %28, %10
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @LINES_IN_COMMAND_BUFFER, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  %16 = load i8**, i8*** @aszCommandLines, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds i8*, i8** %16, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i32, i32* %2, align 4
  %22 = call i64 @PICE_strcmpi(i8* %20, i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = call i32 @DPRINT(i32 ptrtoint ([56 x i8]* @.str.1 to i32))
  %26 = call i32 (...) @LEAVE_FUNC()
  br label %59

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %3, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %3, align 8
  br label %11

31:                                               ; preds = %11
  %32 = load i8**, i8*** @aszCommandLines, align 8
  %33 = load i64, i64* @ulCommandInPos, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  store i8 58, i8* %36, align 1
  %37 = load i8**, i8*** @aszCommandLines, align 8
  %38 = load i64, i64* @ulCommandInPos, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @PICE_strcpy(i8* %41, i32 %42)
  %44 = load i64, i64* @ulCommandInPos, align 8
  %45 = add i64 %44, 1
  %46 = load i64, i64* @LINES_IN_COMMAND_BUFFER, align 8
  %47 = urem i64 %45, %46
  store i64 %47, i64* @ulCommandInPos, align 8
  store i64 %47, i64* @ulCommandCurrentPos, align 8
  %48 = load i64, i64* @ulCommandInPos, align 8
  %49 = load i64, i64* @ulCommandLastPos, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %31
  %52 = load i64, i64* @ulCommandLastPos, align 8
  %53 = add i64 %52, 1
  %54 = load i64, i64* @LINES_IN_COMMAND_BUFFER, align 8
  %55 = urem i64 %53, %54
  store i64 %55, i64* @ulCommandLastPos, align 8
  br label %56

56:                                               ; preds = %51, %31
  br label %57

57:                                               ; preds = %56, %1
  %58 = call i32 (...) @LEAVE_FUNC()
  br label %59

59:                                               ; preds = %57, %24
  ret void
}

declare dso_local i32 @ENTER_FUNC(...) #1

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i64 @PICE_strlen(i32) #1

declare dso_local i64 @PICE_strcmpi(i8*, i32) #1

declare dso_local i32 @LEAVE_FUNC(...) #1

declare dso_local i32 @PICE_strcpy(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
