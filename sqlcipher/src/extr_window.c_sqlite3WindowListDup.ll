; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_window.c_sqlite3WindowListDup.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_window.c_sqlite3WindowListDup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @sqlite3WindowListDup(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__**, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__** %6, %struct.TYPE_6__*** %7, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %5, align 8
  br label %9

9:                                                ; preds = %25, %2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %29

12:                                               ; preds = %9
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = call %struct.TYPE_6__* @sqlite3WindowDup(i32* %13, i32 0, %struct.TYPE_6__* %14)
  %16 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %16, align 8
  %17 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = icmp eq %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %29

21:                                               ; preds = %12
  %22 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store %struct.TYPE_6__** %24, %struct.TYPE_6__*** %7, align 8
  br label %25

25:                                               ; preds = %21
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %5, align 8
  br label %9

29:                                               ; preds = %20, %9
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  ret %struct.TYPE_6__* %30
}

declare dso_local %struct.TYPE_6__* @sqlite3WindowDup(i32*, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
