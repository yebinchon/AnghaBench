; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_bodyfilterby.c_ngx_http_lua_body_filter_param_set.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_bodyfilterby.c_ngx_http_lua_body_filter_param_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_15__*, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i64, i64, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_19__*, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { %struct.TYPE_18__* }

@.str = private unnamed_addr constant [10 x i8] c"index: %d\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"bad index: %d\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"mark the buf as consumed: %d\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"bad chunk data type: %s\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_lua_body_filter_param_set(i32* %0, %struct.TYPE_15__* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca %struct.TYPE_16__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  store i32 0, i32* %14, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @luaL_checkint(i32* %19, i32 2)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @dd(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 2
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 (i32*, i8*, ...) @luaL_error(i32* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  store i32 %31, i32* %4, align 4
  br label %353

32:                                               ; preds = %25, %3
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %34 = load i32, i32* @ngx_http_lua_module, align 4
  %35 = call %struct.TYPE_16__* @ngx_http_get_module_main_conf(%struct.TYPE_15__* %33, i32 %34)
  store %struct.TYPE_16__* %35, %struct.TYPE_16__** %18, align 8
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %132

38:                                               ; preds = %32
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @lua_toboolean(i32* %39, i32 3)
  store i32 %40, i32* %13, align 4
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %42, align 8
  store %struct.TYPE_18__* %43, %struct.TYPE_18__** %17, align 8
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %81

46:                                               ; preds = %38
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  store %struct.TYPE_18__* %49, %struct.TYPE_18__** %16, align 8
  br label %50

50:                                               ; preds = %76, %46
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %52 = icmp ne %struct.TYPE_18__* %51, null
  br i1 %52, label %53, label %80

53:                                               ; preds = %50
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %55, align 8
  %57 = icmp eq %struct.TYPE_18__* %56, null
  br i1 %57, label %58, label %75

58:                                               ; preds = %53
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = icmp eq %struct.TYPE_15__* %59, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  br label %74

69:                                               ; preds = %58
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 1
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %69, %64
  br label %80

75:                                               ; preds = %53
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %78, align 8
  store %struct.TYPE_18__* %79, %struct.TYPE_18__** %16, align 8
  br label %50

80:                                               ; preds = %74, %50
  br label %131

81:                                               ; preds = %38
  store i32 0, i32* %10, align 4
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  store %struct.TYPE_18__* %82, %struct.TYPE_18__** %16, align 8
  br label %83

83:                                               ; preds = %124, %81
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %85 = icmp ne %struct.TYPE_18__* %84, null
  br i1 %85, label %86, label %128

86:                                               ; preds = %83
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %88, align 8
  store %struct.TYPE_19__* %89, %struct.TYPE_19__** %15, align 8
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %86
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  store i32 0, i32* %96, align 8
  store i32 1, i32* %10, align 4
  br label %97

97:                                               ; preds = %94, %86
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 1
  store i32 0, i32* %104, align 4
  store i32 1, i32* %10, align 4
  br label %105

105:                                              ; preds = %102, %97
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %123

108:                                              ; preds = %105
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %111, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %108
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %118 = call i32 @ngx_buf_in_memory(%struct.TYPE_19__* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %116
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 4
  store i32 1, i32* %122, align 8
  br label %123

123:                                              ; preds = %120, %116, %108, %105
  br label %124

124:                                              ; preds = %123
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %126, align 8
  store %struct.TYPE_18__* %127, %struct.TYPE_18__** %16, align 8
  br label %83

128:                                              ; preds = %83
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  store i32 0, i32* %130, align 4
  br label %131

131:                                              ; preds = %128, %80
  store i32 0, i32* %4, align 4
  br label %353

132:                                              ; preds = %32
  %133 = load i32*, i32** %5, align 8
  %134 = call i32 @lua_type(i32* %133, i32 3)
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  switch i32 %135, label %186 [
    i32 129, label %136
    i32 130, label %136
    i32 131, label %140
    i32 128, label %183
  ]

136:                                              ; preds = %132, %132
  %137 = load i32*, i32** %5, align 8
  %138 = call i64 @lua_tolstring(i32* %137, i32 3, i64* %12)
  %139 = inttoptr i64 %138 to i32*
  store i32* %139, i32** %11, align 8
  br label %192

140:                                              ; preds = %132
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %142, align 8
  store %struct.TYPE_18__* %143, %struct.TYPE_18__** %17, align 8
  store i32 0, i32* %13, align 4
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  store %struct.TYPE_18__* %144, %struct.TYPE_18__** %16, align 8
  br label %145

145:                                              ; preds = %178, %140
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %147 = icmp ne %struct.TYPE_18__* %146, null
  br i1 %147, label %148, label %182

148:                                              ; preds = %145
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %150, align 8
  store %struct.TYPE_19__* %151, %struct.TYPE_19__** %15, align 8
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %148
  store i32 1, i32* %14, align 4
  br label %157

157:                                              ; preds = %156, %148
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %167, label %162

162:                                              ; preds = %157
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162, %157
  store i32 1, i32* %13, align 4
  br label %168

168:                                              ; preds = %167, %162
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %170 = call i64 @ngx_buf_size(%struct.TYPE_19__* %169)
  %171 = trunc i64 %170 to i32
  %172 = call i32 @dd(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %171)
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 3
  store i64 %175, i64* %177, align 8
  br label %178

178:                                              ; preds = %168
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %180, align 8
  store %struct.TYPE_18__* %181, %struct.TYPE_18__** %16, align 8
  br label %145

182:                                              ; preds = %145
  br label %291

183:                                              ; preds = %132
  %184 = load i32*, i32** %5, align 8
  %185 = call i64 @ngx_http_lua_calc_strlen_in_table(i32* %184, i32 3, i32 3, i32 1)
  store i64 %185, i64* %12, align 8
  store i32* null, i32** %11, align 8
  br label %192

186:                                              ; preds = %132
  %187 = load i32*, i32** %5, align 8
  %188 = load i32*, i32** %5, align 8
  %189 = load i32, i32* %8, align 4
  %190 = call i32 @lua_typename(i32* %188, i32 %189)
  %191 = call i32 (i32*, i8*, ...) @luaL_error(i32* %187, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %190)
  store i32 %191, i32* %4, align 4
  br label %353

192:                                              ; preds = %183, %136
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %194, align 8
  store %struct.TYPE_18__* %195, %struct.TYPE_18__** %17, align 8
  store i32 0, i32* %13, align 4
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  store %struct.TYPE_18__* %196, %struct.TYPE_18__** %16, align 8
  br label %197

197:                                              ; preds = %236, %192
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %199 = icmp ne %struct.TYPE_18__* %198, null
  br i1 %199, label %200, label %240

200:                                              ; preds = %197
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %202, align 8
  store %struct.TYPE_19__* %203, %struct.TYPE_19__** %15, align 8
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 5
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %200
  store i32 1, i32* %14, align 4
  br label %209

209:                                              ; preds = %208, %200
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %219, label %214

214:                                              ; preds = %209
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %214, %209
  store i32 1, i32* %13, align 4
  br label %220

220:                                              ; preds = %219, %214
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %222, align 8
  %224 = call i64 @ngx_buf_size(%struct.TYPE_19__* %223)
  %225 = trunc i64 %224 to i32
  %226 = call i32 @dd(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %225)
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 2
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_19__*, %struct.TYPE_19__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 3
  store i64 %231, i64* %235, align 8
  br label %236

236:                                              ; preds = %220
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %238, align 8
  store %struct.TYPE_18__* %239, %struct.TYPE_18__** %16, align 8
  br label %197

240:                                              ; preds = %197
  %241 = load i64, i64* %12, align 8
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %240
  br label %291

244:                                              ; preds = %240
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 2
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 1
  %255 = load i64, i64* %12, align 8
  %256 = call %struct.TYPE_18__* @ngx_http_lua_chain_get_free_buf(i32 %249, i32 %252, i32* %254, i64 %255)
  store %struct.TYPE_18__* %256, %struct.TYPE_18__** %16, align 8
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %258 = icmp eq %struct.TYPE_18__* %257, null
  br i1 %258, label %259, label %262

259:                                              ; preds = %244
  %260 = load i32*, i32** %5, align 8
  %261 = call i32 (i32*, i8*, ...) @luaL_error(i32* %260, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 %261, i32* %4, align 4
  br label %353

262:                                              ; preds = %244
  %263 = load i32, i32* %8, align 4
  %264 = icmp eq i32 %263, 128
  br i1 %264, label %265, label %277

265:                                              ; preds = %262
  %266 = load i32*, i32** %5, align 8
  %267 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %267, i32 0, i32 0
  %269 = load %struct.TYPE_19__*, %struct.TYPE_19__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %269, i32 0, i32 2
  %271 = load i64, i64* %270, align 8
  %272 = call i64 @ngx_http_lua_copy_str_in_table(i32* %266, i32 3, i64 %271)
  %273 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %274 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_19__*, %struct.TYPE_19__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %275, i32 0, i32 2
  store i64 %272, i64* %276, align 8
  br label %290

277:                                              ; preds = %262
  %278 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %279 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %278, i32 0, i32 0
  %280 = load %struct.TYPE_19__*, %struct.TYPE_19__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %280, i32 0, i32 3
  %282 = load i64, i64* %281, align 8
  %283 = load i32*, i32** %11, align 8
  %284 = load i64, i64* %12, align 8
  %285 = call i64 @ngx_copy(i64 %282, i32* %283, i64 %284)
  %286 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %287 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %286, i32 0, i32 0
  %288 = load %struct.TYPE_19__*, %struct.TYPE_19__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %288, i32 0, i32 2
  store i64 %285, i64* %289, align 8
  br label %290

290:                                              ; preds = %277, %265
  br label %291

291:                                              ; preds = %290, %243, %182
  %292 = load i32, i32* %13, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %297, label %294

294:                                              ; preds = %291
  %295 = load i32, i32* %14, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %349

297:                                              ; preds = %294, %291
  %298 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %299 = icmp eq %struct.TYPE_18__* %298, null
  br i1 %299, label %300, label %318

300:                                              ; preds = %297
  %301 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %301, i32 0, i32 2
  %303 = load %struct.TYPE_14__*, %struct.TYPE_14__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 8
  %309 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %309, i32 0, i32 1
  %311 = call %struct.TYPE_18__* @ngx_http_lua_chain_get_free_buf(i32 %305, i32 %308, i32* %310, i64 0)
  store %struct.TYPE_18__* %311, %struct.TYPE_18__** %16, align 8
  %312 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %313 = icmp eq %struct.TYPE_18__* %312, null
  br i1 %313, label %314, label %317

314:                                              ; preds = %300
  %315 = load i32*, i32** %5, align 8
  %316 = call i32 (i32*, i8*, ...) @luaL_error(i32* %315, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 %316, i32* %4, align 4
  br label %353

317:                                              ; preds = %300
  br label %318

318:                                              ; preds = %317, %297
  %319 = load i32, i32* %13, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %340

321:                                              ; preds = %318
  %322 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %323 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %322, i32 0, i32 0
  store i32 1, i32* %323, align 4
  %324 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %325 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %325, i32 0, i32 0
  %327 = load %struct.TYPE_15__*, %struct.TYPE_15__** %326, align 8
  %328 = icmp eq %struct.TYPE_15__* %324, %327
  br i1 %328, label %329, label %334

329:                                              ; preds = %321
  %330 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %331 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %330, i32 0, i32 0
  %332 = load %struct.TYPE_19__*, %struct.TYPE_19__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %332, i32 0, i32 0
  store i32 1, i32* %333, align 8
  br label %339

334:                                              ; preds = %321
  %335 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %336 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %335, i32 0, i32 0
  %337 = load %struct.TYPE_19__*, %struct.TYPE_19__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %337, i32 0, i32 1
  store i32 1, i32* %338, align 4
  br label %339

339:                                              ; preds = %334, %329
  br label %340

340:                                              ; preds = %339, %318
  %341 = load i32, i32* %14, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %348

343:                                              ; preds = %340
  %344 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %345 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %344, i32 0, i32 0
  %346 = load %struct.TYPE_19__*, %struct.TYPE_19__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %346, i32 0, i32 5
  store i32 1, i32* %347, align 4
  br label %348

348:                                              ; preds = %343, %340
  br label %349

349:                                              ; preds = %348, %294
  %350 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %351 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %352 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %351, i32 0, i32 0
  store %struct.TYPE_18__* %350, %struct.TYPE_18__** %352, align 8
  store i32 0, i32* %4, align 4
  br label %353

353:                                              ; preds = %349, %314, %259, %186, %131, %28
  %354 = load i32, i32* %4, align 4
  ret i32 %354
}

declare dso_local i32 @luaL_checkint(i32*, i32) #1

declare dso_local i32 @dd(i8*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local %struct.TYPE_16__* @ngx_http_get_module_main_conf(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @ngx_buf_in_memory(%struct.TYPE_19__*) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i64 @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i64 @ngx_buf_size(%struct.TYPE_19__*) #1

declare dso_local i64 @ngx_http_lua_calc_strlen_in_table(i32*, i32, i32, i32) #1

declare dso_local i32 @lua_typename(i32*, i32) #1

declare dso_local %struct.TYPE_18__* @ngx_http_lua_chain_get_free_buf(i32, i32, i32*, i64) #1

declare dso_local i64 @ngx_http_lua_copy_str_in_table(i32*, i32, i64) #1

declare dso_local i64 @ngx_copy(i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
