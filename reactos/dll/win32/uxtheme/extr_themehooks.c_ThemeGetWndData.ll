; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_themehooks.c_ThemeGetWndData.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_themehooks.c_ThemeGetWndData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@atWndContext = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ThemeGetWndData(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @atWndContext, align 4
  %7 = call i64 @MAKEINTATOM(i32 %6)
  %8 = trunc i64 %7 to i32
  %9 = call i64 @GetPropW(i32 %5, i32 %8)
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = call i32 (...) @GetProcessHeap()
  %15 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %16 = call i32* @HeapAlloc(i32 %14, i32 %15, i32 4)
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32* null, i32** %2, align 8
  br label %29

20:                                               ; preds = %13
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @atWndContext, align 4
  %23 = call i64 @MAKEINTATOM(i32 %22)
  %24 = trunc i64 %23 to i32
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @SetPropW(i32 %21, i32 %24, i32* %25)
  br label %27

27:                                               ; preds = %20, %1
  %28 = load i32*, i32** %4, align 8
  store i32* %28, i32** %2, align 8
  br label %29

29:                                               ; preds = %27, %19
  %30 = load i32*, i32** %2, align 8
  ret i32* %30
}

declare dso_local i64 @GetPropW(i32, i32) #1

declare dso_local i64 @MAKEINTATOM(i32) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @SetPropW(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
