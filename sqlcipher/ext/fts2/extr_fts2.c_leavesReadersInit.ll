; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_leavesReadersInit.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_leavesReadersInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEGDIR_SELECT_LEVEL_STMT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@MERGE_COUNT = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @leavesReadersInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @leavesReadersInit(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* @SEGDIR_SELECT_LEVEL_STMT, align 4
  %19 = call i32 @sql_get_statement(i32* %17, i32 %18, i32** %10)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @SQLITE_OK, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %5, align 4
  br label %108

25:                                               ; preds = %4
  %26 = load i32*, i32** %10, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @sqlite3_bind_int(i32* %26, i32 1, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @SQLITE_OK, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %5, align 4
  br label %108

34:                                               ; preds = %25
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %69, %34
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @sqlite3_step(i32* %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* @SQLITE_ROW, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %72

40:                                               ; preds = %35
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @sqlite3_column_int64(i32* %41, i32 0)
  store i32 %42, i32* %13, align 4
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @sqlite3_column_int64(i32* %43, i32 1)
  store i32 %44, i32* %14, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = call i8* @sqlite3_column_blob(i32* %45, i32 2)
  store i8* %46, i8** %15, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @sqlite3_column_bytes(i32* %47, i32 2)
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @MERGE_COUNT, align 4
  %51 = icmp slt i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i8*, i8** %15, align 8
  %59 = load i32, i32* %16, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = call i32 @leavesReaderInit(i32* %54, i32 %55, i32 %56, i32 %57, i8* %58, i32 %59, i32* %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @SQLITE_OK, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %40
  br label %72

69:                                               ; preds = %40
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  br label %35

72:                                               ; preds = %68, %35
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @SQLITE_DONE, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %81, %76
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %11, align 4
  %80 = icmp sgt i32 %78, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = call i32 @leavesReaderDestroy(i32* %85)
  br label %77

87:                                               ; preds = %77
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %5, align 4
  br label %108

89:                                               ; preds = %72
  %90 = load i32, i32* %11, align 4
  %91 = load i32*, i32** %9, align 8
  store i32 %90, i32* %91, align 4
  br label %92

92:                                               ; preds = %96, %89
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %11, align 4
  %95 = icmp ne i32 %93, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %92
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %11, align 4
  %104 = sub nsw i32 %102, %103
  %105 = call i32 @leavesReaderReorder(i32* %100, i32 %104)
  br label %92

106:                                              ; preds = %92
  %107 = load i32, i32* @SQLITE_OK, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %106, %87, %32, %23
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @sql_get_statement(i32*, i32, i32**) #1

declare dso_local i32 @sqlite3_bind_int(i32*, i32, i32) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_int64(i32*, i32) #1

declare dso_local i8* @sqlite3_column_blob(i32*, i32) #1

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @leavesReaderInit(i32*, i32, i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @leavesReaderDestroy(i32*) #1

declare dso_local i32 @leavesReaderReorder(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
