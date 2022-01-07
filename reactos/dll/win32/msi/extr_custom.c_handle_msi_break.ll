; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_custom.c_handle_msi_break.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_custom.c_handle_msi_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@handle_msi_break.MsiBreak = internal constant [9 x i8] c"MsiBreak\00", align 1
@handle_msi_break.WindowsInstaller = internal constant [18 x i8] c"Windows Installer\00", align 16
@handle_msi_break.format = internal constant [84 x i8] c"To debug your custom action, attach your debugger to process %i (0x%X) and press OK\00", align 16
@MB_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @handle_msi_break to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_msi_break(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @MAX_PATH, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = call i32 @GetEnvironmentVariableW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @handle_msi_break.MsiBreak, i64 0, i64 0), i8* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %41

15:                                               ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = call i64 @strcmpiW(i8* %10, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 1, i32* %6, align 4
  br label %41

20:                                               ; preds = %15
  %21 = call i32 @lstrlenW(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @handle_msi_break.format, i64 0, i64 0))
  %22 = add nsw i32 %21, 10
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 1
  %25 = trunc i64 %24 to i32
  %26 = call i32 @msi_alloc(i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  store i32 1, i32* %6, align 4
  br label %41

30:                                               ; preds = %20
  %31 = load i32, i32* %3, align 4
  %32 = call i32 (...) @GetCurrentProcessId()
  %33 = call i32 (...) @GetCurrentProcessId()
  %34 = call i32 @wsprintfW(i32 %31, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @handle_msi_break.format, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @MB_OK, align 4
  %37 = call i32 @MessageBoxW(i32* null, i32 %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @handle_msi_break.WindowsInstaller, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @msi_free(i32 %38)
  %40 = call i32 (...) @DebugBreak()
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %30, %29, %19, %14
  %42 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %42)
  %43 = load i32, i32* %6, align 4
  switch i32 %43, label %45 [
    i32 0, label %44
    i32 1, label %44
  ]

44:                                               ; preds = %41, %41
  ret void

45:                                               ; preds = %41
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetEnvironmentVariableW(i8*, i8*, i32) #2

declare dso_local i64 @strcmpiW(i8*, i32) #2

declare dso_local i32 @msi_alloc(i32) #2

declare dso_local i32 @lstrlenW(i8*) #2

declare dso_local i32 @wsprintfW(i32, i8*, i32, i32) #2

declare dso_local i32 @GetCurrentProcessId(...) #2

declare dso_local i32 @MessageBoxW(i32*, i32, i8*, i32) #2

declare dso_local i32 @msi_free(i32) #2

declare dso_local i32 @DebugBreak(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
