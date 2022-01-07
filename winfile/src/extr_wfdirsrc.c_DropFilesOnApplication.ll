; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfdirsrc.c_DropFilesOnApplication.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfdirsrc.c_DropFilesOnApplication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hwndGlobalSink = common dso_local global i32* null, align 8
@WM_DROPFILES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DropFilesOnApplication(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32*, i32** @hwndGlobalSink, align 8
  store i32* %8, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

11:                                               ; preds = %1
  store i32* null, i32** @hwndGlobalSink, align 8
  %12 = call i32 @GetCursorPos(i32* %4)
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @GetClientRect(i32* %13, i32* %6)
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @ScreenToClient(i32* %15, i32* %4)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @PtInRect(i32* %6, i32 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @CreateDropFiles(i32 %17, i32 %22, i32 %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %34

28:                                               ; preds = %11
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @WM_DROPFILES, align 4
  %31 = load i64, i64* %7, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @PostMessage(i32* %29, i32 %30, i32 %32, i64 0)
  store i32 1, i32* %2, align 4
  br label %34

34:                                               ; preds = %28, %27, %10
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @GetCursorPos(i32*) #1

declare dso_local i32 @GetClientRect(i32*, i32*) #1

declare dso_local i32 @ScreenToClient(i32*, i32*) #1

declare dso_local i64 @CreateDropFiles(i32, i32, i32) #1

declare dso_local i32 @PtInRect(i32*, i32) #1

declare dso_local i32 @PostMessage(i32*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
