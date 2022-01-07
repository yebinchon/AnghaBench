; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_log.c_log_wrapper.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_log.c_log_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i8*, i32 }
%struct.TYPE_10__ = type { i8*, i8*, i8*, i64, i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"Snl\00", align 1
@NGX_INT_T_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"__tostring\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"expected table to have __tostring metamethod\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"string, number, boolean, or nil expected, got %s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"impossible to reach here\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"buffer error: %d > %d\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%s%*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i64, i32*)* @log_wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_wrapper(%struct.TYPE_9__* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_8__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %18, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %343

28:                                               ; preds = %4
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @lua_getstack(i32* %29, i32 1, %struct.TYPE_10__* %21)
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @lua_getinfo(i32* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %21)
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  store i32 0, i32* %41, align 8
  br label %76

42:                                               ; preds = %28
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %11, align 8
  br label %45

45:                                               ; preds = %64, %42
  %46 = load i8*, i8** %11, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %45
  %51 = load i8*, i8** %11, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 47
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load i8*, i8** %11, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 92
  br i1 %59, label %60, label %64

60:                                               ; preds = %55, %50
  %61 = load i8*, i8** %11, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i8* %62, i8** %63, align 8
  br label %64

64:                                               ; preds = %60, %55
  %65 = load i8*, i8** %11, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %11, align 8
  br label %45

67:                                               ; preds = %45
  %68 = load i8*, i8** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = ptrtoint i8* %68 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = trunc i64 %73 to i32
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  store i32 %74, i32* %75, align 8
  br label %76

76:                                               ; preds = %67, %40
  %77 = load i32*, i32** %9, align 8
  %78 = call i32 @lua_gettop(i32* %77)
  store i32 %78, i32* %14, align 4
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @NGX_INT_T_LEN, align 4
  %82 = add nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = add i64 %83, 4
  %85 = sub i64 %84, 1
  store i64 %85, i64* %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %76
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 76
  br i1 %96, label %97, label %106

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = call i64 @ngx_strlen(i8* %99)
  store i64 %100, i64* %18, align 8
  %101 = load i64, i64* %18, align 8
  %102 = add i64 %101, 5
  %103 = sub i64 %102, 1
  %104 = load i64, i64* %16, align 8
  %105 = add i64 %104, %103
  store i64 %105, i64* %16, align 8
  br label %106

106:                                              ; preds = %97, %91, %76
  store i32 1, i32* %15, align 4
  br label %107

107:                                              ; preds = %173, %106
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp sle i32 %108, %109
  br i1 %110, label %111, label %176

111:                                              ; preds = %107
  %112 = load i32*, i32** %9, align 8
  %113 = load i32, i32* %15, align 4
  %114 = call i32 @lua_type(i32* %112, i32 %113)
  store i32 %114, i32* %19, align 4
  %115 = load i32, i32* %19, align 4
  switch i32 %115, label %162 [
    i32 130, label %116
    i32 129, label %116
    i32 131, label %123
    i32 133, label %126
    i32 128, label %138
    i32 132, label %153
  ]

116:                                              ; preds = %111, %111
  %117 = load i32*, i32** %9, align 8
  %118 = load i32, i32* %15, align 4
  %119 = call i64 @lua_tolstring(i32* %117, i32 %118, i64* %17)
  %120 = load i64, i64* %17, align 8
  %121 = load i64, i64* %16, align 8
  %122 = add i64 %121, %120
  store i64 %122, i64* %16, align 8
  br label %172

123:                                              ; preds = %111
  %124 = load i64, i64* %16, align 8
  %125 = add i64 %124, 3
  store i64 %125, i64* %16, align 8
  br label %172

126:                                              ; preds = %111
  %127 = load i32*, i32** %9, align 8
  %128 = load i32, i32* %15, align 4
  %129 = call i32 @lua_toboolean(i32* %127, i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load i64, i64* %16, align 8
  %133 = add i64 %132, 4
  store i64 %133, i64* %16, align 8
  br label %137

134:                                              ; preds = %126
  %135 = load i64, i64* %16, align 8
  %136 = add i64 %135, 5
  store i64 %136, i64* %16, align 8
  br label %137

137:                                              ; preds = %134, %131
  br label %172

138:                                              ; preds = %111
  %139 = load i32*, i32** %9, align 8
  %140 = load i32, i32* %15, align 4
  %141 = call i32 @luaL_callmeta(i32* %139, i32 %140, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %138
  %144 = load i32*, i32** %9, align 8
  %145 = load i32, i32* %15, align 4
  %146 = call i32 @luaL_argerror(i32* %144, i32 %145, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  store i32 %146, i32* %5, align 4
  br label %343

147:                                              ; preds = %138
  %148 = load i32*, i32** %9, align 8
  %149 = call i64 @lua_tolstring(i32* %148, i32 -1, i64* %17)
  %150 = load i64, i64* %17, align 8
  %151 = load i64, i64* %16, align 8
  %152 = add i64 %151, %150
  store i64 %152, i64* %16, align 8
  br label %172

153:                                              ; preds = %111
  %154 = load i32*, i32** %9, align 8
  %155 = load i32, i32* %15, align 4
  %156 = call i32* @lua_touserdata(i32* %154, i32 %155)
  %157 = icmp eq i32* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load i64, i64* %16, align 8
  %160 = add i64 %159, 4
  store i64 %160, i64* %16, align 8
  br label %172

161:                                              ; preds = %153
  br label %173

162:                                              ; preds = %111
  %163 = load i32*, i32** %9, align 8
  %164 = load i32*, i32** %9, align 8
  %165 = load i32, i32* %19, align 4
  %166 = call i32 @lua_typename(i32* %164, i32 %165)
  %167 = call i8* @lua_pushfstring(i32* %163, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %166)
  store i8* %167, i8** %20, align 8
  %168 = load i32*, i32** %9, align 8
  %169 = load i32, i32* %15, align 4
  %170 = load i8*, i8** %20, align 8
  %171 = call i32 @luaL_argerror(i32* %168, i32 %169, i8* %170)
  store i32 %171, i32* %5, align 4
  br label %343

172:                                              ; preds = %158, %147, %137, %123, %116
  br label %173

173:                                              ; preds = %172, %161
  %174 = load i32, i32* %15, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %15, align 4
  br label %107

176:                                              ; preds = %107
  %177 = load i32*, i32** %9, align 8
  %178 = load i64, i64* %16, align 8
  %179 = call i8* @lua_newuserdata(i32* %177, i64 %178)
  store i8* %179, i8** %10, align 8
  %180 = load i8*, i8** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = sext i32 %184 to i64
  %186 = call i8* @ngx_copy(i8* %180, i8* %182, i64 %185)
  store i8* %186, i8** %11, align 8
  %187 = load i8*, i8** %11, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %188, i8** %11, align 8
  store i8 58, i8* %187, align 1
  %189 = load i8*, i8** %11, align 8
  %190 = load i32, i32* @NGX_INT_T_LEN, align 4
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 4
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %176
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  br label %200

197:                                              ; preds = %176
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  br label %200

200:                                              ; preds = %197, %194
  %201 = phi i64 [ %196, %194 ], [ %199, %197 ]
  %202 = call i8* @ngx_snprintf(i8* %189, i32 %190, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 %201)
  store i8* %202, i8** %11, align 8
  %203 = load i8*, i8** %11, align 8
  %204 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %204, i8** %11, align 8
  store i8 58, i8* %203, align 1
  %205 = load i8*, i8** %11, align 8
  %206 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %206, i8** %11, align 8
  store i8 32, i8* %205, align 1
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %208 = load i8*, i8** %207, align 8
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %232

212:                                              ; preds = %200
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %214 = load i8*, i8** %213, align 8
  %215 = load i8, i8* %214, align 1
  %216 = sext i8 %215 to i32
  %217 = icmp eq i32 %216, 76
  br i1 %217, label %218, label %232

218:                                              ; preds = %212
  %219 = load i8*, i8** %11, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %221 = load i8*, i8** %220, align 8
  %222 = load i64, i64* %18, align 8
  %223 = call i8* @ngx_copy(i8* %219, i8* %221, i64 %222)
  store i8* %223, i8** %11, align 8
  %224 = load i8*, i8** %11, align 8
  %225 = getelementptr inbounds i8, i8* %224, i32 1
  store i8* %225, i8** %11, align 8
  store i8 40, i8* %224, align 1
  %226 = load i8*, i8** %11, align 8
  %227 = getelementptr inbounds i8, i8* %226, i32 1
  store i8* %227, i8** %11, align 8
  store i8 41, i8* %226, align 1
  %228 = load i8*, i8** %11, align 8
  %229 = getelementptr inbounds i8, i8* %228, i32 1
  store i8* %229, i8** %11, align 8
  store i8 58, i8* %228, align 1
  %230 = load i8*, i8** %11, align 8
  %231 = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %231, i8** %11, align 8
  store i8 32, i8* %230, align 1
  br label %232

232:                                              ; preds = %218, %212, %200
  store i32 1, i32* %15, align 4
  br label %233

233:                                              ; preds = %308, %232
  %234 = load i32, i32* %15, align 4
  %235 = load i32, i32* %14, align 4
  %236 = icmp sle i32 %234, %235
  br i1 %236, label %237, label %311

237:                                              ; preds = %233
  %238 = load i32*, i32** %9, align 8
  %239 = load i32, i32* %15, align 4
  %240 = call i32 @lua_type(i32* %238, i32 %239)
  store i32 %240, i32* %19, align 4
  %241 = load i32, i32* %19, align 4
  switch i32 %241, label %304 [
    i32 130, label %242
    i32 129, label %242
    i32 131, label %251
    i32 133, label %258
    i32 128, label %284
    i32 132, label %295
  ]

242:                                              ; preds = %237, %237
  %243 = load i32*, i32** %9, align 8
  %244 = load i32, i32* %15, align 4
  %245 = call i64 @lua_tolstring(i32* %243, i32 %244, i64* %17)
  %246 = inttoptr i64 %245 to i8*
  store i8* %246, i8** %12, align 8
  %247 = load i8*, i8** %11, align 8
  %248 = load i8*, i8** %12, align 8
  %249 = load i64, i64* %17, align 8
  %250 = call i8* @ngx_copy(i8* %247, i8* %248, i64 %249)
  store i8* %250, i8** %11, align 8
  br label %307

251:                                              ; preds = %237
  %252 = load i8*, i8** %11, align 8
  %253 = getelementptr inbounds i8, i8* %252, i32 1
  store i8* %253, i8** %11, align 8
  store i8 110, i8* %252, align 1
  %254 = load i8*, i8** %11, align 8
  %255 = getelementptr inbounds i8, i8* %254, i32 1
  store i8* %255, i8** %11, align 8
  store i8 105, i8* %254, align 1
  %256 = load i8*, i8** %11, align 8
  %257 = getelementptr inbounds i8, i8* %256, i32 1
  store i8* %257, i8** %11, align 8
  store i8 108, i8* %256, align 1
  br label %307

258:                                              ; preds = %237
  %259 = load i32*, i32** %9, align 8
  %260 = load i32, i32* %15, align 4
  %261 = call i32 @lua_toboolean(i32* %259, i32 %260)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %272

263:                                              ; preds = %258
  %264 = load i8*, i8** %11, align 8
  %265 = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %265, i8** %11, align 8
  store i8 116, i8* %264, align 1
  %266 = load i8*, i8** %11, align 8
  %267 = getelementptr inbounds i8, i8* %266, i32 1
  store i8* %267, i8** %11, align 8
  store i8 114, i8* %266, align 1
  %268 = load i8*, i8** %11, align 8
  %269 = getelementptr inbounds i8, i8* %268, i32 1
  store i8* %269, i8** %11, align 8
  store i8 117, i8* %268, align 1
  %270 = load i8*, i8** %11, align 8
  %271 = getelementptr inbounds i8, i8* %270, i32 1
  store i8* %271, i8** %11, align 8
  store i8 101, i8* %270, align 1
  br label %283

272:                                              ; preds = %258
  %273 = load i8*, i8** %11, align 8
  %274 = getelementptr inbounds i8, i8* %273, i32 1
  store i8* %274, i8** %11, align 8
  store i8 102, i8* %273, align 1
  %275 = load i8*, i8** %11, align 8
  %276 = getelementptr inbounds i8, i8* %275, i32 1
  store i8* %276, i8** %11, align 8
  store i8 97, i8* %275, align 1
  %277 = load i8*, i8** %11, align 8
  %278 = getelementptr inbounds i8, i8* %277, i32 1
  store i8* %278, i8** %11, align 8
  store i8 108, i8* %277, align 1
  %279 = load i8*, i8** %11, align 8
  %280 = getelementptr inbounds i8, i8* %279, i32 1
  store i8* %280, i8** %11, align 8
  store i8 115, i8* %279, align 1
  %281 = load i8*, i8** %11, align 8
  %282 = getelementptr inbounds i8, i8* %281, i32 1
  store i8* %282, i8** %11, align 8
  store i8 101, i8* %281, align 1
  br label %283

283:                                              ; preds = %272, %263
  br label %307

284:                                              ; preds = %237
  %285 = load i32*, i32** %9, align 8
  %286 = load i32, i32* %15, align 4
  %287 = call i32 @luaL_callmeta(i32* %285, i32 %286, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %288 = load i32*, i32** %9, align 8
  %289 = call i64 @lua_tolstring(i32* %288, i32 -1, i64* %17)
  %290 = inttoptr i64 %289 to i8*
  store i8* %290, i8** %12, align 8
  %291 = load i8*, i8** %11, align 8
  %292 = load i8*, i8** %12, align 8
  %293 = load i64, i64* %17, align 8
  %294 = call i8* @ngx_copy(i8* %291, i8* %292, i64 %293)
  store i8* %294, i8** %11, align 8
  br label %307

295:                                              ; preds = %237
  %296 = load i8*, i8** %11, align 8
  %297 = getelementptr inbounds i8, i8* %296, i32 1
  store i8* %297, i8** %11, align 8
  store i8 110, i8* %296, align 1
  %298 = load i8*, i8** %11, align 8
  %299 = getelementptr inbounds i8, i8* %298, i32 1
  store i8* %299, i8** %11, align 8
  store i8 117, i8* %298, align 1
  %300 = load i8*, i8** %11, align 8
  %301 = getelementptr inbounds i8, i8* %300, i32 1
  store i8* %301, i8** %11, align 8
  store i8 108, i8* %300, align 1
  %302 = load i8*, i8** %11, align 8
  %303 = getelementptr inbounds i8, i8* %302, i32 1
  store i8* %303, i8** %11, align 8
  store i8 108, i8* %302, align 1
  br label %307

304:                                              ; preds = %237
  %305 = load i32*, i32** %9, align 8
  %306 = call i32 (i32*, i8*, ...) @luaL_error(i32* %305, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  store i32 %306, i32* %5, align 4
  br label %343

307:                                              ; preds = %295, %284, %283, %251, %242
  br label %308

308:                                              ; preds = %307
  %309 = load i32, i32* %15, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %15, align 4
  br label %233

311:                                              ; preds = %233
  %312 = load i8*, i8** %11, align 8
  %313 = load i8*, i8** %10, align 8
  %314 = ptrtoint i8* %312 to i64
  %315 = ptrtoint i8* %313 to i64
  %316 = sub i64 %314, %315
  %317 = load i64, i64* %16, align 8
  %318 = trunc i64 %317 to i32
  %319 = sext i32 %318 to i64
  %320 = icmp sgt i64 %316, %319
  br i1 %320, label %321, label %332

321:                                              ; preds = %311
  %322 = load i32*, i32** %9, align 8
  %323 = load i8*, i8** %11, align 8
  %324 = load i8*, i8** %10, align 8
  %325 = ptrtoint i8* %323 to i64
  %326 = ptrtoint i8* %324 to i64
  %327 = sub i64 %325, %326
  %328 = trunc i64 %327 to i32
  %329 = load i64, i64* %16, align 8
  %330 = trunc i64 %329 to i32
  %331 = call i32 (i32*, i8*, ...) @luaL_error(i32* %322, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %328, i32 %330)
  store i32 %331, i32* %5, align 4
  br label %343

332:                                              ; preds = %311
  %333 = load i64, i64* %8, align 8
  %334 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %335 = load i8*, i8** %7, align 8
  %336 = load i8*, i8** %11, align 8
  %337 = load i8*, i8** %10, align 8
  %338 = ptrtoint i8* %336 to i64
  %339 = ptrtoint i8* %337 to i64
  %340 = sub i64 %338, %339
  %341 = load i8*, i8** %10, align 8
  %342 = call i32 @ngx_log_error(i64 %333, %struct.TYPE_9__* %334, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %335, i64 %340, i8* %341)
  store i32 0, i32* %5, align 4
  br label %343

343:                                              ; preds = %332, %321, %304, %162, %143, %27
  %344 = load i32, i32* %5, align 4
  ret i32 %344
}

declare dso_local i32 @lua_getstack(i32*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @lua_getinfo(i32*, i8*, %struct.TYPE_10__*) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i64 @ngx_strlen(i8*) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i64 @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @luaL_callmeta(i32*, i32, i8*) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #1

declare dso_local i32* @lua_touserdata(i32*, i32) #1

declare dso_local i8* @lua_pushfstring(i32*, i8*, i32) #1

declare dso_local i32 @lua_typename(i32*, i32) #1

declare dso_local i8* @lua_newuserdata(i32*, i64) #1

declare dso_local i8* @ngx_copy(i8*, i8*, i64) #1

declare dso_local i8* @ngx_snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i32 @ngx_log_error(i64, %struct.TYPE_9__*, i32, i8*, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
