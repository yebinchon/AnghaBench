; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_ncscrollbar.c_SCROLL_getObjectId.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_ncscrollbar.c_SCROLL_getObjectId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OBJID_HSCROLL = common dso_local global i32 0, align 4
@OBJID_VSCROLL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @SCROLL_getObjectId to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SCROLL_getObjectId(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %9 [
    i32 129, label %5
    i32 128, label %7
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @OBJID_HSCROLL, align 4
  store i32 %6, i32* %2, align 4
  br label %12

7:                                                ; preds = %1
  %8 = load i32, i32* @OBJID_VSCROLL, align 4
  store i32 %8, i32* %2, align 4
  br label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @FALSE, align 4
  %11 = call i32 @assert(i32 %10)
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %9, %7, %5
  %13 = load i32, i32* %2, align 4
  ret i32 %13
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
