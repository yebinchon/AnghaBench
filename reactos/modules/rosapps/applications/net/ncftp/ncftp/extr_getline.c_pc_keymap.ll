; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_getline.c_pc_keymap.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_getline.c_pc_keymap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pc_keymap(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %12 [
    i32 128, label %4
    i32 130, label %4
    i32 136, label %5
    i32 131, label %5
    i32 132, label %6
    i32 129, label %7
    i32 135, label %8
    i32 134, label %9
    i32 133, label %10
    i32 137, label %11
  ]

4:                                                ; preds = %1, %1
  store i32 16, i32* %2, align 4
  br label %13

5:                                                ; preds = %1, %1
  store i32 14, i32* %2, align 4
  br label %13

6:                                                ; preds = %1
  store i32 2, i32* %2, align 4
  br label %13

7:                                                ; preds = %1
  store i32 6, i32* %2, align 4
  br label %13

8:                                                ; preds = %1
  store i32 5, i32* %2, align 4
  br label %13

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %13

10:                                               ; preds = %1
  store i32 15, i32* %2, align 4
  br label %13

11:                                               ; preds = %1
  store i32 4, i32* %2, align 4
  br label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %12, %11, %10, %9, %8, %7, %6, %5, %4
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
