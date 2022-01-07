; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_where.c_whereLoopAddVirtual.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_where.c_whereLoopAddVirtual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, %struct.TYPE_32__*, %struct.TYPE_22__*, %struct.TYPE_33__* }
%struct.TYPE_32__ = type { i64, i64, %struct.TYPE_27__, i64, i32, i64 }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_22__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_33__ = type { %struct.TYPE_24__*, %struct.TYPE_23__* }
%struct.TYPE_24__ = type { %struct.SrcList_item* }
%struct.SrcList_item = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_30__ = type { i32, i32, i64, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@WHERE_VIRTUALTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"BEGIN %s.addVirtual()\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"  VirtualOne: all usable\0A\00", align 1
@ALLBITS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"  VirtualOne: all usable w/o IN\0A\00", align 1
@WO_IN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"  VirtualOne: mPrev=%04llx mNext=%04llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"  VirtualOne: all disabled\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"  VirtualOne: all disabled and w/o IN\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"END %s.addVirtual(), rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_31__*, i64, i64)* @whereLoopAddVirtual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @whereLoopAddVirtual(%struct.TYPE_31__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_33__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.SrcList_item*, align 8
  %13 = alloca %struct.TYPE_30__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_32__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %26 = load i32, i32* @SQLITE_OK, align 4
  store i32 %26, i32* %8, align 4
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = and i64 %27, %28
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_33__*, %struct.TYPE_33__** %34, align 8
  store %struct.TYPE_33__* %35, %struct.TYPE_33__** %9, align 8
  %36 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %37, align 8
  store %struct.TYPE_23__* %38, %struct.TYPE_23__** %10, align 8
  %39 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %40, align 8
  store %struct.TYPE_22__* %41, %struct.TYPE_22__** %11, align 8
  %42 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_32__*, %struct.TYPE_32__** %43, align 8
  store %struct.TYPE_32__* %44, %struct.TYPE_32__** %16, align 8
  %45 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 0
  %49 = load %struct.SrcList_item*, %struct.SrcList_item** %48, align 8
  %50 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %49, i64 %52
  store %struct.SrcList_item* %53, %struct.SrcList_item** %12, align 8
  %54 = load %struct.SrcList_item*, %struct.SrcList_item** %12, align 8
  %55 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %54, i32 0, i32 0
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %55, align 8
  %57 = call i32 @IsVirtual(%struct.TYPE_25__* %56)
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.SrcList_item*, %struct.SrcList_item** %12, align 8
  %63 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call %struct.TYPE_30__* @allocateIndexInfo(%struct.TYPE_23__* %59, %struct.TYPE_22__* %60, i64 %61, %struct.SrcList_item* %62, i32 %65, i32* %18)
  store %struct.TYPE_30__* %66, %struct.TYPE_30__** %13, align 8
  %67 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %68 = icmp eq %struct.TYPE_30__* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %3
  %70 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %70, i32* %4, align 4
  br label %306

71:                                               ; preds = %3
  %72 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %72, i32 0, i32 5
  store i64 0, i64* %73, align 8
  %74 = load i32, i32* @WHERE_VIRTUALTABLE, align 4
  %75 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %77, i32 0, i32 3
  store i64 0, i64* %78, align 8
  %79 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  %83 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %14, align 4
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %90 = load i32, i32* %14, align 4
  %91 = call i64 @whereLoopResize(i32 %88, %struct.TYPE_32__* %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %71
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %98 = call i32 @sqlite3DbFree(i32 %96, %struct.TYPE_30__* %97)
  %99 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %99, i32* %4, align 4
  br label %306

100:                                              ; preds = %71
  %101 = load %struct.SrcList_item*, %struct.SrcList_item** %12, align 8
  %102 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %101, i32 0, i32 0
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = inttoptr i64 %106 to i8*
  %108 = call i32 @WHERETRACE(i32 2048, i8* %107)
  %109 = call i32 @WHERETRACE(i32 64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %110 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %111 = load i64, i64* %6, align 8
  %112 = load i64, i64* @ALLBITS, align 8
  %113 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %114 = load i32, i32* %18, align 4
  %115 = call i32 @whereLoopAddVirtualOne(%struct.TYPE_31__* %110, i64 %111, i64 %112, i32 0, %struct.TYPE_30__* %113, i32 %114, i32* %15)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @SQLITE_OK, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %280

119:                                              ; preds = %100
  %120 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %121 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %6, align 8
  %124 = xor i64 %123, -1
  %125 = and i64 %122, %124
  store i64 %125, i64* %17, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %119
  %128 = load i32, i32* %15, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %280

130:                                              ; preds = %127, %119
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i64 0, i64* %21, align 8
  store i64 0, i64* %22, align 8
  %131 = load i32, i32* %15, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %156

133:                                              ; preds = %130
  %134 = call i32 @WHERETRACE(i32 64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %135 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %136 = load i64, i64* %6, align 8
  %137 = load i64, i64* @ALLBITS, align 8
  %138 = load i32, i32* @WO_IN, align 4
  %139 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %140 = load i32, i32* %18, align 4
  %141 = call i32 @whereLoopAddVirtualOne(%struct.TYPE_31__* %135, i64 %136, i64 %137, i32 %138, %struct.TYPE_30__* %139, i32 %140, i32* %15)
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %15, align 4
  %143 = icmp eq i32 %142, 0
  %144 = zext i1 %143 to i32
  %145 = call i32 @assert(i32 %144)
  %146 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %147 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %6, align 8
  %150 = xor i64 %149, -1
  %151 = and i64 %148, %150
  store i64 %151, i64* %22, align 8
  %152 = load i64, i64* %22, align 8
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %133
  store i32 1, i32* %19, align 4
  store i32 1, i32* %20, align 4
  br label %155

155:                                              ; preds = %154, %133
  br label %156

156:                                              ; preds = %155, %130
  br label %157

157:                                              ; preds = %243, %216, %156
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* @SQLITE_OK, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %244

161:                                              ; preds = %157
  %162 = load i64, i64* @ALLBITS, align 8
  store i64 %162, i64* %24, align 8
  %163 = load i64, i64* %24, align 8
  %164 = icmp sgt i64 %163, 0
  %165 = zext i1 %164 to i32
  %166 = call i32 @assert(i32 %165)
  store i32 0, i32* %23, align 4
  br label %167

167:                                              ; preds = %199, %161
  %168 = load i32, i32* %23, align 4
  %169 = load i32, i32* %14, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %202

171:                                              ; preds = %167
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_28__*, %struct.TYPE_28__** %173, align 8
  %175 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %176 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %175, i32 0, i32 3
  %177 = load %struct.TYPE_29__*, %struct.TYPE_29__** %176, align 8
  %178 = load i32, i32* %23, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %174, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* %6, align 8
  %187 = xor i64 %186, -1
  %188 = and i64 %185, %187
  store i64 %188, i64* %25, align 8
  %189 = load i64, i64* %25, align 8
  %190 = load i64, i64* %21, align 8
  %191 = icmp sgt i64 %189, %190
  br i1 %191, label %192, label %198

192:                                              ; preds = %171
  %193 = load i64, i64* %25, align 8
  %194 = load i64, i64* %24, align 8
  %195 = icmp slt i64 %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %192
  %197 = load i64, i64* %25, align 8
  store i64 %197, i64* %24, align 8
  br label %198

198:                                              ; preds = %196, %192, %171
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %23, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %23, align 4
  br label %167

202:                                              ; preds = %167
  %203 = load i64, i64* %24, align 8
  store i64 %203, i64* %21, align 8
  %204 = load i64, i64* %24, align 8
  %205 = load i64, i64* @ALLBITS, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %202
  br label %244

208:                                              ; preds = %202
  %209 = load i64, i64* %24, align 8
  %210 = load i64, i64* %17, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %216, label %212

212:                                              ; preds = %208
  %213 = load i64, i64* %24, align 8
  %214 = load i64, i64* %22, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %212, %208
  br label %157

217:                                              ; preds = %212
  %218 = load i64, i64* %21, align 8
  %219 = trunc i64 %218 to i32
  %220 = load i64, i64* %24, align 8
  %221 = trunc i64 %220 to i32
  %222 = sext i32 %221 to i64
  %223 = inttoptr i64 %222 to i8*
  %224 = call i32 @WHERETRACE(i32 64, i8* %223)
  %225 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %226 = load i64, i64* %6, align 8
  %227 = load i64, i64* %24, align 8
  %228 = load i64, i64* %6, align 8
  %229 = or i64 %227, %228
  %230 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %231 = load i32, i32* %18, align 4
  %232 = call i32 @whereLoopAddVirtualOne(%struct.TYPE_31__* %225, i64 %226, i64 %229, i32 0, %struct.TYPE_30__* %230, i32 %231, i32* %15)
  store i32 %232, i32* %8, align 4
  %233 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %234 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* %6, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %243

238:                                              ; preds = %217
  store i32 1, i32* %19, align 4
  %239 = load i32, i32* %15, align 4
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %238
  store i32 1, i32* %20, align 4
  br label %242

242:                                              ; preds = %241, %238
  br label %243

243:                                              ; preds = %242, %217
  br label %157

244:                                              ; preds = %207, %157
  %245 = load i32, i32* %8, align 4
  %246 = load i32, i32* @SQLITE_OK, align 4
  %247 = icmp eq i32 %245, %246
  br i1 %247, label %248, label %263

248:                                              ; preds = %244
  %249 = load i32, i32* %19, align 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %263

251:                                              ; preds = %248
  %252 = call i32 @WHERETRACE(i32 64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %253 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %254 = load i64, i64* %6, align 8
  %255 = load i64, i64* %6, align 8
  %256 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %257 = load i32, i32* %18, align 4
  %258 = call i32 @whereLoopAddVirtualOne(%struct.TYPE_31__* %253, i64 %254, i64 %255, i32 0, %struct.TYPE_30__* %256, i32 %257, i32* %15)
  store i32 %258, i32* %8, align 4
  %259 = load i32, i32* %15, align 4
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %251
  store i32 1, i32* %20, align 4
  br label %262

262:                                              ; preds = %261, %251
  br label %263

263:                                              ; preds = %262, %248, %244
  %264 = load i32, i32* %8, align 4
  %265 = load i32, i32* @SQLITE_OK, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %267, label %279

267:                                              ; preds = %263
  %268 = load i32, i32* %20, align 4
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %279

270:                                              ; preds = %267
  %271 = call i32 @WHERETRACE(i32 64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %272 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %273 = load i64, i64* %6, align 8
  %274 = load i64, i64* %6, align 8
  %275 = load i32, i32* @WO_IN, align 4
  %276 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %277 = load i32, i32* %18, align 4
  %278 = call i32 @whereLoopAddVirtualOne(%struct.TYPE_31__* %272, i64 %273, i64 %274, i32 %275, %struct.TYPE_30__* %276, i32 %277, i32* %15)
  store i32 %278, i32* %8, align 4
  br label %279

279:                                              ; preds = %270, %267, %263
  br label %280

280:                                              ; preds = %279, %127, %100
  %281 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %282 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %281, i32 0, i32 2
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %290

285:                                              ; preds = %280
  %286 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %287 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @sqlite3_free(i32 %288)
  br label %290

290:                                              ; preds = %285, %280
  %291 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %292 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %295 = call i32 @sqlite3DbFreeNN(i32 %293, %struct.TYPE_30__* %294)
  %296 = load %struct.SrcList_item*, %struct.SrcList_item** %12, align 8
  %297 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %296, i32 0, i32 0
  %298 = load %struct.TYPE_25__*, %struct.TYPE_25__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* %8, align 4
  %302 = sext i32 %301 to i64
  %303 = inttoptr i64 %302 to i8*
  %304 = call i32 @WHERETRACE(i32 2048, i8* %303)
  %305 = load i32, i32* %8, align 4
  store i32 %305, i32* %4, align 4
  br label %306

306:                                              ; preds = %290, %93, %69
  %307 = load i32, i32* %4, align 4
  ret i32 %307
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IsVirtual(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_30__* @allocateIndexInfo(%struct.TYPE_23__*, %struct.TYPE_22__*, i64, %struct.SrcList_item*, i32, i32*) #1

declare dso_local i64 @whereLoopResize(i32, %struct.TYPE_32__*, i32) #1

declare dso_local i32 @sqlite3DbFree(i32, %struct.TYPE_30__*) #1

declare dso_local i32 @WHERETRACE(i32, i8*) #1

declare dso_local i32 @whereLoopAddVirtualOne(%struct.TYPE_31__*, i64, i64, i32, %struct.TYPE_30__*, i32, i32*) #1

declare dso_local i32 @sqlite3_free(i32) #1

declare dso_local i32 @sqlite3DbFreeNN(i32, %struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
