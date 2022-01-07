; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_edit.c_ins_s_right.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_edit.c_ins_s_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@curwin = common dso_local global %struct.TYPE_7__* null, align 8
@curbuf = common dso_local global %struct.TYPE_8__* null, align 8
@NUL = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FDO_HOR = common dso_local global i32 0, align 4
@KeyTyped = common dso_local global i64 0, align 8
@fdo_flags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ins_s_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ins_s_right() #0 {
  %1 = call i32 (...) @undisplay_dollar()
  %2 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %3 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %4 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curbuf, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp slt i64 %5, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %0
  %12 = call i64 (...) @gchar_cursor()
  %13 = load i64, i64* @NUL, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %11, %0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = call i32 @start_arrow(%struct.TYPE_6__* %17)
  %19 = load i32, i32* @FALSE, align 4
  %20 = call i32 @fwd_word(i64 1, i32 %19, i32 0)
  %21 = load i32, i32* @TRUE, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  br label %26

24:                                               ; preds = %11
  %25 = call i32 (...) @vim_beep()
  br label %26

26:                                               ; preds = %24, %15
  ret void
}

declare dso_local i32 @undisplay_dollar(...) #1

declare dso_local i64 @gchar_cursor(...) #1

declare dso_local i32 @start_arrow(%struct.TYPE_6__*) #1

declare dso_local i32 @fwd_word(i64, i32, i32) #1

declare dso_local i32 @vim_beep(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
