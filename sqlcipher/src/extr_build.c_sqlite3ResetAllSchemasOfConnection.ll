; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3ResetAllSchemasOfConnection.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3ResetAllSchemasOfConnection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@DB_ResetWanted = common dso_local global i32 0, align 4
@DBFLAG_SchemaChange = common dso_local global i32 0, align 4
@DBFLAG_SchemaKnownOk = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3ResetAllSchemasOfConnection(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = call i32 @sqlite3BtreeEnterAll(%struct.TYPE_9__* %5)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %41, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %44

13:                                               ; preds = %7
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i64 %18
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %4, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %13
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @sqlite3SchemaClear(i64 %32)
  br label %39

34:                                               ; preds = %24
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @DB_ResetWanted, align 4
  %38 = call i32 @DbSetProperty(%struct.TYPE_9__* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %29
  br label %40

40:                                               ; preds = %39, %13
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %7

44:                                               ; preds = %7
  %45 = load i32, i32* @DBFLAG_SchemaChange, align 4
  %46 = load i32, i32* @DBFLAG_SchemaKnownOk, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %54 = call i32 @sqlite3VtabUnlockList(%struct.TYPE_9__* %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %56 = call i32 @sqlite3BtreeLeaveAll(%struct.TYPE_9__* %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %44
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %63 = call i32 @sqlite3CollapseDatabaseArray(%struct.TYPE_9__* %62)
  br label %64

64:                                               ; preds = %61, %44
  ret void
}

declare dso_local i32 @sqlite3BtreeEnterAll(%struct.TYPE_9__*) #1

declare dso_local i32 @sqlite3SchemaClear(i64) #1

declare dso_local i32 @DbSetProperty(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @sqlite3VtabUnlockList(%struct.TYPE_9__*) #1

declare dso_local i32 @sqlite3BtreeLeaveAll(%struct.TYPE_9__*) #1

declare dso_local i32 @sqlite3CollapseDatabaseArray(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
