; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_storage.c_sqlite3Fts5StorageOpen.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_storage.c_sqlite3Fts5StorageOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i64 }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_10__*, i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@FTS5_CONTENT_NORMAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"id INTEGER PRIMARY KEY\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c", c%d\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"content\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"docsize\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"id INTEGER PRIMARY KEY, sz BLOB\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"k PRIMARY KEY, v\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@FTS5_CURRENT_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts5StorageOpen(%struct.TYPE_10__* %0, i32* %1, i32 %2, %struct.TYPE_9__** %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_9__** %3, %struct.TYPE_9__*** %10, align 8
  store i8** %4, i8*** %11, align 8
  %19 = load i32, i32* @SQLITE_OK, align 4
  store i32 %19, i32* %12, align 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = add i64 24, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = call i8* @sqlite3_malloc64(i32 %27)
  %29 = bitcast i8* %28 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %13, align 8
  %30 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %10, align 8
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %30, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %32 = icmp ne %struct.TYPE_9__* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %5
  %34 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %34, i32* %6, align 4
  br label %156

35:                                               ; preds = %5
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = call i32 @memset(%struct.TYPE_9__* %36, i32 0, i64 %38)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i64 1
  %42 = bitcast %struct.TYPE_9__* %41 to i32*
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  store i32* %42, i32** %44, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  store %struct.TYPE_10__* %45, %struct.TYPE_10__** %47, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i32* %48, i32** %50, align 8
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %147

53:                                               ; preds = %35
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @FTS5_CONTENT_NORMAL, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %117

59:                                               ; preds = %53
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = mul nsw i32 %62, 10
  %64 = add nsw i32 32, %63
  store i32 %64, i32* %15, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = mul nsw i32 %67, 10
  %69 = add nsw i32 32, %68
  %70 = call i8* @sqlite3_malloc64(i32 %69)
  store i8* %70, i8** %16, align 8
  %71 = load i8*, i8** %16, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %59
  %74 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %74, i32* %12, align 4
  br label %114

75:                                               ; preds = %59
  %76 = load i32, i32* %15, align 4
  %77 = load i8*, i8** %16, align 8
  %78 = call i32 (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 %76, i8* %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %79 = load i8*, i8** %16, align 8
  %80 = call i64 @strlen(i8* %79)
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %82

82:                                               ; preds = %106, %75
  %83 = load i32, i32* %17, align 4
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %109

88:                                               ; preds = %82
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %18, align 4
  %91 = sub nsw i32 %89, %90
  %92 = load i8*, i8** %16, align 8
  %93 = load i32, i32* %18, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i32, i32* %17, align 4
  %97 = call i32 (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 %91, i8* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  %98 = load i8*, i8** %16, align 8
  %99 = load i32, i32* %18, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = call i64 @strlen(i8* %101)
  %103 = trunc i64 %102 to i32
  %104 = load i32, i32* %18, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %18, align 4
  br label %106

106:                                              ; preds = %88
  %107 = load i32, i32* %17, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %17, align 4
  br label %82

109:                                              ; preds = %82
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %111 = load i8*, i8** %16, align 8
  %112 = load i8**, i8*** %11, align 8
  %113 = call i32 @sqlite3Fts5CreateTable(%struct.TYPE_10__* %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %111, i32 0, i8** %112)
  store i32 %113, i32* %12, align 4
  br label %114

114:                                              ; preds = %109, %73
  %115 = load i8*, i8** %16, align 8
  %116 = call i32 @sqlite3_free(i8* %115)
  br label %117

117:                                              ; preds = %114, %53
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* @SQLITE_OK, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %117
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %128 = load i8**, i8*** %11, align 8
  %129 = call i32 @sqlite3Fts5CreateTable(%struct.TYPE_10__* %127, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 0, i8** %128)
  store i32 %129, i32* %12, align 4
  br label %130

130:                                              ; preds = %126, %121, %117
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* @SQLITE_OK, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %130
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %136 = load i8**, i8*** %11, align 8
  %137 = call i32 @sqlite3Fts5CreateTable(%struct.TYPE_10__* %135, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 1, i8** %136)
  store i32 %137, i32* %12, align 4
  br label %138

138:                                              ; preds = %134, %130
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* @SQLITE_OK, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %144 = load i32, i32* @FTS5_CURRENT_VERSION, align 4
  %145 = call i32 @sqlite3Fts5StorageConfigValue(%struct.TYPE_9__* %143, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 %144)
  store i32 %145, i32* %12, align 4
  br label %146

146:                                              ; preds = %142, %138
  br label %147

147:                                              ; preds = %146, %35
  %148 = load i32, i32* %12, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %147
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %152 = call i32 @sqlite3Fts5StorageClose(%struct.TYPE_9__* %151)
  %153 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %10, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %153, align 8
  br label %154

154:                                              ; preds = %150, %147
  %155 = load i32, i32* %12, align 4
  store i32 %155, i32* %6, align 4
  br label %156

156:                                              ; preds = %154, %33
  %157 = load i32, i32* %6, align 4
  ret i32 %157
}

declare dso_local i8* @sqlite3_malloc64(i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i64) #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sqlite3Fts5CreateTable(%struct.TYPE_10__*, i8*, i8*, i32, i8**) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3Fts5StorageConfigValue(%struct.TYPE_9__*, i8*, i32, i32) #1

declare dso_local i32 @sqlite3Fts5StorageClose(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
