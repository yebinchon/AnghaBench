; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_vdbesort.c_sqlite3VdbeSorterClose.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_vdbesort.c_sqlite3VdbeSorterClose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@CURTYPE_SORTER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3VdbeSorterClose(i32* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @CURTYPE_SORTER, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %5, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = icmp ne %struct.TYPE_10__* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %2
  %20 = load i32*, i32** %3, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = call i32 @sqlite3VdbeSorterReset(i32* %20, %struct.TYPE_10__* %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @sqlite3_free(i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = call i32 @sqlite3DbFree(i32* %28, %struct.TYPE_10__* %29)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %33, align 8
  br label %34

34:                                               ; preds = %19, %2
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeSorterReset(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @sqlite3_free(i32) #1

declare dso_local i32 @sqlite3DbFree(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
