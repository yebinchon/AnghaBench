; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_delete.c_sqlite3SrcListLookup.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_delete.c_sqlite3SrcListLookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.SrcList_item* }
%struct.SrcList_item = type { %struct.TYPE_11__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @sqlite3SrcListLookup(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.SrcList_item*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %9 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  store %struct.SrcList_item* %9, %struct.SrcList_item** %5, align 8
  %10 = load %struct.SrcList_item*, %struct.SrcList_item** %5, align 8
  %11 = icmp ne %struct.SrcList_item* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 1
  br label %17

17:                                               ; preds = %12, %2
  %18 = phi i1 [ false, %2 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %22 = load %struct.SrcList_item*, %struct.SrcList_item** %5, align 8
  %23 = call %struct.TYPE_11__* @sqlite3LocateTableItem(%struct.TYPE_13__* %21, i32 0, %struct.SrcList_item* %22)
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %6, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.SrcList_item*, %struct.SrcList_item** %5, align 8
  %28 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %27, i32 0, i32 0
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = call i32 @sqlite3DeleteTable(i32 %26, %struct.TYPE_11__* %29)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %32 = load %struct.SrcList_item*, %struct.SrcList_item** %5, align 8
  %33 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %32, i32 0, i32 0
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %33, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = icmp ne %struct.TYPE_11__* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %17
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %36, %17
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %43 = load %struct.SrcList_item*, %struct.SrcList_item** %5, align 8
  %44 = call i64 @sqlite3IndexedByLookup(%struct.TYPE_13__* %42, %struct.SrcList_item* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %6, align 8
  br label %47

47:                                               ; preds = %46, %41
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  ret %struct.TYPE_11__* %48
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_11__* @sqlite3LocateTableItem(%struct.TYPE_13__*, i32, %struct.SrcList_item*) #1

declare dso_local i32 @sqlite3DeleteTable(i32, %struct.TYPE_11__*) #1

declare dso_local i64 @sqlite3IndexedByLookup(%struct.TYPE_13__*, %struct.SrcList_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
