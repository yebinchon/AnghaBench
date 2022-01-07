; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3AllocateSegdirIdx.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3AllocateSegdirIdx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@SQL_NEXT_SEGMENT_INDEX = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@FTS3_MERGE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32, i32, i32*)* @fts3AllocateSegdirIdx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3AllocateSegdirIdx(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sge i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sge i32 %20, 1
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = load i32, i32* @SQL_NEXT_SEGMENT_INDEX, align 4
  %26 = call i32 @fts3SqlStmt(%struct.TYPE_6__* %24, i32 %25, i32** %12, i32 0)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @SQLITE_OK, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %5
  %31 = load i32*, i32** %12, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @getAbsoluteLevel(%struct.TYPE_6__* %32, i32 %33, i32 %34, i32 %35)
  %37 = call i32 @sqlite3_bind_int64(i32* %31, i32 1, i32 %36)
  %38 = load i64, i64* @SQLITE_ROW, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = call i64 @sqlite3_step(i32* %39)
  %41 = icmp eq i64 %38, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = load i32*, i32** %12, align 8
  %44 = call i32 @sqlite3_column_int(i32* %43, i32 0)
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %42, %30
  %46 = load i32*, i32** %12, align 8
  %47 = call i32 @sqlite3_reset(i32* %46)
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %45, %5
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @SQLITE_OK, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %48
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @FTS3_MERGE_COUNT, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @getAbsoluteLevel(%struct.TYPE_6__* %57, i32 %58, i32 %59, i32 %60)
  %62 = call i32 @fts3LogMerge(i32 16, i32 %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @fts3SegmentMerge(%struct.TYPE_6__* %63, i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32*, i32** %10, align 8
  store i32 0, i32* %68, align 4
  br label %72

69:                                               ; preds = %52
  %70 = load i32, i32* %13, align 4
  %71 = load i32*, i32** %10, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %56
  br label %73

73:                                               ; preds = %72, %48
  %74 = load i32, i32* %11, align 4
  ret i32 %74
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fts3SqlStmt(%struct.TYPE_6__*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_bind_int64(i32*, i32, i32) #1

declare dso_local i32 @getAbsoluteLevel(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

declare dso_local i32 @fts3LogMerge(i32, i32) #1

declare dso_local i32 @fts3SegmentMerge(%struct.TYPE_6__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
