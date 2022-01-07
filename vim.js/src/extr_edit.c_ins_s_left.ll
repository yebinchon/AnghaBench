; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_edit.c_ins_s_left.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_edit.c_ins_s_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@curwin = common dso_local global %struct.TYPE_4__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FDO_HOR = common dso_local global i32 0, align 4
@KeyTyped = common dso_local global i64 0, align 8
@fdo_flags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ins_s_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ins_s_left() #0 {
  %1 = call i32 (...) @undisplay_dollar()
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curwin, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %13, label %7

7:                                                ; preds = %0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curwin, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %7, %0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curwin, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = call i32 @start_arrow(%struct.TYPE_3__* %15)
  %17 = load i32, i32* @FALSE, align 4
  %18 = load i32, i32* @FALSE, align 4
  %19 = call i32 @bck_word(i64 1, i32 %17, i32 %18)
  %20 = load i32, i32* @TRUE, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curwin, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  br label %25

23:                                               ; preds = %7
  %24 = call i32 (...) @vim_beep()
  br label %25

25:                                               ; preds = %23, %13
  ret void
}

declare dso_local i32 @undisplay_dollar(...) #1

declare dso_local i32 @start_arrow(%struct.TYPE_3__*) #1

declare dso_local i32 @bck_word(i64, i32, i32) #1

declare dso_local i32 @vim_beep(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
