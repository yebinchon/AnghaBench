; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_vocab.c_fts5VocabFilterMethod.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_vocab.c_fts5VocabFilterMethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_11__*, i32, i32, i8* }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@FTS5INDEX_QUERY_SCAN = common dso_local global i32 0, align 4
@FTS5_VOCAB_TERM_EQ = common dso_local global i32 0, align 4
@FTS5_VOCAB_TERM_GE = common dso_local global i32 0, align 4
@FTS5_VOCAB_TERM_LE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@FTS5_VOCAB_INSTANCE = common dso_local global i32 0, align 4
@FTS5_DETAIL_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i8*, i32, i32**)* @fts5VocabFilterMethod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5VocabFilterMethod(%struct.TYPE_12__* %0, i32 %1, i8* %2, i32 %3, i32** %4) #0 {
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32** %4, i32*** %10, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %11, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %29 = bitcast %struct.TYPE_12__* %28 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %29, %struct.TYPE_14__** %12, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* @SQLITE_OK, align 4
  store i32 %33, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %34 = load i32, i32* @FTS5INDEX_QUERY_SCAN, align 4
  store i32 %34, i32* %16, align 4
  store i8* null, i8** %17, align 8
  store i32 0, i32* %18, align 4
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  store i32* null, i32** %21, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @UNUSED_PARAM2(i8* %35, i32 %36)
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %39 = call i32 @fts5VocabResetCursor(%struct.TYPE_14__* %38)
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @FTS5_VOCAB_TERM_EQ, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %5
  %45 = load i32**, i32*** %10, align 8
  %46 = load i32, i32* %15, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %15, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32*, i32** %45, i64 %48
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %19, align 8
  br label %51

51:                                               ; preds = %44, %5
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @FTS5_VOCAB_TERM_GE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i32**, i32*** %10, align 8
  %58 = load i32, i32* %15, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %15, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32*, i32** %57, i64 %60
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %20, align 8
  br label %63

63:                                               ; preds = %56, %51
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @FTS5_VOCAB_TERM_LE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load i32**, i32*** %10, align 8
  %70 = load i32, i32* %15, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %15, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i32*, i32** %69, i64 %72
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %21, align 8
  br label %75

75:                                               ; preds = %68, %63
  %76 = load i32*, i32** %19, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load i32*, i32** %19, align 8
  %80 = call i64 @sqlite3_value_text(i32* %79)
  %81 = inttoptr i64 %80 to i8*
  store i8* %81, i8** %17, align 8
  %82 = load i32*, i32** %19, align 8
  %83 = call i8* @sqlite3_value_bytes(i32* %82)
  %84 = ptrtoint i8* %83 to i32
  store i32 %84, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %135

85:                                               ; preds = %75
  %86 = load i32*, i32** %20, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load i32*, i32** %20, align 8
  %90 = call i64 @sqlite3_value_text(i32* %89)
  %91 = inttoptr i64 %90 to i8*
  store i8* %91, i8** %17, align 8
  %92 = load i32*, i32** %20, align 8
  %93 = call i8* @sqlite3_value_bytes(i32* %92)
  %94 = ptrtoint i8* %93 to i32
  store i32 %94, i32* %18, align 4
  br label %95

95:                                               ; preds = %88, %85
  %96 = load i32*, i32** %21, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %134

98:                                               ; preds = %95
  %99 = load i32*, i32** %21, align 8
  %100 = call i64 @sqlite3_value_text(i32* %99)
  %101 = inttoptr i64 %100 to i8*
  store i8* %101, i8** %22, align 8
  %102 = load i8*, i8** %22, align 8
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  br label %105

105:                                              ; preds = %104, %98
  %106 = load i32*, i32** %21, align 8
  %107 = call i8* @sqlite3_value_bytes(i32* %106)
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 4
  store i8* %107, i8** %109, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 4
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr i8, i8* %112, i64 1
  %114 = call i64 @sqlite3_malloc(i8* %113)
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %105
  %122 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %122, i32* %14, align 4
  br label %133

123:                                              ; preds = %105
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i8*, i8** %22, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 4
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr i8, i8* %130, i64 1
  %132 = call i32 @memcpy(i64 %126, i8* %127, i8* %131)
  br label %133

133:                                              ; preds = %123, %121
  br label %134

134:                                              ; preds = %133, %95
  br label %135

135:                                              ; preds = %134, %78
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* @SQLITE_OK, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %152

139:                                              ; preds = %135
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  store i32* %144, i32** %23, align 8
  %145 = load i32*, i32** %23, align 8
  %146 = load i8*, i8** %17, align 8
  %147 = load i32, i32* %18, align 4
  %148 = load i32, i32* %16, align 4
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 3
  %151 = call i32 @sqlite3Fts5IndexQuery(i32* %145, i8* %146, i32 %147, i32 %148, i32 0, i32* %150)
  store i32 %151, i32* %14, align 4
  br label %152

152:                                              ; preds = %139, %135
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* @SQLITE_OK, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %163

156:                                              ; preds = %152
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* @FTS5_VOCAB_INSTANCE, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %162 = call i32 @fts5VocabInstanceNewTerm(%struct.TYPE_14__* %161)
  store i32 %162, i32* %14, align 4
  br label %163

163:                                              ; preds = %160, %156, %152
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* @SQLITE_OK, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %189

167:                                              ; preds = %163
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %189, label %172

172:                                              ; preds = %167
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* @FTS5_VOCAB_INSTANCE, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %186, label %176

176:                                              ; preds = %172
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @FTS5_DETAIL_NONE, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %176, %172
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %188 = call i32 @fts5VocabNextMethod(%struct.TYPE_12__* %187)
  store i32 %188, i32* %14, align 4
  br label %189

189:                                              ; preds = %186, %176, %167, %163
  %190 = load i32, i32* %14, align 4
  ret i32 %190
}

declare dso_local i32 @UNUSED_PARAM2(i8*, i32) #1

declare dso_local i32 @fts5VocabResetCursor(%struct.TYPE_14__*) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i8* @sqlite3_value_bytes(i32*) #1

declare dso_local i64 @sqlite3_malloc(i8*) #1

declare dso_local i32 @memcpy(i64, i8*, i8*) #1

declare dso_local i32 @sqlite3Fts5IndexQuery(i32*, i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @fts5VocabInstanceNewTerm(%struct.TYPE_14__*) #1

declare dso_local i32 @fts5VocabNextMethod(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
