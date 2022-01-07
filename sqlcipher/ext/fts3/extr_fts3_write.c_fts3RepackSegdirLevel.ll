; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3RepackSegdirLevel.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3RepackSegdirLevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SQL_SELECT_INDEXES = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQL_SHIFT_SEGDIR_ENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @fts3RepackSegdirLevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3RepackSegdirLevel(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = load i32, i32* @SQL_SELECT_INDEXES, align 4
  %16 = call i32 @fts3SqlStmt(%struct.TYPE_4__* %14, i32 %15, i32** %10, i32 0)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @SQLITE_OK, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %65

20:                                               ; preds = %2
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @sqlite3_bind_int64(i32* %21, i32 1, i32 %22)
  br label %24

24:                                               ; preds = %48, %20
  %25 = load i64, i64* @SQLITE_ROW, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = call i64 @sqlite3_step(i32* %26)
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 16
  store i32 %35, i32* %8, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = call i32* @sqlite3_realloc(i32* %36, i32 %40)
  store i32* %41, i32** %13, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %33
  %45 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %45, i32* %5, align 4
  br label %56

46:                                               ; preds = %33
  %47 = load i32*, i32** %13, align 8
  store i32* %47, i32** %6, align 8
  br label %48

48:                                               ; preds = %46, %29
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @sqlite3_column_int(i32* %49, i32 0)
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  store i32 %50, i32* %55, align 4
  br label %24

56:                                               ; preds = %44, %24
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @sqlite3_reset(i32* %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @SQLITE_OK, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %62, %56
  br label %65

65:                                               ; preds = %64, %2
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @SQLITE_OK, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %71 = load i32, i32* @SQL_SHIFT_SEGDIR_ENTRY, align 4
  %72 = call i32 @fts3SqlStmt(%struct.TYPE_4__* %70, i32 %71, i32** %11, i32 0)
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %69, %65
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @SQLITE_OK, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @sqlite3_bind_int64(i32* %78, i32 2, i32 %79)
  br label %81

81:                                               ; preds = %77, %73
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i32 1, i32* %89, align 4
  store i32 0, i32* %9, align 4
  br label %90

90:                                               ; preds = %124, %81
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @SQLITE_OK, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %95, %96
  br label %98

98:                                               ; preds = %94, %90
  %99 = phi i1 [ false, %90 ], [ %97, %94 ]
  br i1 %99, label %100, label %127

100:                                              ; preds = %98
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %123

108:                                              ; preds = %100
  %109 = load i32*, i32** %11, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @sqlite3_bind_int(i32* %109, i32 3, i32 %114)
  %116 = load i32*, i32** %11, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @sqlite3_bind_int(i32* %116, i32 1, i32 %117)
  %119 = load i32*, i32** %11, align 8
  %120 = call i64 @sqlite3_step(i32* %119)
  %121 = load i32*, i32** %11, align 8
  %122 = call i32 @sqlite3_reset(i32* %121)
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %108, %100
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %90

127:                                              ; preds = %98
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  store i32 0, i32* %129, align 4
  %130 = load i32*, i32** %6, align 8
  %131 = call i32 @sqlite3_free(i32* %130)
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32 @fts3SqlStmt(%struct.TYPE_4__*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_bind_int64(i32*, i32, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32* @sqlite3_realloc(i32*, i32) #1

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_bind_int(i32*, i32, i32) #1

declare dso_local i32 @sqlite3_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
