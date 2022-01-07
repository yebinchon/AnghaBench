; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_vga.c_InvertLineVga.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_vga.c_InvertLineVga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pScreenBufferVga = common dso_local global i32 0, align 4
@GLOBAL_SCREEN_HEIGHT = common dso_local global i64 0, align 8
@GLOBAL_SCREEN_WIDTH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InvertLineVga(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i32, i32* @pScreenBufferVga, align 4
  %7 = sext i32 %6 to i64
  %8 = inttoptr i64 %7 to i32*
  store i32* %8, i32** %4, align 8
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* @GLOBAL_SCREEN_HEIGHT, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %56

12:                                               ; preds = %1
  %13 = load i32*, i32** %4, align 8
  %14 = load i64, i64* %2, align 8
  %15 = load i64, i64* @GLOBAL_SCREEN_WIDTH, align 8
  %16 = mul i64 %14, %15
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 8
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 7
  %22 = shl i32 %21, 4
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 240
  %25 = ashr i32 %24, 4
  %26 = or i32 %22, %25
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = shl i32 %27, 8
  store i32 %28, i32* %5, align 4
  store i64 0, i64* %3, align 8
  br label %29

29:                                               ; preds = %52, %12
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* @GLOBAL_SCREEN_WIDTH, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %29
  %34 = load i32*, i32** %4, align 8
  %35 = load i64, i64* %2, align 8
  %36 = load i64, i64* @GLOBAL_SCREEN_WIDTH, align 8
  %37 = mul i64 %35, %36
  %38 = load i64, i64* %3, align 8
  %39 = add i64 %37, %38
  %40 = getelementptr inbounds i32, i32* %34, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 255
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %42, %43
  %45 = load i32*, i32** %4, align 8
  %46 = load i64, i64* %2, align 8
  %47 = load i64, i64* @GLOBAL_SCREEN_WIDTH, align 8
  %48 = mul i64 %46, %47
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %48, %49
  %51 = getelementptr inbounds i32, i32* %45, i64 %50
  store i32 %44, i32* %51, align 4
  br label %52

52:                                               ; preds = %33
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %3, align 8
  br label %29

55:                                               ; preds = %29
  br label %56

56:                                               ; preds = %55, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
