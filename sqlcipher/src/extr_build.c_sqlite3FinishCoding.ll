; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3FinishCoding.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3FinishCoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i64, i64, i64, i64, i32, i64, i64, i64, %struct.TYPE_29__*, i32*, i64, i64, i32, i32, i64, %struct.TYPE_26__* }
%struct.TYPE_29__ = type { i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_24__, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_26__ = type { i64, i32, %struct.TYPE_23__, %struct.TYPE_22__*, %struct.TYPE_21__ }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { i64 }

@SQLITE_OK = common dso_local global i64 0, align 8
@SQLITE_ERROR = common dso_local global i8* null, align 8
@OP_Halt = common dso_local global i32 0, align 4
@OP_Init = common dso_local global i64 0, align 8
@OP_Transaction = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"usesStmtJournal=%d\00", align 1
@OP_VBegin = common dso_local global i32 0, align 4
@P4_VTAB = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i64 0, align 8
@SQLITE_AUTH_USER = common dso_local global i64 0, align 8
@UAUTH_User = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3FinishCoding(%struct.TYPE_28__* %0) #0 {
  %2 = alloca %struct.TYPE_28__*, align 8
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %2, align 8
  %10 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 15
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  store %struct.TYPE_26__* %18, %struct.TYPE_26__** %3, align 8
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 14
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %280

24:                                               ; preds = %1
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %29, %24
  %35 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SQLITE_OK, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load i8*, i8** @SQLITE_ERROR, align 8
  %42 = ptrtoint i8* %41 to i64
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %40, %34
  br label %280

46:                                               ; preds = %29
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %48 = call i32* @sqlite3GetVdbe(%struct.TYPE_28__* %47)
  store i32* %48, i32** %4, align 8
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 10
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load i32*, i32** %4, align 8
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %55, i32 0, i32 11
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @sqlite3VdbeAssertMayAbort(i32* %54, i64 %57)
  %59 = icmp ne i64 %58, 0
  br label %60

60:                                               ; preds = %53, %46
  %61 = phi i1 [ true, %46 ], [ %59, %53 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load i32*, i32** %4, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %242

66:                                               ; preds = %60
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* @OP_Halt, align 4
  %69 = call i32 @sqlite3VdbeAddOp0(i32* %67, i32 %68)
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %241

74:                                               ; preds = %66
  %75 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %75, i32 0, i32 13
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @DbMaskNonZero(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %74
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %81, i32 0, i32 8
  %83 = load %struct.TYPE_29__*, %struct.TYPE_29__** %82, align 8
  %84 = icmp ne %struct.TYPE_29__* %83, null
  br i1 %84, label %85, label %241

85:                                               ; preds = %80, %74
  %86 = load i32*, i32** %4, align 8
  %87 = call %struct.TYPE_20__* @sqlite3VdbeGetOp(i32* %86, i32 0)
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @OP_Init, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load i32*, i32** %4, align 8
  %95 = call i32 @sqlite3VdbeJumpHere(i32* %94, i32 0)
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %162, %85
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %165

102:                                              ; preds = %96
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %103, i32 0, i32 13
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i64 @DbMaskTest(i32 %105, i32 %106)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  br label %162

110:                                              ; preds = %102
  %111 = load i32*, i32** %4, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @sqlite3VdbeUsesBtree(i32* %111, i32 %112)
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %120, align 8
  store %struct.TYPE_27__* %121, %struct.TYPE_27__** %7, align 8
  %122 = load i32*, i32** %4, align 8
  %123 = load i32, i32* @OP_Transaction, align 4
  %124 = load i32, i32* %5, align 4
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %125, i32 0, i32 12
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = call i64 @DbMaskTest(i32 %127, i32 %128)
  %130 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @sqlite3VdbeAddOp4Int(i32* %122, i32 %123, i32 %124, i64 %129, i32 %132, i32 %135)
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %110
  %143 = load i32*, i32** %4, align 8
  %144 = call i32 @sqlite3VdbeChangeP5(i32* %143, i32 1)
  br label %145

145:                                              ; preds = %142, %110
  %146 = load i32*, i32** %4, align 8
  %147 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %147, i32 0, i32 11
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %145
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %152, i32 0, i32 10
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br label %156

156:                                              ; preds = %151, %145
  %157 = phi i1 [ false, %145 ], [ %155, %151 ]
  %158 = zext i1 %157 to i32
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to i32*
  %161 = call i32 @VdbeComment(i32* %160)
  br label %162

162:                                              ; preds = %156, %109
  %163 = load i32, i32* %5, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %5, align 4
  br label %96

165:                                              ; preds = %96
  store i32 0, i32* %6, align 4
  br label %166

166:                                              ; preds = %188, %165
  %167 = load i32, i32* %6, align 4
  %168 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = icmp slt i32 %167, %170
  br i1 %171, label %172, label %191

172:                                              ; preds = %166
  %173 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %174 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %174, i32 0, i32 9
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %6, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = call i64 @sqlite3GetVTable(%struct.TYPE_26__* %173, i32 %180)
  %182 = inttoptr i64 %181 to i8*
  store i8* %182, i8** %8, align 8
  %183 = load i32*, i32** %4, align 8
  %184 = load i32, i32* @OP_VBegin, align 4
  %185 = load i8*, i8** %8, align 8
  %186 = load i32, i32* @P4_VTAB, align 4
  %187 = call i32 @sqlite3VdbeAddOp4(i32* %183, i32 %184, i32 0, i32 0, i32 0, i8* %185, i32 %186)
  br label %188

188:                                              ; preds = %172
  %189 = load i32, i32* %6, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %6, align 4
  br label %166

191:                                              ; preds = %166
  %192 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %192, i32 0, i32 4
  store i32 0, i32* %193, align 8
  %194 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %195 = call i32 @codeTableLocks(%struct.TYPE_28__* %194)
  %196 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %197 = call i32 @sqlite3AutoincrementBegin(%struct.TYPE_28__* %196)
  %198 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %198, i32 0, i32 8
  %200 = load %struct.TYPE_29__*, %struct.TYPE_29__** %199, align 8
  %201 = icmp ne %struct.TYPE_29__* %200, null
  br i1 %201, label %202, label %238

202:                                              ; preds = %191
  %203 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %203, i32 0, i32 8
  %205 = load %struct.TYPE_29__*, %struct.TYPE_29__** %204, align 8
  store %struct.TYPE_29__* %205, %struct.TYPE_29__** %9, align 8
  %206 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %206, i32 0, i32 7
  store i64 0, i64* %207, align 8
  store i32 0, i32* %6, align 4
  br label %208

208:                                              ; preds = %234, %202
  %209 = load i32, i32* %6, align 4
  %210 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = icmp slt i32 %209, %212
  br i1 %213, label %214, label %237

214:                                              ; preds = %208
  %215 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %216 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %216, i32 0, i32 1
  %218 = load %struct.TYPE_25__*, %struct.TYPE_25__** %217, align 8
  %219 = load i32, i32* %6, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %225, align 8
  %227 = load i32, i32* %6, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @sqlite3ExprCode(%struct.TYPE_28__* %215, i32 %223, i32 %232)
  br label %234

234:                                              ; preds = %214
  %235 = load i32, i32* %6, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %6, align 4
  br label %208

237:                                              ; preds = %208
  br label %238

238:                                              ; preds = %237, %191
  %239 = load i32*, i32** %4, align 8
  %240 = call i32 @sqlite3VdbeGoto(i32* %239, i32 1)
  br label %241

241:                                              ; preds = %238, %80, %66
  br label %242

242:                                              ; preds = %241, %60
  %243 = load i32*, i32** %4, align 8
  %244 = icmp ne i32* %243, null
  br i1 %244, label %245, label %275

245:                                              ; preds = %242
  %246 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %250, label %275

250:                                              ; preds = %245
  %251 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %275, label %255

255:                                              ; preds = %250
  %256 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %257 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %256, i32 0, i32 5
  %258 = load i64, i64* %257, align 8
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %265, label %260

260:                                              ; preds = %255
  %261 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %262 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %261, i32 0, i32 6
  %263 = load i64, i64* %262, align 8
  %264 = icmp sgt i64 %263, 0
  br label %265

265:                                              ; preds = %260, %255
  %266 = phi i1 [ true, %255 ], [ %264, %260 ]
  %267 = zext i1 %266 to i32
  %268 = call i32 @assert(i32 %267)
  %269 = load i32*, i32** %4, align 8
  %270 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %271 = call i32 @sqlite3VdbeMakeReady(i32* %269, %struct.TYPE_28__* %270)
  %272 = load i64, i64* @SQLITE_DONE, align 8
  %273 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %274 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %273, i32 0, i32 2
  store i64 %272, i64* %274, align 8
  br label %280

275:                                              ; preds = %250, %245, %242
  %276 = load i8*, i8** @SQLITE_ERROR, align 8
  %277 = ptrtoint i8* %276 to i64
  %278 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %279 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %278, i32 0, i32 2
  store i64 %277, i64* %279, align 8
  br label %280

280:                                              ; preds = %23, %45, %275, %265
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_28__*) #1

declare dso_local i64 @sqlite3VdbeAssertMayAbort(i32*, i64) #1

declare dso_local i32 @sqlite3VdbeAddOp0(i32*, i32) #1

declare dso_local i64 @DbMaskNonZero(i32) #1

declare dso_local %struct.TYPE_20__* @sqlite3VdbeGetOp(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i64 @DbMaskTest(i32, i32) #1

declare dso_local i32 @sqlite3VdbeUsesBtree(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4Int(i32*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i32 @VdbeComment(i32*) #1

declare dso_local i64 @sqlite3GetVTable(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @codeTableLocks(%struct.TYPE_28__*) #1

declare dso_local i32 @sqlite3AutoincrementBegin(%struct.TYPE_28__*) #1

declare dso_local i32 @sqlite3ExprCode(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeGoto(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeMakeReady(i32*, %struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
