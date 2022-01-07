; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/GUI/extr_misc.c_InitImageList.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/GUI/extr_misc.c_InitImageList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ILC_MASK = common dso_local global i32 0, align 4
@ILC_COLOR32 = common dso_local global i32 0, align 4
@hInstance = common dso_local global i32 0, align 4
@IMAGE_ICON = common dso_local global i32 0, align 4
@LR_DEFAULTCOLOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @InitImageList(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i32, i32* @ILC_MASK, align 4
  %17 = load i32, i32* @ILC_COLOR32, align 4
  %18 = or i32 %16, %17
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %6, align 8
  %21 = sub nsw i64 %19, %20
  %22 = call i32* @ImageList_Create(i64 %14, i64 %15, i32 %18, i64 %21, i32 0)
  store i32* %22, i32** %11, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %63

26:                                               ; preds = %4
  %27 = load i64, i64* %6, align 8
  store i64 %27, i64* %12, align 8
  br label %28

28:                                               ; preds = %55, %26
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp sle i64 %29, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %28
  %33 = load i32, i32* @hInstance, align 4
  %34 = load i64, i64* %12, align 8
  %35 = call i32 @MAKEINTRESOURCEW(i64 %34)
  %36 = load i32, i32* @IMAGE_ICON, align 4
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i32, i32* @LR_DEFAULTCOLOR, align 4
  %40 = call i64 @LoadImageW(i32 %33, i32 %35, i32 %36, i64 %37, i64 %38, i32 %39)
  %41 = inttoptr i64 %40 to i32*
  store i32* %41, i32** %10, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %60

45:                                               ; preds = %32
  %46 = load i32*, i32** %11, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @ImageList_AddIcon(i32* %46, i32* %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %60

52:                                               ; preds = %45
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @DestroyIcon(i32* %53)
  br label %55

55:                                               ; preds = %52
  %56 = load i64, i64* %12, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %12, align 8
  br label %28

58:                                               ; preds = %28
  %59 = load i32*, i32** %11, align 8
  store i32* %59, i32** %5, align 8
  br label %63

60:                                               ; preds = %51, %44
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @ImageList_Destroy(i32* %61)
  store i32* null, i32** %5, align 8
  br label %63

63:                                               ; preds = %60, %58, %25
  %64 = load i32*, i32** %5, align 8
  ret i32* %64
}

declare dso_local i32* @ImageList_Create(i64, i64, i32, i64, i32) #1

declare dso_local i64 @LoadImageW(i32, i32, i32, i64, i64, i32) #1

declare dso_local i32 @MAKEINTRESOURCEW(i64) #1

declare dso_local i32 @ImageList_AddIcon(i32*, i32*) #1

declare dso_local i32 @DestroyIcon(i32*) #1

declare dso_local i32 @ImageList_Destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
