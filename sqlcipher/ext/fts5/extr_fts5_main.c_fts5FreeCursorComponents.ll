; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_fts5FreeCursorComponents.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_fts5FreeCursorComponents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, i32, %struct.TYPE_11__*, i32, %struct.TYPE_11__*, i64, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32 (i32)*, %struct.TYPE_11__*, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i32 }

@FTS5_PLAN_SOURCE = common dso_local global i64 0, align 8
@FTS5CSR_FREE_ZRANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @fts5FreeCursorComponents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5FreeCursorComponents(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 11
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %3, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 10
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = call i32 @sqlite3_free(%struct.TYPE_11__* %15)
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 9
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = call i32 @sqlite3_free(%struct.TYPE_11__* %19)
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %1
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %27 = call i32 @fts5StmtType(%struct.TYPE_13__* %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 8
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @sqlite3Fts5StorageStmtRelease(i32 %30, i32 %31, i64 %34)
  br label %36

36:                                               ; preds = %25, %1
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 7
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = icmp ne %struct.TYPE_11__* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 7
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  store %struct.TYPE_11__* %44, %struct.TYPE_11__** %7, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @sqlite3_finalize(i32 %47)
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %50 = call i32 @sqlite3_free(%struct.TYPE_11__* %49)
  br label %51

51:                                               ; preds = %41, %36
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @FTS5_PLAN_SOURCE, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @sqlite3Fts5ExprFree(i32 %60)
  br label %62

62:                                               ; preds = %57, %51
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 5
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  store %struct.TYPE_11__* %65, %struct.TYPE_11__** %4, align 8
  br label %66

66:                                               ; preds = %88, %62
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %68 = icmp ne %struct.TYPE_11__* %67, null
  br i1 %68, label %69, label %90

69:                                               ; preds = %66
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  store %struct.TYPE_11__* %72, %struct.TYPE_11__** %5, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load i32 (i32)*, i32 (i32)** %74, align 8
  %76 = icmp ne i32 (i32)* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %69
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i32 (i32)*, i32 (i32)** %79, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 %80(i32 %83)
  br label %85

85:                                               ; preds = %77, %69
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %87 = call i32 @sqlite3_free(%struct.TYPE_11__* %86)
  br label %88

88:                                               ; preds = %85
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %89, %struct.TYPE_11__** %4, align 8
  br label %66

90:                                               ; preds = %66
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @sqlite3_finalize(i32 %93)
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = call i32 @sqlite3_free(%struct.TYPE_11__* %97)
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %100 = load i32, i32* @FTS5CSR_FREE_ZRANK, align 4
  %101 = call i64 @CsrFlagTest(%struct.TYPE_13__* %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %90
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = call i32 @sqlite3_free(%struct.TYPE_11__* %106)
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %109, align 8
  %111 = call i32 @sqlite3_free(%struct.TYPE_11__* %110)
  br label %112

112:                                              ; preds = %103, %90
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = bitcast i64* %116 to i32*
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %119 = bitcast %struct.TYPE_13__* %118 to i32*
  %120 = ptrtoint i32* %117 to i64
  %121 = ptrtoint i32* %119 to i64
  %122 = sub i64 %120, %121
  %123 = sdiv exact i64 %122, 4
  %124 = sub i64 96, %123
  %125 = trunc i64 %124 to i32
  %126 = call i32 @memset(i64* %114, i32 0, i32 %125)
  ret void
}

declare dso_local i32 @sqlite3_free(%struct.TYPE_11__*) #1

declare dso_local i32 @fts5StmtType(%struct.TYPE_13__*) #1

declare dso_local i32 @sqlite3Fts5StorageStmtRelease(i32, i32, i64) #1

declare dso_local i32 @sqlite3_finalize(i32) #1

declare dso_local i32 @sqlite3Fts5ExprFree(i32) #1

declare dso_local i64 @CsrFlagTest(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
