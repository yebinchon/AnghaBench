; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_sqlite3BtreeRollback.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_sqlite3BtreeRollback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i32, i32 }
%struct.TYPE_16__ = type { i64 }

@SQLITE_ABORT_ROLLBACK = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@TRANS_WRITE = common dso_local global i64 0, align 8
@TRANS_READ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3BtreeRollback(%struct.TYPE_17__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br label %21

21:                                               ; preds = %18, %3
  %22 = phi i1 [ true, %3 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @SQLITE_ABORT_ROLLBACK, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SQLITE_OK, align 4
  %31 = icmp eq i32 %29, %30
  br label %32

32:                                               ; preds = %28, %21
  %33 = phi i1 [ true, %21 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %37 = call i32 @sqlite3BtreeEnter(%struct.TYPE_17__* %36)
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @SQLITE_OK, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %32
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %43 = call i32 @saveAllCursors(%struct.TYPE_18__* %42, i32 0, i32 0)
  store i32 %43, i32* %5, align 4
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %46, %41
  br label %50

48:                                               ; preds = %32
  %49 = load i32, i32* @SQLITE_OK, align 4
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %48, %47
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %80

53:                                               ; preds = %50
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @sqlite3BtreeTripAllCursors(%struct.TYPE_17__* %54, i32 %55, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @SQLITE_OK, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %70, label %61

61:                                               ; preds = %53
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @SQLITE_OK, align 4
  %67 = icmp eq i32 %65, %66
  br label %68

68:                                               ; preds = %64, %61
  %69 = phi i1 [ false, %61 ], [ %67, %64 ]
  br label %70

70:                                               ; preds = %68, %53
  %71 = phi i1 [ true, %53 ], [ %69, %68 ]
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @SQLITE_OK, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %77, %70
  br label %80

80:                                               ; preds = %79, %50
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %82 = call i32 @btreeIntegrity(%struct.TYPE_17__* %81)
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @TRANS_WRITE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %152

88:                                               ; preds = %80
  %89 = load i64, i64* @TRANS_WRITE, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %89, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @sqlite3PagerRollback(i32 %98)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @SQLITE_OK, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %88
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %103, %88
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %107 = call i32 @btreeGetPage(%struct.TYPE_18__* %106, i32 1, %struct.TYPE_16__** %9, i32 0)
  %108 = load i32, i32* @SQLITE_OK, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %141

110:                                              ; preds = %105
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to i32*
  %115 = getelementptr inbounds i32, i32* %114, i64 28
  %116 = call i32 @get4byte(i32* %115)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp eq i32 %117, 0
  %119 = zext i1 %118 to i32
  %120 = call i32 @testcase(i32 %119)
  %121 = load i32, i32* %12, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %110
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @sqlite3PagerPagecount(i32 %126, i32* %12)
  br label %128

128:                                              ; preds = %123, %110
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %12, align 4
  %133 = icmp ne i32 %131, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @testcase(i32 %134)
  %136 = load i32, i32* %12, align 4
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 8
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %140 = call i32 @releasePageOne(%struct.TYPE_16__* %139)
  br label %141

141:                                              ; preds = %128, %105
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %143 = call i64 @countValidCursors(%struct.TYPE_18__* %142, i32 1)
  %144 = icmp eq i64 %143, 0
  %145 = zext i1 %144 to i32
  %146 = call i32 @assert(i32 %145)
  %147 = load i64, i64* @TRANS_READ, align 8
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 0
  store i64 %147, i64* %149, align 8
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %151 = call i32 @btreeClearHasContent(%struct.TYPE_18__* %150)
  br label %152

152:                                              ; preds = %141, %80
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %154 = call i32 @btreeEndTransaction(%struct.TYPE_17__* %153)
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %156 = call i32 @sqlite3BtreeLeave(%struct.TYPE_17__* %155)
  %157 = load i32, i32* %7, align 4
  ret i32 %157
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3BtreeEnter(%struct.TYPE_17__*) #1

declare dso_local i32 @saveAllCursors(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @sqlite3BtreeTripAllCursors(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @btreeIntegrity(%struct.TYPE_17__*) #1

declare dso_local i32 @sqlite3PagerRollback(i32) #1

declare dso_local i32 @btreeGetPage(%struct.TYPE_18__*, i32, %struct.TYPE_16__**, i32) #1

declare dso_local i32 @get4byte(i32*) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @sqlite3PagerPagecount(i32, i32*) #1

declare dso_local i32 @releasePageOne(%struct.TYPE_16__*) #1

declare dso_local i64 @countValidCursors(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @btreeClearHasContent(%struct.TYPE_18__*) #1

declare dso_local i32 @btreeEndTransaction(%struct.TYPE_17__*) #1

declare dso_local i32 @sqlite3BtreeLeave(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
