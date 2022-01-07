; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_TABLE_find_matching_rows.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_TABLE_find_matching_rows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagMSIVIEW = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 (%struct.tagMSIVIEW*, i32, i32, i32*)* }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i32, i64, %struct.TYPE_12__*, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_16__** }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"%p, %d, %u, %p\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Stuffed up %d >= %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%p %p\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@MSITABLE_HASH_TABLE_SIZE = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_NO_MORE_ITEMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tagMSIVIEW*, i32, i32, i32*, %struct.TYPE_16__**)* @TABLE_find_matching_rows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TABLE_find_matching_rows(%struct.tagMSIVIEW* %0, i32 %1, i32 %2, i32* %3, %struct.TYPE_16__** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tagMSIVIEW*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_16__**, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_16__**, align 8
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_16__*, align 8
  store %struct.tagMSIVIEW* %0, %struct.tagMSIVIEW** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_16__** %4, %struct.TYPE_16__*** %11, align 8
  %20 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %7, align 8
  %21 = bitcast %struct.tagMSIVIEW* %20 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %12, align 8
  %22 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %11, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %27 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.tagMSIVIEW* %22, i32 %23, i32 %24, %struct.TYPE_16__* %26)
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = icmp ne %struct.TYPE_13__* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %5
  %33 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %33, i32* %6, align 4
  br label %257

34:                                               ; preds = %5
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sgt i32 %38, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37, %34
  %44 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %44, i32* %6, align 4
  br label %257

45:                                               ; preds = %37
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %53, align 8
  %55 = icmp ne %struct.TYPE_16__** %54, null
  br i1 %55, label %202, label %56

56:                                               ; preds = %45
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %15, align 4
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp sge i64 %70, %73
  br i1 %74, label %75, label %97

75:                                               ; preds = %56
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to %struct.TYPE_15__*
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to %struct.TYPE_12__*
  %90 = call i32 @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_15__* %85, %struct.TYPE_12__* %89)
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = call i32 @ERR(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_15__* %91, %struct.TYPE_12__* %94)
  %96 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %96, i32* %6, align 4
  br label %257

97:                                               ; preds = %56
  %98 = load i32, i32* @MSITABLE_HASH_TABLE_SIZE, align 4
  %99 = sext i32 %98 to i64
  %100 = mul i64 %99, 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = mul i64 %102, 16
  %104 = add i64 %100, %103
  %105 = trunc i64 %104 to i32
  %106 = call %struct.TYPE_16__** @msi_alloc(i32 %105)
  store %struct.TYPE_16__** %106, %struct.TYPE_16__*** %16, align 8
  %107 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %16, align 8
  %108 = icmp ne %struct.TYPE_16__** %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %97
  %110 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %110, i32* %6, align 4
  br label %257

111:                                              ; preds = %97
  %112 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %16, align 8
  %113 = load i32, i32* @MSITABLE_HASH_TABLE_SIZE, align 4
  %114 = sext i32 %113 to i64
  %115 = mul i64 %114, 8
  %116 = trunc i64 %115 to i32
  %117 = call i32 @memset(%struct.TYPE_16__** %112, i32 0, i32 %116)
  %118 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %16, align 8
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sub nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  store %struct.TYPE_16__** %118, %struct.TYPE_16__*** %126, align 8
  %127 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %16, align 8
  %128 = load i32, i32* @MSITABLE_HASH_TABLE_SIZE, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %127, i64 %129
  %131 = bitcast %struct.TYPE_16__** %130 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %131, %struct.TYPE_16__** %17, align 8
  store i32 0, i32* %14, align 4
  br label %132

132:                                              ; preds = %196, %111
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* %15, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %201

136:                                              ; preds = %132
  %137 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %7, align 8
  %138 = getelementptr inbounds %struct.tagMSIVIEW, %struct.tagMSIVIEW* %137, i32 0, i32 0
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load i64 (%struct.tagMSIVIEW*, i32, i32, i32*)*, i64 (%struct.tagMSIVIEW*, i32, i32, i32*)** %140, align 8
  %142 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %7, align 8
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* %8, align 4
  %145 = call i64 %141(%struct.tagMSIVIEW* %142, i32 %143, i32 %144, i32* %18)
  %146 = load i64, i64* @ERROR_SUCCESS, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %136
  br label %196

149:                                              ; preds = %136
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 2
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %151, align 8
  %152 = load i32, i32* %18, align 4
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  %155 = load i32, i32* %14, align 4
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  %158 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %16, align 8
  %159 = load i32, i32* %18, align 4
  %160 = load i32, i32* @MSITABLE_HASH_TABLE_SIZE, align 4
  %161 = srem i32 %159, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %158, i64 %162
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %163, align 8
  %165 = icmp ne %struct.TYPE_16__* %164, null
  br i1 %165, label %166, label %187

166:                                              ; preds = %149
  %167 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %16, align 8
  %168 = load i32, i32* %18, align 4
  %169 = load i32, i32* @MSITABLE_HASH_TABLE_SIZE, align 4
  %170 = srem i32 %168, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %167, i64 %171
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %172, align 8
  store %struct.TYPE_16__* %173, %struct.TYPE_16__** %19, align 8
  br label %174

174:                                              ; preds = %179, %166
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %176, align 8
  %178 = icmp ne %struct.TYPE_16__* %177, null
  br i1 %178, label %179, label %183

179:                                              ; preds = %174
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 2
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %181, align 8
  store %struct.TYPE_16__* %182, %struct.TYPE_16__** %19, align 8
  br label %174

183:                                              ; preds = %174
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 2
  store %struct.TYPE_16__* %184, %struct.TYPE_16__** %186, align 8
  br label %195

187:                                              ; preds = %149
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %189 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %16, align 8
  %190 = load i32, i32* %18, align 4
  %191 = load i32, i32* @MSITABLE_HASH_TABLE_SIZE, align 4
  %192 = srem i32 %190, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %189, i64 %193
  store %struct.TYPE_16__* %188, %struct.TYPE_16__** %194, align 8
  br label %195

195:                                              ; preds = %187, %183
  br label %196

196:                                              ; preds = %195, %148
  %197 = load i32, i32* %14, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %14, align 4
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 1
  store %struct.TYPE_16__* %200, %struct.TYPE_16__** %17, align 8
  br label %132

201:                                              ; preds = %132
  br label %202

202:                                              ; preds = %201, %45
  %203 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %11, align 8
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %203, align 8
  %205 = icmp ne %struct.TYPE_16__* %204, null
  br i1 %205, label %222, label %206

206:                                              ; preds = %202
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 2
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %208, align 8
  %210 = load i32, i32* %8, align 4
  %211 = sub nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %214, align 8
  %216 = load i32, i32* %9, align 4
  %217 = load i32, i32* @MSITABLE_HASH_TABLE_SIZE, align 4
  %218 = srem i32 %216, %217
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %215, i64 %219
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %220, align 8
  store %struct.TYPE_16__* %221, %struct.TYPE_16__** %13, align 8
  br label %227

222:                                              ; preds = %202
  %223 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %11, align 8
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 2
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %225, align 8
  store %struct.TYPE_16__* %226, %struct.TYPE_16__** %13, align 8
  br label %227

227:                                              ; preds = %222, %206
  br label %228

228:                                              ; preds = %239, %227
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %230 = icmp ne %struct.TYPE_16__* %229, null
  br i1 %230, label %231, label %237

231:                                              ; preds = %228
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* %9, align 4
  %236 = icmp ne i32 %234, %235
  br label %237

237:                                              ; preds = %231, %228
  %238 = phi i1 [ false, %228 ], [ %236, %231 ]
  br i1 %238, label %239, label %243

239:                                              ; preds = %237
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 2
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %241, align 8
  store %struct.TYPE_16__* %242, %struct.TYPE_16__** %13, align 8
  br label %228

243:                                              ; preds = %237
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %245 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %11, align 8
  store %struct.TYPE_16__* %244, %struct.TYPE_16__** %245, align 8
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %247 = icmp ne %struct.TYPE_16__* %246, null
  br i1 %247, label %250, label %248

248:                                              ; preds = %243
  %249 = load i32, i32* @ERROR_NO_MORE_ITEMS, align 4
  store i32 %249, i32* %6, align 4
  br label %257

250:                                              ; preds = %243
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load i32*, i32** %10, align 8
  store i32 %253, i32* %254, align 4
  %255 = load i64, i64* @ERROR_SUCCESS, align 8
  %256 = trunc i64 %255 to i32
  store i32 %256, i32* %6, align 4
  br label %257

257:                                              ; preds = %250, %248, %109, %75, %43, %32
  %258 = load i32, i32* %6, align 4
  ret i32 %258
}

declare dso_local i32 @TRACE(i8*, %struct.tagMSIVIEW*, i32, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @ERR(i8*, %struct.TYPE_15__*, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_16__** @msi_alloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_16__**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
