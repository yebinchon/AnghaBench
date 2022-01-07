; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_referer_module.c_ngx_http_referer_merge_conf.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_referer_module.c_ngx_http_referer_merge_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32*, i32, i32 }
%struct.TYPE_28__ = type { i32, i32, i32, %struct.TYPE_21__*, i32, i32, %struct.TYPE_25__, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_26__, %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_26__ = type { i64, i32 }
%struct.TYPE_24__ = type { i64, i32 }
%struct.TYPE_23__ = type { i64, i32 }
%struct.TYPE_25__ = type { i32*, i32*, i32 }
%struct.TYPE_30__ = type { i8*, i32*, i32*, i32, i32, i32, i32 }
%struct.TYPE_27__ = type { i32, i64 }
%struct.TYPE_29__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64, %struct.TYPE_27__* }

@NGX_CONF_OK = common dso_local global i8* null, align 8
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [107 x i8] c"the \22none\22 or \22blocked\22 referers are specified in the \22valid_referers\22 directive without any valid referer\00", align 1
@ngx_cacheline_size = common dso_local global i32 0, align 4
@ngx_hash_key_lc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"referer_hash\00", align 1
@ngx_http_cmp_referer_wildcards = common dso_local global i32 0, align 4
@NGX_CONF_UNSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_20__*, i8*, i8*)* @ngx_http_referer_merge_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_referer_merge_conf(%struct.TYPE_20__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_30__, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %15, %struct.TYPE_28__** %8, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %17, %struct.TYPE_28__** %9, align 8
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %21 = icmp eq %struct.TYPE_21__* %20, null
  br i1 %21, label %22, label %58

22:                                               ; preds = %3
  %23 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %23, i32 0, i32 6
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %25, i32 0, i32 6
  %27 = bitcast %struct.TYPE_25__* %24 to i8*
  %28 = bitcast %struct.TYPE_25__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 24, i1 false)
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @ngx_conf_merge_value(i32 %31, i32 %34, i32 0)
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ngx_conf_merge_value(i32 %38, i32 %41, i32 0)
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ngx_conf_merge_uint_value(i32 %45, i32 %48, i32 2048)
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ngx_conf_merge_uint_value(i32 %52, i32 %55, i32 64)
  %57 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %57, i8** %4, align 8
  br label %330

58:                                               ; preds = %3
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %97

63:                                               ; preds = %58
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %65 = load i32, i32* @ngx_http_core_module, align 4
  %66 = call %struct.TYPE_29__* @ngx_http_conf_get_module_srv_conf(%struct.TYPE_20__* %64, i32 %65)
  store %struct.TYPE_29__* %66, %struct.TYPE_29__** %13, align 8
  %67 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %69, align 8
  store %struct.TYPE_27__* %70, %struct.TYPE_27__** %12, align 8
  store i64 0, i64* %10, align 8
  br label %71

71:                                               ; preds = %93, %63
  %72 = load i64, i64* %10, align 8
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ult i64 %72, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %71
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %81, align 8
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %84 = load i64, i64* %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %85, i32 0, i32 0
  %87 = call i64 @ngx_http_add_referer(%struct.TYPE_20__* %79, %struct.TYPE_21__* %82, i32* %86, i32* null)
  %88 = load i64, i64* @NGX_OK, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %78
  %91 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %91, i8** %4, align 8
  br label %330

92:                                               ; preds = %78
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %10, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %10, align 8
  br label %71

96:                                               ; preds = %71
  br label %97

97:                                               ; preds = %96, %58
  %98 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %107, label %102

102:                                              ; preds = %97
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %138

107:                                              ; preds = %102, %97
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %138

115:                                              ; preds = %107
  %116 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %115
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %123
  %132 = load i32, i32* @NGX_LOG_EMERG, align 4
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @ngx_log_error(i32 %132, i32 %135, i32 0, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str, i64 0, i64 0))
  %137 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %137, i8** %4, align 8
  br label %330

138:                                              ; preds = %123, %115, %107, %102
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %139, i32 0, i32 8
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i32 0, i32 8
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @ngx_conf_merge_uint_value(i32 %141, i32 %144, i32 2048)
  %146 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %146, i32 0, i32 7
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %149, i32 0, i32 7
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @ngx_conf_merge_uint_value(i32 %148, i32 %151, i32 64)
  %153 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %153, i32 0, i32 7
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @ngx_cacheline_size, align 4
  %157 = call i32 @ngx_align(i32 %155, i32 %156)
  %158 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %158, i32 0, i32 7
  store i32 %157, i32* %159, align 8
  %160 = load i32, i32* @ngx_hash_key_lc, align 4
  %161 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 6
  store i32 %160, i32* %161, align 4
  %162 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %162, i32 0, i32 8
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 5
  store i32 %164, i32* %165, align 8
  %166 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 4
  store i32 %168, i32* %169, align 4
  %170 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %170, align 8
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 3
  store i32 %173, i32* %174, align 8
  %175 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %175, i32 0, i32 3
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %206

182:                                              ; preds = %138
  %183 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %183, i32 0, i32 6
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 1
  store i32* %185, i32** %186, align 8
  %187 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 2
  store i32* null, i32** %187, align 8
  %188 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %188, i32 0, i32 3
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %194, i32 0, i32 3
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = call i64 @ngx_hash_init(%struct.TYPE_30__* %11, i32 %193, i64 %199)
  %201 = load i64, i64* @NGX_OK, align 8
  %202 = icmp ne i64 %200, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %182
  %204 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %204, i8** %4, align 8
  br label %330

205:                                              ; preds = %182
  br label %206

206:                                              ; preds = %205, %138
  %207 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %207, i32 0, i32 3
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %257

214:                                              ; preds = %206
  %215 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %215, i32 0, i32 3
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %221, i32 0, i32 3
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i32, i32* @ngx_http_cmp_referer_wildcards, align 4
  %228 = call i32 @ngx_qsort(i32 %220, i64 %226, i32 4, i32 %227)
  %229 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 1
  store i32* null, i32** %229, align 8
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 2
  store i32* %232, i32** %233, align 8
  %234 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %234, i32 0, i32 3
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %240, i32 0, i32 3
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = call i64 @ngx_hash_wildcard_init(%struct.TYPE_30__* %11, i32 %239, i64 %245)
  %247 = load i64, i64* @NGX_OK, align 8
  %248 = icmp ne i64 %246, %247
  br i1 %248, label %249, label %251

249:                                              ; preds = %214
  %250 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %250, i8** %4, align 8
  br label %330

251:                                              ; preds = %214
  %252 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  %254 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %255 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %254, i32 0, i32 6
  %256 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %255, i32 0, i32 1
  store i32* %253, i32** %256, align 8
  br label %257

257:                                              ; preds = %251, %206
  %258 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %259 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %258, i32 0, i32 3
  %260 = load %struct.TYPE_21__*, %struct.TYPE_21__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %308

265:                                              ; preds = %257
  %266 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %267 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %266, i32 0, i32 3
  %268 = load %struct.TYPE_21__*, %struct.TYPE_21__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %273 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %272, i32 0, i32 3
  %274 = load %struct.TYPE_21__*, %struct.TYPE_21__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load i32, i32* @ngx_http_cmp_referer_wildcards, align 4
  %279 = call i32 @ngx_qsort(i32 %271, i64 %277, i32 4, i32 %278)
  %280 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 1
  store i32* null, i32** %280, align 8
  %281 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %281, i32 0, i32 0
  %283 = load i32*, i32** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 2
  store i32* %283, i32** %284, align 8
  %285 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %286 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %285, i32 0, i32 3
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %292 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %291, i32 0, i32 3
  %293 = load %struct.TYPE_21__*, %struct.TYPE_21__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = call i64 @ngx_hash_wildcard_init(%struct.TYPE_30__* %11, i32 %290, i64 %296)
  %298 = load i64, i64* @NGX_OK, align 8
  %299 = icmp ne i64 %297, %298
  br i1 %299, label %300, label %302

300:                                              ; preds = %265
  %301 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %301, i8** %4, align 8
  br label %330

302:                                              ; preds = %265
  %303 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 1
  %304 = load i32*, i32** %303, align 8
  %305 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %306 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %305, i32 0, i32 6
  %307 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %306, i32 0, i32 0
  store i32* %304, i32** %307, align 8
  br label %308

308:                                              ; preds = %302, %257
  %309 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %310 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* @NGX_CONF_UNSET, align 4
  %313 = icmp eq i32 %311, %312
  br i1 %313, label %314, label %317

314:                                              ; preds = %308
  %315 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %316 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %315, i32 0, i32 0
  store i32 0, i32* %316, align 8
  br label %317

317:                                              ; preds = %314, %308
  %318 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %319 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* @NGX_CONF_UNSET, align 4
  %322 = icmp eq i32 %320, %321
  br i1 %322, label %323, label %326

323:                                              ; preds = %317
  %324 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %325 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %324, i32 0, i32 1
  store i32 0, i32* %325, align 4
  br label %326

326:                                              ; preds = %323, %317
  %327 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %328 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %327, i32 0, i32 3
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %328, align 8
  %329 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %329, i8** %4, align 8
  br label %330

330:                                              ; preds = %326, %300, %249, %203, %131, %90, %22
  %331 = load i8*, i8** %4, align 8
  ret i8* %331
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ngx_conf_merge_value(i32, i32, i32) #2

declare dso_local i32 @ngx_conf_merge_uint_value(i32, i32, i32) #2

declare dso_local %struct.TYPE_29__* @ngx_http_conf_get_module_srv_conf(%struct.TYPE_20__*, i32) #2

declare dso_local i64 @ngx_http_add_referer(%struct.TYPE_20__*, %struct.TYPE_21__*, i32*, i32*) #2

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #2

declare dso_local i32 @ngx_align(i32, i32) #2

declare dso_local i64 @ngx_hash_init(%struct.TYPE_30__*, i32, i64) #2

declare dso_local i32 @ngx_qsort(i32, i64, i32, i32) #2

declare dso_local i64 @ngx_hash_wildcard_init(%struct.TYPE_30__*, i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
