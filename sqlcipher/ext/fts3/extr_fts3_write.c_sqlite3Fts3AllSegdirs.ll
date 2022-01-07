; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_sqlite3Fts3AllSegdirs.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_sqlite3Fts3AllSegdirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@FTS3_SEGCURSOR_ALL = common dso_local global i32 0, align 4
@FTS3_SEGDIR_MAXLEVEL = common dso_local global i32 0, align 4
@SQL_SELECT_LEVEL_RANGE = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQL_SELECT_LEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts3AllSegdirs(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3, i32** %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32** %4, i32*** %10, align 8
  store i32* null, i32** %12, align 8
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @FTS3_SEGCURSOR_ALL, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* %9, align 4
  %18 = icmp sge i32 %17, 0
  br label %19

19:                                               ; preds = %16, %5
  %20 = phi i1 [ true, %5 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @FTS3_SEGDIR_MAXLEVEL, align 4
  %25 = icmp slt i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %19
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br label %36

36:                                               ; preds = %30, %19
  %37 = phi i1 [ false, %19 ], [ %35, %30 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %36
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = load i32, i32* @SQL_SELECT_LEVEL_RANGE, align 4
  %45 = call i32 @fts3SqlStmt(%struct.TYPE_5__* %43, i32 %44, i32** %12, i32 0)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @SQLITE_OK, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %42
  %50 = load i32*, i32** %12, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @getAbsoluteLevel(%struct.TYPE_5__* %51, i32 %52, i32 %53, i32 0)
  %55 = call i32 @sqlite3_bind_int64(i32* %50, i32 1, i32 %54)
  %56 = load i32*, i32** %12, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @FTS3_SEGDIR_MAXLEVEL, align 4
  %61 = sub nsw i32 %60, 1
  %62 = call i32 @getAbsoluteLevel(%struct.TYPE_5__* %57, i32 %58, i32 %59, i32 %61)
  %63 = call i32 @sqlite3_bind_int64(i32* %56, i32 2, i32 %62)
  br label %64

64:                                               ; preds = %49, %42
  br label %81

65:                                               ; preds = %36
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %67 = load i32, i32* @SQL_SELECT_LEVEL, align 4
  %68 = call i32 @fts3SqlStmt(%struct.TYPE_5__* %66, i32 %67, i32** %12, i32 0)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @SQLITE_OK, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %65
  %73 = load i32*, i32** %12, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @getAbsoluteLevel(%struct.TYPE_5__* %74, i32 %75, i32 %76, i32 %77)
  %79 = call i32 @sqlite3_bind_int64(i32* %73, i32 1, i32 %78)
  br label %80

80:                                               ; preds = %72, %65
  br label %81

81:                                               ; preds = %80, %64
  %82 = load i32*, i32** %12, align 8
  %83 = load i32**, i32*** %10, align 8
  store i32* %82, i32** %83, align 8
  %84 = load i32, i32* %11, align 4
  ret i32 %84
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fts3SqlStmt(%struct.TYPE_5__*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_bind_int64(i32*, i32, i32) #1

declare dso_local i32 @getAbsoluteLevel(%struct.TYPE_5__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
