; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_vdbeaux.c_sqlite3VdbeHalt.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_vdbeaux.c_sqlite3VdbeHalt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i32, i64, i64, i64, i64, i64, i64, i32, i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i64, i64, i64, i64, i32, i64, i64 }

@VDBE_MAGIC_RUN = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM_BKPT = common dso_local global i8* null, align 8
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_IOERR = common dso_local global i32 0, align 4
@SQLITE_INTERRUPT = common dso_local global i32 0, align 4
@SQLITE_FULL = common dso_local global i32 0, align 4
@SAVEPOINT_ROLLBACK = common dso_local global i32 0, align 4
@SQLITE_ABORT_ROLLBACK = common dso_local global i32 0, align 4
@OE_Fail = common dso_local global i64 0, align 8
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_CONSTRAINT_FOREIGNKEY = common dso_local global i32 0, align 4
@SQLITE_BUSY = common dso_local global i32 0, align 4
@SQLITE_DeferFKs = common dso_local global i64 0, align 8
@SAVEPOINT_RELEASE = common dso_local global i32 0, align 4
@OE_Abort = common dso_local global i64 0, align 8
@SQLITE_CONSTRAINT = common dso_local global i32 0, align 4
@VDBE_MAGIC_HALT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3VdbeHalt(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 10
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  store %struct.TYPE_19__* %11, %struct.TYPE_19__** %5, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @VDBE_MAGIC_RUN, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @SQLITE_OK, align 4
  store i32 %18, i32* %2, align 4
  br label %436

19:                                               ; preds = %1
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i8*, i8** @SQLITE_NOMEM_BKPT, align 8
  %26 = ptrtoint i8* %25 to i32
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  br label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %31 = call i32 @closeAllCursors(%struct.TYPE_20__* %30)
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %33 = call i32 @checkActiveVdbeCnt(%struct.TYPE_19__* %32)
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp sge i64 %36, 0
  br i1 %37, label %38, label %328

38:                                               ; preds = %29
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %328

43:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %45 = call i32 @sqlite3VdbeEnter(%struct.TYPE_20__* %44)
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, 255
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @SQLITE_NOMEM, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %65, label %53

53:                                               ; preds = %43
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @SQLITE_IOERR, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @SQLITE_INTERRUPT, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @SQLITE_FULL, align 4
  %64 = icmp eq i32 %62, %63
  br label %65

65:                                               ; preds = %61, %57, %53, %43
  %66 = phi i1 [ true, %57 ], [ true, %53 ], [ true, %43 ], [ %64, %61 ]
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %106

70:                                               ; preds = %65
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @SQLITE_INTERRUPT, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %105

79:                                               ; preds = %75, %70
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @SQLITE_NOMEM, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @SQLITE_FULL, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %83, %79
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 9
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* @SAVEPOINT_ROLLBACK, align 4
  store i32 %93, i32* %7, align 4
  br label %104

94:                                               ; preds = %87, %83
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %96 = load i32, i32* @SQLITE_ABORT_ROLLBACK, align 4
  %97 = call i32 @sqlite3RollbackAll(%struct.TYPE_19__* %95, i32 %96)
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %99 = call i32 @sqlite3CloseSavepoints(%struct.TYPE_19__* %98)
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  store i32 1, i32* %101, align 8
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 6
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %94, %92
  br label %105

105:                                              ; preds = %104, %75
  br label %106

106:                                              ; preds = %105, %65
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @SQLITE_OK, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %114 = call i32 @sqlite3VdbeCheckFk(%struct.TYPE_20__* %113, i32 0)
  br label %115

115:                                              ; preds = %112, %106
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %117 = call i32 @sqlite3VtabInSync(%struct.TYPE_19__* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %222, label %119

119:                                              ; preds = %115
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %222

124:                                              ; preds = %119
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %130, 0
  %132 = zext i1 %131 to i32
  %133 = icmp eq i32 %127, %132
  br i1 %133, label %134, label %222

134:                                              ; preds = %124
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @SQLITE_OK, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %149, label %140

140:                                              ; preds = %134
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @OE_Fail, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %213

146:                                              ; preds = %140
  %147 = load i32, i32* %8, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %213, label %149

149:                                              ; preds = %146, %134
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %151 = call i32 @sqlite3VdbeCheckFk(%struct.TYPE_20__* %150, i32 1)
  store i32 %151, i32* %4, align 4
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* @SQLITE_OK, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %167

155:                                              ; preds = %149
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = call i64 @NEVER(i64 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %155
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %163 = call i32 @sqlite3VdbeLeave(%struct.TYPE_20__* %162)
  %164 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %164, i32* %2, align 4
  br label %436

165:                                              ; preds = %155
  %166 = load i32, i32* @SQLITE_CONSTRAINT_FOREIGNKEY, align 4
  store i32 %166, i32* %4, align 4
  br label %171

167:                                              ; preds = %149
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %170 = call i32 @vdbeCommit(%struct.TYPE_19__* %168, %struct.TYPE_20__* %169)
  store i32 %170, i32* %4, align 4
  br label %171

171:                                              ; preds = %167, %165
  %172 = load i32, i32* %4, align 4
  %173 = load i32, i32* @SQLITE_BUSY, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %184

175:                                              ; preds = %171
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %175
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %182 = call i32 @sqlite3VdbeLeave(%struct.TYPE_20__* %181)
  %183 = load i32, i32* @SQLITE_BUSY, align 4
  store i32 %183, i32* %2, align 4
  br label %436

184:                                              ; preds = %175, %171
  %185 = load i32, i32* %4, align 4
  %186 = load i32, i32* @SQLITE_OK, align 4
  %187 = icmp ne i32 %185, %186
  br i1 %187, label %188, label %197

188:                                              ; preds = %184
  %189 = load i32, i32* %4, align 4
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 8
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %193 = load i32, i32* @SQLITE_OK, align 4
  %194 = call i32 @sqlite3RollbackAll(%struct.TYPE_19__* %192, i32 %193)
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 6
  store i64 0, i64* %196, align 8
  br label %211

197:                                              ; preds = %184
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 8
  store i64 0, i64* %199, align 8
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 7
  store i64 0, i64* %201, align 8
  %202 = load i64, i64* @SQLITE_DeferFKs, align 8
  %203 = trunc i64 %202 to i32
  %204 = xor i32 %203, -1
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 8
  %208 = and i32 %207, %204
  store i32 %208, i32* %206, align 8
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %210 = call i32 @sqlite3CommitInternalChanges(%struct.TYPE_19__* %209)
  br label %211

211:                                              ; preds = %197, %188
  br label %212

212:                                              ; preds = %211
  br label %219

213:                                              ; preds = %146, %140
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %215 = load i32, i32* @SQLITE_OK, align 4
  %216 = call i32 @sqlite3RollbackAll(%struct.TYPE_19__* %214, i32 %215)
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 6
  store i64 0, i64* %218, align 8
  br label %219

219:                                              ; preds = %213, %212
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 2
  store i64 0, i64* %221, align 8
  br label %260

222:                                              ; preds = %124, %119, %115
  %223 = load i32, i32* %7, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %259

225:                                              ; preds = %222
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @SQLITE_OK, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %237, label %231

231:                                              ; preds = %225
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 4
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @OE_Fail, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %239

237:                                              ; preds = %231, %225
  %238 = load i32, i32* @SAVEPOINT_RELEASE, align 4
  store i32 %238, i32* %7, align 4
  br label %258

239:                                              ; preds = %231
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i32 0, i32 4
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @OE_Abort, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %247

245:                                              ; preds = %239
  %246 = load i32, i32* @SAVEPOINT_ROLLBACK, align 4
  store i32 %246, i32* %7, align 4
  br label %257

247:                                              ; preds = %239
  %248 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %249 = load i32, i32* @SQLITE_ABORT_ROLLBACK, align 4
  %250 = call i32 @sqlite3RollbackAll(%struct.TYPE_19__* %248, i32 %249)
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %252 = call i32 @sqlite3CloseSavepoints(%struct.TYPE_19__* %251)
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 0
  store i32 1, i32* %254, align 8
  %255 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %255, i32 0, i32 6
  store i64 0, i64* %256, align 8
  br label %257

257:                                              ; preds = %247, %245
  br label %258

258:                                              ; preds = %257, %237
  br label %259

259:                                              ; preds = %258, %222
  br label %260

260:                                              ; preds = %259, %219
  %261 = load i32, i32* %7, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %304

263:                                              ; preds = %260
  %264 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %265 = load i32, i32* %7, align 4
  %266 = call i32 @sqlite3VdbeCloseStatement(%struct.TYPE_20__* %264, i32 %265)
  store i32 %266, i32* %4, align 4
  %267 = load i32, i32* %4, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %303

269:                                              ; preds = %263
  %270 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @SQLITE_OK, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %282, label %275

275:                                              ; preds = %269
  %276 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = and i32 %278, 255
  %280 = load i32, i32* @SQLITE_CONSTRAINT, align 4
  %281 = icmp eq i32 %279, %280
  br i1 %281, label %282, label %293

282:                                              ; preds = %275, %269
  %283 = load i32, i32* %4, align 4
  %284 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %284, i32 0, i32 1
  store i32 %283, i32* %285, align 8
  %286 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %287 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %287, i32 0, i32 8
  %289 = load i32, i32* %288, align 8
  %290 = call i32 @sqlite3DbFree(%struct.TYPE_19__* %286, i32 %289)
  %291 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %291, i32 0, i32 8
  store i32 0, i32* %292, align 8
  br label %293

293:                                              ; preds = %282, %275
  %294 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %295 = load i32, i32* @SQLITE_ABORT_ROLLBACK, align 4
  %296 = call i32 @sqlite3RollbackAll(%struct.TYPE_19__* %294, i32 %295)
  %297 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %298 = call i32 @sqlite3CloseSavepoints(%struct.TYPE_19__* %297)
  %299 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %299, i32 0, i32 0
  store i32 1, i32* %300, align 8
  %301 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %301, i32 0, i32 6
  store i64 0, i64* %302, align 8
  br label %303

303:                                              ; preds = %293, %263
  br label %304

304:                                              ; preds = %303, %260
  %305 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %306 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %305, i32 0, i32 7
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %325

309:                                              ; preds = %304
  %310 = load i32, i32* %7, align 4
  %311 = load i32, i32* @SAVEPOINT_ROLLBACK, align 4
  %312 = icmp ne i32 %310, %311
  br i1 %312, label %313, label %319

313:                                              ; preds = %309
  %314 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %315 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %315, i32 0, i32 6
  %317 = load i64, i64* %316, align 8
  %318 = call i32 @sqlite3VdbeSetChanges(%struct.TYPE_19__* %314, i64 %317)
  br label %322

319:                                              ; preds = %309
  %320 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %321 = call i32 @sqlite3VdbeSetChanges(%struct.TYPE_19__* %320, i64 0)
  br label %322

322:                                              ; preds = %319, %313
  %323 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %324 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %323, i32 0, i32 6
  store i64 0, i64* %324, align 8
  br label %325

325:                                              ; preds = %322, %304
  %326 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %327 = call i32 @sqlite3VdbeLeave(%struct.TYPE_20__* %326)
  br label %328

328:                                              ; preds = %325, %38, %29
  %329 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %330 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %329, i32 0, i32 2
  %331 = load i64, i64* %330, align 8
  %332 = icmp sge i64 %331, 0
  br i1 %332, label %333, label %383

333:                                              ; preds = %328
  %334 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %335 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %334, i32 0, i32 3
  %336 = load i64, i64* %335, align 8
  %337 = add nsw i64 %336, -1
  store i64 %337, i64* %335, align 8
  %338 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %339 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %338, i32 0, i32 3
  %340 = load i64, i64* %339, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %347, label %342

342:                                              ; preds = %333
  %343 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %344 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = add nsw i32 %345, -1
  store i32 %346, i32* %344, align 4
  br label %347

347:                                              ; preds = %342, %333
  %348 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %349 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %348, i32 0, i32 5
  %350 = load i64, i64* %349, align 8
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %357

352:                                              ; preds = %347
  %353 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %354 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %353, i32 0, i32 4
  %355 = load i64, i64* %354, align 8
  %356 = add nsw i64 %355, -1
  store i64 %356, i64* %354, align 8
  br label %357

357:                                              ; preds = %352, %347
  %358 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %359 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %358, i32 0, i32 3
  %360 = load i64, i64* %359, align 8
  %361 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %362 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %361, i32 0, i32 4
  %363 = load i64, i64* %362, align 8
  %364 = icmp sge i64 %360, %363
  %365 = zext i1 %364 to i32
  %366 = call i32 @assert(i32 %365)
  %367 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %368 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %367, i32 0, i32 4
  %369 = load i64, i64* %368, align 8
  %370 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %371 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = sext i32 %372 to i64
  %374 = icmp sge i64 %369, %373
  %375 = zext i1 %374 to i32
  %376 = call i32 @assert(i32 %375)
  %377 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %378 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = icmp sge i32 %379, 0
  %381 = zext i1 %380 to i32
  %382 = call i32 @assert(i32 %381)
  br label %383

383:                                              ; preds = %357, %328
  %384 = load i64, i64* @VDBE_MAGIC_HALT, align 8
  %385 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %386 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %385, i32 0, i32 0
  store i64 %384, i64* %386, align 8
  %387 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %388 = call i32 @checkActiveVdbeCnt(%struct.TYPE_19__* %387)
  %389 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %390 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %389, i32 0, i32 5
  %391 = load i64, i64* %390, align 8
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %398

393:                                              ; preds = %383
  %394 = load i8*, i8** @SQLITE_NOMEM_BKPT, align 8
  %395 = ptrtoint i8* %394 to i32
  %396 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %397 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %396, i32 0, i32 1
  store i32 %395, i32* %397, align 8
  br label %398

398:                                              ; preds = %393, %383
  %399 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %400 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %406

403:                                              ; preds = %398
  %404 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %405 = call i32 @sqlite3ConnectionUnlocked(%struct.TYPE_19__* %404)
  br label %406

406:                                              ; preds = %403, %398
  %407 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %408 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %407, i32 0, i32 3
  %409 = load i64, i64* %408, align 8
  %410 = icmp sgt i64 %409, 0
  br i1 %410, label %421, label %411

411:                                              ; preds = %406
  %412 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %413 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %421, label %416

416:                                              ; preds = %411
  %417 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %418 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %417, i32 0, i32 2
  %419 = load i64, i64* %418, align 8
  %420 = icmp eq i64 %419, 0
  br label %421

421:                                              ; preds = %416, %411, %406
  %422 = phi i1 [ true, %411 ], [ true, %406 ], [ %420, %416 ]
  %423 = zext i1 %422 to i32
  %424 = call i32 @assert(i32 %423)
  %425 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %426 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %425, i32 0, i32 1
  %427 = load i32, i32* %426, align 8
  %428 = load i32, i32* @SQLITE_BUSY, align 4
  %429 = icmp eq i32 %427, %428
  br i1 %429, label %430, label %432

430:                                              ; preds = %421
  %431 = load i32, i32* @SQLITE_BUSY, align 4
  br label %434

432:                                              ; preds = %421
  %433 = load i32, i32* @SQLITE_OK, align 4
  br label %434

434:                                              ; preds = %432, %430
  %435 = phi i32 [ %431, %430 ], [ %433, %432 ]
  store i32 %435, i32* %2, align 4
  br label %436

436:                                              ; preds = %434, %180, %161, %17
  %437 = load i32, i32* %2, align 4
  ret i32 %437
}

declare dso_local i32 @closeAllCursors(%struct.TYPE_20__*) #1

declare dso_local i32 @checkActiveVdbeCnt(%struct.TYPE_19__*) #1

declare dso_local i32 @sqlite3VdbeEnter(%struct.TYPE_20__*) #1

declare dso_local i32 @sqlite3RollbackAll(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @sqlite3CloseSavepoints(%struct.TYPE_19__*) #1

declare dso_local i32 @sqlite3VdbeCheckFk(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @sqlite3VtabInSync(%struct.TYPE_19__*) #1

declare dso_local i64 @NEVER(i64) #1

declare dso_local i32 @sqlite3VdbeLeave(%struct.TYPE_20__*) #1

declare dso_local i32 @vdbeCommit(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local i32 @sqlite3CommitInternalChanges(%struct.TYPE_19__*) #1

declare dso_local i32 @sqlite3VdbeCloseStatement(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @sqlite3VdbeSetChanges(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3ConnectionUnlocked(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
