; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_sqlite3Fts3ReadBlock.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_sqlite3Fts3ReadBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"%s_segments\00", align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@FTS3_NODE_PADDING = common dso_local global i64 0, align 8
@FTS3_NODE_CHUNK_THRESHOLD = common dso_local global i32 0, align 4
@FTS3_NODE_CHUNKSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts3ReadBlock(%struct.TYPE_3__* %0, i32 %1, i8** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = call i32 @assert(i32* %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %5
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @sqlite3_blob_reopen(i64 %24, i32 %25)
  store i32 %26, i32* %12, align 4
  br label %60

27:                                               ; preds = %5
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 0, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @sqlite3_mprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 0, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %44, i32* %6, align 4
  br label %120

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45, %27
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = call i32 @sqlite3_blob_open(i32 %49, i32 %52, i64 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 0, i64* %58)
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %46, %21
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @SQLITE_OK, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %118

64:                                               ; preds = %60
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @sqlite3_blob_bytes(i64 %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32*, i32** %10, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i8**, i8*** %9, align 8
  %72 = icmp ne i8** %71, null
  br i1 %72, label %73, label %117

73:                                               ; preds = %64
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* @FTS3_NODE_PADDING, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i8* @sqlite3_malloc(i64 %77)
  store i8* %78, i8** %14, align 8
  %79 = load i8*, i8** %14, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %73
  %82 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %82, i32* %12, align 4
  br label %114

83:                                               ; preds = %73
  %84 = load i32*, i32** %11, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @FTS3_NODE_CHUNK_THRESHOLD, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i32, i32* @FTS3_NODE_CHUNKSIZE, align 4
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load i32*, i32** %11, align 8
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %90, %86, %83
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i8*, i8** %14, align 8
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @sqlite3_blob_read(i64 %97, i8* %98, i32 %99, i32 0)
  store i32 %100, i32* %12, align 4
  %101 = load i8*, i8** %14, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i64, i64* @FTS3_NODE_PADDING, align 8
  %106 = call i32 @memset(i8* %104, i32 0, i64 %105)
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* @SQLITE_OK, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %94
  %111 = load i8*, i8** %14, align 8
  %112 = call i32 @sqlite3_free(i8* %111)
  store i8* null, i8** %14, align 8
  br label %113

113:                                              ; preds = %110, %94
  br label %114

114:                                              ; preds = %113, %81
  %115 = load i8*, i8** %14, align 8
  %116 = load i8**, i8*** %9, align 8
  store i8* %115, i8** %116, align 8
  br label %117

117:                                              ; preds = %114, %64
  br label %118

118:                                              ; preds = %117, %60
  %119 = load i32, i32* %12, align 4
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %118, %43
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @sqlite3_blob_reopen(i64, i32) #1

declare dso_local i64 @sqlite3_mprintf(i8*, i32) #1

declare dso_local i32 @sqlite3_blob_open(i32, i32, i64, i8*, i32, i32, i64*) #1

declare dso_local i32 @sqlite3_blob_bytes(i64) #1

declare dso_local i8* @sqlite3_malloc(i64) #1

declare dso_local i32 @sqlite3_blob_read(i64, i8*, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
