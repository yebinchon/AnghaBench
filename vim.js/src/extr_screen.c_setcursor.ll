; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_screen.c_setcursor.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_screen.c_setcursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64 }

@curwin = common dso_local global %struct.TYPE_5__* null, align 8
@has_mbyte = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setcursor() #0 {
  %1 = call i64 (...) @redrawing()
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %18

3:                                                ; preds = %0
  %4 = call i32 (...) @validate_cursor()
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curwin, align 8
  %6 = call i64 @W_WINROW(%struct.TYPE_5__* %5)
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curwin, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %6, %9
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curwin, align 8
  %12 = call i32 @W_WINCOL(%struct.TYPE_5__* %11)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curwin, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %12, %15
  %17 = call i32 @windgoto(i64 %10, i32 %16)
  br label %18

18:                                               ; preds = %3, %0
  ret void
}

declare dso_local i64 @redrawing(...) #1

declare dso_local i32 @validate_cursor(...) #1

declare dso_local i32 @windgoto(i64, i32) #1

declare dso_local i64 @W_WINROW(%struct.TYPE_5__*) #1

declare dso_local i32 @W_WINCOL(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
