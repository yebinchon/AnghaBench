; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_window.c_win_setminheight.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_window.c_win_setminheight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.TYPE_3__* }

@TRUE = common dso_local global i32 0, align 4
@p_wmh = common dso_local global i64 0, align 8
@p_wh = common dso_local global i32 0, align 4
@firstwin = common dso_local global %struct.TYPE_3__* null, align 8
@e_noroom = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @win_setminheight() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = load i32, i32* @TRUE, align 4
  store i32 %4, i32* %2, align 4
  br label %5

5:                                                ; preds = %43, %0
  %6 = load i64, i64* @p_wmh, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %44

8:                                                ; preds = %5
  %9 = load i32, i32* @p_wh, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %1, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @firstwin, align 8
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %3, align 8
  br label %12

12:                                               ; preds = %25, %8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @p_wmh, align 8
  %20 = sub nsw i64 %18, %19
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %1, align 4
  br label %25

25:                                               ; preds = %15
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %3, align 8
  br label %12

29:                                               ; preds = %12
  %30 = load i32, i32* %1, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %44

33:                                               ; preds = %29
  %34 = load i64, i64* @p_wmh, align 8
  %35 = add nsw i64 %34, -1
  store i64 %35, i64* @p_wmh, align 8
  %36 = load i32, i32* %2, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32, i32* @e_noroom, align 4
  %40 = call i32 @_(i32 %39)
  %41 = call i32 @EMSG(i32 %40)
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %38, %33
  br label %5

44:                                               ; preds = %32, %5
  ret void
}

declare dso_local i32 @EMSG(i32) #1

declare dso_local i32 @_(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
