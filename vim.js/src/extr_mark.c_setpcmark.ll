; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_mark.c_setpcmark.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_mark.c_setpcmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@global_busy = common dso_local global i64 0, align 8
@listcmd_busy = common dso_local global i64 0, align 8
@cmdmod = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@curwin = common dso_local global %struct.TYPE_8__* null, align 8
@JUMPLISTSIZE = common dso_local global i32 0, align 4
@curbuf = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setpcmark() #0 {
  %1 = load i64, i64* @global_busy, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %9, label %3

3:                                                ; preds = %0
  %4 = load i64, i64* @listcmd_busy, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cmdmod, i32 0, i32 0), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6, %3, %0
  br label %21

10:                                               ; preds = %6
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curwin, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curwin, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curwin, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curwin, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  br label %21

21:                                               ; preds = %10, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
