; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_constructVtab.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_constructVtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64*, i32, i64, i64, i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_12__*, i64, i32, %struct.TYPE_14__*, i64, i32, i32, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (i32, i8**, %struct.TYPE_14__**)* }

@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"simple\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"porter\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"unknown tokenizer: %s\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"FTS1 Connect %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_13__*, i32**, i8**)* @constructVtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @constructVtab(i32* %0, %struct.TYPE_13__* %1, i32** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i8** %3, i8*** %9, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %13, align 8
  %15 = call i64 @malloc(i32 64)
  %16 = inttoptr i64 %15 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %12, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %18 = icmp eq %struct.TYPE_12__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %20, i32* %5, align 4
  br label %184

21:                                               ; preds = %4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %23 = call i32 @memset(%struct.TYPE_12__* %22, i32 0, i32 64)
  %24 = load i32*, i32** %6, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 8
  store i32* %24, i32** %26, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 5
  store i64 %44, i64* %46, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = icmp eq i64* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %21
  %61 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %61, i32* %5, align 4
  br label %184

62:                                               ; preds = %21
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %62
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 0
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @startsWith(i64 %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69, %62
  %78 = call i32 @sqlite3Fts1SimpleTokenizerModule(%struct.TYPE_11__** %13)
  br label %99

79:                                               ; preds = %69
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @startsWith(i64 %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = call i32 @sqlite3Fts1PorterTokenizerModule(%struct.TYPE_11__** %13)
  br label %98

89:                                               ; preds = %79
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 0
  %94 = load i64, i64* %93, align 8
  %95 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %94)
  %96 = load i8**, i8*** %9, align 8
  store i8* %95, i8** %96, align 8
  %97 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %97, i32* %10, align 4
  br label %180

98:                                               ; preds = %87
  br label %99

99:                                               ; preds = %98, %77
  store i32 0, i32* %11, align 4
  br label %100

100:                                              ; preds = %110, %99
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %100
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %11, align 4
  br label %100

113:                                              ; preds = %100
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %130

116:                                              ; preds = %113
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i32 (i32, i8**, %struct.TYPE_14__**)*, i32 (i32, i8**, %struct.TYPE_14__**)** %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sub nsw i32 %120, 1
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load i64*, i64** %123, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 1
  %126 = bitcast i64* %125 to i8**
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 4
  %129 = call i32 %119(i32 %121, i8** %126, %struct.TYPE_14__** %128)
  store i32 %129, i32* %10, align 4
  br label %137

130:                                              ; preds = %113
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i32 (i32, i8**, %struct.TYPE_14__**)*, i32 (i32, i8**, %struct.TYPE_14__**)** %132, align 8
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 4
  %136 = call i32 %133(i32 0, i8** null, %struct.TYPE_14__** %135)
  store i32 %136, i32* %10, align 4
  br label %137

137:                                              ; preds = %130, %116
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* @SQLITE_OK, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %137
  br label %180

142:                                              ; preds = %137
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 4
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  store %struct.TYPE_11__* %143, %struct.TYPE_11__** %147, align 8
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = inttoptr i64 %153 to i8**
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call i8* @fulltextSchema(i32 %150, i8** %154, i32 %157)
  store i8* %158, i8** %14, align 8
  %159 = load i32*, i32** %6, align 8
  %160 = load i8*, i8** %14, align 8
  %161 = call i32 @sqlite3_declare_vtab(i32* %159, i8* %160)
  store i32 %161, i32* %10, align 4
  %162 = load i8*, i8** %14, align 8
  %163 = call i32 @sqlite3_free(i8* %162)
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* @SQLITE_OK, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %142
  br label %180

168:                                              ; preds = %142
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %170, align 8
  %172 = call i32 @memset(%struct.TYPE_12__* %171, i32 0, i32 8)
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load i32**, i32*** %8, align 8
  store i32* %174, i32** %175, align 8
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %177 = bitcast %struct.TYPE_12__* %176 to i8*
  %178 = call i32 @TRACE(i8* %177)
  %179 = load i32, i32* %10, align 4
  store i32 %179, i32* %5, align 4
  br label %184

180:                                              ; preds = %167, %141, %89
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %182 = call i32 @fulltext_vtab_destroy(%struct.TYPE_12__* %181)
  %183 = load i32, i32* %10, align 4
  store i32 %183, i32* %5, align 4
  br label %184

184:                                              ; preds = %180, %168, %60, %19
  %185 = load i32, i32* %5, align 4
  ret i32 %185
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @startsWith(i64, i8*) #1

declare dso_local i32 @sqlite3Fts1SimpleTokenizerModule(%struct.TYPE_11__**) #1

declare dso_local i32 @sqlite3Fts1PorterTokenizerModule(%struct.TYPE_11__**) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i64) #1

declare dso_local i8* @fulltextSchema(i32, i8**, i32) #1

declare dso_local i32 @sqlite3_declare_vtab(i32*, i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @fulltext_vtab_destroy(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
