; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_vocab.c_fts5VocabOpenMethod.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_vocab.c_fts5VocabOpenMethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32*, i32*, i32*, %struct.TYPE_13__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"SELECT t.%Q FROM %Q.%Q AS t WHERE t.%Q MATCH '*id'\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"no such fts5 table: %s.%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32**)* @fts5VocabOpenMethod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5VocabOpenMethod(%struct.TYPE_10__* %0, i32** %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32** %1, i32*** %4, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = bitcast %struct.TYPE_10__* %13 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  %15 = load i32, i32* @SQLITE_OK, align 4
  store i32 %15, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i8* null, i8** %10, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @sqlite3Fts5Mprintf(i32* %8, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21, i32 %24, i32 %27)
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @sqlite3_prepare_v2(i32 %34, i8* %35, i32 -1, i32** %9, i32 0)
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %31, %2
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 @sqlite3_free(i8* %38)
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @SQLITE_OK, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32*, i32** %9, align 8
  %45 = icmp eq i32* %44, null
  br label %46

46:                                               ; preds = %43, %37
  %47 = phi i1 [ true, %37 ], [ %45, %43 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @SQLITE_ERROR, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @SQLITE_OK, align 4
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %53, %46
  %56 = load i32*, i32** %9, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  %59 = load i32*, i32** %9, align 8
  %60 = call i64 @sqlite3_step(i32* %59)
  %61 = load i64, i64* @SQLITE_ROW, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @sqlite3_column_int64(i32* %64, i32 0)
  store i32 %65, i32* %11, align 4
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call %struct.TYPE_13__* @sqlite3Fts5TableFromCsrid(i32 %68, i32 %69)
  store %struct.TYPE_13__* %70, %struct.TYPE_13__** %6, align 8
  br label %71

71:                                               ; preds = %63, %58, %55
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @SQLITE_OK, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %100

75:                                               ; preds = %71
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %77 = icmp eq %struct.TYPE_13__* %76, null
  br i1 %77, label %78, label %96

78:                                               ; preds = %75
  %79 = load i32*, i32** %9, align 8
  %80 = call i32 @sqlite3_finalize(i32* %79)
  store i32 %80, i32* %8, align 4
  store i32* null, i32** %9, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @SQLITE_OK, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %78
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @sqlite3_mprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %90)
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %84, %78
  br label %99

96:                                               ; preds = %75
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %98 = call i32 @sqlite3Fts5FlushToDisk(%struct.TYPE_13__* %97)
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %96, %95
  br label %100

100:                                              ; preds = %99, %71
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @SQLITE_OK, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %118

104:                                              ; preds = %100
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = mul i64 %110, 4
  %112 = mul i64 %111, 2
  %113 = add i64 %112, 32
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = call i64 @sqlite3Fts5MallocZero(i32* %8, i32 %115)
  %117 = inttoptr i64 %116 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %117, %struct.TYPE_12__** %7, align 8
  br label %118

118:                                              ; preds = %104, %100
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %120 = icmp ne %struct.TYPE_12__* %119, null
  br i1 %120, label %121, label %145

121:                                              ; preds = %118
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 3
  store %struct.TYPE_13__* %122, %struct.TYPE_13__** %124, align 8
  %125 = load i32*, i32** %9, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 2
  store i32* %125, i32** %127, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i64 1
  %130 = bitcast %struct.TYPE_12__* %129 to i32*
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  store i32* %130, i32** %132, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %135, i64 %141
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 1
  store i32* %142, i32** %144, align 8
  br label %148

145:                                              ; preds = %118
  %146 = load i32*, i32** %9, align 8
  %147 = call i32 @sqlite3_finalize(i32* %146)
  br label %148

148:                                              ; preds = %145, %121
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %150 = bitcast %struct.TYPE_12__* %149 to i32*
  %151 = load i32**, i32*** %4, align 8
  store i32* %150, i32** %151, align 8
  %152 = load i32, i32* %8, align 4
  ret i32 %152
}

declare dso_local i8* @sqlite3Fts5Mprintf(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3_prepare_v2(i32, i8*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_int64(i32*, i32) #1

declare dso_local %struct.TYPE_13__* @sqlite3Fts5TableFromCsrid(i32, i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @sqlite3_mprintf(i8*, i32, i32) #1

declare dso_local i32 @sqlite3Fts5FlushToDisk(%struct.TYPE_13__*) #1

declare dso_local i64 @sqlite3Fts5MallocZero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
