; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3InsertData.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3InsertData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i64 }

@SQLITE_NULL = common dso_local global i64 0, align 8
@SQLITE_INTEGER = common dso_local global i64 0, align 8
@SQLITE_CONSTRAINT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQL_CONTENT_INSERT = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32**, i32*)* @fts3InsertData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3InsertData(%struct.TYPE_4__* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %44

15:                                               ; preds = %3
  %16 = load i32**, i32*** %6, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 3
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %16, i64 %21
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %10, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = call i64 @sqlite3_value_type(i32* %24)
  %26 = load i64, i64* @SQLITE_NULL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %15
  %29 = load i32**, i32*** %6, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 1
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %10, align 8
  br label %32

32:                                               ; preds = %28, %15
  %33 = load i32*, i32** %10, align 8
  %34 = call i64 @sqlite3_value_type(i32* %33)
  %35 = load i64, i64* @SQLITE_INTEGER, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @SQLITE_CONSTRAINT, align 4
  store i32 %38, i32* %4, align 4
  br label %136

39:                                               ; preds = %32
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @sqlite3_value_int64(i32* %40)
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @SQLITE_OK, align 4
  store i32 %43, i32* %4, align 4
  br label %136

44:                                               ; preds = %3
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = load i32, i32* @SQL_CONTENT_INSERT, align 4
  %47 = load i32**, i32*** %6, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 1
  %49 = call i32 @fts3SqlStmt(%struct.TYPE_4__* %45, i32 %46, i32** %9, i32** %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @SQLITE_OK, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %44
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %53
  %59 = load i32*, i32** %9, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 2
  %64 = load i32**, i32*** %6, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %64, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @sqlite3_value_int(i32* %71)
  %73 = call i32 @sqlite3_bind_int(i32* %59, i32 %63, i32 %72)
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %58, %53, %44
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @SQLITE_OK, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %4, align 4
  br label %136

80:                                               ; preds = %74
  %81 = load i64, i64* @SQLITE_NULL, align 8
  %82 = load i32**, i32*** %6, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 3, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32*, i32** %82, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = call i64 @sqlite3_value_type(i32* %89)
  %91 = icmp ne i64 %81, %90
  br i1 %91, label %92, label %125

92:                                               ; preds = %80
  %93 = load i64, i64* @SQLITE_NULL, align 8
  %94 = load i32**, i32*** %6, align 8
  %95 = getelementptr inbounds i32*, i32** %94, i64 0
  %96 = load i32*, i32** %95, align 8
  %97 = call i64 @sqlite3_value_type(i32* %96)
  %98 = icmp eq i64 %93, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %92
  %100 = load i64, i64* @SQLITE_NULL, align 8
  %101 = load i32**, i32*** %6, align 8
  %102 = getelementptr inbounds i32*, i32** %101, i64 1
  %103 = load i32*, i32** %102, align 8
  %104 = call i64 @sqlite3_value_type(i32* %103)
  %105 = icmp ne i64 %100, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %107, i32* %4, align 4
  br label %136

108:                                              ; preds = %99, %92
  %109 = load i32*, i32** %9, align 8
  %110 = load i32**, i32*** %6, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 3, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32*, i32** %110, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @sqlite3_bind_value(i32* %109, i32 1, i32* %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @SQLITE_OK, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %108
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* %4, align 4
  br label %136

124:                                              ; preds = %108
  br label %125

125:                                              ; preds = %124, %80
  %126 = load i32*, i32** %9, align 8
  %127 = call i32 @sqlite3_step(i32* %126)
  %128 = load i32*, i32** %9, align 8
  %129 = call i32 @sqlite3_reset(i32* %128)
  store i32 %129, i32* %8, align 4
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @sqlite3_last_insert_rowid(i32 %132)
  %134 = load i32*, i32** %7, align 8
  store i32 %133, i32* %134, align 4
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %125, %122, %106, %78, %39, %37
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i32 @sqlite3_value_int64(i32*) #1

declare dso_local i32 @fts3SqlStmt(%struct.TYPE_4__*, i32, i32**, i32**) #1

declare dso_local i32 @sqlite3_bind_int(i32*, i32, i32) #1

declare dso_local i32 @sqlite3_value_int(i32*) #1

declare dso_local i32 @sqlite3_bind_value(i32*, i32, i32*) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

declare dso_local i32 @sqlite3_last_insert_rowid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
