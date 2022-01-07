; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_ghost.c_Ghost_GetText.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_ghost.c_Ghost_GetText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"HeapAlloc failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32*, i32)* @Ghost_GetText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @Ghost_GetText(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %8, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %11, align 4
  %14 = call i32 (...) @GetProcessHeap()
  %15 = load i32, i32* %11, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = call i32* @HeapAlloc(i32 %14, i32 0, i32 %18)
  store i32* %19, i32** %9, align 8
  br label %20

20:                                               ; preds = %45, %3
  %21 = load i32*, i32** %9, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %20
  %24 = call i32 @ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = call i32 (...) @GetProcessHeap()
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @HeapFree(i32 %28, i32 0, i32* %29)
  br label %31

31:                                               ; preds = %27, %23
  store i32* null, i32** %4, align 8
  br label %59

32:                                               ; preds = %20
  %33 = load i32*, i32** %9, align 8
  store i32* %33, i32** %8, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %34, %35
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @InternalGetWindowText(i32 %37, i32* %38, i32 %39)
  %41 = load i32, i32* %10, align 4
  %42 = sub nsw i32 %41, 1
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %55

45:                                               ; preds = %32
  %46 = load i32, i32* %11, align 4
  %47 = mul nsw i32 %46, 2
  store i32 %47, i32* %11, align 4
  %48 = call i32 (...) @GetProcessHeap()
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 4
  %53 = trunc i64 %52 to i32
  %54 = call i32* @HeapReAlloc(i32 %48, i32 0, i32* %49, i32 %53)
  store i32* %54, i32** %9, align 8
  br label %20

55:                                               ; preds = %44
  %56 = load i32, i32* %11, align 4
  %57 = load i32*, i32** %6, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32*, i32** %8, align 8
  store i32* %58, i32** %4, align 8
  br label %59

59:                                               ; preds = %55, %31
  %60 = load i32*, i32** %4, align 8
  ret i32* %60
}

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @InternalGetWindowText(i32, i32*, i32) #1

declare dso_local i32* @HeapReAlloc(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
