; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_sqlite3BtreeLockTable.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_sqlite3BtreeLockTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@TRANS_NONE = common dso_local global i64 0, align 8
@READ_LOCK = common dso_local global i64 0, align 8
@WRITE_LOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3BtreeLockTable(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @SQLITE_OK, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TRANS_NONE, align 8
  %14 = icmp ne i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %59

21:                                               ; preds = %3
  %22 = load i64, i64* @READ_LOCK, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load i64, i64* @READ_LOCK, align 8
  %28 = add nsw i64 %27, 1
  %29 = load i64, i64* @WRITE_LOCK, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %21
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 1
  br label %38

38:                                               ; preds = %35, %21
  %39 = phi i1 [ true, %21 ], [ %37, %35 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = call i32 @sqlite3BtreeEnter(%struct.TYPE_7__* %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @querySharedCacheTableLock(%struct.TYPE_7__* %44, i32 %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @SQLITE_OK, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %38
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @setSharedCacheTableLock(%struct.TYPE_7__* %52, i32 %53, i32 %54)
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %51, %38
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = call i32 @sqlite3BtreeLeave(%struct.TYPE_7__* %57)
  br label %59

59:                                               ; preds = %56, %3
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3BtreeEnter(%struct.TYPE_7__*) #1

declare dso_local i32 @querySharedCacheTableLock(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @setSharedCacheTableLock(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @sqlite3BtreeLeave(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
