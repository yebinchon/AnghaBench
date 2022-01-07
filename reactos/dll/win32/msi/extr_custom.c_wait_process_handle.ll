; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_custom.c_wait_process_handle.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_custom.c_wait_process_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i32 0, align 4
@msidbCustomActionTypeAsync = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"waiting for %s\0A\00", align 1
@msidbCustomActionTypeContinue = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"%s running in background\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @wait_process_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_process_handle(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @msidbCustomActionTypeAsync, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @debugstr_w(i32 %16)
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @msi_dialog_check_messages(i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @msidbCustomActionTypeContinue, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @custom_get_process_return(i32 %26)
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %25, %15
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @CloseHandle(i32 %29)
  br label %49

31:                                               ; preds = %4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @debugstr_w(i32 %32)
  %34 = call i32 @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @msidbCustomActionTypeContinue, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %31
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @TRUE, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @file_running_action(i32* %40, i32 %41, i32 %42, i32 %43)
  br label %48

45:                                               ; preds = %31
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @CloseHandle(i32 %46)
  br label %48

48:                                               ; preds = %45, %39
  br label %49

49:                                               ; preds = %48, %28
  %50 = load i32, i32* %9, align 4
  ret i32 %50
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @msi_dialog_check_messages(i32) #1

declare dso_local i32 @custom_get_process_return(i32) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @file_running_action(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
