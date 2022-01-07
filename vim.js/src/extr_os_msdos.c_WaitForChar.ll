; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_os_msdos.c_WaitForChar.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_os_msdos.c_WaitForChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@p_consk = common dso_local global i64 0, align 8
@p_biosk = common dso_local global i64 0, align 8
@bioskey_ready = common dso_local global i32 0, align 4
@cbrk_pressed = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FOREVER = common dso_local global i64 0, align 8
@BIOSTICK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@MOUSE_DRAG = common dso_local global i64 0, align 8
@MOUSE_LEFT = common dso_local global i64 0, align 8
@MOUSE_MIDDLE = common dso_local global i64 0, align 8
@MOUSE_RELEASE = common dso_local global i64 0, align 8
@MOUSE_RIGHT = common dso_local global i64 0, align 8
@MSDOS_MOUSE_LEFT = common dso_local global i32 0, align 4
@MSDOS_MOUSE_MIDDLE = common dso_local global i32 0, align 4
@MSDOS_MOUSE_RIGHT = common dso_local global i32 0, align 4
@curwin = common dso_local global %struct.TYPE_4__* null, align 8
@mouse_active = common dso_local global i64 0, align 8
@mouse_avail = common dso_local global i64 0, align 8
@mouse_click = common dso_local global i64 0, align 8
@mouse_click_count = common dso_local global i32 0, align 4
@mouse_click_time = common dso_local global i64 0, align 8
@mouse_click_x = common dso_local global i32 0, align 4
@mouse_click_y = common dso_local global i32 0, align 4
@mouse_hidden = common dso_local global i32 0, align 4
@mouse_last_click = common dso_local global i64 0, align 8
@mouse_topfill = common dso_local global i64 0, align 8
@mouse_topline = common dso_local global i64 0, align 8
@mouse_x = common dso_local global i32 0, align 4
@mouse_x_div = common dso_local global i32 0, align 4
@mouse_y = common dso_local global i32 0, align 4
@mouse_y_div = common dso_local global i32 0, align 4
@p_mouset = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @WaitForChar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WaitForChar(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i64 @biostime(i32 0, i64 0)
  store i64 %8, i64* %4, align 8
  br label %9

9:                                                ; preds = %7, %1
  br label %10

10:                                               ; preds = %47, %9
  %11 = load i64, i64* @p_consk, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = call i64 (...) @cons_kbhit()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %29, label %26

16:                                               ; preds = %10
  %17 = load i64, i64* @p_biosk, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* @bioskey_ready, align 4
  %21 = call i64 @bioskey(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %29, label %26

23:                                               ; preds = %16
  %24 = call i64 (...) @kbhit()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23, %19, %13
  %27 = load i64, i64* @cbrk_pressed, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26, %23, %19, %13
  %30 = load i32, i32* @TRUE, align 4
  store i32 %30, i32* %2, align 4
  br label %50

31:                                               ; preds = %26
  %32 = load i64, i64* %3, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* @FOREVER, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = call i64 @biostime(i32 0, i64 0)
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* %3, align 8
  %42 = load i64, i64* @BIOSTICK, align 8
  %43 = sdiv i64 %41, %42
  %44 = add nsw i64 %40, %43
  %45 = icmp sgt i64 %39, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38, %31
  br label %48

47:                                               ; preds = %38, %34
  br label %10

48:                                               ; preds = %46
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %29
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @biostime(i32, i64) #1

declare dso_local i64 @cons_kbhit(...) #1

declare dso_local i64 @bioskey(i32) #1

declare dso_local i64 @kbhit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
