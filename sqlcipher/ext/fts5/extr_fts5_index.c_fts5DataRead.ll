; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5DataRead.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5DataRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32*, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ABORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"block\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@FTS5_CORRUPT = common dso_local global i32 0, align 4
@FTS5_DATA_PADDING = common dso_local global i64 0, align 8
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_8__*, i32)* @fts5DataRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @fts5DataRead(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %5, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @SQLITE_OK, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %157

17:                                               ; preds = %2
  %18 = load i32, i32* @SQLITE_OK, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %54

23:                                               ; preds = %17
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %7, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  store i32* null, i32** %28, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @sqlite3_blob_reopen(i32* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32*, i32** %7, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  store i32* %38, i32** %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @SQLITE_OK, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %23
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = call i32 @fts5CloseReader(%struct.TYPE_8__* %45)
  br label %47

47:                                               ; preds = %44, %23
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @SQLITE_ABORT, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @SQLITE_OK, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %51, %47
  br label %54

54:                                               ; preds = %53, %17
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %80

59:                                               ; preds = %54
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @SQLITE_OK, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %59
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  store %struct.TYPE_10__* %66, %struct.TYPE_10__** %8, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  %79 = call i32 @sqlite3_blob_open(i32 %69, i32 %72, i32 %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %76, i32 0, i32** %78)
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %63, %59, %54
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @SQLITE_ERROR, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32, i32* @FTS5_CORRUPT, align 4
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %84, %80
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @SQLITE_OK, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %149

90:                                               ; preds = %86
  store i32* null, i32** %9, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @sqlite3_blob_bytes(i32* %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = add i64 24, %96
  %98 = load i64, i64* @FTS5_DATA_PADDING, align 8
  %99 = add i64 %97, %98
  store i64 %99, i64* %11, align 8
  %100 = load i64, i64* %11, align 8
  %101 = call i64 @sqlite3_malloc64(i64 %100)
  %102 = inttoptr i64 %101 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %102, %struct.TYPE_9__** %5, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %104 = icmp ne %struct.TYPE_9__* %103, null
  br i1 %104, label %105, label %114

105:                                              ; preds = %90
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i64 1
  %111 = bitcast %struct.TYPE_9__* %110 to i32*
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  store i32* %111, i32** %113, align 8
  store i32* %111, i32** %9, align 8
  br label %116

114:                                              ; preds = %90
  %115 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %114, %105
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @SQLITE_OK, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %116
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = load i32*, i32** %9, align 8
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @sqlite3_blob_read(i32* %123, i32* %124, i32 %125, i32 0)
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %120, %116
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @SQLITE_OK, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %133 = call i32 @sqlite3_free(%struct.TYPE_9__* %132)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %5, align 8
  br label %148

134:                                              ; preds = %127
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 0, i32* %140, align 4
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 2
  %145 = call i32 @fts5GetU16(i32* %144)
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 8
  br label %148

148:                                              ; preds = %134, %131
  br label %149

149:                                              ; preds = %148, %86
  %150 = load i32, i32* %6, align 4
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %149, %2
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %159 = icmp eq %struct.TYPE_9__* %158, null
  %160 = zext i1 %159 to i32
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @SQLITE_OK, align 4
  %165 = icmp ne i32 %163, %164
  %166 = zext i1 %165 to i32
  %167 = icmp eq i32 %160, %166
  %168 = zext i1 %167 to i32
  %169 = call i32 @assert(i32 %168)
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  ret %struct.TYPE_9__* %170
}

declare dso_local i32 @sqlite3_blob_reopen(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fts5CloseReader(%struct.TYPE_8__*) #1

declare dso_local i32 @sqlite3_blob_open(i32, i32, i32, i8*, i32, i32, i32**) #1

declare dso_local i32 @sqlite3_blob_bytes(i32*) #1

declare dso_local i64 @sqlite3_malloc64(i64) #1

declare dso_local i32 @sqlite3_blob_read(i32*, i32*, i32, i32) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_9__*) #1

declare dso_local i32 @fts5GetU16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
