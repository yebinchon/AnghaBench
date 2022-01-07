; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_rowset.c_sqlite3RowSetInsert.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_rowset.c_sqlite3RowSetInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.RowSetEntry*, %struct.RowSetEntry* }
%struct.RowSetEntry = type { i64, %struct.RowSetEntry* }

@ROWSET_NEXT = common dso_local global i32 0, align 4
@ROWSET_SORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3RowSetInsert(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.RowSetEntry*, align 8
  %6 = alloca %struct.RowSetEntry*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @ROWSET_NEXT, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br label %16

16:                                               ; preds = %9, %2
  %17 = phi i1 [ false, %2 ], [ %15, %9 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = call %struct.RowSetEntry* @rowSetEntryAlloc(%struct.TYPE_4__* %20)
  store %struct.RowSetEntry* %21, %struct.RowSetEntry** %5, align 8
  %22 = load %struct.RowSetEntry*, %struct.RowSetEntry** %5, align 8
  %23 = icmp eq %struct.RowSetEntry* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %61

25:                                               ; preds = %16
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.RowSetEntry*, %struct.RowSetEntry** %5, align 8
  %28 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.RowSetEntry*, %struct.RowSetEntry** %5, align 8
  %30 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %29, i32 0, i32 1
  store %struct.RowSetEntry* null, %struct.RowSetEntry** %30, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.RowSetEntry*, %struct.RowSetEntry** %32, align 8
  store %struct.RowSetEntry* %33, %struct.RowSetEntry** %6, align 8
  %34 = load %struct.RowSetEntry*, %struct.RowSetEntry** %6, align 8
  %35 = icmp ne %struct.RowSetEntry* %34, null
  br i1 %35, label %36, label %53

36:                                               ; preds = %25
  %37 = load i64, i64* %4, align 8
  %38 = load %struct.RowSetEntry*, %struct.RowSetEntry** %6, align 8
  %39 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sle i64 %37, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load i32, i32* @ROWSET_SORTED, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %42, %36
  %50 = load %struct.RowSetEntry*, %struct.RowSetEntry** %5, align 8
  %51 = load %struct.RowSetEntry*, %struct.RowSetEntry** %6, align 8
  %52 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %51, i32 0, i32 1
  store %struct.RowSetEntry* %50, %struct.RowSetEntry** %52, align 8
  br label %57

53:                                               ; preds = %25
  %54 = load %struct.RowSetEntry*, %struct.RowSetEntry** %5, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store %struct.RowSetEntry* %54, %struct.RowSetEntry** %56, align 8
  br label %57

57:                                               ; preds = %53, %49
  %58 = load %struct.RowSetEntry*, %struct.RowSetEntry** %5, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store %struct.RowSetEntry* %58, %struct.RowSetEntry** %60, align 8
  br label %61

61:                                               ; preds = %57, %24
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.RowSetEntry* @rowSetEntryAlloc(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
