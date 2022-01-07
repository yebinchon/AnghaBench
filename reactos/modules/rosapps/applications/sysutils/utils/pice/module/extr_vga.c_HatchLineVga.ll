; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_vga.c_HatchLineVga.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_vga.c_HatchLineVga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pScreenBufferVga = common dso_local global i32 0, align 4
@GLOBAL_SCREEN_HEIGHT = common dso_local global i64 0, align 8
@GLOBAL_SCREEN_WIDTH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HatchLineVga(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i32, i32* @pScreenBufferVga, align 4
  %6 = sext i32 %5 to i64
  %7 = inttoptr i64 %6 to i32*
  store i32* %7, i32** %4, align 8
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* @GLOBAL_SCREEN_HEIGHT, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %38

11:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %12

12:                                               ; preds = %34, %11
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @GLOBAL_SCREEN_WIDTH, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %12
  %17 = load i32*, i32** %4, align 8
  %18 = load i64, i64* %2, align 8
  %19 = load i64, i64* @GLOBAL_SCREEN_WIDTH, align 8
  %20 = mul i64 %18, %19
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %20, %21
  %23 = getelementptr inbounds i32, i32* %17, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 61695
  %26 = or i32 %25, 3072
  %27 = load i32*, i32** %4, align 8
  %28 = load i64, i64* %2, align 8
  %29 = load i64, i64* @GLOBAL_SCREEN_WIDTH, align 8
  %30 = mul i64 %28, %29
  %31 = load i64, i64* %3, align 8
  %32 = add i64 %30, %31
  %33 = getelementptr inbounds i32, i32* %27, i64 %32
  store i32 %26, i32* %33, align 4
  br label %34

34:                                               ; preds = %16
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %3, align 8
  br label %12

37:                                               ; preds = %12
  br label %38

38:                                               ; preds = %37, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
