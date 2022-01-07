; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_edit.c_get_last_insert.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_edit.c_get_last_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@last_insert = common dso_local global i32* null, align 8
@last_insert_skip = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_last_insert() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32*, i32** @last_insert, align 8
  %3 = icmp eq i32* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32* null, i32** %1, align 8
  br label %10

5:                                                ; preds = %0
  %6 = load i32*, i32** @last_insert, align 8
  %7 = load i32, i32* @last_insert_skip, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %6, i64 %8
  store i32* %9, i32** %1, align 8
  br label %10

10:                                               ; preds = %5, %4
  %11 = load i32*, i32** %1, align 8
  ret i32* %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
