; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_move.c_scrollup_clamp.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_move.c_scrollup_clamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, i64, i32, i32, i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@curwin = common dso_local global %struct.TYPE_6__* null, align 8
@curbuf = common dso_local global %struct.TYPE_7__* null, align 8
@p_so = common dso_local global i32 0, align 4
@VALID_WROW = common dso_local global i32 0, align 4
@VALID_CROW = common dso_local global i32 0, align 4
@VALID_BOTLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scrollup_clamp() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %3 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curbuf, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %4, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %58

11:                                               ; preds = %0
  %12 = call i32 (...) @validate_cursor()
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @plines(i64 %18)
  %20 = sub nsw i32 %15, %19
  store i32 %20, i32* %1, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 7
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %11
  %26 = call i32 (...) @validate_virtcol()
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %31 = call i32 @W_WIDTH(%struct.TYPE_6__* %30)
  %32 = sdiv i32 %29, %31
  %33 = load i32, i32* %1, align 4
  %34 = sub nsw i32 %33, %32
  store i32 %34, i32* %1, align 4
  br label %35

35:                                               ; preds = %25, %11
  %36 = load i32, i32* %1, align 4
  %37 = load i32, i32* @p_so, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %35
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %41, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = load i32, i32* @VALID_WROW, align 4
  %49 = load i32, i32* @VALID_CROW, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @VALID_BOTLINE, align 4
  %52 = or i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %10, %39, %35
  ret void
}

declare dso_local i32 @validate_cursor(...) #1

declare dso_local i32 @plines(i64) #1

declare dso_local i32 @validate_virtcol(...) #1

declare dso_local i32 @W_WIDTH(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
