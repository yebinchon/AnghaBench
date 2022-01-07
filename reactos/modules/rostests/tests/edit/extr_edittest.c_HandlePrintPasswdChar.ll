; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/edit/extr_edittest.c_HandlePrintPasswdChar.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/edit/extr_edittest.c_HandlePrintPasswdChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TextBuffer = common dso_local global i8* null, align 8
@g_hwnd = common dso_local global i32 0, align 4
@SYSTEM_FIXED_FONT = common dso_local global i32 0, align 4
@ResultX = common dso_local global i32 0, align 4
@ResultY = common dso_local global i32 0, align 4
@rect = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @HandlePrintPasswdChar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HandlePrintPasswdChar(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @SendMessage(i32 %13, i32 %14, i32 %15, i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  store i32 1, i32* %12, align 4
  %21 = load i32, i32* %11, align 4
  %22 = trunc i32 %21 to i8
  %23 = load i8*, i8** @TextBuffer, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 8
  store i8 %22, i8* %24, align 1
  br label %34

25:                                               ; preds = %4
  %26 = load i8*, i8** @TextBuffer, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 8
  store i8 78, i8* %27, align 1
  %28 = load i8*, i8** @TextBuffer, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 9
  store i8 85, i8* %29, align 1
  %30 = load i8*, i8** @TextBuffer, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 10
  store i8 76, i8* %31, align 1
  %32 = load i8*, i8** @TextBuffer, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 11
  store i8 76, i8* %33, align 1
  store i32 4, i32* %12, align 4
  br label %34

34:                                               ; preds = %25, %20
  %35 = load i32, i32* @g_hwnd, align 4
  %36 = call i32 @GetDC(i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @SYSTEM_FIXED_FONT, align 4
  %39 = call i32 @GetStockObject(i32 %38)
  %40 = call i32 @SelectObject(i32 %37, i32 %39)
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @ResultX, align 4
  %43 = load i32, i32* @ResultY, align 4
  %44 = load i8*, i8** @TextBuffer, align 8
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 8, %45
  %47 = call i32 @TextOut(i32 %41, i32 %42, i32 %43, i8* %44, i32 %46)
  %48 = load i32, i32* @g_hwnd, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @ReleaseDC(i32 %48, i32 %49)
  %51 = load i32, i32* @g_hwnd, align 4
  %52 = call i32 @ValidateRect(i32 %51, i32* @rect)
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @GetStockObject(i32) #1

declare dso_local i32 @TextOut(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i32 @ValidateRect(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
