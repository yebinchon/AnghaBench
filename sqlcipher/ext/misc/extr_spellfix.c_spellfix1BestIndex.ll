; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_spellfix.c_spellfix1BestIndex.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_spellfix.c_spellfix1BestIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.sqlite3_index_constraint* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.sqlite3_index_constraint = type { i64, i64, i64 }

@SPELLFIX_IDXNUM_MATCH = common dso_local global i32 0, align 4
@SPELLFIX_COL_WORD = common dso_local global i64 0, align 8
@SQLITE_INDEX_CONSTRAINT_MATCH = common dso_local global i64 0, align 8
@SPELLFIX_IDXNUM_LANGID = common dso_local global i32 0, align 4
@SPELLFIX_COL_LANGID = common dso_local global i64 0, align 8
@SQLITE_INDEX_CONSTRAINT_EQ = common dso_local global i64 0, align 8
@SPELLFIX_IDXNUM_TOP = common dso_local global i32 0, align 4
@SPELLFIX_COL_TOP = common dso_local global i64 0, align 8
@SPELLFIX_IDXNUM_SCOPE = common dso_local global i32 0, align 4
@SPELLFIX_COL_SCOPE = common dso_local global i64 0, align 8
@SPELLFIX_IDXNUM_DIST = common dso_local global i32 0, align 4
@SPELLFIX_COL_DISTANCE = common dso_local global i64 0, align 8
@SQLITE_INDEX_CONSTRAINT_LT = common dso_local global i64 0, align 8
@SQLITE_INDEX_CONSTRAINT_LE = common dso_local global i64 0, align 8
@SPELLFIX_IDXNUM_DISTLT = common dso_local global i32 0, align 4
@SPELLFIX_IDXNUM_DISTLE = common dso_local global i32 0, align 4
@SPELLFIX_IDXNUM_ROWID = common dso_local global i32 0, align 4
@SPELLFIX_COL_SCORE = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*)* @spellfix1BestIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spellfix1BestIndex(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sqlite3_index_constraint*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 7
  %16 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %15, align 8
  store %struct.sqlite3_index_constraint* %16, %struct.sqlite3_index_constraint** %12, align 8
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %191, %2
  %18 = load i32, i32* %11, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %196

23:                                               ; preds = %17
  %24 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %12, align 8
  %25 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %191

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SPELLFIX_IDXNUM_MATCH, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %64

34:                                               ; preds = %29
  %35 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %12, align 8
  %36 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SPELLFIX_COL_WORD, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %34
  %41 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %12, align 8
  %42 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_MATCH, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %40
  %47 = load i32, i32* @SPELLFIX_IDXNUM_MATCH, align 4
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 5
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 5
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  br label %64

64:                                               ; preds = %46, %40, %34, %29
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @SPELLFIX_IDXNUM_LANGID, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %64
  %70 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %12, align 8
  %71 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SPELLFIX_COL_LANGID, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %69
  %76 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %12, align 8
  %77 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_EQ, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load i32, i32* @SPELLFIX_IDXNUM_LANGID, align 4
  %83 = load i32, i32* %5, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %81, %75, %69, %64
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @SPELLFIX_IDXNUM_TOP, align 4
  %89 = and i32 %87, %88
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %86
  %92 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %12, align 8
  %93 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @SPELLFIX_COL_TOP, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %91
  %98 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %12, align 8
  %99 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_EQ, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %97
  %104 = load i32, i32* @SPELLFIX_IDXNUM_TOP, align 4
  %105 = load i32, i32* %5, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %103, %97, %91, %86
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @SPELLFIX_IDXNUM_SCOPE, align 4
  %111 = and i32 %109, %110
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %130

113:                                              ; preds = %108
  %114 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %12, align 8
  %115 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @SPELLFIX_COL_SCOPE, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %113
  %120 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %12, align 8
  %121 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_EQ, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %119
  %126 = load i32, i32* @SPELLFIX_IDXNUM_SCOPE, align 4
  %127 = load i32, i32* %5, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %5, align 4
  %129 = load i32, i32* %11, align 4
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %125, %119, %113, %108
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* @SPELLFIX_IDXNUM_DIST, align 4
  %133 = and i32 %131, %132
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %169

135:                                              ; preds = %130
  %136 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %12, align 8
  %137 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @SPELLFIX_COL_DISTANCE, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %169

141:                                              ; preds = %135
  %142 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %12, align 8
  %143 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_LT, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %153, label %147

147:                                              ; preds = %141
  %148 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %12, align 8
  %149 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_LE, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %169

153:                                              ; preds = %147, %141
  %154 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %12, align 8
  %155 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_LT, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %153
  %160 = load i32, i32* @SPELLFIX_IDXNUM_DISTLT, align 4
  %161 = load i32, i32* %5, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %5, align 4
  br label %167

163:                                              ; preds = %153
  %164 = load i32, i32* @SPELLFIX_IDXNUM_DISTLE, align 4
  %165 = load i32, i32* %5, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %5, align 4
  br label %167

167:                                              ; preds = %163, %159
  %168 = load i32, i32* %11, align 4
  store i32 %168, i32* %9, align 4
  br label %169

169:                                              ; preds = %167, %147, %135, %130
  %170 = load i32, i32* %5, align 4
  %171 = load i32, i32* @SPELLFIX_IDXNUM_ROWID, align 4
  %172 = and i32 %170, %171
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %190

174:                                              ; preds = %169
  %175 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %12, align 8
  %176 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = icmp slt i64 %177, 0
  br i1 %178, label %179, label %190

179:                                              ; preds = %174
  %180 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %12, align 8
  %181 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_EQ, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %190

185:                                              ; preds = %179
  %186 = load i32, i32* @SPELLFIX_IDXNUM_ROWID, align 4
  %187 = load i32, i32* %5, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %5, align 4
  %189 = load i32, i32* %11, align 4
  store i32 %189, i32* %10, align 4
  br label %190

190:                                              ; preds = %185, %179, %174, %169
  br label %191

191:                                              ; preds = %190, %28
  %192 = load i32, i32* %11, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %11, align 4
  %194 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %12, align 8
  %195 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %194, i32 1
  store %struct.sqlite3_index_constraint* %195, %struct.sqlite3_index_constraint** %12, align 8
  br label %17

196:                                              ; preds = %17
  %197 = load i32, i32* %5, align 4
  %198 = load i32, i32* @SPELLFIX_IDXNUM_MATCH, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %320

201:                                              ; preds = %196
  store i32 2, i32* %13, align 4
  %202 = load i32, i32* %5, align 4
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 1
  store i32 %202, i32* %204, align 4
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = icmp eq i32 %207, 1
  br i1 %208, label %209, label %229

209:                                              ; preds = %201
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 6
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i64 0
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @SPELLFIX_COL_SCORE, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %229

218:                                              ; preds = %209
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 6
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i64 0
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %218
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 3
  store i32 1, i32* %228, align 4
  br label %229

229:                                              ; preds = %226, %218, %209, %201
  %230 = load i32, i32* %5, align 4
  %231 = load i32, i32* @SPELLFIX_IDXNUM_LANGID, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %251

234:                                              ; preds = %229
  %235 = load i32, i32* %13, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %13, align 4
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 5
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %238, align 8
  %240 = load i32, i32* %6, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 0
  store i32 %235, i32* %243, align 4
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 5
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %245, align 8
  %247 = load i32, i32* %6, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 1
  store i32 1, i32* %250, align 4
  br label %251

251:                                              ; preds = %234, %229
  %252 = load i32, i32* %5, align 4
  %253 = load i32, i32* @SPELLFIX_IDXNUM_TOP, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %273

256:                                              ; preds = %251
  %257 = load i32, i32* %13, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %13, align 4
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 5
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %260, align 8
  %262 = load i32, i32* %7, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 0
  store i32 %257, i32* %265, align 4
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 5
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %267, align 8
  %269 = load i32, i32* %7, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 1
  store i32 1, i32* %272, align 4
  br label %273

273:                                              ; preds = %256, %251
  %274 = load i32, i32* %5, align 4
  %275 = load i32, i32* @SPELLFIX_IDXNUM_SCOPE, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %295

278:                                              ; preds = %273
  %279 = load i32, i32* %13, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %13, align 4
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 5
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %282, align 8
  %284 = load i32, i32* %8, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 0
  store i32 %279, i32* %287, align 4
  %288 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 5
  %290 = load %struct.TYPE_6__*, %struct.TYPE_6__** %289, align 8
  %291 = load i32, i32* %8, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 1
  store i32 1, i32* %294, align 4
  br label %295

295:                                              ; preds = %278, %273
  %296 = load i32, i32* %5, align 4
  %297 = load i32, i32* @SPELLFIX_IDXNUM_DIST, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %317

300:                                              ; preds = %295
  %301 = load i32, i32* %13, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %13, align 4
  %303 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 5
  %305 = load %struct.TYPE_6__*, %struct.TYPE_6__** %304, align 8
  %306 = load i32, i32* %9, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 0
  store i32 %301, i32* %309, align 4
  %310 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %310, i32 0, i32 5
  %312 = load %struct.TYPE_6__*, %struct.TYPE_6__** %311, align 8
  %313 = load i32, i32* %9, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %315, i32 0, i32 1
  store i32 1, i32* %316, align 4
  br label %317

317:                                              ; preds = %300, %295
  %318 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %318, i32 0, i32 4
  store i32 100000, i32* %319, align 8
  br label %351

320:                                              ; preds = %196
  %321 = load i32, i32* %5, align 4
  %322 = load i32, i32* @SPELLFIX_IDXNUM_ROWID, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %345

325:                                              ; preds = %320
  %326 = load i32, i32* @SPELLFIX_IDXNUM_ROWID, align 4
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 1
  store i32 %326, i32* %328, align 4
  %329 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %329, i32 0, i32 5
  %331 = load %struct.TYPE_6__*, %struct.TYPE_6__** %330, align 8
  %332 = load i32, i32* %10, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 0
  store i32 1, i32* %335, align 4
  %336 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %336, i32 0, i32 5
  %338 = load %struct.TYPE_6__*, %struct.TYPE_6__** %337, align 8
  %339 = load i32, i32* %10, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %338, i64 %340
  %342 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %341, i32 0, i32 1
  store i32 1, i32* %342, align 4
  %343 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %343, i32 0, i32 4
  store i32 5, i32* %344, align 8
  br label %350

345:                                              ; preds = %320
  %346 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %346, i32 0, i32 1
  store i32 0, i32* %347, align 4
  %348 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %349 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i32 0, i32 4
  store i32 undef, i32* %349, align 8
  br label %350

350:                                              ; preds = %345, %325
  br label %351

351:                                              ; preds = %350, %317
  %352 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %352
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
