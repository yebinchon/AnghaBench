; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_misc2.c_virtual_active.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_misc2.c_virtual_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@virtual_op = common dso_local global i64 0, align 8
@MAYBE = common dso_local global i64 0, align 8
@ve_flags = common dso_local global i32 0, align 4
@VE_ALL = common dso_local global i32 0, align 4
@VE_INSERT = common dso_local global i32 0, align 4
@State = common dso_local global i32 0, align 4
@INSERT = common dso_local global i32 0, align 4
@Ctrl_V = common dso_local global i64 0, align 8
@VE_BLOCK = common dso_local global i32 0, align 4
@VIsual_active = common dso_local global i64 0, align 8
@VIsual_mode = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @virtual_active() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @virtual_op, align 8
  %3 = load i64, i64* @MAYBE, align 8
  %4 = icmp ne i64 %2, %3
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i64, i64* @virtual_op, align 8
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %1, align 4
  br label %27

8:                                                ; preds = %0
  %9 = load i32, i32* @ve_flags, align 4
  %10 = load i32, i32* @VE_ALL, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* @ve_flags, align 4
  %14 = load i32, i32* @VE_INSERT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i32, i32* @State, align 4
  %19 = load i32, i32* @INSERT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %17, %12
  %23 = phi i1 [ false, %12 ], [ %21, %17 ]
  br label %24

24:                                               ; preds = %22, %8
  %25 = phi i1 [ true, %8 ], [ %23, %22 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %1, align 4
  br label %27

27:                                               ; preds = %24, %5
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
