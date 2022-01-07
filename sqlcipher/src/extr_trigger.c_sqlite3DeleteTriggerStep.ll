; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_trigger.c_sqlite3DeleteTriggerStep.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_trigger.c_sqlite3DeleteTriggerStep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, i32, i32, i32, i32, i32, %struct.TYPE_4__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3DeleteTriggerStep(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  br label %6

6:                                                ; preds = %9, %2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %47

9:                                                ; preds = %6
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %5, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 6
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %4, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @sqlite3ExprDelete(i32* %14, i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @sqlite3ExprListDelete(i32* %19, i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @sqlite3SelectDelete(i32* %24, i32 %27)
  %29 = load i32*, i32** %3, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @sqlite3IdListDelete(i32* %29, i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @sqlite3UpsertDelete(i32* %34, i32 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = call i32 @sqlite3DbFree(i32* %39, %struct.TYPE_4__* %42)
  %44 = load i32*, i32** %3, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = call i32 @sqlite3DbFree(i32* %44, %struct.TYPE_4__* %45)
  br label %6

47:                                               ; preds = %6
  ret void
}

declare dso_local i32 @sqlite3ExprDelete(i32*, i32) #1

declare dso_local i32 @sqlite3ExprListDelete(i32*, i32) #1

declare dso_local i32 @sqlite3SelectDelete(i32*, i32) #1

declare dso_local i32 @sqlite3IdListDelete(i32*, i32) #1

declare dso_local i32 @sqlite3UpsertDelete(i32*, i32) #1

declare dso_local i32 @sqlite3DbFree(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
