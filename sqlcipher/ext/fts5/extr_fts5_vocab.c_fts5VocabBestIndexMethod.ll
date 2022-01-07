; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_vocab.c_fts5VocabBestIndexMethod.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_vocab.c_fts5VocabBestIndexMethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.sqlite3_index_constraint* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.sqlite3_index_constraint = type { i64, i64, i64 }

@SQLITE_INDEX_CONSTRAINT_EQ = common dso_local global i64 0, align 8
@SQLITE_INDEX_CONSTRAINT_LE = common dso_local global i64 0, align 8
@SQLITE_INDEX_CONSTRAINT_LT = common dso_local global i64 0, align 8
@SQLITE_INDEX_CONSTRAINT_GE = common dso_local global i64 0, align 8
@SQLITE_INDEX_CONSTRAINT_GT = common dso_local global i64 0, align 8
@FTS5_VOCAB_TERM_EQ = common dso_local global i32 0, align 4
@FTS5_VOCAB_TERM_GE = common dso_local global i32 0, align 4
@FTS5_VOCAB_TERM_LE = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*)* @fts5VocabBestIndexMethod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5VocabBestIndexMethod(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sqlite3_index_constraint*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @UNUSED_PARAM(i32* %12)
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %79, %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %82

20:                                               ; preds = %14
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 7
  %23 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %23, i64 %25
  store %struct.sqlite3_index_constraint* %26, %struct.sqlite3_index_constraint** %11, align 8
  %27 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %11, align 8
  %28 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %79

32:                                               ; preds = %20
  %33 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %11, align 8
  %34 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %78

37:                                               ; preds = %32
  %38 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %11, align 8
  %39 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_EQ, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %43, %37
  %46 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %11, align 8
  %47 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_LE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %51, %45
  %54 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %11, align 8
  %55 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_LT, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %59, %53
  %62 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %11, align 8
  %63 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_GE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %67, %61
  %70 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %11, align 8
  %71 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_GT, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %75, %69
  br label %78

78:                                               ; preds = %77, %32
  br label %79

79:                                               ; preds = %78, %31
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %14

82:                                               ; preds = %14
  %83 = load i32, i32* %6, align 4
  %84 = icmp sge i32 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %82
  %86 = load i32, i32* @FTS5_VOCAB_TERM_EQ, align 4
  %87 = load i32, i32* %9, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 6
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store i32 %90, i32* %97, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  store i32 100, i32* %99, align 4
  br label %147

100:                                              ; preds = %82
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  store i32 1000000, i32* %102, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp sge i32 %103, 0
  br i1 %104, label %105, label %124

105:                                              ; preds = %100
  %106 = load i32, i32* @FTS5_VOCAB_TERM_GE, align 4
  %107 = load i32, i32* %9, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 6
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  store i32 %110, i32* %117, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = sdiv i32 %120, 2
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %105, %100
  %125 = load i32, i32* %8, align 4
  %126 = icmp sge i32 %125, 0
  br i1 %126, label %127, label %146

127:                                              ; preds = %124
  %128 = load i32, i32* @FTS5_VOCAB_TERM_LE, align 4
  %129 = load i32, i32* %9, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %10, align 4
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 6
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  store i32 %132, i32* %139, align 4
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = sdiv i32 %142, 2
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %127, %124
  br label %147

147:                                              ; preds = %146, %85
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %152, label %171

152:                                              ; preds = %147
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 5
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i64 0
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %171

160:                                              ; preds = %152
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 5
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i64 0
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %160
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 3
  store i32 1, i32* %170, align 4
  br label %171

171:                                              ; preds = %168, %160, %152, %147
  %172 = load i32, i32* %9, align 4
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 4
  store i32 %172, i32* %174, align 8
  %175 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %175
}

declare dso_local i32 @UNUSED_PARAM(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
