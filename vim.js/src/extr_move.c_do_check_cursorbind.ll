; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_move.c_do_check_cursorbind.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_move.c_do_check_cursorbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i32, i8*, %struct.TYPE_5__, i64, i64, i32*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i8*, i8*, i32 }

@curwin = common dso_local global %struct.TYPE_6__* null, align 8
@curbuf = common dso_local global i32* null, align 8
@firstwin = common dso_local global %struct.TYPE_6__* null, align 8
@restart_edit = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@VALID = common dso_local global i32 0, align 4
@VIsual_active = common dso_local global i32 0, align 4
@VIsual_select = common dso_local global i32 0, align 4
@has_mbyte = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_check_cursorbind() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %1, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %2, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %3, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %4, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %5, align 8
  %23 = load i32*, i32** @curbuf, align 8
  store i32* %23, i32** %6, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @firstwin, align 8
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** @curwin, align 8
  br label %25

25:                                               ; preds = %70, %0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %74

28:                                               ; preds = %25
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 7
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** @curbuf, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = icmp ne %struct.TYPE_6__* %32, %33
  br i1 %34, label %35, label %69

35:                                               ; preds = %28
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %69

40:                                               ; preds = %35
  %41 = load i32, i32* %1, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 8
  %45 = load i8*, i8** %2, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i8* %45, i8** %48, align 8
  %49 = load i8*, i8** %3, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @restart_edit, align 4
  store i32 %55, i32* %7, align 4
  %56 = load i8*, i8** @TRUE, align 8
  %57 = ptrtoint i8* %56 to i32
  store i32 %57, i32* @restart_edit, align 4
  %58 = call i32 (...) @check_cursor()
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* @restart_edit, align 4
  %60 = load i32, i32* @VALID, align 4
  %61 = call i32 @redraw_later(i32 %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %40
  %67 = call i32 (...) @update_topline()
  br label %68

68:                                               ; preds = %66, %40
  br label %69

69:                                               ; preds = %68, %35, %28
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  store %struct.TYPE_6__* %73, %struct.TYPE_6__** @curwin, align 8
  br label %25

74:                                               ; preds = %25
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %75, %struct.TYPE_6__** @curwin, align 8
  %76 = load i32*, i32** %6, align 8
  store i32* %76, i32** @curbuf, align 8
  ret void
}

declare dso_local i32 @check_cursor(...) #1

declare dso_local i32 @redraw_later(i32) #1

declare dso_local i32 @update_topline(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
