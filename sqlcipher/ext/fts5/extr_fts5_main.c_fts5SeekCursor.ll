; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_fts5SeekCursor.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_fts5SeekCursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@FTS5CSR_REQUIRE_CONTENT = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@FTS5_CORRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32)* @fts5SeekCursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5SeekCursor(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @SQLITE_OK, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %56

13:                                               ; preds = %2
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %6, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %20 = call i32 @fts5StmtType(%struct.TYPE_15__* %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %13
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  br label %35

34:                                               ; preds = %13
  br label %35

35:                                               ; preds = %34, %29
  %36 = phi i64* [ %33, %29 ], [ null, %34 ]
  %37 = call i32 @sqlite3Fts5StorageStmt(i32 %23, i32 %24, i64* %26, i64* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @SQLITE_OK, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %35
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br label %48

48:                                               ; preds = %41, %35
  %49 = phi i1 [ true, %35 ], [ %47, %41 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %53 = load i32, i32* @FTS5CSR_REQUIRE_CONTENT, align 4
  %54 = call i32 @CsrFlagTest(%struct.TYPE_15__* %52, i32 %53)
  %55 = call i32 @assert(i32 %54)
  br label %56

56:                                               ; preds = %48, %2
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @SQLITE_OK, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %104

60:                                               ; preds = %56
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %62 = load i32, i32* @FTS5CSR_REQUIRE_CONTENT, align 4
  %63 = call i32 @CsrFlagTest(%struct.TYPE_15__* %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %104

65:                                               ; preds = %60
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @assert(i32 %68)
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @sqlite3_reset(i64 %72)
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %78 = call i32 @fts5CursorRowid(%struct.TYPE_15__* %77)
  %79 = call i32 @sqlite3_bind_int64(i64 %76, i32 1, i32 %78)
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @sqlite3_step(i64 %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @SQLITE_ROW, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %65
  %88 = load i32, i32* @SQLITE_OK, align 4
  store i32 %88, i32* %5, align 4
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %90 = load i32, i32* @FTS5CSR_REQUIRE_CONTENT, align 4
  %91 = call i32 @CsrFlagClear(%struct.TYPE_15__* %89, i32 %90)
  br label %103

92:                                               ; preds = %65
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @sqlite3_reset(i64 %95)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @SQLITE_OK, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %92
  %101 = load i32, i32* @FTS5_CORRUPT, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %100, %92
  br label %103

103:                                              ; preds = %102, %87
  br label %104

104:                                              ; preds = %103, %60, %56
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @fts5StmtType(%struct.TYPE_15__*) #1

declare dso_local i32 @sqlite3Fts5StorageStmt(i32, i32, i64*, i64*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CsrFlagTest(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @sqlite3_reset(i64) #1

declare dso_local i32 @sqlite3_bind_int64(i64, i32, i32) #1

declare dso_local i32 @fts5CursorRowid(%struct.TYPE_15__*) #1

declare dso_local i32 @sqlite3_step(i64) #1

declare dso_local i32 @CsrFlagClear(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
