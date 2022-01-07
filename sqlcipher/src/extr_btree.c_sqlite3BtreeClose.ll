; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_sqlite3BtreeClose.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_sqlite3BtreeClose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, %struct.TYPE_16__*, %struct.TYPE_15__*, i64, i32 (i64)*, %struct.TYPE_19__*, i32, %struct.TYPE_18__*, i32, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, %struct.TYPE_18__* }

@SQLITE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3BtreeClose(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %6 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 10
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* %8, %struct.TYPE_17__** %3, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 6
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @sqlite3_mutex_held(i32 %13)
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %17 = call i32 @sqlite3BtreeEnter(%struct.TYPE_17__* %16)
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %4, align 8
  br label %21

21:                                               ; preds = %37, %1
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %23 = icmp ne %struct.TYPE_18__* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_18__* %25, %struct.TYPE_18__** %5, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  store %struct.TYPE_18__* %28, %struct.TYPE_18__** %4, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %33 = icmp eq %struct.TYPE_17__* %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %36 = call i32 @sqlite3BtreeCloseCursor(%struct.TYPE_18__* %35)
  br label %37

37:                                               ; preds = %34, %24
  br label %21

38:                                               ; preds = %21
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %40 = load i32, i32* @SQLITE_OK, align 4
  %41 = call i32 @sqlite3BtreeRollback(%struct.TYPE_17__* %39, i32 %40, i32 0)
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %43 = call i32 @sqlite3BtreeLeave(%struct.TYPE_17__* %42)
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br label %53

53:                                               ; preds = %48, %38
  %54 = phi i1 [ false, %38 ], [ %52, %48 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 9
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %63 = call i64 @removeFromSharingList(%struct.TYPE_17__* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %106

65:                                               ; preds = %61, %53
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %67, align 8
  %69 = icmp ne %struct.TYPE_18__* %68, null
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 6
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %77, align 8
  %79 = call i32 @sqlite3PagerClose(i32 %75, %struct.TYPE_19__* %78)
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 5
  %82 = load i32 (i64)*, i32 (i64)** %81, align 8
  %83 = icmp ne i32 (i64)* %82, null
  br i1 %83, label %84, label %97

84:                                               ; preds = %65
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 5
  %92 = load i32 (i64)*, i32 (i64)** %91, align 8
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = call i32 %92(i64 %95)
  br label %97

97:                                               ; preds = %89, %84, %65
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @sqlite3DbFree(i32 0, i64 %100)
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %103 = call i32 @freeTempSpace(%struct.TYPE_17__* %102)
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %105 = call i32 @sqlite3_free(%struct.TYPE_17__* %104)
  br label %106

106:                                              ; preds = %97, %61
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert(i32 %117)
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  %122 = icmp ne %struct.TYPE_16__* %121, null
  br i1 %122, label %123, label %131

123:                                              ; preds = %106
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %125, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  store %struct.TYPE_15__* %126, %struct.TYPE_15__** %130, align 8
  br label %131

131:                                              ; preds = %123, %106
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 3
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %133, align 8
  %135 = icmp ne %struct.TYPE_15__* %134, null
  br i1 %135, label %136, label %144

136:                                              ; preds = %131
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %138, align 8
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 3
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  store %struct.TYPE_16__* %139, %struct.TYPE_16__** %143, align 8
  br label %144

144:                                              ; preds = %136, %131
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %146 = call i32 @sqlite3_free(%struct.TYPE_17__* %145)
  %147 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %147
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @sqlite3BtreeEnter(%struct.TYPE_17__*) #1

declare dso_local i32 @sqlite3BtreeCloseCursor(%struct.TYPE_18__*) #1

declare dso_local i32 @sqlite3BtreeRollback(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @sqlite3BtreeLeave(%struct.TYPE_17__*) #1

declare dso_local i64 @removeFromSharingList(%struct.TYPE_17__*) #1

declare dso_local i32 @sqlite3PagerClose(i32, %struct.TYPE_19__*) #1

declare dso_local i32 @sqlite3DbFree(i32, i64) #1

declare dso_local i32 @freeTempSpace(%struct.TYPE_17__*) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
