; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http.c_ngx_http_block.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http.c_ngx_http_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { i64 }
%struct.TYPE_45__ = type { %struct.TYPE_39__*, i32, i64, %struct.TYPE_44__*, i32 }
%struct.TYPE_39__ = type { %struct.TYPE_40__** }
%struct.TYPE_40__ = type { i64, i64, %struct.TYPE_41__* }
%struct.TYPE_41__ = type { i64 (%struct.TYPE_45__*)*, i8* (%struct.TYPE_45__*, %struct.TYPE_43__*)*, i64 (%struct.TYPE_45__*)*, i32* (%struct.TYPE_45__*)*, i32* (%struct.TYPE_45__*)*, %struct.TYPE_43__* (%struct.TYPE_45__*)* }
%struct.TYPE_43__ = type { i32, %struct.TYPE_37__ }
%struct.TYPE_37__ = type { i64, %struct.TYPE_42__** }
%struct.TYPE_42__ = type { %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i32** }
%struct.TYPE_44__ = type { %struct.TYPE_43__**, i32**, i32** }

@.str = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_HTTP_MODULE = common dso_local global i64 0, align 8
@ngx_http_max_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_MAIN_CONF = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8
@ngx_http_core_module = common dso_local global %struct.TYPE_38__ zeroinitializer, align 8
@ngx_http_dummy_input_body_filter = common dso_local global i32 0, align 4
@ngx_http_top_input_body_filter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_45__*, i32*, i8*)* @ngx_http_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_block(%struct.TYPE_45__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_45__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_45__, align 8
  %13 = alloca %struct.TYPE_41__*, align 8
  %14 = alloca %struct.TYPE_44__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_42__**, align 8
  %17 = alloca %struct.TYPE_43__*, align 8
  store %struct.TYPE_45__* %0, %struct.TYPE_45__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_44__**
  %20 = load %struct.TYPE_44__*, %struct.TYPE_44__** %19, align 8
  %21 = icmp ne %struct.TYPE_44__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %537

23:                                               ; preds = %3
  %24 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @ngx_pcalloc(i32 %26, i32 24)
  %28 = bitcast i8* %27 to %struct.TYPE_44__*
  store %struct.TYPE_44__* %28, %struct.TYPE_44__** %14, align 8
  %29 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %30 = icmp eq %struct.TYPE_44__* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %32, i8** %4, align 8
  br label %537

33:                                               ; preds = %23
  %34 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = bitcast i8* %35 to %struct.TYPE_44__**
  store %struct.TYPE_44__* %34, %struct.TYPE_44__** %36, align 8
  %37 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_39__*, %struct.TYPE_39__** %38, align 8
  %40 = load i64, i64* @NGX_HTTP_MODULE, align 8
  %41 = call i32 @ngx_count_modules(%struct.TYPE_39__* %39, i64 %40)
  store i32 %41, i32* @ngx_http_max_module, align 4
  %42 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ngx_http_max_module, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 8, %46
  %48 = trunc i64 %47 to i32
  %49 = call i8* @ngx_pcalloc(i32 %44, i32 %48)
  %50 = bitcast i8* %49 to %struct.TYPE_43__**
  %51 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %51, i32 0, i32 0
  store %struct.TYPE_43__** %50, %struct.TYPE_43__*** %52, align 8
  %53 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %54, align 8
  %56 = icmp eq %struct.TYPE_43__** %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %33
  %58 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %58, i8** %4, align 8
  br label %537

59:                                               ; preds = %33
  %60 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @ngx_http_max_module, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 8, %64
  %66 = trunc i64 %65 to i32
  %67 = call i8* @ngx_pcalloc(i32 %62, i32 %66)
  %68 = bitcast i8* %67 to i32**
  %69 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %69, i32 0, i32 2
  store i32** %68, i32*** %70, align 8
  %71 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %71, i32 0, i32 2
  %73 = load i32**, i32*** %72, align 8
  %74 = icmp eq i32** %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %59
  %76 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %76, i8** %4, align 8
  br label %537

77:                                               ; preds = %59
  %78 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @ngx_http_max_module, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 8, %82
  %84 = trunc i64 %83 to i32
  %85 = call i8* @ngx_pcalloc(i32 %80, i32 %84)
  %86 = bitcast i8* %85 to i32**
  %87 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %87, i32 0, i32 1
  store i32** %86, i32*** %88, align 8
  %89 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %89, i32 0, i32 1
  %91 = load i32**, i32*** %90, align 8
  %92 = icmp eq i32** %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %77
  %94 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %94, i8** %4, align 8
  br label %537

95:                                               ; preds = %77
  store i64 0, i64* %10, align 8
  br label %96

96:                                               ; preds = %219, %95
  %97 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_39__*, %struct.TYPE_39__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %100, align 8
  %102 = load i64, i64* %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %101, i64 %102
  %104 = load %struct.TYPE_40__*, %struct.TYPE_40__** %103, align 8
  %105 = icmp ne %struct.TYPE_40__* %104, null
  br i1 %105, label %106, label %222

106:                                              ; preds = %96
  %107 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_39__*, %struct.TYPE_39__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %110, align 8
  %112 = load i64, i64* %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %111, i64 %112
  %114 = load %struct.TYPE_40__*, %struct.TYPE_40__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @NGX_HTTP_MODULE, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %106
  br label %219

120:                                              ; preds = %106
  %121 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_39__*, %struct.TYPE_39__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %124, align 8
  %126 = load i64, i64* %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %125, i64 %126
  %128 = load %struct.TYPE_40__*, %struct.TYPE_40__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_41__*, %struct.TYPE_41__** %129, align 8
  store %struct.TYPE_41__* %130, %struct.TYPE_41__** %13, align 8
  %131 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_39__*, %struct.TYPE_39__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %134, align 8
  %136 = load i64, i64* %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %135, i64 %136
  %138 = load %struct.TYPE_40__*, %struct.TYPE_40__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %9, align 8
  %141 = load %struct.TYPE_41__*, %struct.TYPE_41__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %141, i32 0, i32 5
  %143 = load %struct.TYPE_43__* (%struct.TYPE_45__*)*, %struct.TYPE_43__* (%struct.TYPE_45__*)** %142, align 8
  %144 = icmp ne %struct.TYPE_43__* (%struct.TYPE_45__*)* %143, null
  br i1 %144, label %145, label %166

145:                                              ; preds = %120
  %146 = load %struct.TYPE_41__*, %struct.TYPE_41__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %146, i32 0, i32 5
  %148 = load %struct.TYPE_43__* (%struct.TYPE_45__*)*, %struct.TYPE_43__* (%struct.TYPE_45__*)** %147, align 8
  %149 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %150 = call %struct.TYPE_43__* %148(%struct.TYPE_45__* %149)
  %151 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %152 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %152, align 8
  %154 = load i64, i64* %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_43__*, %struct.TYPE_43__** %153, i64 %154
  store %struct.TYPE_43__* %150, %struct.TYPE_43__** %155, align 8
  %156 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %157, align 8
  %159 = load i64, i64* %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_43__*, %struct.TYPE_43__** %158, i64 %159
  %161 = load %struct.TYPE_43__*, %struct.TYPE_43__** %160, align 8
  %162 = icmp eq %struct.TYPE_43__* %161, null
  br i1 %162, label %163, label %165

163:                                              ; preds = %145
  %164 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %164, i8** %4, align 8
  br label %537

165:                                              ; preds = %145
  br label %166

166:                                              ; preds = %165, %120
  %167 = load %struct.TYPE_41__*, %struct.TYPE_41__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %167, i32 0, i32 4
  %169 = load i32* (%struct.TYPE_45__*)*, i32* (%struct.TYPE_45__*)** %168, align 8
  %170 = icmp ne i32* (%struct.TYPE_45__*)* %169, null
  br i1 %170, label %171, label %192

171:                                              ; preds = %166
  %172 = load %struct.TYPE_41__*, %struct.TYPE_41__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %172, i32 0, i32 4
  %174 = load i32* (%struct.TYPE_45__*)*, i32* (%struct.TYPE_45__*)** %173, align 8
  %175 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %176 = call i32* %174(%struct.TYPE_45__* %175)
  %177 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %178 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %177, i32 0, i32 2
  %179 = load i32**, i32*** %178, align 8
  %180 = load i64, i64* %9, align 8
  %181 = getelementptr inbounds i32*, i32** %179, i64 %180
  store i32* %176, i32** %181, align 8
  %182 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %183 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %182, i32 0, i32 2
  %184 = load i32**, i32*** %183, align 8
  %185 = load i64, i64* %9, align 8
  %186 = getelementptr inbounds i32*, i32** %184, i64 %185
  %187 = load i32*, i32** %186, align 8
  %188 = icmp eq i32* %187, null
  br i1 %188, label %189, label %191

189:                                              ; preds = %171
  %190 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %190, i8** %4, align 8
  br label %537

191:                                              ; preds = %171
  br label %192

192:                                              ; preds = %191, %166
  %193 = load %struct.TYPE_41__*, %struct.TYPE_41__** %13, align 8
  %194 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %193, i32 0, i32 3
  %195 = load i32* (%struct.TYPE_45__*)*, i32* (%struct.TYPE_45__*)** %194, align 8
  %196 = icmp ne i32* (%struct.TYPE_45__*)* %195, null
  br i1 %196, label %197, label %218

197:                                              ; preds = %192
  %198 = load %struct.TYPE_41__*, %struct.TYPE_41__** %13, align 8
  %199 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %198, i32 0, i32 3
  %200 = load i32* (%struct.TYPE_45__*)*, i32* (%struct.TYPE_45__*)** %199, align 8
  %201 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %202 = call i32* %200(%struct.TYPE_45__* %201)
  %203 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %204 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %203, i32 0, i32 1
  %205 = load i32**, i32*** %204, align 8
  %206 = load i64, i64* %9, align 8
  %207 = getelementptr inbounds i32*, i32** %205, i64 %206
  store i32* %202, i32** %207, align 8
  %208 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %209 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %208, i32 0, i32 1
  %210 = load i32**, i32*** %209, align 8
  %211 = load i64, i64* %9, align 8
  %212 = getelementptr inbounds i32*, i32** %210, i64 %211
  %213 = load i32*, i32** %212, align 8
  %214 = icmp eq i32* %213, null
  br i1 %214, label %215, label %217

215:                                              ; preds = %197
  %216 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %216, i8** %4, align 8
  br label %537

217:                                              ; preds = %197
  br label %218

218:                                              ; preds = %217, %192
  br label %219

219:                                              ; preds = %218, %119
  %220 = load i64, i64* %10, align 8
  %221 = add i64 %220, 1
  store i64 %221, i64* %10, align 8
  br label %96

222:                                              ; preds = %96
  %223 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %224 = bitcast %struct.TYPE_45__* %12 to i8*
  %225 = bitcast %struct.TYPE_45__* %223 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %224, i8* align 8 %225, i64 40, i1 false)
  %226 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %227 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %227, i32 0, i32 3
  store %struct.TYPE_44__* %226, %struct.TYPE_44__** %228, align 8
  store i64 0, i64* %10, align 8
  br label %229

229:                                              ; preds = %280, %222
  %230 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_39__*, %struct.TYPE_39__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %233, align 8
  %235 = load i64, i64* %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %234, i64 %235
  %237 = load %struct.TYPE_40__*, %struct.TYPE_40__** %236, align 8
  %238 = icmp ne %struct.TYPE_40__* %237, null
  br i1 %238, label %239, label %283

239:                                              ; preds = %229
  %240 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_39__*, %struct.TYPE_39__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %243, align 8
  %245 = load i64, i64* %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %244, i64 %245
  %247 = load %struct.TYPE_40__*, %struct.TYPE_40__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @NGX_HTTP_MODULE, align 8
  %251 = icmp ne i64 %249, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %239
  br label %280

253:                                              ; preds = %239
  %254 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_39__*, %struct.TYPE_39__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %257, align 8
  %259 = load i64, i64* %10, align 8
  %260 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %258, i64 %259
  %261 = load %struct.TYPE_40__*, %struct.TYPE_40__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %261, i32 0, i32 2
  %263 = load %struct.TYPE_41__*, %struct.TYPE_41__** %262, align 8
  store %struct.TYPE_41__* %263, %struct.TYPE_41__** %13, align 8
  %264 = load %struct.TYPE_41__*, %struct.TYPE_41__** %13, align 8
  %265 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %264, i32 0, i32 0
  %266 = load i64 (%struct.TYPE_45__*)*, i64 (%struct.TYPE_45__*)** %265, align 8
  %267 = icmp ne i64 (%struct.TYPE_45__*)* %266, null
  br i1 %267, label %268, label %279

268:                                              ; preds = %253
  %269 = load %struct.TYPE_41__*, %struct.TYPE_41__** %13, align 8
  %270 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %269, i32 0, i32 0
  %271 = load i64 (%struct.TYPE_45__*)*, i64 (%struct.TYPE_45__*)** %270, align 8
  %272 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %273 = call i64 %271(%struct.TYPE_45__* %272)
  %274 = load i64, i64* @NGX_OK, align 8
  %275 = icmp ne i64 %273, %274
  br i1 %275, label %276, label %278

276:                                              ; preds = %268
  %277 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %277, i8** %4, align 8
  br label %537

278:                                              ; preds = %268
  br label %279

279:                                              ; preds = %278, %253
  br label %280

280:                                              ; preds = %279, %252
  %281 = load i64, i64* %10, align 8
  %282 = add i64 %281, 1
  store i64 %282, i64* %10, align 8
  br label %229

283:                                              ; preds = %229
  %284 = load i64, i64* @NGX_HTTP_MODULE, align 8
  %285 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %285, i32 0, i32 2
  store i64 %284, i64* %286, align 8
  %287 = load i32, i32* @NGX_HTTP_MAIN_CONF, align 4
  %288 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %288, i32 0, i32 1
  store i32 %287, i32* %289, align 8
  %290 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %291 = call i8* @ngx_conf_parse(%struct.TYPE_45__* %290, i32* null)
  store i8* %291, i8** %8, align 8
  %292 = load i8*, i8** %8, align 8
  %293 = load i8*, i8** @NGX_CONF_OK, align 8
  %294 = icmp ne i8* %292, %293
  br i1 %294, label %295, label %296

295:                                              ; preds = %283
  br label %532

296:                                              ; preds = %283
  %297 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %298 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %297, i32 0, i32 0
  %299 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %298, align 8
  %300 = load i64, i64* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @ngx_http_core_module, i32 0, i32 0), align 8
  %301 = getelementptr inbounds %struct.TYPE_43__*, %struct.TYPE_43__** %299, i64 %300
  %302 = load %struct.TYPE_43__*, %struct.TYPE_43__** %301, align 8
  store %struct.TYPE_43__* %302, %struct.TYPE_43__** %17, align 8
  %303 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %304 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %304, i32 0, i32 1
  %306 = load %struct.TYPE_42__**, %struct.TYPE_42__*** %305, align 8
  store %struct.TYPE_42__** %306, %struct.TYPE_42__*** %16, align 8
  store i64 0, i64* %10, align 8
  br label %307

307:                                              ; preds = %384, %296
  %308 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %308, i32 0, i32 0
  %310 = load %struct.TYPE_39__*, %struct.TYPE_39__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %310, i32 0, i32 0
  %312 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %311, align 8
  %313 = load i64, i64* %10, align 8
  %314 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %312, i64 %313
  %315 = load %struct.TYPE_40__*, %struct.TYPE_40__** %314, align 8
  %316 = icmp ne %struct.TYPE_40__* %315, null
  br i1 %316, label %317, label %387

317:                                              ; preds = %307
  %318 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %318, i32 0, i32 0
  %320 = load %struct.TYPE_39__*, %struct.TYPE_39__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %320, i32 0, i32 0
  %322 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %321, align 8
  %323 = load i64, i64* %10, align 8
  %324 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %322, i64 %323
  %325 = load %struct.TYPE_40__*, %struct.TYPE_40__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* @NGX_HTTP_MODULE, align 8
  %329 = icmp ne i64 %327, %328
  br i1 %329, label %330, label %331

330:                                              ; preds = %317
  br label %384

331:                                              ; preds = %317
  %332 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %332, i32 0, i32 0
  %334 = load %struct.TYPE_39__*, %struct.TYPE_39__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %334, i32 0, i32 0
  %336 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %335, align 8
  %337 = load i64, i64* %10, align 8
  %338 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %336, i64 %337
  %339 = load %struct.TYPE_40__*, %struct.TYPE_40__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %339, i32 0, i32 2
  %341 = load %struct.TYPE_41__*, %struct.TYPE_41__** %340, align 8
  store %struct.TYPE_41__* %341, %struct.TYPE_41__** %13, align 8
  %342 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %342, i32 0, i32 0
  %344 = load %struct.TYPE_39__*, %struct.TYPE_39__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %344, i32 0, i32 0
  %346 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %345, align 8
  %347 = load i64, i64* %10, align 8
  %348 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %346, i64 %347
  %349 = load %struct.TYPE_40__*, %struct.TYPE_40__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %349, i32 0, i32 1
  %351 = load i64, i64* %350, align 8
  store i64 %351, i64* %9, align 8
  %352 = load %struct.TYPE_41__*, %struct.TYPE_41__** %13, align 8
  %353 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %352, i32 0, i32 1
  %354 = load i8* (%struct.TYPE_45__*, %struct.TYPE_43__*)*, i8* (%struct.TYPE_45__*, %struct.TYPE_43__*)** %353, align 8
  %355 = icmp ne i8* (%struct.TYPE_45__*, %struct.TYPE_43__*)* %354, null
  br i1 %355, label %356, label %373

356:                                              ; preds = %331
  %357 = load %struct.TYPE_41__*, %struct.TYPE_41__** %13, align 8
  %358 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %357, i32 0, i32 1
  %359 = load i8* (%struct.TYPE_45__*, %struct.TYPE_43__*)*, i8* (%struct.TYPE_45__*, %struct.TYPE_43__*)** %358, align 8
  %360 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %361 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %362 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %361, i32 0, i32 0
  %363 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %362, align 8
  %364 = load i64, i64* %9, align 8
  %365 = getelementptr inbounds %struct.TYPE_43__*, %struct.TYPE_43__** %363, i64 %364
  %366 = load %struct.TYPE_43__*, %struct.TYPE_43__** %365, align 8
  %367 = call i8* %359(%struct.TYPE_45__* %360, %struct.TYPE_43__* %366)
  store i8* %367, i8** %8, align 8
  %368 = load i8*, i8** %8, align 8
  %369 = load i8*, i8** @NGX_CONF_OK, align 8
  %370 = icmp ne i8* %368, %369
  br i1 %370, label %371, label %372

371:                                              ; preds = %356
  br label %532

372:                                              ; preds = %356
  br label %373

373:                                              ; preds = %372, %331
  %374 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %375 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %376 = load %struct.TYPE_41__*, %struct.TYPE_41__** %13, align 8
  %377 = load i64, i64* %9, align 8
  %378 = call i8* @ngx_http_merge_servers(%struct.TYPE_45__* %374, %struct.TYPE_43__* %375, %struct.TYPE_41__* %376, i64 %377)
  store i8* %378, i8** %8, align 8
  %379 = load i8*, i8** %8, align 8
  %380 = load i8*, i8** @NGX_CONF_OK, align 8
  %381 = icmp ne i8* %379, %380
  br i1 %381, label %382, label %383

382:                                              ; preds = %373
  br label %532

383:                                              ; preds = %373
  br label %384

384:                                              ; preds = %383, %330
  %385 = load i64, i64* %10, align 8
  %386 = add i64 %385, 1
  store i64 %386, i64* %10, align 8
  br label %307

387:                                              ; preds = %307
  store i64 0, i64* %11, align 8
  br label %388

388:                                              ; preds = %427, %387
  %389 = load i64, i64* %11, align 8
  %390 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %391 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %390, i32 0, i32 1
  %392 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %391, i32 0, i32 0
  %393 = load i64, i64* %392, align 8
  %394 = icmp ult i64 %389, %393
  br i1 %394, label %395, label %430

395:                                              ; preds = %388
  %396 = load %struct.TYPE_42__**, %struct.TYPE_42__*** %16, align 8
  %397 = load i64, i64* %11, align 8
  %398 = getelementptr inbounds %struct.TYPE_42__*, %struct.TYPE_42__** %396, i64 %397
  %399 = load %struct.TYPE_42__*, %struct.TYPE_42__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %399, i32 0, i32 0
  %401 = load %struct.TYPE_36__*, %struct.TYPE_36__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %401, i32 0, i32 0
  %403 = load i32**, i32*** %402, align 8
  %404 = load i64, i64* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @ngx_http_core_module, i32 0, i32 0), align 8
  %405 = getelementptr inbounds i32*, i32** %403, i64 %404
  %406 = load i32*, i32** %405, align 8
  store i32* %406, i32** %15, align 8
  %407 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %408 = load %struct.TYPE_42__**, %struct.TYPE_42__*** %16, align 8
  %409 = load i64, i64* %11, align 8
  %410 = getelementptr inbounds %struct.TYPE_42__*, %struct.TYPE_42__** %408, i64 %409
  %411 = load %struct.TYPE_42__*, %struct.TYPE_42__** %410, align 8
  %412 = load i32*, i32** %15, align 8
  %413 = call i64 @ngx_http_init_locations(%struct.TYPE_45__* %407, %struct.TYPE_42__* %411, i32* %412)
  %414 = load i64, i64* @NGX_OK, align 8
  %415 = icmp ne i64 %413, %414
  br i1 %415, label %416, label %418

416:                                              ; preds = %395
  %417 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %417, i8** %4, align 8
  br label %537

418:                                              ; preds = %395
  %419 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %420 = load i32*, i32** %15, align 8
  %421 = call i64 @ngx_http_init_static_location_trees(%struct.TYPE_45__* %419, i32* %420)
  %422 = load i64, i64* @NGX_OK, align 8
  %423 = icmp ne i64 %421, %422
  br i1 %423, label %424, label %426

424:                                              ; preds = %418
  %425 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %425, i8** %4, align 8
  br label %537

426:                                              ; preds = %418
  br label %427

427:                                              ; preds = %426
  %428 = load i64, i64* %11, align 8
  %429 = add i64 %428, 1
  store i64 %429, i64* %11, align 8
  br label %388

430:                                              ; preds = %388
  %431 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %432 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %433 = call i64 @ngx_http_init_phases(%struct.TYPE_45__* %431, %struct.TYPE_43__* %432)
  %434 = load i64, i64* @NGX_OK, align 8
  %435 = icmp ne i64 %433, %434
  br i1 %435, label %436, label %438

436:                                              ; preds = %430
  %437 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %437, i8** %4, align 8
  br label %537

438:                                              ; preds = %430
  %439 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %440 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %441 = call i64 @ngx_http_init_headers_in_hash(%struct.TYPE_45__* %439, %struct.TYPE_43__* %440)
  %442 = load i64, i64* @NGX_OK, align 8
  %443 = icmp ne i64 %441, %442
  br i1 %443, label %444, label %446

444:                                              ; preds = %438
  %445 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %445, i8** %4, align 8
  br label %537

446:                                              ; preds = %438
  store i64 0, i64* %10, align 8
  br label %447

447:                                              ; preds = %498, %446
  %448 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %449 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %448, i32 0, i32 0
  %450 = load %struct.TYPE_39__*, %struct.TYPE_39__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %450, i32 0, i32 0
  %452 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %451, align 8
  %453 = load i64, i64* %10, align 8
  %454 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %452, i64 %453
  %455 = load %struct.TYPE_40__*, %struct.TYPE_40__** %454, align 8
  %456 = icmp ne %struct.TYPE_40__* %455, null
  br i1 %456, label %457, label %501

457:                                              ; preds = %447
  %458 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %459 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %458, i32 0, i32 0
  %460 = load %struct.TYPE_39__*, %struct.TYPE_39__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %460, i32 0, i32 0
  %462 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %461, align 8
  %463 = load i64, i64* %10, align 8
  %464 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %462, i64 %463
  %465 = load %struct.TYPE_40__*, %struct.TYPE_40__** %464, align 8
  %466 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %465, i32 0, i32 0
  %467 = load i64, i64* %466, align 8
  %468 = load i64, i64* @NGX_HTTP_MODULE, align 8
  %469 = icmp ne i64 %467, %468
  br i1 %469, label %470, label %471

470:                                              ; preds = %457
  br label %498

471:                                              ; preds = %457
  %472 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %473 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %472, i32 0, i32 0
  %474 = load %struct.TYPE_39__*, %struct.TYPE_39__** %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %474, i32 0, i32 0
  %476 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %475, align 8
  %477 = load i64, i64* %10, align 8
  %478 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %476, i64 %477
  %479 = load %struct.TYPE_40__*, %struct.TYPE_40__** %478, align 8
  %480 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %479, i32 0, i32 2
  %481 = load %struct.TYPE_41__*, %struct.TYPE_41__** %480, align 8
  store %struct.TYPE_41__* %481, %struct.TYPE_41__** %13, align 8
  %482 = load %struct.TYPE_41__*, %struct.TYPE_41__** %13, align 8
  %483 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %482, i32 0, i32 2
  %484 = load i64 (%struct.TYPE_45__*)*, i64 (%struct.TYPE_45__*)** %483, align 8
  %485 = icmp ne i64 (%struct.TYPE_45__*)* %484, null
  br i1 %485, label %486, label %497

486:                                              ; preds = %471
  %487 = load %struct.TYPE_41__*, %struct.TYPE_41__** %13, align 8
  %488 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %487, i32 0, i32 2
  %489 = load i64 (%struct.TYPE_45__*)*, i64 (%struct.TYPE_45__*)** %488, align 8
  %490 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %491 = call i64 %489(%struct.TYPE_45__* %490)
  %492 = load i64, i64* @NGX_OK, align 8
  %493 = icmp ne i64 %491, %492
  br i1 %493, label %494, label %496

494:                                              ; preds = %486
  %495 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %495, i8** %4, align 8
  br label %537

496:                                              ; preds = %486
  br label %497

497:                                              ; preds = %496, %471
  br label %498

498:                                              ; preds = %497, %470
  %499 = load i64, i64* %10, align 8
  %500 = add i64 %499, 1
  store i64 %500, i64* %10, align 8
  br label %447

501:                                              ; preds = %447
  %502 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %503 = call i64 @ngx_http_variables_init_vars(%struct.TYPE_45__* %502)
  %504 = load i64, i64* @NGX_OK, align 8
  %505 = icmp ne i64 %503, %504
  br i1 %505, label %506, label %508

506:                                              ; preds = %501
  %507 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %507, i8** %4, align 8
  br label %537

508:                                              ; preds = %501
  %509 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %510 = bitcast %struct.TYPE_45__* %509 to i8*
  %511 = bitcast %struct.TYPE_45__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %510, i8* align 8 %511, i64 40, i1 false)
  %512 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %513 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %514 = call i64 @ngx_http_init_phase_handlers(%struct.TYPE_45__* %512, %struct.TYPE_43__* %513)
  %515 = load i64, i64* @NGX_OK, align 8
  %516 = icmp ne i64 %514, %515
  br i1 %516, label %517, label %519

517:                                              ; preds = %508
  %518 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %518, i8** %4, align 8
  br label %537

519:                                              ; preds = %508
  %520 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %521 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %522 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %523 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %522, i32 0, i32 0
  %524 = load i32, i32* %523, align 8
  %525 = call i64 @ngx_http_optimize_servers(%struct.TYPE_45__* %520, %struct.TYPE_43__* %521, i32 %524)
  %526 = load i64, i64* @NGX_OK, align 8
  %527 = icmp ne i64 %525, %526
  br i1 %527, label %528, label %530

528:                                              ; preds = %519
  %529 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %529, i8** %4, align 8
  br label %537

530:                                              ; preds = %519
  %531 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %531, i8** %4, align 8
  br label %537

532:                                              ; preds = %382, %371, %295
  %533 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %534 = bitcast %struct.TYPE_45__* %533 to i8*
  %535 = bitcast %struct.TYPE_45__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %534, i8* align 8 %535, i64 40, i1 false)
  %536 = load i8*, i8** %8, align 8
  store i8* %536, i8** %4, align 8
  br label %537

537:                                              ; preds = %532, %530, %528, %517, %506, %494, %444, %436, %424, %416, %276, %215, %189, %163, %93, %75, %57, %31, %22
  %538 = load i8*, i8** %4, align 8
  ret i8* %538
}

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_count_modules(%struct.TYPE_39__*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @ngx_conf_parse(%struct.TYPE_45__*, i32*) #1

declare dso_local i8* @ngx_http_merge_servers(%struct.TYPE_45__*, %struct.TYPE_43__*, %struct.TYPE_41__*, i64) #1

declare dso_local i64 @ngx_http_init_locations(%struct.TYPE_45__*, %struct.TYPE_42__*, i32*) #1

declare dso_local i64 @ngx_http_init_static_location_trees(%struct.TYPE_45__*, i32*) #1

declare dso_local i64 @ngx_http_init_phases(%struct.TYPE_45__*, %struct.TYPE_43__*) #1

declare dso_local i64 @ngx_http_init_headers_in_hash(%struct.TYPE_45__*, %struct.TYPE_43__*) #1

declare dso_local i64 @ngx_http_variables_init_vars(%struct.TYPE_45__*) #1

declare dso_local i64 @ngx_http_init_phase_handlers(%struct.TYPE_45__*, %struct.TYPE_43__*) #1

declare dso_local i64 @ngx_http_optimize_servers(%struct.TYPE_45__*, %struct.TYPE_43__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
