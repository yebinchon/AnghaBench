; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_edit.c_ins_ctrl_g.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_edit.c_ins_ctrl_g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@no_mapping = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ins_need_undo = common dso_local global i32 0, align 4
@curwin = common dso_local global %struct.TYPE_2__* null, align 8
@Insstart = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ins_ctrl_g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ins_ctrl_g() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @no_mapping, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* @no_mapping, align 4
  %4 = call i32 (...) @plain_vgetc()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* @no_mapping, align 4
  %6 = add nsw i32 %5, -1
  store i32 %6, i32* @no_mapping, align 4
  %7 = load i32, i32* %1, align 4
  switch i32 %7, label %21 [
    i32 128, label %8
    i32 130, label %8
    i32 107, label %8
    i32 129, label %11
    i32 131, label %11
    i32 106, label %11
    i32 117, label %14
  ]

8:                                                ; preds = %0, %0, %0
  %9 = load i32, i32* @TRUE, align 4
  %10 = call i32 @ins_up(i32 %9)
  br label %23

11:                                               ; preds = %0, %0, %0
  %12 = load i32, i32* @TRUE, align 4
  %13 = call i32 @ins_down(i32 %12)
  br label %23

14:                                               ; preds = %0
  %15 = load i32, i32* @TRUE, align 4
  %16 = call i32 @u_sync(i32 %15)
  %17 = load i32, i32* @TRUE, align 4
  store i32 %17, i32* @ins_need_undo, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curwin, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* @Insstart, align 4
  br label %23

21:                                               ; preds = %0
  %22 = call i32 (...) @vim_beep()
  br label %23

23:                                               ; preds = %21, %14, %11, %8
  ret void
}

declare dso_local i32 @plain_vgetc(...) #1

declare dso_local i32 @ins_up(i32) #1

declare dso_local i32 @ins_down(i32) #1

declare dso_local i32 @u_sync(i32) #1

declare dso_local i32 @vim_beep(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
