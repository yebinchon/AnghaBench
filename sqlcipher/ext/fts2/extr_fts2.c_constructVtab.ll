; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_constructVtab.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_constructVtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8**, i32, i64, i64, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i64, i32, %struct.TYPE_12__*, i64, i32, i32, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (i32, i8**, %struct.TYPE_12__**)* }

@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"simple\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"unknown tokenizer: %s\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"FTS2 Connect %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_11__*, i32**, i8**)* @constructVtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @constructVtab(i32* %0, i32* %1, %struct.TYPE_11__* %2, i32** %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i8** %4, i8*** %11, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %15, align 8
  %19 = call i64 @sqlite3_malloc(i32 64)
  %20 = inttoptr i64 %19 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %14, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %22 = icmp eq %struct.TYPE_10__* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %24, i32* %6, align 4
  br label %181

25:                                               ; preds = %5
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %27 = call i32 @CLEAR(%struct.TYPE_10__* %26)
  %28 = load i32*, i32** %7, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 9
  store i32* %28, i32** %30, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 6
  store i64 %48, i64* %50, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 3
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 3
  store i64 %55, i64* %57, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  store i64 0, i64* %59, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i8**, i8*** %61, align 8
  %63 = icmp eq i8** %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %25
  %65 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %65, i32* %6, align 4
  br label %181

66:                                               ; preds = %25
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %17, align 8
  %72 = load i8*, i8** %17, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %66
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  br label %75

75:                                               ; preds = %74, %66
  %76 = load i8*, i8** %17, align 8
  %77 = call i32 @strlen(i8* %76)
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %18, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = load i8*, i8** %17, align 8
  %81 = load i32, i32* %18, align 4
  %82 = call i64 @sqlite3Fts2HashFind(i32* %79, i8* %80, i32 %81)
  %83 = inttoptr i64 %82 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %83, %struct.TYPE_9__** %15, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %85 = icmp ne %struct.TYPE_9__* %84, null
  br i1 %85, label %95, label %86

86:                                               ; preds = %75
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i8**, i8*** %88, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %91)
  %93 = load i8**, i8*** %11, align 8
  store i8* %92, i8** %93, align 8
  %94 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %94, i32* %12, align 4
  br label %177

95:                                               ; preds = %75
  store i32 0, i32* %13, align 4
  br label %96

96:                                               ; preds = %106, %95
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i8**, i8*** %98, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %99, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %96
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %13, align 4
  br label %96

109:                                              ; preds = %96
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %109
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32 (i32, i8**, %struct.TYPE_12__**)*, i32 (i32, i8**, %struct.TYPE_12__**)** %114, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sub nsw i32 %116, 1
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i8**, i8*** %119, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 1
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 5
  %124 = call i32 %115(i32 %117, i8** %121, %struct.TYPE_12__** %123)
  store i32 %124, i32* %12, align 4
  br label %132

125:                                              ; preds = %109
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i32 (i32, i8**, %struct.TYPE_12__**)*, i32 (i32, i8**, %struct.TYPE_12__**)** %127, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 5
  %131 = call i32 %128(i32 0, i8** null, %struct.TYPE_12__** %130)
  store i32 %131, i32* %12, align 4
  br label %132

132:                                              ; preds = %125, %112
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* @SQLITE_OK, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  br label %177

137:                                              ; preds = %132
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 5
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  store %struct.TYPE_9__* %138, %struct.TYPE_9__** %142, align 8
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = inttoptr i64 %148 to i8**
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i8* @fulltextSchema(i32 %145, i8** %149, i32 %152)
  store i8* %153, i8** %16, align 8
  %154 = load i32*, i32** %7, align 8
  %155 = load i8*, i8** %16, align 8
  %156 = call i32 @sqlite3_declare_vtab(i32* %154, i8* %155)
  store i32 %156, i32* %12, align 4
  %157 = load i8*, i8** %16, align 8
  %158 = call i32 @sqlite3_free(i8* %157)
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* @SQLITE_OK, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %137
  br label %177

163:                                              ; preds = %137
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @memset(i32 %166, i32 0, i32 4)
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  store i32 -1, i32* %169, align 8
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 1
  %172 = load i32**, i32*** %10, align 8
  store i32* %171, i32** %172, align 8
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %174 = bitcast %struct.TYPE_10__* %173 to i8*
  %175 = call i32 @TRACE(i8* %174)
  %176 = load i32, i32* %12, align 4
  store i32 %176, i32* %6, align 4
  br label %181

177:                                              ; preds = %162, %136, %86
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %179 = call i32 @fulltext_vtab_destroy(%struct.TYPE_10__* %178)
  %180 = load i32, i32* %12, align 4
  store i32 %180, i32* %6, align 4
  br label %181

181:                                              ; preds = %177, %163, %64, %23
  %182 = load i32, i32* %6, align 4
  ret i32 %182
}

declare dso_local i64 @sqlite3_malloc(i32) #1

declare dso_local i32 @CLEAR(%struct.TYPE_10__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @sqlite3Fts2HashFind(i32*, i8*, i32) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i8* @fulltextSchema(i32, i8**, i32) #1

declare dso_local i32 @sqlite3_declare_vtab(i32*, i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @fulltext_vtab_destroy(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
