; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_rowset.c_sqlite3RowSetClear.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_rowset.c_sqlite3RowSetClear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i64, i64, %struct.RowSetChunk*, i32 }
%struct.RowSetChunk = type { %struct.RowSetChunk* }

@ROWSET_SORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3RowSetClear(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca %struct.RowSetChunk*, align 8
  %5 = alloca %struct.RowSetChunk*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %3, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 5
  %10 = load %struct.RowSetChunk*, %struct.RowSetChunk** %9, align 8
  store %struct.RowSetChunk* %10, %struct.RowSetChunk** %4, align 8
  br label %11

11:                                               ; preds = %23, %1
  %12 = load %struct.RowSetChunk*, %struct.RowSetChunk** %4, align 8
  %13 = icmp ne %struct.RowSetChunk* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load %struct.RowSetChunk*, %struct.RowSetChunk** %4, align 8
  %16 = getelementptr inbounds %struct.RowSetChunk, %struct.RowSetChunk* %15, i32 0, i32 0
  %17 = load %struct.RowSetChunk*, %struct.RowSetChunk** %16, align 8
  store %struct.RowSetChunk* %17, %struct.RowSetChunk** %5, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.RowSetChunk*, %struct.RowSetChunk** %4, align 8
  %22 = call i32 @sqlite3DbFree(i32 %20, %struct.RowSetChunk* %21)
  br label %23

23:                                               ; preds = %14
  %24 = load %struct.RowSetChunk*, %struct.RowSetChunk** %5, align 8
  store %struct.RowSetChunk* %24, %struct.RowSetChunk** %4, align 8
  br label %11

25:                                               ; preds = %11
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 5
  store %struct.RowSetChunk* null, %struct.RowSetChunk** %27, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @ROWSET_SORTED, align 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  ret void
}

declare dso_local i32 @sqlite3DbFree(i32, %struct.RowSetChunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
