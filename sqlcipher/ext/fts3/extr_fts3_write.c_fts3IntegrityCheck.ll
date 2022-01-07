; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3IntegrityCheck.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3IntegrityCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i64*, %struct.TYPE_9__*, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (i32*, i8**, i32*, i32*, i32*, i32*)*, i32 (i32*)* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQL_SELECT_ALL_LANGID = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"SELECT %s\00", align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*)* @fts3IntegrityCheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3IntegrityCheck(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32* %1, i32** %4, align 8
  %27 = load i32, i32* @SQLITE_OK, align 4
  store i32 %27, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32* null, i32** %8, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = load i32, i32* @SQL_SELECT_ALL_LANGID, align 4
  %30 = call i32 @fts3SqlStmt(%struct.TYPE_11__* %28, i32 %29, i32** %8, i32 0)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @SQLITE_OK, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %85

34:                                               ; preds = %2
  %35 = load i32*, i32** %8, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @sqlite3_bind_int(i32* %35, i32 1, i32 %38)
  %40 = load i32*, i32** %8, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @sqlite3_bind_int(i32* %40, i32 2, i32 %43)
  br label %45

45:                                               ; preds = %75, %34
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @SQLITE_OK, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i32*, i32** %8, align 8
  %51 = call i64 @sqlite3_step(i32* %50)
  %52 = load i64, i64* @SQLITE_ROW, align 8
  %53 = icmp eq i64 %51, %52
  br label %54

54:                                               ; preds = %49, %45
  %55 = phi i1 [ false, %45 ], [ %53, %49 ]
  br i1 %55, label %56, label %76

56:                                               ; preds = %54
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @sqlite3_column_int(i32* %57, i32 0)
  store i32 %58, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %72, %56
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @fts3ChecksumIndex(%struct.TYPE_11__* %67, i32 %68, i32 %69, i32* %5)
  %71 = xor i32 %66, %70
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %65
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %59

75:                                               ; preds = %59
  br label %45

76:                                               ; preds = %54
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @sqlite3_reset(i32* %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @SQLITE_OK, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %82, %76
  br label %85

85:                                               ; preds = %84, %2
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @SQLITE_OK, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %255

89:                                               ; preds = %85
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 5
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  store %struct.TYPE_10__* %94, %struct.TYPE_10__** %12, align 8
  store i32* null, i32** %13, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 7
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %97)
  store i8* %98, i8** %14, align 8
  %99 = load i8*, i8** %14, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %89
  %102 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %102, i32* %5, align 4
  br label %111

103:                                              ; preds = %89
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 8
  %107 = load i8*, i8** %14, align 8
  %108 = call i32 @sqlite3_prepare_v2(i32 %106, i8* %107, i32 -1, i32** %13, i32 0)
  store i32 %108, i32* %5, align 4
  %109 = load i8*, i8** %14, align 8
  %110 = call i32 @sqlite3_free(i8* %109)
  br label %111

111:                                              ; preds = %103, %101
  br label %112

112:                                              ; preds = %251, %111
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @SQLITE_OK, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  %117 = load i64, i64* @SQLITE_ROW, align 8
  %118 = load i32*, i32** %13, align 8
  %119 = call i64 @sqlite3_step(i32* %118)
  %120 = icmp eq i64 %117, %119
  br label %121

121:                                              ; preds = %116, %112
  %122 = phi i1 [ false, %112 ], [ %120, %116 ]
  br i1 %122, label %123, label %252

123:                                              ; preds = %121
  %124 = load i32*, i32** %13, align 8
  %125 = call i32 @sqlite3_column_int64(i32* %124, i32 0)
  store i32 %125, i32* %15, align 4
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %127 = load i32*, i32** %13, align 8
  %128 = call i32 @langidFromSelect(%struct.TYPE_11__* %126, i32* %127)
  store i32 %128, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %129

129:                                              ; preds = %248, %123
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @SQLITE_OK, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %129
  %134 = load i32, i32* %17, align 4
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = icmp slt i32 %134, %137
  br label %139

139:                                              ; preds = %133, %129
  %140 = phi i1 [ false, %129 ], [ %138, %133 ]
  br i1 %140, label %141, label %251

141:                                              ; preds = %139
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 3
  %144 = load i64*, i64** %143, align 8
  %145 = load i32, i32* %17, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %247

150:                                              ; preds = %141
  %151 = load i32*, i32** %13, align 8
  %152 = load i32, i32* %17, align 4
  %153 = add nsw i32 %152, 1
  %154 = call i64 @sqlite3_column_text(i32* %151, i32 %153)
  %155 = inttoptr i64 %154 to i8*
  store i8* %155, i8** %18, align 8
  %156 = load i32*, i32** %13, align 8
  %157 = load i32, i32* %17, align 4
  %158 = add nsw i32 %157, 1
  %159 = call i32 @sqlite3_column_bytes(i32* %156, i32 %158)
  store i32 %159, i32* %19, align 4
  store i32* null, i32** %20, align 8
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 5
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %161, align 8
  %163 = load i32, i32* %16, align 4
  %164 = load i8*, i8** %18, align 8
  %165 = load i32, i32* %19, align 4
  %166 = call i32 @sqlite3Fts3OpenTokenizer(%struct.TYPE_12__* %162, i32 %163, i8* %164, i32 %165, i32** %20)
  store i32 %166, i32* %5, align 4
  br label %167

167:                                              ; preds = %230, %150
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* @SQLITE_OK, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %231

171:                                              ; preds = %167
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = load i32 (i32*, i8**, i32*, i32*, i32*, i32*)*, i32 (i32*, i8**, i32*, i32*, i32*, i32*)** %173, align 8
  %175 = load i32*, i32** %20, align 8
  %176 = call i32 %174(i32* %175, i8** %21, i32* %22, i32* %23, i32* %24, i32* %25)
  store i32 %176, i32* %5, align 4
  %177 = load i32, i32* %5, align 4
  %178 = load i32, i32* @SQLITE_OK, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %230

180:                                              ; preds = %171
  %181 = load i32, i32* %7, align 4
  %182 = load i8*, i8** %21, align 8
  %183 = load i32, i32* %22, align 4
  %184 = load i32, i32* %16, align 4
  %185 = load i32, i32* %15, align 4
  %186 = load i32, i32* %17, align 4
  %187 = load i32, i32* %25, align 4
  %188 = call i32 @fts3ChecksumEntry(i8* %182, i32 %183, i32 %184, i32 0, i32 %185, i32 %186, i32 %187)
  %189 = xor i32 %181, %188
  store i32 %189, i32* %7, align 4
  store i32 1, i32* %26, align 4
  br label %190

190:                                              ; preds = %226, %180
  %191 = load i32, i32* %26, align 4
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = icmp slt i32 %191, %194
  br i1 %195, label %196, label %229

196:                                              ; preds = %190
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 4
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %198, align 8
  %200 = load i32, i32* %26, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %22, align 4
  %206 = icmp sle i32 %204, %205
  br i1 %206, label %207, label %225

207:                                              ; preds = %196
  %208 = load i32, i32* %7, align 4
  %209 = load i8*, i8** %21, align 8
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 4
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %211, align 8
  %213 = load i32, i32* %26, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %16, align 4
  %219 = load i32, i32* %26, align 4
  %220 = load i32, i32* %15, align 4
  %221 = load i32, i32* %17, align 4
  %222 = load i32, i32* %25, align 4
  %223 = call i32 @fts3ChecksumEntry(i8* %209, i32 %217, i32 %218, i32 %219, i32 %220, i32 %221, i32 %222)
  %224 = xor i32 %208, %223
  store i32 %224, i32* %7, align 4
  br label %225

225:                                              ; preds = %207, %196
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %26, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %26, align 4
  br label %190

229:                                              ; preds = %190
  br label %230

230:                                              ; preds = %229, %171
  br label %167

231:                                              ; preds = %167
  %232 = load i32*, i32** %20, align 8
  %233 = icmp ne i32* %232, null
  br i1 %233, label %234, label %240

234:                                              ; preds = %231
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 1
  %237 = load i32 (i32*)*, i32 (i32*)** %236, align 8
  %238 = load i32*, i32** %20, align 8
  %239 = call i32 %237(i32* %238)
  br label %240

240:                                              ; preds = %234, %231
  %241 = load i32, i32* %5, align 4
  %242 = load i32, i32* @SQLITE_DONE, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %244, label %246

244:                                              ; preds = %240
  %245 = load i32, i32* @SQLITE_OK, align 4
  store i32 %245, i32* %5, align 4
  br label %246

246:                                              ; preds = %244, %240
  br label %247

247:                                              ; preds = %246, %141
  br label %248

248:                                              ; preds = %247
  %249 = load i32, i32* %17, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %17, align 4
  br label %129

251:                                              ; preds = %139
  br label %112

252:                                              ; preds = %121
  %253 = load i32*, i32** %13, align 8
  %254 = call i32 @sqlite3_finalize(i32* %253)
  br label %255

255:                                              ; preds = %252, %85
  %256 = load i32, i32* %6, align 4
  %257 = load i32, i32* %7, align 4
  %258 = icmp eq i32 %256, %257
  %259 = zext i1 %258 to i32
  %260 = load i32*, i32** %4, align 8
  store i32 %259, i32* %260, align 4
  %261 = load i32, i32* %5, align 4
  ret i32 %261
}

declare dso_local i32 @fts3SqlStmt(%struct.TYPE_11__*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_bind_int(i32*, i32, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

declare dso_local i32 @fts3ChecksumIndex(%struct.TYPE_11__*, i32, i32, i32*) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i32) #1

declare dso_local i32 @sqlite3_prepare_v2(i32, i8*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_column_int64(i32*, i32) #1

declare dso_local i32 @langidFromSelect(%struct.TYPE_11__*, i32*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #1

declare dso_local i32 @sqlite3Fts3OpenTokenizer(%struct.TYPE_12__*, i32, i8*, i32, i32**) #1

declare dso_local i32 @fts3ChecksumEntry(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
