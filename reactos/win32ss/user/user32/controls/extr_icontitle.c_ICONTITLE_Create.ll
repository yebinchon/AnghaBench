; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_icontitle.c_ICONTITLE_Create.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_icontitle.c_ICONTITLE_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GWLP_HINSTANCE = common dso_local global i32 0, align 4
@WS_CLIPSIBLINGS = common dso_local global i32 0, align 4
@WS_DISABLED = common dso_local global i32 0, align 4
@GWL_STYLE = common dso_local global i32 0, align 4
@WS_CHILD = common dso_local global i32 0, align 4
@ICONTITLE_CLASS_ATOM = common dso_local global i64 0, align 8
@WS_CAPTION = common dso_local global i32 0, align 4
@WS_BORDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ICONTITLE_Create(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @GWLP_HINSTANCE, align 4
  %8 = call i32 @GetWindowLongPtrA(i32 %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @WS_CLIPSIBLINGS, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @IsWindowEnabled(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @WS_DISABLED, align 4
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %13, %1
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @GWL_STYLE, align 4
  %20 = call i32 @GetWindowLongPtrA(i32 %18, i32 %19)
  %21 = load i32, i32* @WS_CHILD, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load i64, i64* @ICONTITLE_CLASS_ATOM, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @WS_CHILD, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @GetParent(i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @CreateWindowExA(i32 0, i32 %26, i32* null, i32 %29, i32 0, i32 0, i32 1, i32 1, i32 %31, i32 0, i32 %32, i32* null)
  store i32 %33, i32* %3, align 4
  br label %41

34:                                               ; preds = %17
  %35 = load i64, i64* @ICONTITLE_CLASS_ATOM, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @CreateWindowExA(i32 0, i32 %36, i32* null, i32 %37, i32 0, i32 0, i32 1, i32 1, i32 %38, i32 0, i32 %39, i32* null)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %34, %24
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @WIN_SetOwner(i32 %42, i32 %43)
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @GWL_STYLE, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @GWL_STYLE, align 4
  %49 = call i32 @GetWindowLongPtrW(i32 %47, i32 %48)
  %50 = load i32, i32* @WS_CAPTION, align 4
  %51 = load i32, i32* @WS_BORDER, align 4
  %52 = or i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = and i32 %49, %53
  %55 = call i32 @SetWindowLongPtrW(i32 %45, i32 %46, i32 %54)
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @GetWindowLongPtrA(i32, i32) #1

declare dso_local i32 @IsWindowEnabled(i32) #1

declare dso_local i32 @CreateWindowExA(i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @GetParent(i32) #1

declare dso_local i32 @WIN_SetOwner(i32, i32) #1

declare dso_local i32 @SetWindowLongPtrW(i32, i32, i32) #1

declare dso_local i32 @GetWindowLongPtrW(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
