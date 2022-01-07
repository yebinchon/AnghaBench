; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_closure.c_closureBestIndex.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_closure.c_closureBestIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, double, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.sqlite3_index_constraint* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.sqlite3_index_constraint = type { i64, i64, i64 }
%struct.TYPE_9__ = type { i64, i64, i64 }

@CLOSURE_COL_ROOT = common dso_local global i64 0, align 8
@SQLITE_INDEX_CONSTRAINT_EQ = common dso_local global i64 0, align 8
@CLOSURE_COL_DEPTH = common dso_local global i64 0, align 8
@SQLITE_INDEX_CONSTRAINT_LT = common dso_local global i64 0, align 8
@SQLITE_INDEX_CONSTRAINT_LE = common dso_local global i64 0, align 8
@CLOSURE_COL_TABLENAME = common dso_local global i64 0, align 8
@CLOSURE_COL_IDCOLUMN = common dso_local global i64 0, align 8
@CLOSURE_COL_PARENTCOLUMN = common dso_local global i64 0, align 8
@CLOSURE_COL_ID = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*)* @closureBestIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @closureBestIndex(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sqlite3_index_constraint*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %7, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %9, align 8
  store double 1.000000e+07, double* %10, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 7
  %15 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %14, align 8
  store %struct.sqlite3_index_constraint* %15, %struct.sqlite3_index_constraint** %8, align 8
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %230, %2
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %235

22:                                               ; preds = %16
  %23 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %8, align 8
  %24 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %230

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %63

32:                                               ; preds = %28
  %33 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %8, align 8
  %34 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CLOSURE_COL_ROOT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %63

38:                                               ; preds = %32
  %39 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %8, align 8
  %40 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_EQ, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, 1
  store i32 %46, i32* %5, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 6
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 6
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store i32 1, i32* %60, align 4
  %61 = load double, double* %10, align 8
  %62 = fdiv double %61, 1.000000e+02
  store double %62, double* %10, align 8
  br label %63

63:                                               ; preds = %44, %38, %32, %28
  %64 = load i32, i32* %5, align 4
  %65 = and i32 %64, 240
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %116

67:                                               ; preds = %63
  %68 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %8, align 8
  %69 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @CLOSURE_COL_DEPTH, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %116

73:                                               ; preds = %67
  %74 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %8, align 8
  %75 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_LT, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %91, label %79

79:                                               ; preds = %73
  %80 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %8, align 8
  %81 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_LE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %91, label %85

85:                                               ; preds = %79
  %86 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %8, align 8
  %87 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_EQ, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %116

91:                                               ; preds = %85, %79, %73
  %92 = load i32, i32* %7, align 4
  %93 = shl i32 %92, 4
  %94 = load i32, i32* %5, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 6
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  store i32 %97, i32* %104, align 4
  %105 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %8, align 8
  %106 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_LT, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %91
  %111 = load i32, i32* %5, align 4
  %112 = or i32 %111, 2
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %110, %91
  %114 = load double, double* %10, align 8
  %115 = fdiv double %114, 5.000000e+00
  store double %115, double* %10, align 8
  br label %116

116:                                              ; preds = %113, %85, %67, %63
  %117 = load i32, i32* %5, align 4
  %118 = and i32 %117, 3840
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %155

120:                                              ; preds = %116
  %121 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %8, align 8
  %122 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @CLOSURE_COL_TABLENAME, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %155

126:                                              ; preds = %120
  %127 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %8, align 8
  %128 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_EQ, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %155

132:                                              ; preds = %126
  %133 = load i32, i32* %7, align 4
  %134 = shl i32 %133, 8
  %135 = load i32, i32* %5, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %7, align 4
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 6
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  store i32 %138, i32* %145, align 4
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 6
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  store i32 1, i32* %152, align 4
  %153 = load double, double* %10, align 8
  %154 = fdiv double %153, 5.000000e+00
  store double %154, double* %10, align 8
  br label %155

155:                                              ; preds = %132, %126, %120, %116
  %156 = load i32, i32* %5, align 4
  %157 = and i32 %156, 61440
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %192

159:                                              ; preds = %155
  %160 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %8, align 8
  %161 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @CLOSURE_COL_IDCOLUMN, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %192

165:                                              ; preds = %159
  %166 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %8, align 8
  %167 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_EQ, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %192

171:                                              ; preds = %165
  %172 = load i32, i32* %7, align 4
  %173 = shl i32 %172, 12
  %174 = load i32, i32* %5, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %5, align 4
  %176 = load i32, i32* %7, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %7, align 4
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 6
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = load i32, i32* %6, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  store i32 %177, i32* %184, align 4
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 6
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %186, align 8
  %188 = load i32, i32* %6, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 1
  store i32 1, i32* %191, align 4
  br label %192

192:                                              ; preds = %171, %165, %159, %155
  %193 = load i32, i32* %5, align 4
  %194 = and i32 %193, 983040
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %229

196:                                              ; preds = %192
  %197 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %8, align 8
  %198 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @CLOSURE_COL_PARENTCOLUMN, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %229

202:                                              ; preds = %196
  %203 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %8, align 8
  %204 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_EQ, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %229

208:                                              ; preds = %202
  %209 = load i32, i32* %7, align 4
  %210 = shl i32 %209, 16
  %211 = load i32, i32* %5, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %5, align 4
  %213 = load i32, i32* %7, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %7, align 4
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 6
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %216, align 8
  %218 = load i32, i32* %6, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 0
  store i32 %214, i32* %221, align 4
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 6
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %223, align 8
  %225 = load i32, i32* %6, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 1
  store i32 1, i32* %228, align 4
  br label %229

229:                                              ; preds = %208, %202, %196, %192
  br label %230

230:                                              ; preds = %229, %27
  %231 = load i32, i32* %6, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %6, align 4
  %233 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %8, align 8
  %234 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %233, i32 1
  store %struct.sqlite3_index_constraint* %234, %struct.sqlite3_index_constraint** %8, align 8
  br label %16

235:                                              ; preds = %16
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %235
  %241 = load i32, i32* %5, align 4
  %242 = and i32 %241, 3840
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %262, label %244

244:                                              ; preds = %240, %235
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %244
  %250 = load i32, i32* %5, align 4
  %251 = and i32 %250, 61440
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %262, label %253

253:                                              ; preds = %249, %244
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %263

258:                                              ; preds = %253
  %259 = load i32, i32* %5, align 4
  %260 = and i32 %259, 983040
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %258, %249, %240
  store i32 0, i32* %5, align 4
  br label %263

263:                                              ; preds = %262, %258, %253
  %264 = load i32, i32* %5, align 4
  %265 = and i32 %264, 1
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %290

267:                                              ; preds = %263
  %268 = load double, double* %10, align 8
  %269 = fmul double %268, 1.000000e+30
  store double %269, double* %10, align 8
  store i32 0, i32* %6, align 4
  br label %270

270:                                              ; preds = %284, %267
  %271 = load i32, i32* %6, align 4
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = icmp slt i32 %271, %274
  br i1 %275, label %276, label %289

276:                                              ; preds = %270
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 6
  %279 = load %struct.TYPE_6__*, %struct.TYPE_6__** %278, align 8
  %280 = load i32, i32* %6, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 0
  store i32 0, i32* %283, align 4
  br label %284

284:                                              ; preds = %276
  %285 = load i32, i32* %6, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %6, align 4
  %287 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %8, align 8
  %288 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %287, i32 1
  store %struct.sqlite3_index_constraint* %288, %struct.sqlite3_index_constraint** %8, align 8
  br label %270

289:                                              ; preds = %270
  store i32 0, i32* %5, align 4
  br label %290

290:                                              ; preds = %289, %263
  %291 = load i32, i32* %5, align 4
  %292 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 1
  store i32 %291, i32* %293, align 4
  %294 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = icmp eq i32 %296, 1
  br i1 %297, label %298, label %318

298:                                              ; preds = %290
  %299 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 5
  %301 = load %struct.TYPE_7__*, %struct.TYPE_7__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i64 0
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @CLOSURE_COL_ID, align 8
  %306 = icmp eq i64 %304, %305
  br i1 %306, label %307, label %318

307:                                              ; preds = %298
  %308 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i32 0, i32 5
  %310 = load %struct.TYPE_7__*, %struct.TYPE_7__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %310, i64 0
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = icmp eq i64 %313, 0
  br i1 %314, label %315, label %318

315:                                              ; preds = %307
  %316 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %316, i32 0, i32 3
  store i32 1, i32* %317, align 4
  br label %318

318:                                              ; preds = %315, %307, %298, %290
  %319 = load double, double* %10, align 8
  %320 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %320, i32 0, i32 4
  store double %319, double* %321, align 8
  %322 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %322
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
