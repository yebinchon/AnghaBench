; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_delete.c_sqlite3GenerateRowDelete.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_delete.c_sqlite3GenerateRowDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i64, i32* }
%struct.TYPE_22__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [30 x i8] c"BEGIN: GenRowDel(%d,%d,%d,%d)\00", align 1
@OP_NotExists = common dso_local global i64 0, align 8
@OP_NotFound = common dso_local global i64 0, align 8
@ONEPASS_OFF = common dso_local global i64 0, align 8
@TRIGGER_BEFORE = common dso_local global i32 0, align 4
@TRIGGER_AFTER = common dso_local global i32 0, align 4
@OP_Copy = common dso_local global i32 0, align 4
@TK_DELETE = common dso_local global i32 0, align 4
@OP_Delete = common dso_local global i32 0, align 4
@OPFLAG_NCHANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"sqlite_stat1\00", align 1
@P4_TABLE = common dso_local global i32 0, align 4
@OPFLAG_AUXDELETE = common dso_local global i64 0, align 8
@ONEPASS_MULTI = common dso_local global i64 0, align 8
@OPFLAG_SAVEPOSITION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"END: GenRowDel()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3GenerateRowDelete(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1, i32* %2, i32 %3, i32 %4, i32 %5, i64 %6, i64 %7, i64 %8, i64 %9, i32 %10) #0 {
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %12, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i64 %6, i64* %18, align 8
  store i64 %7, i64* %19, align 8
  store i64 %8, i64* %20, align 8
  store i64 %9, i64* %21, align 8
  store i32 %10, i32* %22, align 4
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %23, align 8
  store i32 0, i32* %24, align 4
  %34 = load i32*, i32** %23, align 8
  %35 = call i32 @assert(i32* %34)
  %36 = load i32*, i32** %23, align 8
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %17, align 4
  %40 = load i64, i64* %18, align 8
  %41 = trunc i64 %40 to i32
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i32*
  %44 = call i32 @VdbeModuleComment(i32* %43)
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %46 = call i32 @sqlite3VdbeMakeLabel(%struct.TYPE_23__* %45)
  store i32 %46, i32* %25, align 4
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %48 = call i64 @HasRowid(%struct.TYPE_22__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %11
  %51 = load i64, i64* @OP_NotExists, align 8
  br label %54

52:                                               ; preds = %11
  %53 = load i64, i64* @OP_NotFound, align 8
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i64 [ %51, %50 ], [ %53, %52 ]
  store i64 %55, i64* %26, align 8
  %56 = load i64, i64* %21, align 8
  %57 = load i64, i64* @ONEPASS_OFF, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %54
  %60 = load i32*, i32** %23, align 8
  %61 = load i64, i64* %26, align 8
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %25, align 4
  %64 = load i32, i32* %17, align 4
  %65 = load i64, i64* %18, align 8
  %66 = call i32 @sqlite3VdbeAddOp4Int(i32* %60, i64 %61, i32 %62, i32 %63, i32 %64, i64 %65)
  %67 = load i32*, i32** %23, align 8
  %68 = load i64, i64* %26, align 8
  %69 = load i64, i64* @OP_NotExists, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @VdbeCoverageIf(i32* %67, i32 %71)
  %73 = load i32*, i32** %23, align 8
  %74 = load i64, i64* %26, align 8
  %75 = load i64, i64* @OP_NotFound, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @VdbeCoverageIf(i32* %73, i32 %77)
  br label %79

79:                                               ; preds = %59, %54
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %82 = call i64 @sqlite3FkRequired(%struct.TYPE_23__* %80, %struct.TYPE_22__* %81, i32 0, i32 0)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = load i32*, i32** %14, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %213

87:                                               ; preds = %84, %79
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %89 = load i32*, i32** %14, align 8
  %90 = load i32, i32* @TRIGGER_BEFORE, align 4
  %91 = load i32, i32* @TRIGGER_AFTER, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %94 = load i64, i64* %20, align 8
  %95 = call i32 @sqlite3TriggerColmask(%struct.TYPE_23__* %88, i32* %89, i32 0, i32 0, i32 %92, %struct.TYPE_22__* %93, i64 %94)
  store i32 %95, i32* %27, align 4
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %98 = call i32 @sqlite3FkOldmask(%struct.TYPE_23__* %96, %struct.TYPE_22__* %97)
  %99 = load i32, i32* %27, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %27, align 4
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %24, align 4
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 1, %107
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load i32*, i32** %23, align 8
  %114 = load i32, i32* @OP_Copy, align 4
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* %24, align 4
  %117 = call i32 @sqlite3VdbeAddOp2(i32* %113, i32 %114, i32 %115, i32 %116)
  store i32 0, i32* %28, align 4
  br label %118

118:                                              ; preds = %165, %87
  %119 = load i32, i32* %28, align 4
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %168

124:                                              ; preds = %118
  %125 = load i32, i32* %27, align 4
  %126 = icmp ne i32 %125, -1
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i32, i32* %28, align 4
  %129 = icmp eq i32 %128, 31
  br label %130

130:                                              ; preds = %127, %124
  %131 = phi i1 [ false, %124 ], [ %129, %127 ]
  %132 = zext i1 %131 to i32
  %133 = call i32 @testcase(i32 %132)
  %134 = load i32, i32* %27, align 4
  %135 = icmp ne i32 %134, -1
  br i1 %135, label %136, label %139

136:                                              ; preds = %130
  %137 = load i32, i32* %28, align 4
  %138 = icmp eq i32 %137, 32
  br label %139

139:                                              ; preds = %136, %130
  %140 = phi i1 [ false, %130 ], [ %138, %136 ]
  %141 = zext i1 %140 to i32
  %142 = call i32 @testcase(i32 %141)
  %143 = load i32, i32* %27, align 4
  %144 = icmp eq i32 %143, -1
  br i1 %144, label %154, label %145

145:                                              ; preds = %139
  %146 = load i32, i32* %28, align 4
  %147 = icmp sle i32 %146, 31
  br i1 %147, label %148, label %164

148:                                              ; preds = %145
  %149 = load i32, i32* %27, align 4
  %150 = load i32, i32* %28, align 4
  %151 = call i32 @MASKBIT32(i32 %150)
  %152 = and i32 %149, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %148, %139
  %155 = load i32*, i32** %23, align 8
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %157 = load i32, i32* %15, align 4
  %158 = load i32, i32* %28, align 4
  %159 = load i32, i32* %24, align 4
  %160 = load i32, i32* %28, align 4
  %161 = add nsw i32 %159, %160
  %162 = add nsw i32 %161, 1
  %163 = call i32 @sqlite3ExprCodeGetColumnOfTable(i32* %155, %struct.TYPE_22__* %156, i32 %157, i32 %158, i32 %162)
  br label %164

164:                                              ; preds = %154, %148, %145
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %28, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %28, align 4
  br label %118

168:                                              ; preds = %118
  %169 = load i32*, i32** %23, align 8
  %170 = call i32 @sqlite3VdbeCurrentAddr(i32* %169)
  store i32 %170, i32* %29, align 4
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %172 = load i32*, i32** %14, align 8
  %173 = load i32, i32* @TK_DELETE, align 4
  %174 = load i32, i32* @TRIGGER_BEFORE, align 4
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %176 = load i32, i32* %24, align 4
  %177 = load i64, i64* %20, align 8
  %178 = load i32, i32* %25, align 4
  %179 = call i32 @sqlite3CodeRowTrigger(%struct.TYPE_23__* %171, i32* %172, i32 %173, i32 0, i32 %174, %struct.TYPE_22__* %175, i32 %176, i64 %177, i32 %178)
  %180 = load i32, i32* %29, align 4
  %181 = load i32*, i32** %23, align 8
  %182 = call i32 @sqlite3VdbeCurrentAddr(i32* %181)
  %183 = icmp slt i32 %180, %182
  br i1 %183, label %184, label %208

184:                                              ; preds = %168
  %185 = load i32*, i32** %23, align 8
  %186 = load i64, i64* %26, align 8
  %187 = load i32, i32* %15, align 4
  %188 = load i32, i32* %25, align 4
  %189 = load i32, i32* %17, align 4
  %190 = load i64, i64* %18, align 8
  %191 = call i32 @sqlite3VdbeAddOp4Int(i32* %185, i64 %186, i32 %187, i32 %188, i32 %189, i64 %190)
  %192 = load i32*, i32** %23, align 8
  %193 = load i64, i64* %26, align 8
  %194 = load i64, i64* @OP_NotExists, align 8
  %195 = icmp eq i64 %193, %194
  %196 = zext i1 %195 to i32
  %197 = call i32 @VdbeCoverageIf(i32* %192, i32 %196)
  %198 = load i32*, i32** %23, align 8
  %199 = load i64, i64* %26, align 8
  %200 = load i64, i64* @OP_NotFound, align 8
  %201 = icmp eq i64 %199, %200
  %202 = zext i1 %201 to i32
  %203 = call i32 @VdbeCoverageIf(i32* %198, i32 %202)
  %204 = load i32, i32* %22, align 4
  %205 = icmp sge i32 %204, 0
  %206 = zext i1 %205 to i32
  %207 = call i32 @testcase(i32 %206)
  store i32 -1, i32* %22, align 4
  br label %208

208:                                              ; preds = %184, %168
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %211 = load i32, i32* %24, align 4
  %212 = call i32 @sqlite3FkCheck(%struct.TYPE_23__* %209, %struct.TYPE_22__* %210, i32 %211, i32 0, i32 0, i32 0)
  br label %213

213:                                              ; preds = %208, %84
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %218, label %284

218:                                              ; preds = %213
  store i64 0, i64* %30, align 8
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %221 = load i32, i32* %15, align 4
  %222 = load i32, i32* %16, align 4
  %223 = load i32, i32* %22, align 4
  %224 = call i32 @sqlite3GenerateRowIndexDelete(%struct.TYPE_23__* %219, %struct.TYPE_22__* %220, i32 %221, i32 %222, i32 0, i32 %223)
  %225 = load i32*, i32** %23, align 8
  %226 = load i32, i32* @OP_Delete, align 4
  %227 = load i32, i32* %15, align 4
  %228 = load i64, i64* %19, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %218
  %231 = load i32, i32* @OPFLAG_NCHANGE, align 4
  br label %233

232:                                              ; preds = %218
  br label %233

233:                                              ; preds = %232, %230
  %234 = phi i32 [ %231, %230 ], [ 0, %232 ]
  %235 = call i32 @sqlite3VdbeAddOp2(i32* %225, i32 %226, i32 %227, i32 %234)
  %236 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %237 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %246, label %240

240:                                              ; preds = %233
  %241 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %242 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = call i64 @sqlite3_stricmp(i32 %243, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %245 = icmp eq i64 0, %244
  br i1 %245, label %246, label %252

246:                                              ; preds = %240, %233
  %247 = load i32*, i32** %23, align 8
  %248 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %249 = bitcast %struct.TYPE_22__* %248 to i8*
  %250 = load i32, i32* @P4_TABLE, align 4
  %251 = call i32 @sqlite3VdbeAppendP4(i32* %247, i8* %249, i32 %250)
  br label %252

252:                                              ; preds = %246, %240
  %253 = load i64, i64* %21, align 8
  %254 = load i64, i64* @ONEPASS_OFF, align 8
  %255 = icmp ne i64 %253, %254
  br i1 %255, label %256, label %260

256:                                              ; preds = %252
  %257 = load i32*, i32** %23, align 8
  %258 = load i64, i64* @OPFLAG_AUXDELETE, align 8
  %259 = call i32 @sqlite3VdbeChangeP5(i32* %257, i64 %258)
  br label %260

260:                                              ; preds = %256, %252
  %261 = load i32, i32* %22, align 4
  %262 = icmp sge i32 %261, 0
  br i1 %262, label %263, label %272

263:                                              ; preds = %260
  %264 = load i32, i32* %22, align 4
  %265 = load i32, i32* %15, align 4
  %266 = icmp ne i32 %264, %265
  br i1 %266, label %267, label %272

267:                                              ; preds = %263
  %268 = load i32*, i32** %23, align 8
  %269 = load i32, i32* @OP_Delete, align 4
  %270 = load i32, i32* %22, align 4
  %271 = call i32 @sqlite3VdbeAddOp1(i32* %268, i32 %269, i32 %270)
  br label %272

272:                                              ; preds = %267, %263, %260
  %273 = load i64, i64* %21, align 8
  %274 = load i64, i64* @ONEPASS_MULTI, align 8
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %276, label %280

276:                                              ; preds = %272
  %277 = load i64, i64* @OPFLAG_SAVEPOSITION, align 8
  %278 = load i64, i64* %30, align 8
  %279 = or i64 %278, %277
  store i64 %279, i64* %30, align 8
  br label %280

280:                                              ; preds = %276, %272
  %281 = load i32*, i32** %23, align 8
  %282 = load i64, i64* %30, align 8
  %283 = call i32 @sqlite3VdbeChangeP5(i32* %281, i64 %282)
  br label %284

284:                                              ; preds = %280, %213
  %285 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %286 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %287 = load i32, i32* %24, align 4
  %288 = call i32 @sqlite3FkActions(%struct.TYPE_23__* %285, %struct.TYPE_22__* %286, i32 0, i32 %287, i32 0, i32 0)
  %289 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %290 = load i32*, i32** %14, align 8
  %291 = load i32, i32* @TK_DELETE, align 4
  %292 = load i32, i32* @TRIGGER_AFTER, align 4
  %293 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %294 = load i32, i32* %24, align 4
  %295 = load i64, i64* %20, align 8
  %296 = load i32, i32* %25, align 4
  %297 = call i32 @sqlite3CodeRowTrigger(%struct.TYPE_23__* %289, i32* %290, i32 %291, i32 0, i32 %292, %struct.TYPE_22__* %293, i32 %294, i64 %295, i32 %296)
  %298 = load i32*, i32** %23, align 8
  %299 = load i32, i32* %25, align 4
  %300 = call i32 @sqlite3VdbeResolveLabel(i32* %298, i32 %299)
  %301 = load i32*, i32** %23, align 8
  %302 = call i32 @VdbeModuleComment(i32* bitcast ([17 x i8]* @.str.2 to i32*))
  ret void
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @VdbeModuleComment(i32*) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(%struct.TYPE_23__*) #1

declare dso_local i64 @HasRowid(%struct.TYPE_22__*) #1

declare dso_local i32 @sqlite3VdbeAddOp4Int(i32*, i64, i32, i32, i32, i64) #1

declare dso_local i32 @VdbeCoverageIf(i32*, i32) #1

declare dso_local i64 @sqlite3FkRequired(%struct.TYPE_23__*, %struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @sqlite3TriggerColmask(%struct.TYPE_23__*, i32*, i32, i32, i32, %struct.TYPE_22__*, i64) #1

declare dso_local i32 @sqlite3FkOldmask(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @MASKBIT32(i32) #1

declare dso_local i32 @sqlite3ExprCodeGetColumnOfTable(i32*, %struct.TYPE_22__*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @sqlite3CodeRowTrigger(%struct.TYPE_23__*, i32*, i32, i32, i32, %struct.TYPE_22__*, i32, i64, i32) #1

declare dso_local i32 @sqlite3FkCheck(%struct.TYPE_23__*, %struct.TYPE_22__*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3GenerateRowIndexDelete(%struct.TYPE_23__*, %struct.TYPE_22__*, i32, i32, i32, i32) #1

declare dso_local i64 @sqlite3_stricmp(i32, i8*) #1

declare dso_local i32 @sqlite3VdbeAppendP4(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i64) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @sqlite3FkActions(%struct.TYPE_23__*, %struct.TYPE_22__*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
