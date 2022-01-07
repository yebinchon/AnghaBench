; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_script.c_ngx_http_lua_script_compile.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_script.c_ngx_http_lua_script_compile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i64, i8* }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"the closing bracket in \22%V\22 variable is missing\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"attempt to use named capturing variable \22%V\22 (named captures not supported yet)\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"lua script: invalid capturing variable name found in \22%V\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @ngx_http_lua_script_compile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_script_compile(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.TYPE_10__, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i64 0, i64* %9, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = call i64 @ngx_http_lua_script_init_arrays(%struct.TYPE_11__* %10)
  %12 = load i64, i64* @NGX_OK, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @NGX_ERROR, align 4
  store i32 %15, i32* %2, align 4
  br label %358

16:                                               ; preds = %1
  store i64 0, i64* %6, align 8
  br label %17

17:                                               ; preds = %344, %293, %86, %16
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %18, %23
  br i1 %24, label %25, label %345

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 36
  br i1 %36, label %37, label %294

37:                                               ; preds = %25
  %38 = load i64, i64* %6, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %6, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %39, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %348

47:                                               ; preds = %37
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 36
  br i1 %57, label %58, label %87

58:                                               ; preds = %47
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load i64, i64* %6, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  store i8* %65, i8** %66, align 8
  %67 = load i64, i64* %6, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %69, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %73 = load i64, i64* %6, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %73, %78
  %80 = zext i1 %79 to i32
  %81 = call i64 @ngx_http_lua_script_add_copy_code(%struct.TYPE_11__* %72, %struct.TYPE_10__* %5, i32 %80)
  %82 = load i64, i64* @NGX_OK, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %58
  %85 = load i32, i32* @NGX_ERROR, align 4
  store i32 %85, i32* %2, align 4
  br label %358

86:                                               ; preds = %58
  br label %17

87:                                               ; preds = %47
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = load i64, i64* %6, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp sge i32 %96, 48
  br i1 %97, label %98, label %110

98:                                               ; preds = %87
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = load i64, i64* %6, align 8
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp sle i32 %107, 57
  br i1 %108, label %109, label %110

109:                                              ; preds = %98
  store i32 1, i32* %8, align 4
  store i64 0, i64* %9, align 8
  br label %111

110:                                              ; preds = %98, %87
  store i32 0, i32* %8, align 4
  br label %111

111:                                              ; preds = %110, %109
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = load i64, i64* %6, align 8
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 123
  br i1 %121, label %122, label %164

122:                                              ; preds = %111
  store i64 1, i64* %7, align 8
  %123 = load i64, i64* %6, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %6, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %124, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %122
  br label %348

132:                                              ; preds = %122
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = load i64, i64* %6, align 8
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp sge i32 %141, 48
  br i1 %142, label %143, label %155

143:                                              ; preds = %132
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = load i64, i64* %6, align 8
  %150 = getelementptr inbounds i8, i8* %148, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp sle i32 %152, 57
  br i1 %153, label %154, label %155

154:                                              ; preds = %143
  store i32 1, i32* %8, align 4
  store i64 0, i64* %9, align 8
  br label %155

155:                                              ; preds = %154, %143, %132
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = load i64, i64* %6, align 8
  %162 = getelementptr inbounds i8, i8* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  store i8* %162, i8** %163, align 8
  br label %173

164:                                              ; preds = %111
  store i64 0, i64* %7, align 8
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  %170 = load i64, i64* %6, align 8
  %171 = getelementptr inbounds i8, i8* %169, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  store i8* %171, i8** %172, align 8
  br label %173

173:                                              ; preds = %164, %155
  br label %174

174:                                              ; preds = %250, %173
  %175 = load i64, i64* %6, align 8
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp ult i64 %175, %180
  br i1 %181, label %182, label %256

182:                                              ; preds = %174
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 1
  %187 = load i8*, i8** %186, align 8
  %188 = load i64, i64* %6, align 8
  %189 = getelementptr inbounds i8, i8* %187, i64 %188
  %190 = load i8, i8* %189, align 1
  store i8 %190, i8* %4, align 1
  %191 = load i8, i8* %4, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp eq i32 %192, 125
  br i1 %193, label %194, label %200

194:                                              ; preds = %182
  %195 = load i64, i64* %7, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = load i64, i64* %6, align 8
  %199 = add i64 %198, 1
  store i64 %199, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %256

200:                                              ; preds = %194, %182
  %201 = load i32, i32* %8, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %220

203:                                              ; preds = %200
  %204 = load i8, i8* %4, align 1
  %205 = sext i8 %204 to i32
  %206 = icmp sge i32 %205, 48
  br i1 %206, label %207, label %219

207:                                              ; preds = %203
  %208 = load i8, i8* %4, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp sle i32 %209, 57
  br i1 %210, label %211, label %219

211:                                              ; preds = %207
  %212 = load i64, i64* %9, align 8
  %213 = mul i64 %212, 10
  %214 = load i8, i8* %4, align 1
  %215 = sext i8 %214 to i32
  %216 = sub nsw i32 %215, 48
  %217 = sext i32 %216 to i64
  %218 = add i64 %213, %217
  store i64 %218, i64* %9, align 8
  br label %250

219:                                              ; preds = %207, %203
  br label %256

220:                                              ; preds = %200
  %221 = load i8, i8* %4, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp sge i32 %222, 65
  br i1 %223, label %224, label %228

224:                                              ; preds = %220
  %225 = load i8, i8* %4, align 1
  %226 = sext i8 %225 to i32
  %227 = icmp sle i32 %226, 90
  br i1 %227, label %248, label %228

228:                                              ; preds = %224, %220
  %229 = load i8, i8* %4, align 1
  %230 = sext i8 %229 to i32
  %231 = icmp sge i32 %230, 97
  br i1 %231, label %232, label %236

232:                                              ; preds = %228
  %233 = load i8, i8* %4, align 1
  %234 = sext i8 %233 to i32
  %235 = icmp sle i32 %234, 122
  br i1 %235, label %248, label %236

236:                                              ; preds = %232, %228
  %237 = load i8, i8* %4, align 1
  %238 = sext i8 %237 to i32
  %239 = icmp sge i32 %238, 48
  br i1 %239, label %240, label %244

240:                                              ; preds = %236
  %241 = load i8, i8* %4, align 1
  %242 = sext i8 %241 to i32
  %243 = icmp sle i32 %242, 57
  br i1 %243, label %248, label %244

244:                                              ; preds = %240, %236
  %245 = load i8, i8* %4, align 1
  %246 = sext i8 %245 to i32
  %247 = icmp eq i32 %246, 95
  br i1 %247, label %248, label %249

248:                                              ; preds = %244, %240, %232, %224
  br label %250

249:                                              ; preds = %244
  br label %256

250:                                              ; preds = %248, %211
  %251 = load i64, i64* %6, align 8
  %252 = add i64 %251, 1
  store i64 %252, i64* %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = add i64 %254, 1
  store i64 %255, i64* %253, align 8
  br label %174

256:                                              ; preds = %249, %219, %197, %174
  %257 = load i64, i64* %7, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %266

259:                                              ; preds = %256
  %260 = load i32, i32* @NGX_LOG_ERR, align 4
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @ngx_log_error(i32 %260, i32 %263, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %5)
  %265 = load i32, i32* @NGX_ERROR, align 4
  store i32 %265, i32* %2, align 4
  br label %358

266:                                              ; preds = %256
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %266
  br label %348

271:                                              ; preds = %266
  %272 = load i32, i32* %8, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %281, label %274

274:                                              ; preds = %271
  %275 = load i32, i32* @NGX_LOG_ERR, align 4
  %276 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @ngx_log_error(i32 %275, i32 %278, i32 0, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_10__* %5)
  %280 = load i32, i32* @NGX_ERROR, align 4
  store i32 %280, i32* %2, align 4
  br label %358

281:                                              ; preds = %271
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %283, align 4
  %286 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %287 = load i64, i64* %9, align 8
  %288 = call i64 @ngx_http_lua_script_add_capture_code(%struct.TYPE_11__* %286, i64 %287)
  %289 = load i64, i64* @NGX_OK, align 8
  %290 = icmp ne i64 %288, %289
  br i1 %290, label %291, label %293

291:                                              ; preds = %281
  %292 = load i32, i32* @NGX_ERROR, align 4
  store i32 %292, i32* %2, align 4
  br label %358

293:                                              ; preds = %281
  br label %17

294:                                              ; preds = %25
  %295 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 0
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i32 0, i32 1
  %299 = load i8*, i8** %298, align 8
  %300 = load i64, i64* %6, align 8
  %301 = getelementptr inbounds i8, i8* %299, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  store i8* %301, i8** %302, align 8
  br label %303

303:                                              ; preds = %323, %294
  %304 = load i64, i64* %6, align 8
  %305 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i32 0, i32 0
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = icmp ult i64 %304, %309
  br i1 %310, label %311, label %329

311:                                              ; preds = %303
  %312 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 0
  %314 = load %struct.TYPE_10__*, %struct.TYPE_10__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 1
  %316 = load i8*, i8** %315, align 8
  %317 = load i64, i64* %6, align 8
  %318 = getelementptr inbounds i8, i8* %316, i64 %317
  %319 = load i8, i8* %318, align 1
  %320 = sext i8 %319 to i32
  %321 = icmp eq i32 %320, 36
  br i1 %321, label %322, label %323

322:                                              ; preds = %311
  br label %329

323:                                              ; preds = %311
  %324 = load i64, i64* %6, align 8
  %325 = add i64 %324, 1
  store i64 %325, i64* %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = add i64 %327, 1
  store i64 %328, i64* %326, align 8
  br label %303

329:                                              ; preds = %322, %303
  %330 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %331 = load i64, i64* %6, align 8
  %332 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %332, i32 0, i32 0
  %334 = load %struct.TYPE_10__*, %struct.TYPE_10__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = icmp eq i64 %331, %336
  %338 = zext i1 %337 to i32
  %339 = call i64 @ngx_http_lua_script_add_copy_code(%struct.TYPE_11__* %330, %struct.TYPE_10__* %5, i32 %338)
  %340 = load i64, i64* @NGX_OK, align 8
  %341 = icmp ne i64 %339, %340
  br i1 %341, label %342, label %344

342:                                              ; preds = %329
  %343 = load i32, i32* @NGX_ERROR, align 4
  store i32 %343, i32* %2, align 4
  br label %358

344:                                              ; preds = %329
  br label %17

345:                                              ; preds = %17
  %346 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %347 = call i32 @ngx_http_lua_script_done(%struct.TYPE_11__* %346)
  store i32 %347, i32* %2, align 4
  br label %358

348:                                              ; preds = %270, %131, %46
  %349 = load i32, i32* @NGX_LOG_ERR, align 4
  %350 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %351 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %353, i32 0, i32 0
  %355 = load %struct.TYPE_10__*, %struct.TYPE_10__** %354, align 8
  %356 = call i32 @ngx_log_error(i32 %349, i32 %352, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_10__* %355)
  %357 = load i32, i32* @NGX_ERROR, align 4
  store i32 %357, i32* %2, align 4
  br label %358

358:                                              ; preds = %348, %345, %342, %291, %274, %259, %84, %14
  %359 = load i32, i32* %2, align 4
  ret i32 %359
}

declare dso_local i64 @ngx_http_lua_script_init_arrays(%struct.TYPE_11__*) #1

declare dso_local i64 @ngx_http_lua_script_add_copy_code(%struct.TYPE_11__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_10__*) #1

declare dso_local i64 @ngx_http_lua_script_add_capture_code(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @ngx_http_lua_script_done(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
