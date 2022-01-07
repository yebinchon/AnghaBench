; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_hash.c_fts5HashEntrySort.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_hash.c_fts5HashEntrySort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, %struct.TYPE_12__** }
%struct.TYPE_12__ = type { i32, i64, %struct.TYPE_12__* }

@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i8*, i32, %struct.TYPE_12__**)* @fts5HashEntrySort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5HashEntrySort(%struct.TYPE_13__* %0, i8* %1, i32 %2, %struct.TYPE_12__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__**, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_12__** %3, %struct.TYPE_12__*** %9, align 8
  store i32 32, i32* %10, align 4
  %17 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %9, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %17, align 8
  %18 = call %struct.TYPE_12__** @sqlite3_malloc64(i32 256)
  store %struct.TYPE_12__** %18, %struct.TYPE_12__*** %11, align 8
  %19 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %11, align 8
  %20 = icmp ne %struct.TYPE_12__** %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %22, i32* %5, align 4
  br label %124

23:                                               ; preds = %4
  %24 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %11, align 8
  %25 = call i32 @memset(%struct.TYPE_12__** %24, i32 0, i32 256)
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %98, %23
  %27 = load i32, i32* %13, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %101

32:                                               ; preds = %26
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %34, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %35, i64 %37
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %15, align 8
  br label %40

40:                                               ; preds = %93, %32
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %42 = icmp ne %struct.TYPE_12__* %41, null
  br i1 %42, label %43, label %97

43:                                               ; preds = %40
  %44 = load i8*, i8** %7, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %60, label %46

46:                                               ; preds = %43
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  %51 = load i32, i32* %8, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %92

53:                                               ; preds = %46
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %55 = call i32 @fts5EntryKey(%struct.TYPE_12__* %54)
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i64 @memcmp(i32 %55, i8* %56, i32 %57)
  %59 = icmp eq i64 0, %58
  br i1 %59, label %60, label %92

60:                                               ; preds = %53, %43
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %61, %struct.TYPE_12__** %16, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  store i32 0, i32* %14, align 4
  br label %64

64:                                               ; preds = %83, %60
  %65 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %11, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %65, i64 %67
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = icmp ne %struct.TYPE_12__* %69, null
  br i1 %70, label %71, label %86

71:                                               ; preds = %64
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %73 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %11, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %73, i64 %75
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = call %struct.TYPE_12__* @fts5HashEntryMerge(%struct.TYPE_12__* %72, %struct.TYPE_12__* %77)
  store %struct.TYPE_12__* %78, %struct.TYPE_12__** %16, align 8
  %79 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %11, align 8
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %79, i64 %81
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %82, align 8
  br label %83

83:                                               ; preds = %71
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %14, align 4
  br label %64

86:                                               ; preds = %64
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %88 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %11, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %88, i64 %90
  store %struct.TYPE_12__* %87, %struct.TYPE_12__** %91, align 8
  br label %92

92:                                               ; preds = %86, %53, %46
  br label %93

93:                                               ; preds = %92
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  store %struct.TYPE_12__* %96, %struct.TYPE_12__** %15, align 8
  br label %40

97:                                               ; preds = %40
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %13, align 4
  br label %26

101:                                              ; preds = %26
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %12, align 8
  store i32 0, i32* %14, align 4
  br label %102

102:                                              ; preds = %113, %101
  %103 = load i32, i32* %14, align 4
  %104 = icmp slt i32 %103, 32
  br i1 %104, label %105, label %116

105:                                              ; preds = %102
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %107 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %11, align 8
  %108 = load i32, i32* %14, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %107, i64 %109
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = call %struct.TYPE_12__* @fts5HashEntryMerge(%struct.TYPE_12__* %106, %struct.TYPE_12__* %111)
  store %struct.TYPE_12__* %112, %struct.TYPE_12__** %12, align 8
  br label %113

113:                                              ; preds = %105
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %14, align 4
  br label %102

116:                                              ; preds = %102
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  store i64 0, i64* %118, align 8
  %119 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %11, align 8
  %120 = call i32 @sqlite3_free(%struct.TYPE_12__** %119)
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %122 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %9, align 8
  store %struct.TYPE_12__* %121, %struct.TYPE_12__** %122, align 8
  %123 = load i32, i32* @SQLITE_OK, align 4
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %116, %21
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local %struct.TYPE_12__** @sqlite3_malloc64(i32) #1

declare dso_local i32 @memset(%struct.TYPE_12__**, i32, i32) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @fts5EntryKey(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @fts5HashEntryMerge(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_12__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
