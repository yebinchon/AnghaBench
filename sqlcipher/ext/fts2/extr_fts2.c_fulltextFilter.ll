; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_fulltextFilter.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_fulltextFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__, i32, i32, i32* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"FTS2 Filter %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"select rowid, * from %%_content %s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"where rowid=?\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@QUERY_FULLTEXT = common dso_local global i32 0, align 4
@DL_DOCIDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32, i32**)* @fulltextFilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fulltextFilter(i32* %0, i32 %1, i8* %2, i32 %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = bitcast i32* %17 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %12, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %20 = call %struct.TYPE_9__* @cursor_vtab(%struct.TYPE_10__* %19)
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %13, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = bitcast i32* %21 to i8*
  %23 = call i32 @TRACE(i8* %22)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %5
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @sqlite3_finalize(i32* %37)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 4
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %34, %28, %5
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %76, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 129
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0)
  %51 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  store i8* %51, i8** %15, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 4
  %63 = load i8*, i8** %15, align 8
  %64 = call i32 @sql_prepare(i32 %54, i32 %57, i32 %60, i32** %62, i8* %63)
  store i32 %64, i32* %14, align 4
  %65 = load i8*, i8** %15, align 8
  %66 = call i32 @sqlite3_free(i8* %65)
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @SQLITE_OK, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %46
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %6, align 4
  br label %183

72:                                               ; preds = %46
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  br label %88

76:                                               ; preds = %41
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @sqlite3_reset(i32* %79)
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = icmp eq i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  br label %88

88:                                               ; preds = %76, %72
  %89 = load i32, i32* %8, align 4
  switch i32 %89, label %106 [
    i32 129, label %90
    i32 128, label %91
  ]

90:                                               ; preds = %88
  br label %180

91:                                               ; preds = %88
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 4
  %94 = load i32*, i32** %93, align 8
  %95 = load i32**, i32*** %11, align 8
  %96 = getelementptr inbounds i32*, i32** %95, i64 0
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @sqlite3_value_int64(i32* %97)
  %99 = call i32 @sqlite3_bind_int64(i32* %94, i32 1, i32 %98)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* @SQLITE_OK, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %91
  %104 = load i32, i32* %14, align 4
  store i32 %104, i32* %6, align 4
  br label %183

105:                                              ; preds = %91
  br label %180

106:                                              ; preds = %88
  %107 = load i32**, i32*** %11, align 8
  %108 = getelementptr inbounds i32*, i32** %107, i64 0
  %109 = load i32*, i32** %108, align 8
  %110 = call i64 @sqlite3_value_text(i32* %109)
  %111 = inttoptr i64 %110 to i8*
  store i8* %111, i8** %16, align 8
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @QUERY_FULLTEXT, align 4
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %113, %116
  %118 = icmp sle i32 %112, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  %121 = load i32, i32* %10, align 4
  %122 = icmp eq i32 %121, 1
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert(i32 %123)
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 3
  %127 = call i32 @queryClear(i32* %126)
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %106
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 2
  %136 = call i32 @dlrDestroy(i32* %135)
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  %139 = call i32 @dataBufferReset(%struct.TYPE_11__* %138)
  br label %144

140:                                              ; preds = %106
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 1
  %143 = call i32 @dataBufferInit(%struct.TYPE_11__* %142, i32 0)
  br label %144

144:                                              ; preds = %140, %133
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @QUERY_FULLTEXT, align 4
  %148 = sub nsw i32 %146, %147
  %149 = load i8*, i8** %16, align 8
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 3
  %154 = call i32 @fulltextQuery(%struct.TYPE_9__* %145, i32 %148, i8* %149, i32 -1, %struct.TYPE_11__* %151, i32* %153)
  store i32 %154, i32* %14, align 4
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* @SQLITE_OK, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %144
  %159 = load i32, i32* %14, align 4
  store i32 %159, i32* %6, align 4
  br label %183

160:                                              ; preds = %144
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %179

166:                                              ; preds = %160
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 2
  %169 = load i32, i32* @DL_DOCIDS, align 4
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @dlrInit(i32* %168, i32 %169, i32 %173, i32 %177)
  br label %179

179:                                              ; preds = %166, %160
  br label %180

180:                                              ; preds = %179, %105, %90
  %181 = load i32*, i32** %7, align 8
  %182 = call i32 @fulltextNext(i32* %181)
  store i32 %182, i32* %6, align 4
  br label %183

183:                                              ; preds = %180, %158, %103, %70
  %184 = load i32, i32* %6, align 4
  ret i32 %184
}

declare dso_local %struct.TYPE_9__* @cursor_vtab(%struct.TYPE_10__*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i32 @sql_prepare(i32, i32, i32, i32**, i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_bind_int64(i32*, i32, i32) #1

declare dso_local i32 @sqlite3_value_int64(i32*) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @queryClear(i32*) #1

declare dso_local i32 @dlrDestroy(i32*) #1

declare dso_local i32 @dataBufferReset(%struct.TYPE_11__*) #1

declare dso_local i32 @dataBufferInit(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @fulltextQuery(%struct.TYPE_9__*, i32, i8*, i32, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @dlrInit(i32*, i32, i32, i32) #1

declare dso_local i32 @fulltextNext(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
