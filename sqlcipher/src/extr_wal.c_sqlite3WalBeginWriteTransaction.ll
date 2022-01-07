; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_wal.c_sqlite3WalBeginWriteTransaction.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_wal.c_sqlite3WalBeginWriteTransaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i64, i32, i64 }

@SQLITE_READONLY = common dso_local global i32 0, align 4
@WAL_WRITE_LOCK = common dso_local global i32 0, align 4
@SQLITE_BUSY_SNAPSHOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3WalBeginWriteTransaction(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sge i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br label %20

20:                                               ; preds = %15, %1
  %21 = phi i1 [ false, %1 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @SQLITE_READONLY, align 4
  store i32 %29, i32* %2, align 4
  br label %57

30:                                               ; preds = %20
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = load i32, i32* @WAL_WRITE_LOCK, align 4
  %33 = call i32 @walLockExclusive(%struct.TYPE_6__* %31, i32 %32, i32 1)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %57

38:                                               ; preds = %30
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  store i32 1, i32* %40, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = call i64 @walIndexHdr(%struct.TYPE_6__* %43)
  %45 = inttoptr i64 %44 to i8*
  %46 = call i64 @memcmp(i32* %42, i8* %45, i32 4)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %38
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = load i32, i32* @WAL_WRITE_LOCK, align 4
  %51 = call i32 @walUnlockExclusive(%struct.TYPE_6__* %49, i32 %50, i32 1)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store i32 0, i32* %53, align 8
  %54 = load i32, i32* @SQLITE_BUSY_SNAPSHOT, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %48, %38
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %36, %28
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @walLockExclusive(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i64 @walIndexHdr(%struct.TYPE_6__*) #1

declare dso_local i32 @walUnlockExclusive(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
