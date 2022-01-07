; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_ops.c_adjust_cursor_eol.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_ops.c_adjust_cursor_eol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }

@curwin = common dso_local global %struct.TYPE_4__* null, align 8
@NUL = common dso_local global i64 0, align 8
@restart_edit = common dso_local global i64 0, align 8
@State = common dso_local global i32 0, align 4
@INSERT = common dso_local global i32 0, align 4
@VE_ALL = common dso_local global i32 0, align 4
@VE_ONEMORE = common dso_local global i32 0, align 4
@ve_flags = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adjust_cursor_eol() #0 {
  %1 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curwin, align 8
  %2 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = icmp sgt i64 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %0
  %7 = call i64 (...) @gchar_cursor()
  %8 = load i64, i64* @NUL, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = load i64, i64* @restart_edit, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* @State, align 4
  %15 = load i32, i32* @INSERT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = call i32 (...) @dec_cursor()
  br label %20

20:                                               ; preds = %18, %13, %10, %6, %0
  ret void
}

declare dso_local i64 @gchar_cursor(...) #1

declare dso_local i32 @dec_cursor(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
