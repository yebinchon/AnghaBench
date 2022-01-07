; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_sortedNewToplevel.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_sortedNewToplevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_44__ = type { i32, i32, %struct.TYPE_47__*, %struct.TYPE_42__*, i32, %struct.TYPE_43__ }
%struct.TYPE_47__ = type { i32, i32, i64, i64, %struct.TYPE_46__*, %struct.TYPE_48__*, %struct.TYPE_44__* }
%struct.TYPE_46__ = type { i32*, i32, i64, %struct.TYPE_44__* }
%struct.TYPE_48__ = type { i64, i32, %struct.TYPE_45__, %struct.TYPE_48__* }
%struct.TYPE_45__ = type { i64, i64 }
%struct.TYPE_42__ = type { i32, %struct.TYPE_47__ }
%struct.TYPE_43__ = type { i32 }

@LSM_OK = common dso_local global i32 0, align 4
@TREE_NONE = common dso_local global i32 0, align 4
@LEVEL_FREELIST_ONLY = common dso_local global i32 0, align 4
@LEVEL_INCOMPLETE = common dso_local global i32 0, align 4
@LSM_LOG_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_44__*, i32, i32*)* @sortedNewToplevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sortedNewToplevel(%struct.TYPE_44__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_44__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_46__*, align 8
  %9 = alloca %struct.TYPE_48__*, align 8
  %10 = alloca %struct.TYPE_48__*, align 8
  %11 = alloca %struct.TYPE_45__*, align 8
  %12 = alloca %struct.TYPE_48__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_47__, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_47__, align 8
  %17 = alloca %struct.TYPE_47__, align 8
  %18 = alloca %struct.TYPE_47__*, align 8
  store %struct.TYPE_44__* %0, %struct.TYPE_44__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %19 = load i32, i32* @LSM_OK, align 4
  store i32 %19, i32* %7, align 4
  store %struct.TYPE_46__* null, %struct.TYPE_46__** %8, align 8
  store %struct.TYPE_48__* null, %struct.TYPE_48__** %9, align 8
  store %struct.TYPE_45__* null, %struct.TYPE_45__** %11, align 8
  store %struct.TYPE_48__* null, %struct.TYPE_48__** %12, align 8
  store i32 0, i32* %13, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @TREE_NONE, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %25 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @lsmShmCacheChunks(%struct.TYPE_44__* %24, i32 %28)
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %23, %3
  %31 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %37, i32 0, i32 2
  store %struct.TYPE_47__* %14, %struct.TYPE_47__** %38, align 8
  %39 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = call i32 @memset(%struct.TYPE_47__* %14, i32 0, i32 48)
  %42 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_42__*, %struct.TYPE_42__** %43, align 8
  %45 = call %struct.TYPE_48__* @lsmDbSnapshotLevel(%struct.TYPE_42__* %44)
  store %struct.TYPE_48__* %45, %struct.TYPE_48__** %9, align 8
  %46 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @lsmMallocZeroRc(i32 %48, i32 40, i32* %7)
  %50 = inttoptr i64 %49 to %struct.TYPE_48__*
  store %struct.TYPE_48__* %50, %struct.TYPE_48__** %10, align 8
  %51 = load %struct.TYPE_48__*, %struct.TYPE_48__** %10, align 8
  %52 = icmp ne %struct.TYPE_48__* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %30
  %54 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %55 = load %struct.TYPE_48__*, %struct.TYPE_48__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %55, i32 0, i32 3
  store %struct.TYPE_48__* %54, %struct.TYPE_48__** %56, align 8
  %57 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_42__*, %struct.TYPE_42__** %58, align 8
  %60 = load %struct.TYPE_48__*, %struct.TYPE_48__** %10, align 8
  %61 = call i32 @lsmDbSnapshotSetLevel(%struct.TYPE_42__* %59, %struct.TYPE_48__* %60)
  br label %62

62:                                               ; preds = %53, %30
  %63 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %64 = call %struct.TYPE_46__* @multiCursorNew(%struct.TYPE_44__* %63, i32* %7)
  store %struct.TYPE_46__* %64, %struct.TYPE_46__** %8, align 8
  %65 = load %struct.TYPE_46__*, %struct.TYPE_46__** %8, align 8
  %66 = icmp ne %struct.TYPE_46__* %65, null
  br i1 %66, label %67, label %140

67:                                               ; preds = %62
  %68 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %69 = load %struct.TYPE_46__*, %struct.TYPE_46__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %69, i32 0, i32 3
  store %struct.TYPE_44__* %68, %struct.TYPE_44__** %70, align 8
  %71 = load %struct.TYPE_46__*, %struct.TYPE_46__** %8, align 8
  %72 = call i32 @multiCursorVisitFreelist(%struct.TYPE_46__* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @LSM_OK, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %67
  %77 = load %struct.TYPE_46__*, %struct.TYPE_46__** %8, align 8
  %78 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_42__*, %struct.TYPE_42__** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @multiCursorAddTree(%struct.TYPE_46__* %77, %struct.TYPE_42__* %80, i32 %81)
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %76, %67
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @LSM_OK, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %133

87:                                               ; preds = %83
  %88 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %89 = icmp ne %struct.TYPE_48__* %88, null
  br i1 %89, label %90, label %133

90:                                               ; preds = %87
  %91 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %133

95:                                               ; preds = %90
  %96 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @LEVEL_FREELIST_ONLY, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %95
  %103 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  store %struct.TYPE_48__* %103, %struct.TYPE_48__** %12, align 8
  %104 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @lsmMallocZeroRc(i32 %106, i32 4, i32* %7)
  %108 = load %struct.TYPE_46__*, %struct.TYPE_46__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %108, i32 0, i32 2
  store i64 %107, i64* %109, align 8
  %110 = load %struct.TYPE_46__*, %struct.TYPE_46__** %8, align 8
  %111 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %112 = call i32 @multiCursorAddOne(%struct.TYPE_46__* %110, %struct.TYPE_48__* %111, i32* %7)
  br label %132

113:                                              ; preds = %95
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @TREE_NONE, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %113
  %118 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %117
  %124 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %124, i32 0, i32 2
  store %struct.TYPE_45__* %125, %struct.TYPE_45__** %11, align 8
  %126 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %127 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %128 = load %struct.TYPE_46__*, %struct.TYPE_46__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %128, i32 0, i32 1
  %130 = call i32 @btreeCursorNew(%struct.TYPE_44__* %126, %struct.TYPE_45__* %127, i32* %129)
  store i32 %130, i32* %7, align 4
  br label %131

131:                                              ; preds = %123, %117, %113
  br label %132

132:                                              ; preds = %131, %102
  br label %133

133:                                              ; preds = %132, %90, %87, %83
  %134 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %135 = icmp eq %struct.TYPE_48__* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load %struct.TYPE_46__*, %struct.TYPE_46__** %8, align 8
  %138 = call i32 @multiCursorIgnoreDelete(%struct.TYPE_46__* %137)
  br label %139

139:                                              ; preds = %136, %133
  br label %140

140:                                              ; preds = %139, %62
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @LSM_OK, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load %struct.TYPE_46__*, %struct.TYPE_46__** %8, align 8
  %146 = call i32 @lsmMCursorClose(%struct.TYPE_46__* %145, i32 0)
  br label %241

147:                                              ; preds = %140
  store i32 0, i32* %15, align 4
  %148 = call i32 @memset(%struct.TYPE_47__* %16, i32 0, i32 48)
  %149 = call i32 @memset(%struct.TYPE_47__* %17, i32 0, i32 48)
  %150 = ptrtoint %struct.TYPE_47__* %16 to i64
  %151 = load %struct.TYPE_48__*, %struct.TYPE_48__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %151, i32 0, i32 0
  store i64 %150, i64* %152, align 8
  %153 = load i32, i32* @LEVEL_INCOMPLETE, align 4
  %154 = load %struct.TYPE_48__*, %struct.TYPE_48__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 8
  %158 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %17, i32 0, i32 6
  store %struct.TYPE_44__* %158, %struct.TYPE_44__** %159, align 8
  %160 = load %struct.TYPE_48__*, %struct.TYPE_48__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %17, i32 0, i32 5
  store %struct.TYPE_48__* %160, %struct.TYPE_48__** %161, align 8
  %162 = load %struct.TYPE_46__*, %struct.TYPE_46__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %17, i32 0, i32 4
  store %struct.TYPE_46__* %162, %struct.TYPE_46__** %163, align 8
  %164 = load %struct.TYPE_46__*, %struct.TYPE_46__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %164, i32 0, i32 0
  store i32* %15, i32** %165, align 8
  %166 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %17, i32 0, i32 0
  store i32 1, i32* %166, align 8
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* @LSM_OK, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %147
  %171 = load %struct.TYPE_46__*, %struct.TYPE_46__** %8, align 8
  %172 = call i32 @lsmMCursorFirst(%struct.TYPE_46__* %171)
  store i32 %172, i32* %7, align 4
  br label %173

173:                                              ; preds = %170, %147
  br label %174

174:                                              ; preds = %183, %173
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* @LSM_OK, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %174
  %179 = call i64 @mergeWorkerDone(%struct.TYPE_47__* %17)
  %180 = icmp eq i64 %179, 0
  br label %181

181:                                              ; preds = %178, %174
  %182 = phi i1 [ false, %174 ], [ %180, %178 ]
  br i1 %182, label %183, label %185

183:                                              ; preds = %181
  %184 = call i32 @mergeWorkerStep(%struct.TYPE_47__* %17)
  store i32 %184, i32* %7, align 4
  br label %174

185:                                              ; preds = %181
  %186 = call i32 @mergeWorkerShutdown(%struct.TYPE_47__* %17, i32* %7)
  %187 = load i32, i32* %7, align 4
  %188 = load i32, i32* @LSM_OK, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %200, label %190

190:                                              ; preds = %185
  %191 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %17, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %200, label %194

194:                                              ; preds = %190
  %195 = load %struct.TYPE_48__*, %struct.TYPE_48__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br label %200

200:                                              ; preds = %194, %190, %185
  %201 = phi i1 [ true, %190 ], [ true, %185 ], [ %199, %194 ]
  %202 = zext i1 %201 to i32
  %203 = call i32 @assert(i32 %202)
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* @LSM_OK, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %220

207:                                              ; preds = %200
  %208 = load %struct.TYPE_48__*, %struct.TYPE_48__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %220

213:                                              ; preds = %207
  %214 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.TYPE_48__*, %struct.TYPE_48__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %217, i32 0, i32 2
  %219 = call i32 @lsmFsSortedFinish(i32 %216, %struct.TYPE_45__* %218)
  store i32 %219, i32* %7, align 4
  br label %220

220:                                              ; preds = %213, %207, %200
  %221 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %17, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  store i32 %222, i32* %13, align 4
  %223 = load i32, i32* @LEVEL_INCOMPLETE, align 4
  %224 = xor i32 %223, -1
  %225 = load %struct.TYPE_48__*, %struct.TYPE_48__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = and i32 %227, %224
  store i32 %228, i32* %226, align 8
  %229 = load i32, i32* %5, align 4
  %230 = load i32, i32* @TREE_NONE, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %238

232:                                              ; preds = %220
  %233 = load i32, i32* @LEVEL_FREELIST_ONLY, align 4
  %234 = load %struct.TYPE_48__*, %struct.TYPE_48__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = or i32 %236, %233
  store i32 %237, i32* %235, align 8
  br label %238

238:                                              ; preds = %232, %220
  %239 = load %struct.TYPE_48__*, %struct.TYPE_48__** %10, align 8
  %240 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %239, i32 0, i32 0
  store i64 0, i64* %240, align 8
  br label %241

241:                                              ; preds = %238, %144
  %242 = load i32, i32* %7, align 4
  %243 = load i32, i32* @LSM_OK, align 4
  %244 = icmp ne i32 %242, %243
  br i1 %244, label %251, label %245

245:                                              ; preds = %241
  %246 = load %struct.TYPE_48__*, %struct.TYPE_48__** %10, align 8
  %247 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %251, label %277

251:                                              ; preds = %245, %241
  %252 = load i32, i32* %7, align 4
  %253 = load i32, i32* @LSM_OK, align 4
  %254 = icmp ne i32 %252, %253
  br i1 %254, label %263, label %255

255:                                              ; preds = %251
  %256 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %256, i32 0, i32 3
  %258 = load %struct.TYPE_42__*, %struct.TYPE_42__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %259, i32 0, i32 2
  %261 = load i64, i64* %260, align 8
  %262 = icmp eq i64 %261, 0
  br label %263

263:                                              ; preds = %255, %251
  %264 = phi i1 [ true, %251 ], [ %262, %255 ]
  %265 = zext i1 %264 to i32
  %266 = call i32 @assert(i32 %265)
  %267 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %267, i32 0, i32 3
  %269 = load %struct.TYPE_42__*, %struct.TYPE_42__** %268, align 8
  %270 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %271 = call i32 @lsmDbSnapshotSetLevel(%struct.TYPE_42__* %269, %struct.TYPE_48__* %270)
  %272 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.TYPE_48__*, %struct.TYPE_48__** %10, align 8
  %276 = call i32 @sortedFreeLevel(i32 %274, %struct.TYPE_48__* %275)
  br label %346

277:                                              ; preds = %245
  %278 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %279 = icmp ne %struct.TYPE_45__* %278, null
  br i1 %279, label %280, label %283

280:                                              ; preds = %277
  %281 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %282 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %281, i32 0, i32 1
  store i64 0, i64* %282, align 8
  br label %314

283:                                              ; preds = %277
  %284 = load %struct.TYPE_48__*, %struct.TYPE_48__** %12, align 8
  %285 = icmp ne %struct.TYPE_48__* %284, null
  br i1 %285, label %286, label %313

286:                                              ; preds = %283
  %287 = load %struct.TYPE_48__*, %struct.TYPE_48__** %10, align 8
  %288 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %287, i32 0, i32 3
  %289 = load %struct.TYPE_48__*, %struct.TYPE_48__** %288, align 8
  %290 = load %struct.TYPE_48__*, %struct.TYPE_48__** %12, align 8
  %291 = icmp eq %struct.TYPE_48__* %289, %290
  %292 = zext i1 %291 to i32
  %293 = call i32 @assert(i32 %292)
  %294 = load %struct.TYPE_48__*, %struct.TYPE_48__** %12, align 8
  %295 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %294, i32 0, i32 3
  %296 = load %struct.TYPE_48__*, %struct.TYPE_48__** %295, align 8
  %297 = load %struct.TYPE_48__*, %struct.TYPE_48__** %10, align 8
  %298 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %297, i32 0, i32 3
  store %struct.TYPE_48__* %296, %struct.TYPE_48__** %298, align 8
  %299 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %299, i32 0, i32 4
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %302, i32 0, i32 3
  %304 = load %struct.TYPE_42__*, %struct.TYPE_42__** %303, align 8
  %305 = load %struct.TYPE_48__*, %struct.TYPE_48__** %12, align 8
  %306 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %305, i32 0, i32 2
  %307 = call i32 @lsmFsSortedDelete(i32 %301, %struct.TYPE_42__* %304, i32 1, %struct.TYPE_45__* %306)
  %308 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.TYPE_48__*, %struct.TYPE_48__** %12, align 8
  %312 = call i32 @sortedFreeLevel(i32 %310, %struct.TYPE_48__* %311)
  br label %313

313:                                              ; preds = %286, %283
  br label %314

314:                                              ; preds = %313, %280
  %315 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %14, i32 0, i32 2
  %316 = load i64, i64* %315, align 8
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %333

318:                                              ; preds = %314
  %319 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %319, i32 0, i32 3
  %321 = load %struct.TYPE_42__*, %struct.TYPE_42__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %321, i32 0, i32 1
  store %struct.TYPE_47__* %322, %struct.TYPE_47__** %18, align 8
  %323 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.TYPE_47__*, %struct.TYPE_47__** %18, align 8
  %327 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %326, i32 0, i32 3
  %328 = load i64, i64* %327, align 8
  %329 = call i32 @lsmFree(i32 %325, i64 %328)
  %330 = load %struct.TYPE_47__*, %struct.TYPE_47__** %18, align 8
  %331 = call i32 @memcpy(%struct.TYPE_47__* %330, %struct.TYPE_47__* %14, i32 48)
  %332 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %14, i32 0, i32 3
  store i64 0, i64* %332, align 8
  br label %339

333:                                              ; preds = %314
  %334 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %334, i32 0, i32 3
  %336 = load %struct.TYPE_42__*, %struct.TYPE_42__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %337, i32 0, i32 2
  store i64 0, i64* %338, align 8
  br label %339

339:                                              ; preds = %333, %318
  %340 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %341 = load %struct.TYPE_48__*, %struct.TYPE_48__** %10, align 8
  %342 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %341, i32 0, i32 2
  %343 = call i32 @assertBtreeOk(%struct.TYPE_44__* %340, %struct.TYPE_45__* %342)
  %344 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %345 = call i32 @sortedInvokeWorkHook(%struct.TYPE_44__* %344)
  br label %346

346:                                              ; preds = %339, %263
  %347 = load i32*, i32** %6, align 8
  %348 = icmp ne i32* %347, null
  br i1 %348, label %349, label %352

349:                                              ; preds = %346
  %350 = load i32, i32* %13, align 4
  %351 = load i32*, i32** %6, align 8
  store i32 %350, i32* %351, align 4
  br label %352

352:                                              ; preds = %349, %346
  %353 = load i32, i32* %13, align 4
  %354 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %354, i32 0, i32 3
  %356 = load %struct.TYPE_42__*, %struct.TYPE_42__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = add nsw i32 %358, %353
  store i32 %359, i32* %357, align 8
  %360 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %361 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %360, i32 0, i32 2
  store %struct.TYPE_47__* null, %struct.TYPE_47__** %361, align 8
  %362 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %362, i32 0, i32 0
  store i32 0, i32* %363, align 8
  %364 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %365 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %14, i32 0, i32 3
  %368 = load i64, i64* %367, align 8
  %369 = call i32 @lsmFree(i32 %366, i64 %368)
  %370 = load i32, i32* %7, align 4
  ret i32 %370
}

declare dso_local i32 @lsmShmCacheChunks(%struct.TYPE_44__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.TYPE_47__*, i32, i32) #1

declare dso_local %struct.TYPE_48__* @lsmDbSnapshotLevel(%struct.TYPE_42__*) #1

declare dso_local i64 @lsmMallocZeroRc(i32, i32, i32*) #1

declare dso_local i32 @lsmDbSnapshotSetLevel(%struct.TYPE_42__*, %struct.TYPE_48__*) #1

declare dso_local %struct.TYPE_46__* @multiCursorNew(%struct.TYPE_44__*, i32*) #1

declare dso_local i32 @multiCursorVisitFreelist(%struct.TYPE_46__*) #1

declare dso_local i32 @multiCursorAddTree(%struct.TYPE_46__*, %struct.TYPE_42__*, i32) #1

declare dso_local i32 @multiCursorAddOne(%struct.TYPE_46__*, %struct.TYPE_48__*, i32*) #1

declare dso_local i32 @btreeCursorNew(%struct.TYPE_44__*, %struct.TYPE_45__*, i32*) #1

declare dso_local i32 @multiCursorIgnoreDelete(%struct.TYPE_46__*) #1

declare dso_local i32 @lsmMCursorClose(%struct.TYPE_46__*, i32) #1

declare dso_local i32 @lsmMCursorFirst(%struct.TYPE_46__*) #1

declare dso_local i64 @mergeWorkerDone(%struct.TYPE_47__*) #1

declare dso_local i32 @mergeWorkerStep(%struct.TYPE_47__*) #1

declare dso_local i32 @mergeWorkerShutdown(%struct.TYPE_47__*, i32*) #1

declare dso_local i32 @lsmFsSortedFinish(i32, %struct.TYPE_45__*) #1

declare dso_local i32 @sortedFreeLevel(i32, %struct.TYPE_48__*) #1

declare dso_local i32 @lsmFsSortedDelete(i32, %struct.TYPE_42__*, i32, %struct.TYPE_45__*) #1

declare dso_local i32 @lsmFree(i32, i64) #1

declare dso_local i32 @memcpy(%struct.TYPE_47__*, %struct.TYPE_47__*, i32) #1

declare dso_local i32 @assertBtreeOk(%struct.TYPE_44__*, %struct.TYPE_45__*) #1

declare dso_local i32 @sortedInvokeWorkHook(%struct.TYPE_44__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
