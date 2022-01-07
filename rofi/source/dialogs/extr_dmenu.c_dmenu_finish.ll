; ModuleID = '/home/carl/AnghaBench/rofi/source/dialogs/extr_dmenu.c_dmenu_finish.c'
source_filename = "/home/carl/AnghaBench/rofi/source/dialogs/extr_dmenu.c_dmenu_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@dmenu_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @dmenu_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmenu_finish(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @FALSE, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* @EXIT_FAILURE, align 4
  %10 = call i32 @rofi_set_return_code(i32 %9)
  br label %21

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp sge i32 %12, 10
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @rofi_set_return_code(i32 %15)
  br label %20

17:                                               ; preds = %11
  %18 = load i32, i32* @EXIT_SUCCESS, align 4
  %19 = call i32 @rofi_set_return_code(i32 %18)
  br label %20

20:                                               ; preds = %17, %14
  br label %21

21:                                               ; preds = %20, %8
  %22 = call i32 @rofi_view_set_active(i32* null)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @rofi_view_free(i32* %23)
  %25 = call i32 @mode_destroy(i32* @dmenu_mode)
  ret void
}

declare dso_local i32 @rofi_set_return_code(i32) #1

declare dso_local i32 @rofi_view_set_active(i32*) #1

declare dso_local i32 @rofi_view_free(i32*) #1

declare dso_local i32 @mode_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
