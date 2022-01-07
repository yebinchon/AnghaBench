; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_sqlite3BtreeIncrVacuum.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_sqlite3BtreeIncrVacuum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32*, i32 }

@TRANS_WRITE = common dso_local global i64 0, align 8
@SQLITE_DONE = common dso_local global i32 0, align 4
@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3BtreeIncrVacuum(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %4, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %12 = call i32 @sqlite3BtreeEnter(%struct.TYPE_13__* %11)
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TRANS_WRITE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TRANS_WRITE, align 8
  %23 = icmp eq i64 %21, %22
  br label %24

24:                                               ; preds = %18, %1
  %25 = phi i1 [ false, %1 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @SQLITE_DONE, align 4
  store i32 %33, i32* %3, align 4
  br label %95

34:                                               ; preds = %24
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %36 = call i64 @btreePagecount(%struct.TYPE_14__* %35)
  store i64 %36, i64* %5, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 36
  %43 = call i64 @get4byte(i32* %42)
  store i64 %43, i64* %6, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i64 @finalDbSize(%struct.TYPE_14__* %44, i64 %45, i64 %46)
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %34
  %52 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %52, i32* %3, align 4
  br label %94

53:                                               ; preds = %34
  %54 = load i64, i64* %6, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %91

56:                                               ; preds = %53
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %58 = call i32 @saveAllCursors(%struct.TYPE_14__* %57, i32 0, i32 0)
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @SQLITE_OK, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %64 = call i32 @invalidateAllOverflowCache(%struct.TYPE_14__* %63)
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @incrVacuumStep(%struct.TYPE_14__* %65, i64 %66, i64 %67, i32 0)
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %62, %56
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @SQLITE_OK, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %69
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @sqlite3PagerWrite(i32 %78)
  store i32 %79, i32* %3, align 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 28
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @put4byte(i32* %85, i32 %88)
  br label %90

90:                                               ; preds = %73, %69
  br label %93

91:                                               ; preds = %53
  %92 = load i32, i32* @SQLITE_DONE, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %90
  br label %94

94:                                               ; preds = %93, %51
  br label %95

95:                                               ; preds = %94, %32
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %97 = call i32 @sqlite3BtreeLeave(%struct.TYPE_13__* %96)
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @sqlite3BtreeEnter(%struct.TYPE_13__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @btreePagecount(%struct.TYPE_14__*) #1

declare dso_local i64 @get4byte(i32*) #1

declare dso_local i64 @finalDbSize(%struct.TYPE_14__*, i64, i64) #1

declare dso_local i32 @saveAllCursors(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @invalidateAllOverflowCache(%struct.TYPE_14__*) #1

declare dso_local i32 @incrVacuumStep(%struct.TYPE_14__*, i64, i64, i32) #1

declare dso_local i32 @sqlite3PagerWrite(i32) #1

declare dso_local i32 @put4byte(i32*, i32) #1

declare dso_local i32 @sqlite3BtreeLeave(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
