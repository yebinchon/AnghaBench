; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_fs.c_fstreeFilter.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_fs.c_fstreeFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [232 x i8] c"WITH r(d) AS (  SELECT CASE WHEN dir=?2 THEN ?3 ELSE dir END || '/' || name     FROM fsdir WHERE dir=?1 AND name NOT LIKE '.%'  UNION ALL  SELECT dir || '/' || name FROM r, fsdir WHERE dir=d AND name NOT LIKE '.%') SELECT d FROM r;\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32, i32**)* @fstreeFilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fstreeFilter(i32* %0, i32 %1, i8* %2, i32 %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca [2 x i8], align 1
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = bitcast i32* %25 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %12, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %13, align 8
  store i8* getelementptr inbounds ([232 x i8], [232 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  %32 = bitcast [2 x i8]* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %32, i8 0, i64 2, i1 false)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8
  store i32 1, i32* %17, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %18, align 8
  store i32 0, i32* %19, align 4
  %33 = load i8*, i8** %16, align 8
  store i8* %33, i8** %20, align 8
  %34 = load i32, i32* %17, align 4
  store i32 %34, i32* %21, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %36 = call i32 @fstreeCloseFd(%struct.TYPE_7__* %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @sqlite3_finalize(i64 %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %15, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = call i32 @sqlite3_prepare_v2(i32 %45, i8* %46, i32 -1, i64* %48, i32 0)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* @SQLITE_OK, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %5
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %6, align 4
  br label %154

55:                                               ; preds = %5
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %126

58:                                               ; preds = %55
  %59 = load i32**, i32*** %11, align 8
  %60 = getelementptr inbounds i32*, i32** %59, i64 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i64 @sqlite3_value_text(i32* %61)
  %63 = inttoptr i64 %62 to i8*
  store i8* %63, i8** %23, align 8
  %64 = load i32, i32* %8, align 4
  switch i32 %64, label %71 [
    i32 129, label %65
    i32 128, label %68
  ]

65:                                               ; preds = %58
  %66 = getelementptr inbounds [2 x i8], [2 x i8]* %22, i64 0, i64 0
  store i8 42, i8* %66, align 1
  %67 = getelementptr inbounds [2 x i8], [2 x i8]* %22, i64 0, i64 1
  store i8 63, i8* %67, align 1
  br label %71

68:                                               ; preds = %58
  %69 = getelementptr inbounds [2 x i8], [2 x i8]* %22, i64 0, i64 0
  store i8 95, i8* %69, align 1
  %70 = getelementptr inbounds [2 x i8], [2 x i8]* %22, i64 0, i64 1
  store i8 37, i8* %70, align 1
  br label %71

71:                                               ; preds = %58, %68, %65
  %72 = load i8*, i8** %23, align 8
  %73 = load i8*, i8** %18, align 8
  %74 = load i32, i32* %19, align 4
  %75 = call i64 @sqlite3_strnicmp(i8* %72, i8* %73, i32 %74)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %125

77:                                               ; preds = %71
  %78 = load i32, i32* %19, align 4
  store i32 %78, i32* %24, align 4
  br label %79

79:                                               ; preds = %120, %77
  %80 = load i8*, i8** %23, align 8
  %81 = load i32, i32* %24, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = icmp ne i8 %84, 0
  br i1 %85, label %86, label %123

86:                                               ; preds = %79
  %87 = load i8*, i8** %23, align 8
  %88 = load i32, i32* %24, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = getelementptr inbounds [2 x i8], [2 x i8]* %22, i64 0, i64 0
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %92, %95
  br i1 %96, label %108, label %97

97:                                               ; preds = %86
  %98 = load i8*, i8** %23, align 8
  %99 = load i32, i32* %24, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = getelementptr inbounds [2 x i8], [2 x i8]* %22, i64 0, i64 1
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %103, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %97, %86
  br label %123

109:                                              ; preds = %97
  %110 = load i8*, i8** %23, align 8
  %111 = load i32, i32* %24, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 47
  br i1 %116, label %117, label %119

117:                                              ; preds = %109
  %118 = load i32, i32* %24, align 4
  store i32 %118, i32* %21, align 4
  br label %119

119:                                              ; preds = %117, %109
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %24, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %24, align 4
  br label %79

123:                                              ; preds = %108, %79
  %124 = load i8*, i8** %23, align 8
  store i8* %124, i8** %20, align 8
  br label %125

125:                                              ; preds = %123, %71
  br label %126

126:                                              ; preds = %125, %55
  %127 = load i32, i32* %21, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i32 1, i32* %21, align 4
  br label %130

130:                                              ; preds = %129, %126
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i8*, i8** %20, align 8
  %135 = load i32, i32* %21, align 4
  %136 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %137 = call i32 @sqlite3_bind_text(i64 %133, i32 1, i8* %134, i32 %135, i32 %136)
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i8*, i8** %16, align 8
  %142 = load i32, i32* %17, align 4
  %143 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %144 = call i32 @sqlite3_bind_text(i64 %140, i32 2, i8* %141, i32 %142, i32 %143)
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i8*, i8** %18, align 8
  %149 = load i32, i32* %19, align 4
  %150 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %151 = call i32 @sqlite3_bind_text(i64 %147, i32 3, i8* %148, i32 %149, i32 %150)
  %152 = load i32*, i32** %7, align 8
  %153 = call i32 @fstreeNext(i32* %152)
  store i32 %153, i32* %6, align 4
  br label %154

154:                                              ; preds = %130, %53
  %155 = load i32, i32* %6, align 4
  ret i32 %155
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @fstreeCloseFd(%struct.TYPE_7__*) #2

declare dso_local i32 @sqlite3_finalize(i64) #2

declare dso_local i32 @sqlite3_prepare_v2(i32, i8*, i32, i64*, i32) #2

declare dso_local i64 @sqlite3_value_text(i32*) #2

declare dso_local i64 @sqlite3_strnicmp(i8*, i8*, i32) #2

declare dso_local i32 @sqlite3_bind_text(i64, i32, i8*, i32, i32) #2

declare dso_local i32 @fstreeNext(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
