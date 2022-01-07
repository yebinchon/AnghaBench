; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_script.c_ngx_http_script_file_code.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_script.c_ngx_http_script_file_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i64 }
%struct.TYPE_27__ = type { i8*, i8*, %struct.TYPE_28__*, %struct.TYPE_25__* }
%struct.TYPE_28__ = type { %struct.TYPE_22__*, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i32, i64 }
%struct.TYPE_24__ = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_29__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"http script file op %p \22%V\22\00", align 1
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_script_exit = common dso_local global i8* null, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i8* null, align 8
@NGX_ENOENT = common dso_local global i64 0, align 8
@NGX_ENOTDIR = common dso_local global i64 0, align 8
@NGX_ENAMETOOLONG = common dso_local global i64 0, align 8
@NGX_LOG_CRIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%s \22%s\22 failed\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"http script file op false\00", align 1
@ngx_http_variable_null_value = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@ngx_http_variable_true_value = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_script_file_code(%struct.TYPE_27__* %0) #0 {
  %2 = alloca %struct.TYPE_27__*, align 8
  %3 = alloca %struct.TYPE_23__, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_24__, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %2, align 8
  %9 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i64 -1
  store %struct.TYPE_25__* %12, %struct.TYPE_25__** %7, align 8
  %13 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %16, %struct.TYPE_26__** %8, align 8
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr i8, i8* %19, i64 4
  store i8* %20, i8** %18, align 8
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %23, 1
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 1
  store i64 %24, i64* %25, align 8
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %31, align 8
  store %struct.TYPE_28__* %32, %struct.TYPE_28__** %4, align 8
  %33 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @ngx_log_debug2(i32 %33, i32 %38, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %43, %struct.TYPE_23__* %3)
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %46 = load i32, i32* @ngx_http_core_module, align 4
  %47 = call %struct.TYPE_29__* @ngx_http_get_module_loc_conf(%struct.TYPE_28__* %45, i32 %46)
  store %struct.TYPE_29__* %47, %struct.TYPE_29__** %6, align 8
  %48 = call i32 @ngx_memzero(%struct.TYPE_24__* %5, i32 64)
  %49 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 12
  store i32 %51, i32* %52, align 8
  %53 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 11
  store i32 %55, i32* %56, align 4
  %57 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 10
  store i32 %59, i32* %60, align 8
  %61 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 9
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 8
  store i32 %68, i32* %69, align 8
  %70 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 7
  store i32 %72, i32* %73, align 4
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %75 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %76 = call i64 @ngx_http_set_disable_symlinks(%struct.TYPE_28__* %74, %struct.TYPE_29__* %75, %struct.TYPE_23__* %3, %struct.TYPE_24__* %5)
  %77 = load i64, i64* @NGX_OK, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %1
  %80 = load i8*, i8** @ngx_http_script_exit, align 8
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load i8*, i8** @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  %84 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  br label %226

86:                                               ; preds = %1
  %87 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @ngx_open_cached_file(i32 %89, %struct.TYPE_23__* %3, %struct.TYPE_24__* %5, i32 %92)
  %94 = load i64, i64* @NGX_OK, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %144

96:                                               ; preds = %86
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %96
  %101 = load i8*, i8** @ngx_http_script_exit, align 8
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  %104 = load i8*, i8** @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  br label %226

107:                                              ; preds = %96
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @NGX_ENOENT, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %137

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @NGX_ENOTDIR, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %137

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @NGX_ENAMETOOLONG, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %137

122:                                              ; preds = %117
  %123 = load i32, i32* @NGX_LOG_CRIT, align 4
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @ngx_log_error(i32 %123, i32 %128, i64 %130, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %132, i32 %135)
  br label %137

137:                                              ; preds = %122, %117, %112, %107
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  switch i32 %140, label %143 [
    i32 128, label %141
    i32 135, label %141
    i32 133, label %141
    i32 134, label %141
    i32 129, label %142
    i32 132, label %142
    i32 130, label %142
    i32 131, label %142
  ]

141:                                              ; preds = %137, %137, %137, %137
  br label %213

142:                                              ; preds = %137, %137, %137, %137
  br label %223

143:                                              ; preds = %137
  br label %213

144:                                              ; preds = %86
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  switch i32 %147, label %212 [
    i32 128, label %148
    i32 129, label %154
    i32 135, label %160
    i32 132, label %166
    i32 133, label %172
    i32 130, label %186
    i32 134, label %200
    i32 131, label %206
  ]

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  br label %223

153:                                              ; preds = %148
  br label %213

154:                                              ; preds = %144
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  br label %213

159:                                              ; preds = %154
  br label %223

160:                                              ; preds = %144
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %160
  br label %223

165:                                              ; preds = %160
  br label %213

166:                                              ; preds = %144
  %167 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %166
  br label %213

171:                                              ; preds = %166
  br label %223

172:                                              ; preds = %144
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %184, label %176

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %180, %176, %172
  br label %223

185:                                              ; preds = %180
  br label %213

186:                                              ; preds = %144
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 5
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %198, label %190

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %198, label %194

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %194, %190, %186
  br label %213

199:                                              ; preds = %194
  br label %223

200:                                              ; preds = %144
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %200
  br label %223

205:                                              ; preds = %200
  br label %213

206:                                              ; preds = %144
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %206
  br label %213

211:                                              ; preds = %206
  br label %223

212:                                              ; preds = %144
  br label %213

213:                                              ; preds = %212, %210, %205, %198, %185, %170, %165, %158, %153, %143, %141
  %214 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %215 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_22__*, %struct.TYPE_22__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @ngx_log_debug0(i32 %214, i32 %219, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %221 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %222 = bitcast %struct.TYPE_25__* %221 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %222, i8* align 8 bitcast (%struct.TYPE_25__* @ngx_http_variable_null_value to i8*), i64 16, i1 false)
  br label %226

223:                                              ; preds = %211, %204, %199, %184, %171, %164, %159, %152, %142
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %225 = bitcast %struct.TYPE_25__* %224 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %225, i8* align 8 bitcast (%struct.TYPE_25__* @ngx_http_variable_true_value to i8*), i64 16, i1 false)
  br label %226

226:                                              ; preds = %223, %213, %100, %79
  ret void
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i8*, %struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_29__* @ngx_http_get_module_loc_conf(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_24__*, i32) #1

declare dso_local i64 @ngx_http_set_disable_symlinks(%struct.TYPE_28__*, %struct.TYPE_29__*, %struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i64 @ngx_open_cached_file(i32, %struct.TYPE_23__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i64, i8*, i32, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
