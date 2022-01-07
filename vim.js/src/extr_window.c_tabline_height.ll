; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_window.c_tabline_height.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_window.c_tabline_height.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@p_stal = common dso_local global i32 0, align 4
@first_tabpage = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tabline_height() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @p_stal, align 4
  switch i32 %2, label %11 [
    i32 0, label %3
    i32 1, label %4
  ]

3:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %12

4:                                                ; preds = %0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @first_tabpage, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 0, i32 1
  store i32 %10, i32* %1, align 4
  br label %12

11:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %12

12:                                               ; preds = %11, %4, %3
  %13 = load i32, i32* %1, align 4
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
