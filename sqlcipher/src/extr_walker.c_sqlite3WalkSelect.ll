; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_walker.c_sqlite3WalkSelect.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_walker.c_sqlite3WalkSelect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { {}*, {}* }
%struct.TYPE_14__ = type { %struct.TYPE_14__* }

@WRC_Continue = common dso_local global i32 0, align 4
@WRC_Abort = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3WalkSelect(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %8 = icmp eq %struct.TYPE_14__* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @WRC_Continue, align 4
  store i32 %10, i32* %3, align 4
  br label %69

11:                                               ; preds = %2
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)**
  %15 = load i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)*, i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)** %14, align 8
  %16 = icmp eq i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @WRC_Continue, align 4
  store i32 %18, i32* %3, align 4
  br label %69

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %64, %19
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)**
  %24 = load i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)*, i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)** %23, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %27 = call i32 %24(%struct.TYPE_13__* %25, %struct.TYPE_14__* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @WRC_Abort, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %3, align 4
  br label %69

34:                                               ; preds = %20
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %37 = call i64 @sqlite3WalkSelectExpr(%struct.TYPE_13__* %35, %struct.TYPE_14__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %42 = call i64 @sqlite3WalkSelectFrom(%struct.TYPE_13__* %40, %struct.TYPE_14__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39, %34
  %45 = load i32, i32* @WRC_Abort, align 4
  store i32 %45, i32* %3, align 4
  br label %69

46:                                               ; preds = %39
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = bitcast {}** %48 to i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)**
  %50 = load i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)*, i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)** %49, align 8
  %51 = icmp ne i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = bitcast {}** %54 to i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)**
  %56 = load i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)*, i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)** %55, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %59 = call i32 %56(%struct.TYPE_13__* %57, %struct.TYPE_14__* %58)
  br label %60

60:                                               ; preds = %52, %46
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  store %struct.TYPE_14__* %63, %struct.TYPE_14__** %5, align 8
  br label %64

64:                                               ; preds = %60
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %66 = icmp ne %struct.TYPE_14__* %65, null
  br i1 %66, label %20, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @WRC_Continue, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %44, %30, %17, %9
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @sqlite3WalkSelectExpr(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i64 @sqlite3WalkSelectFrom(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
