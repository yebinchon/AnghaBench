; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_sqlite3BtreeSavepoint.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_sqlite3BtreeSavepoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i64, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@TRANS_WRITE = common dso_local global i64 0, align 8
@SAVEPOINT_RELEASE = common dso_local global i32 0, align 4
@SAVEPOINT_ROLLBACK = common dso_local global i32 0, align 4
@BTS_INITIALLY_EMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3BtreeSavepoint(%struct.TYPE_10__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @SQLITE_OK, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = icmp ne %struct.TYPE_10__* %10, null
  br i1 %11, label %12, label %105

12:                                               ; preds = %3
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TRANS_WRITE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %105

18:                                               ; preds = %12
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %8, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @SAVEPOINT_RELEASE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @SAVEPOINT_ROLLBACK, align 4
  %28 = icmp eq i32 %26, %27
  br label %29

29:                                               ; preds = %25, %18
  %30 = phi i1 [ true, %18 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @SAVEPOINT_ROLLBACK, align 4
  %41 = icmp eq i32 %39, %40
  br label %42

42:                                               ; preds = %38, %35
  %43 = phi i1 [ false, %35 ], [ %41, %38 ]
  br label %44

44:                                               ; preds = %42, %29
  %45 = phi i1 [ true, %29 ], [ %43, %42 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %49 = call i32 @sqlite3BtreeEnter(%struct.TYPE_10__* %48)
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @SAVEPOINT_ROLLBACK, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %55 = call i32 @saveAllCursors(%struct.TYPE_11__* %54, i32 0, i32 0)
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %53, %44
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @SQLITE_OK, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @sqlite3PagerSavepoint(i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %60, %56
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @SQLITE_OK, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %102

71:                                               ; preds = %67
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %71
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @BTS_INITIALLY_EMPTY, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  store i64 0, i64* %83, align 8
  br label %84

84:                                               ; preds = %81, %74, %71
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %86 = call i32 @newDatabase(%struct.TYPE_11__* %85)
  store i32 %86, i32* %7, align 4
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 28, %91
  %93 = call i64 @get4byte(i64 %92)
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp sgt i64 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  br label %102

102:                                              ; preds = %84, %67
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %104 = call i32 @sqlite3BtreeLeave(%struct.TYPE_10__* %103)
  br label %105

105:                                              ; preds = %102, %12, %3
  %106 = load i32, i32* %7, align 4
  ret i32 %106
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3BtreeEnter(%struct.TYPE_10__*) #1

declare dso_local i32 @saveAllCursors(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @sqlite3PagerSavepoint(i32, i32, i32) #1

declare dso_local i32 @newDatabase(%struct.TYPE_11__*) #1

declare dso_local i64 @get4byte(i64) #1

declare dso_local i32 @sqlite3BtreeLeave(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
