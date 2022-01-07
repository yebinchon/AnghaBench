; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_nginx.c_ngx_set_environment.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_nginx.c_ngx_set_environment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i8*, i32 }
%struct.TYPE_12__ = type { i8**, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i8**, i32 }

@ngx_core_module = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"TZ=\00", align 1
@ngx_os_environ = common dso_local global i8** null, align 8
@ngx_cleanup_environment = common dso_local global i32 0, align 4
@environ = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @ngx_set_environment(%struct.TYPE_11__* %0, i64* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i64* %1, i64** %5, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ngx_core_module, align 4
  %17 = call i64 @ngx_get_conf(i32 %15, i32 %16)
  %18 = inttoptr i64 %17 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %11, align 8
  %19 = load i64*, i64** %5, align 8
  %20 = icmp eq i64* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i8**, i8*** %23, align 8
  %25 = icmp ne i8** %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  store i8** %29, i8*** %3, align 8
  br label %293

30:                                               ; preds = %21, %2
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %8, align 8
  store i64 0, i64* %9, align 8
  br label %35

35:                                               ; preds = %60, %30
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %36, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %35
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @ngx_strcmp(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %42
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @ngx_strncmp(i8* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50, %42
  br label %79

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %9, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %9, align 8
  br label %35

63:                                               ; preds = %35
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = call %struct.TYPE_9__* @ngx_array_push(%struct.TYPE_13__* %65)
  store %struct.TYPE_9__* %66, %struct.TYPE_9__** %8, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %68 = icmp eq %struct.TYPE_9__* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i8** null, i8*** %3, align 8
  br label %293

70:                                               ; preds = %63
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  store i32 2, i32* %72, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %74, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  store %struct.TYPE_9__* %78, %struct.TYPE_9__** %8, align 8
  br label %79

79:                                               ; preds = %70, %58
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %80

80:                                               ; preds = %148, %79
  %81 = load i64, i64* %9, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ult i64 %81, %85
  br i1 %86, label %87, label %151

87:                                               ; preds = %80
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %89 = load i64, i64* %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %94 = load i64, i64* %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %92, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 61
  br i1 %102, label %103, label %106

103:                                              ; preds = %87
  %104 = load i64, i64* %10, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %10, align 8
  br label %148

106:                                              ; preds = %87
  %107 = load i8**, i8*** @ngx_os_environ, align 8
  store i8** %107, i8*** %6, align 8
  br label %108

108:                                              ; preds = %144, %106
  %109 = load i8**, i8*** %6, align 8
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %147

112:                                              ; preds = %108
  %113 = load i8**, i8*** %6, align 8
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %116 = load i64, i64* %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %121 = load i64, i64* %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @ngx_strncmp(i8* %114, i8* %119, i32 %124)
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %143

127:                                              ; preds = %112
  %128 = load i8**, i8*** %6, align 8
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %131 = load i64, i64* %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %129, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 61
  br i1 %139, label %140, label %143

140:                                              ; preds = %127
  %141 = load i64, i64* %10, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %10, align 8
  br label %147

143:                                              ; preds = %127, %112
  br label %144

144:                                              ; preds = %143
  %145 = load i8**, i8*** %6, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i32 1
  store i8** %146, i8*** %6, align 8
  br label %108

147:                                              ; preds = %140, %108
  br label %148

148:                                              ; preds = %147, %103
  %149 = load i64, i64* %9, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %9, align 8
  br label %80

151:                                              ; preds = %80
  %152 = load i64*, i64** %5, align 8
  %153 = icmp ne i64* %152, null
  br i1 %153, label %154, label %171

154:                                              ; preds = %151
  %155 = load i64*, i64** %5, align 8
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* %10, align 8
  %158 = add i64 %156, %157
  %159 = add i64 %158, 1
  %160 = mul i64 %159, 8
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i8** @ngx_alloc(i64 %160, i32 %163)
  store i8** %164, i8*** %7, align 8
  %165 = load i8**, i8*** %7, align 8
  %166 = icmp eq i8** %165, null
  br i1 %166, label %167, label %168

167:                                              ; preds = %154
  store i8** null, i8*** %3, align 8
  br label %293

168:                                              ; preds = %154
  %169 = load i64, i64* %10, align 8
  %170 = load i64*, i64** %5, align 8
  store i64 %169, i64* %170, align 8
  br label %197

171:                                              ; preds = %151
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call %struct.TYPE_10__* @ngx_pool_cleanup_add(i32 %174, i32 0)
  store %struct.TYPE_10__* %175, %struct.TYPE_10__** %12, align 8
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %177 = icmp eq %struct.TYPE_10__* %176, null
  br i1 %177, label %178, label %179

178:                                              ; preds = %171
  store i8** null, i8*** %3, align 8
  br label %293

179:                                              ; preds = %171
  %180 = load i64, i64* %10, align 8
  %181 = add i64 %180, 1
  %182 = mul i64 %181, 8
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i8** @ngx_alloc(i64 %182, i32 %185)
  store i8** %186, i8*** %7, align 8
  %187 = load i8**, i8*** %7, align 8
  %188 = icmp eq i8** %187, null
  br i1 %188, label %189, label %190

189:                                              ; preds = %179
  store i8** null, i8*** %3, align 8
  br label %293

190:                                              ; preds = %179
  %191 = load i32, i32* @ngx_cleanup_environment, align 4
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 8
  %194 = load i8**, i8*** %7, align 8
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 0
  store i8** %194, i8*** %196, align 8
  br label %197

197:                                              ; preds = %190, %168
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %198

198:                                              ; preds = %277, %197
  %199 = load i64, i64* %9, align 8
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp ult i64 %199, %203
  br i1 %204, label %205, label %280

205:                                              ; preds = %198
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %207 = load i64, i64* %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  %210 = load i8*, i8** %209, align 8
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %212 = load i64, i64* %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %210, i64 %216
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp eq i32 %219, 61
  br i1 %220, label %221, label %231

221:                                              ; preds = %205
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %223 = load i64, i64* %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  %227 = load i8**, i8*** %7, align 8
  %228 = load i64, i64* %10, align 8
  %229 = add i64 %228, 1
  store i64 %229, i64* %10, align 8
  %230 = getelementptr inbounds i8*, i8** %227, i64 %228
  store i8* %226, i8** %230, align 8
  br label %277

231:                                              ; preds = %205
  %232 = load i8**, i8*** @ngx_os_environ, align 8
  store i8** %232, i8*** %6, align 8
  br label %233

233:                                              ; preds = %273, %231
  %234 = load i8**, i8*** %6, align 8
  %235 = load i8*, i8** %234, align 8
  %236 = icmp ne i8* %235, null
  br i1 %236, label %237, label %276

237:                                              ; preds = %233
  %238 = load i8**, i8*** %6, align 8
  %239 = load i8*, i8** %238, align 8
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %241 = load i64, i64* %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 0
  %244 = load i8*, i8** %243, align 8
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %246 = load i64, i64* %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = call i64 @ngx_strncmp(i8* %239, i8* %244, i32 %249)
  %251 = icmp eq i64 %250, 0
  br i1 %251, label %252, label %272

252:                                              ; preds = %237
  %253 = load i8**, i8*** %6, align 8
  %254 = load i8*, i8** %253, align 8
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %256 = load i64, i64* %9, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8, i8* %254, i64 %260
  %262 = load i8, i8* %261, align 1
  %263 = sext i8 %262 to i32
  %264 = icmp eq i32 %263, 61
  br i1 %264, label %265, label %272

265:                                              ; preds = %252
  %266 = load i8**, i8*** %6, align 8
  %267 = load i8*, i8** %266, align 8
  %268 = load i8**, i8*** %7, align 8
  %269 = load i64, i64* %10, align 8
  %270 = add i64 %269, 1
  store i64 %270, i64* %10, align 8
  %271 = getelementptr inbounds i8*, i8** %268, i64 %269
  store i8* %267, i8** %271, align 8
  br label %276

272:                                              ; preds = %252, %237
  br label %273

273:                                              ; preds = %272
  %274 = load i8**, i8*** %6, align 8
  %275 = getelementptr inbounds i8*, i8** %274, i32 1
  store i8** %275, i8*** %6, align 8
  br label %233

276:                                              ; preds = %265, %233
  br label %277

277:                                              ; preds = %276, %221
  %278 = load i64, i64* %9, align 8
  %279 = add i64 %278, 1
  store i64 %279, i64* %9, align 8
  br label %198

280:                                              ; preds = %198
  %281 = load i8**, i8*** %7, align 8
  %282 = load i64, i64* %10, align 8
  %283 = getelementptr inbounds i8*, i8** %281, i64 %282
  store i8* null, i8** %283, align 8
  %284 = load i64*, i64** %5, align 8
  %285 = icmp eq i64* %284, null
  br i1 %285, label %286, label %291

286:                                              ; preds = %280
  %287 = load i8**, i8*** %7, align 8
  %288 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 0
  store i8** %287, i8*** %289, align 8
  %290 = load i8**, i8*** %7, align 8
  store i8** %290, i8*** @environ, align 8
  br label %291

291:                                              ; preds = %286, %280
  %292 = load i8**, i8*** %7, align 8
  store i8** %292, i8*** %3, align 8
  br label %293

293:                                              ; preds = %291, %189, %178, %167, %69, %26
  %294 = load i8**, i8*** %3, align 8
  ret i8** %294
}

declare dso_local i64 @ngx_get_conf(i32, i32) #1

declare dso_local i64 @ngx_strcmp(i8*, i8*) #1

declare dso_local i64 @ngx_strncmp(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_9__* @ngx_array_push(%struct.TYPE_13__*) #1

declare dso_local i8** @ngx_alloc(i64, i32) #1

declare dso_local %struct.TYPE_10__* @ngx_pool_cleanup_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
