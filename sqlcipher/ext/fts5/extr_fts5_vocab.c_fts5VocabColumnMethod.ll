; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_vocab.c_fts5VocabColumnMethod.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_vocab.c_fts5VocabColumnMethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_15__ = type { i64, i64*, i64*, i64, %struct.TYPE_12__*, %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i8**, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_14__ = type { i32 }

@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@FTS5_VOCAB_COL = common dso_local global i32 0, align 4
@FTS5_DETAIL_NONE = common dso_local global i32 0, align 4
@SQLITE_STATIC = common dso_local global i32 0, align 4
@FTS5_VOCAB_ROW = common dso_local global i32 0, align 4
@FTS5_VOCAB_INSTANCE = common dso_local global i32 0, align 4
@FTS5_DETAIL_FULL = common dso_local global i32 0, align 4
@FTS5_DETAIL_COLUMNS = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*, i32)* @fts5VocabColumnMethod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5VocabColumnMethod(%struct.TYPE_13__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = bitcast %struct.TYPE_13__* %15 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %7, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %8, align 4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_14__*
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %3
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %44 = call i32 @sqlite3_result_text(i32* %33, i8* %38, i32 %42, i32 %43)
  br label %222

45:                                               ; preds = %3
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @FTS5_VOCAB_COL, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %109

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %56, 3
  br label %58

58:                                               ; preds = %55, %52, %49
  %59 = phi i1 [ true, %52 ], [ true, %49 ], [ %57, %55 ]
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %86

64:                                               ; preds = %58
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @FTS5_DETAIL_NONE, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %64
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load i8**, i8*** %74, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i8*, i8** %75, i64 %78
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** %11, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = load i32, i32* @SQLITE_STATIC, align 4
  %84 = call i32 @sqlite3_result_text(i32* %81, i8* %82, i32 -1, i32 %83)
  br label %85

85:                                               ; preds = %68, %64
  br label %108

86:                                               ; preds = %58
  %87 = load i32, i32* %6, align 4
  %88 = icmp eq i32 %87, 2
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i64, i64* %92, i64 %95
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %10, align 8
  br label %107

98:                                               ; preds = %86
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 2
  %101 = load i64*, i64** %100, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds i64, i64* %101, i64 %104
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %10, align 8
  br label %107

107:                                              ; preds = %98, %89
  br label %108

108:                                              ; preds = %107, %85
  br label %221

109:                                              ; preds = %45
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @FTS5_VOCAB_ROW, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %138

113:                                              ; preds = %109
  %114 = load i32, i32* %6, align 4
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %6, align 4
  %118 = icmp eq i32 %117, 2
  br label %119

119:                                              ; preds = %116, %113
  %120 = phi i1 [ true, %113 ], [ %118, %116 ]
  %121 = zext i1 %120 to i32
  %122 = call i32 @assert(i32 %121)
  %123 = load i32, i32* %6, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %131

125:                                              ; preds = %119
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 1
  %128 = load i64*, i64** %127, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 0
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %10, align 8
  br label %137

131:                                              ; preds = %119
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 2
  %134 = load i64*, i64** %133, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 0
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %10, align 8
  br label %137

137:                                              ; preds = %131, %125
  br label %220

138:                                              ; preds = %109
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* @FTS5_VOCAB_INSTANCE, align 4
  %141 = icmp eq i32 %139, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  %144 = load i32, i32* %6, align 4
  switch i32 %144, label %202 [
    i32 1, label %145
    i32 2, label %153
  ]

145:                                              ; preds = %138
  %146 = load i32*, i32** %5, align 8
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 5
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @sqlite3_result_int64(i32* %146, i64 %151)
  br label %219

153:                                              ; preds = %138
  store i32 -1, i32* %12, align 4
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* @FTS5_DETAIL_FULL, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %153
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @FTS5_POS2COLUMN(i64 %160)
  store i32 %161, i32* %12, align 4
  br label %172

162:                                              ; preds = %153
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* @FTS5_DETAIL_COLUMNS, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %162
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %12, align 4
  br label %171

171:                                              ; preds = %166, %162
  br label %172

172:                                              ; preds = %171, %157
  %173 = load i32, i32* %12, align 4
  %174 = icmp sge i32 %173, 0
  br i1 %174, label %175, label %201

175:                                              ; preds = %172
  %176 = load i32, i32* %12, align 4
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 4
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = icmp slt i32 %176, %183
  br i1 %184, label %185, label %201

185:                                              ; preds = %175
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 4
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 1
  %192 = load i8**, i8*** %191, align 8
  %193 = load i32, i32* %12, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8*, i8** %192, i64 %194
  %196 = load i8*, i8** %195, align 8
  store i8* %196, i8** %13, align 8
  %197 = load i32*, i32** %5, align 8
  %198 = load i8*, i8** %13, align 8
  %199 = load i32, i32* @SQLITE_STATIC, align 4
  %200 = call i32 @sqlite3_result_text(i32* %197, i8* %198, i32 -1, i32 %199)
  br label %201

201:                                              ; preds = %185, %175, %172
  br label %219

202:                                              ; preds = %138
  %203 = load i32, i32* %6, align 4
  %204 = icmp eq i32 %203, 3
  %205 = zext i1 %204 to i32
  %206 = call i32 @assert(i32 %205)
  %207 = load i32, i32* %8, align 4
  %208 = load i32, i32* @FTS5_DETAIL_FULL, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %218

210:                                              ; preds = %202
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = call i32 @FTS5_POS2OFFSET(i64 %213)
  store i32 %214, i32* %14, align 4
  %215 = load i32*, i32** %5, align 8
  %216 = load i32, i32* %14, align 4
  %217 = call i32 @sqlite3_result_int(i32* %215, i32 %216)
  br label %218

218:                                              ; preds = %210, %202
  br label %219

219:                                              ; preds = %218, %201, %145
  br label %220

220:                                              ; preds = %219, %137
  br label %221

221:                                              ; preds = %220, %108
  br label %222

222:                                              ; preds = %221, %32
  %223 = load i64, i64* %10, align 8
  %224 = icmp sgt i64 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %222
  %226 = load i32*, i32** %5, align 8
  %227 = load i64, i64* %10, align 8
  %228 = call i32 @sqlite3_result_int64(i32* %226, i64 %227)
  br label %229

229:                                              ; preds = %225, %222
  %230 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %230
}

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_result_int64(i32*, i64) #1

declare dso_local i32 @FTS5_POS2COLUMN(i64) #1

declare dso_local i32 @FTS5_POS2OFFSET(i64) #1

declare dso_local i32 @sqlite3_result_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
