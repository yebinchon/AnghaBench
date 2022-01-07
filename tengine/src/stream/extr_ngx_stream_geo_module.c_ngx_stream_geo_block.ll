; ModuleID = '/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_geo_module.c_ngx_stream_geo_block.c'
source_filename = "/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_geo_module.c_ngx_stream_geo_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i32*, i8*, i32, %struct.TYPE_31__*, i32, %struct.TYPE_26__* }
%struct.TYPE_31__ = type { i32, i32, i32, i32, i32*, i32*, i32*, %struct.TYPE_28__, i32, i32, i64, i32*, i32, i32 }
%struct.TYPE_28__ = type { i32*, %struct.TYPE_24__** }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_26__ = type { i32, %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i8*, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_29__ = type { i64, i32 }
%struct.TYPE_30__ = type { i64, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_25__, %struct.TYPE_28__ }
%struct.TYPE_25__ = type { i32*, i32* }

@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"invalid variable name \22%V\22\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_STREAM_VAR_CHANGEABLE = common dso_local global i32 0, align 4
@NGX_DEFAULT_POOL_SIZE = common dso_local global i32 0, align 4
@ngx_str_rbtree_insert_value = common dso_local global i32 0, align 4
@ngx_stream_geo = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8
@ngx_stream_variable_null_value = common dso_local global i32 0, align 4
@ngx_stream_geo_range_variable = common dso_local global i32 0, align 4
@ngx_stream_geo_cidr_variable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_33__*, i32*, i8*)* @ngx_stream_geo_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_stream_geo_block(%struct.TYPE_33__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_33__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_32__*, align 8
  %11 = alloca %struct.TYPE_32__, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_33__, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca %struct.TYPE_29__*, align 8
  %17 = alloca %struct.TYPE_30__*, align 8
  %18 = alloca %struct.TYPE_31__, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %19 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %19, i32 0, i32 5
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  store %struct.TYPE_32__* %23, %struct.TYPE_32__** %10, align 8
  %24 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i8* @ngx_palloc(i32* %26, i32 40)
  %28 = bitcast i8* %27 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %28, %struct.TYPE_30__** %17, align 8
  %29 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %30 = icmp eq %struct.TYPE_30__* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %32, i8** %4, align 8
  br label %367

33:                                               ; preds = %3
  %34 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %34, i64 1
  %36 = bitcast %struct.TYPE_32__* %11 to i8*
  %37 = bitcast %struct.TYPE_32__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 16, i1 false)
  %38 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %11, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 36
  br i1 %43, label %44, label %49

44:                                               ; preds = %33
  %45 = load i32, i32* @NGX_LOG_EMERG, align 4
  %46 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %47 = call i32 @ngx_conf_log_error(i32 %45, %struct.TYPE_33__* %46, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.TYPE_32__* %11)
  %48 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %48, i8** %4, align 8
  br label %367

49:                                               ; preds = %33
  %50 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %11, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 8
  %53 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %11, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %53, align 8
  %56 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %56, i32 0, i32 5
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 3
  br i1 %61, label %62, label %97

62:                                               ; preds = %49
  %63 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %64 = call i64 @ngx_stream_get_variable_index(%struct.TYPE_33__* %63, %struct.TYPE_32__* %11)
  %65 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %68 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NGX_ERROR, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %73, i8** %4, align 8
  br label %367

74:                                               ; preds = %62
  %75 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %75, i64 2
  %77 = bitcast %struct.TYPE_32__* %11 to i8*
  %78 = bitcast %struct.TYPE_32__* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 8 %78, i64 16, i1 false)
  %79 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %11, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 36
  br i1 %84, label %85, label %90

85:                                               ; preds = %74
  %86 = load i32, i32* @NGX_LOG_EMERG, align 4
  %87 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %88 = call i32 @ngx_conf_log_error(i32 %86, %struct.TYPE_33__* %87, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.TYPE_32__* %11)
  %89 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %89, i8** %4, align 8
  br label %367

90:                                               ; preds = %74
  %91 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %11, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %91, align 8
  %94 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %11, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %94, align 8
  br label %100

97:                                               ; preds = %49
  %98 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %99 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %98, i32 0, i32 0
  store i64 -1, i64* %99, align 8
  br label %100

100:                                              ; preds = %97, %90
  %101 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %102 = load i32, i32* @NGX_STREAM_VAR_CHANGEABLE, align 4
  %103 = call %struct.TYPE_29__* @ngx_stream_add_variable(%struct.TYPE_33__* %101, %struct.TYPE_32__* %11, i32 %102)
  store %struct.TYPE_29__* %103, %struct.TYPE_29__** %16, align 8
  %104 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %105 = icmp eq %struct.TYPE_29__* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %107, i8** %4, align 8
  br label %367

108:                                              ; preds = %100
  %109 = load i32, i32* @NGX_DEFAULT_POOL_SIZE, align 4
  %110 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = call i8* @ngx_create_pool(i32 %109, i32 %112)
  %114 = bitcast i8* %113 to i32*
  store i32* %114, i32** %14, align 8
  %115 = load i32*, i32** %14, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %119

117:                                              ; preds = %108
  %118 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %118, i8** %4, align 8
  br label %367

119:                                              ; preds = %108
  %120 = call i32 @ngx_memzero(%struct.TYPE_31__* %18, i32 88)
  %121 = load i32, i32* @NGX_DEFAULT_POOL_SIZE, align 4
  %122 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = call i8* @ngx_create_pool(i32 %121, i32 %124)
  %126 = bitcast i8* %125 to i32*
  %127 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 4
  store i32* %126, i32** %127, align 8
  %128 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 4
  %129 = load i32*, i32** %128, align 8
  %130 = icmp eq i32* %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %119
  %132 = load i32*, i32** %14, align 8
  %133 = call i32 @ngx_destroy_pool(i32* %132)
  %134 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %134, i8** %4, align 8
  br label %367

135:                                              ; preds = %119
  %136 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 13
  %137 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 12
  %138 = load i32, i32* @ngx_str_rbtree_insert_value, align 4
  %139 = call i32 @ngx_rbtree_init(i32* %136, i32* %137, i32 %138)
  %140 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 11
  store i32* %142, i32** %143, align 8
  %144 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 0
  store i32 524296, i32* %144, align 8
  %145 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 1
  store i32 1, i32* %145, align 4
  %146 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %147 = bitcast %struct.TYPE_33__* %13 to i8*
  %148 = bitcast %struct.TYPE_33__* %146 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %147, i8* align 8 %148, i64 48, i1 false)
  %149 = load i32*, i32** %14, align 8
  %150 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %150, i32 0, i32 0
  store i32* %149, i32** %151, align 8
  %152 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %152, i32 0, i32 3
  store %struct.TYPE_31__* %18, %struct.TYPE_31__** %153, align 8
  %154 = load i32, i32* @ngx_stream_geo, align 4
  %155 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 8
  %157 = load i8*, i8** %7, align 8
  %158 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %158, i32 0, i32 1
  store i8* %157, i8** %159, align 8
  %160 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %161 = call i8* @ngx_conf_parse(%struct.TYPE_33__* %160, i32* null)
  store i8* %161, i8** %8, align 8
  %162 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %163 = bitcast %struct.TYPE_33__* %162 to i8*
  %164 = bitcast %struct.TYPE_33__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %163, i8* align 8 %164, i64 48, i1 false)
  %165 = load i8*, i8** %8, align 8
  %166 = load i8*, i8** @NGX_CONF_OK, align 8
  %167 = icmp ne i8* %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %135
  br label %360

169:                                              ; preds = %135
  %170 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 10
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %316

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 7
  %175 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %175, align 8
  %177 = icmp ne %struct.TYPE_24__** %176, null
  br i1 %177, label %178, label %294

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 9
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %294, label %182

182:                                              ; preds = %178
  store i32 0, i32* %12, align 4
  br label %183

183:                                              ; preds = %272, %182
  %184 = load i32, i32* %12, align 4
  %185 = icmp slt i32 %184, 65536
  br i1 %185, label %186, label %275

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 7
  %188 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %188, align 8
  %190 = load i32, i32* %12, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %189, i64 %191
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %192, align 8
  %194 = bitcast %struct.TYPE_24__* %193 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %194, %struct.TYPE_23__** %15, align 8
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %196 = icmp eq %struct.TYPE_23__* %195, null
  br i1 %196, label %197, label %198

197:                                              ; preds = %186
  br label %272

198:                                              ; preds = %186
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %198
  %204 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 7
  %205 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %205, align 8
  %207 = load i32, i32* %12, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %206, i64 %208
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %209, align 8
  br label %272

210:                                              ; preds = %198
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = sext i32 %213 to i64
  %215 = mul i64 %214, 4
  store i64 %215, i64* %9, align 8
  %216 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = load i64, i64* %9, align 8
  %220 = add i64 %219, 8
  %221 = trunc i64 %220 to i32
  %222 = call i8* @ngx_palloc(i32* %218, i32 %221)
  %223 = bitcast i8* %222 to %struct.TYPE_24__*
  %224 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 7
  %225 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %225, align 8
  %227 = load i32, i32* %12, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %226, i64 %228
  store %struct.TYPE_24__* %223, %struct.TYPE_24__** %229, align 8
  %230 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 7
  %231 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %231, align 8
  %233 = load i32, i32* %12, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %232, i64 %234
  %236 = load %struct.TYPE_24__*, %struct.TYPE_24__** %235, align 8
  %237 = icmp eq %struct.TYPE_24__* %236, null
  br i1 %237, label %238, label %239

238:                                              ; preds = %210
  br label %360

239:                                              ; preds = %210
  %240 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 7
  %241 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %241, align 8
  %243 = load i32, i32* %12, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %242, i64 %244
  %246 = load %struct.TYPE_24__*, %struct.TYPE_24__** %245, align 8
  %247 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %248 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load i64, i64* %9, align 8
  %251 = call i32 @ngx_memcpy(%struct.TYPE_24__* %246, i32 %249, i64 %250)
  %252 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 7
  %253 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %252, i32 0, i32 1
  %254 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %253, align 8
  %255 = load i32, i32* %12, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %254, i64 %256
  %258 = load %struct.TYPE_24__*, %struct.TYPE_24__** %257, align 8
  %259 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %260 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %258, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %263, i32 0, i32 0
  store i32* null, i32** %264, align 8
  %265 = load i64, i64* %9, align 8
  %266 = add i64 %265, 8
  %267 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = sext i32 %268 to i64
  %270 = add i64 %269, %266
  %271 = trunc i64 %270 to i32
  store i32 %271, i32* %267, align 8
  br label %272

272:                                              ; preds = %239, %203, %197
  %273 = load i32, i32* %12, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %12, align 4
  br label %183

275:                                              ; preds = %183
  %276 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %293

279:                                              ; preds = %275
  %280 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 8
  %281 = load i32, i32* %280, align 8
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %293, label %283

283:                                              ; preds = %279
  %284 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = icmp sgt i32 %285, 100000
  br i1 %286, label %287, label %293

287:                                              ; preds = %283
  %288 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 3
  %289 = load i32, i32* %288, align 4
  %290 = icmp eq i32 %289, 1
  br i1 %290, label %291, label %293

291:                                              ; preds = %287
  %292 = call i32 @ngx_stream_geo_create_binary_base(%struct.TYPE_31__* %18)
  br label %293

293:                                              ; preds = %291, %287, %283, %279, %275
  br label %294

294:                                              ; preds = %293, %178, %173
  %295 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 7
  %296 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %295, i32 0, i32 0
  %297 = load i32*, i32** %296, align 8
  %298 = icmp eq i32* %297, null
  br i1 %298, label %299, label %302

299:                                              ; preds = %294
  %300 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 7
  %301 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %300, i32 0, i32 0
  store i32* @ngx_stream_variable_null_value, i32** %301, align 8
  br label %302

302:                                              ; preds = %299, %294
  %303 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %304 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 7
  %307 = bitcast %struct.TYPE_28__* %305 to i8*
  %308 = bitcast %struct.TYPE_28__* %306 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %307, i8* align 8 %308, i64 16, i1 false)
  %309 = load i32, i32* @ngx_stream_geo_range_variable, align 4
  %310 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %311 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %310, i32 0, i32 1
  store i32 %309, i32* %311, align 8
  %312 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %313 = ptrtoint %struct.TYPE_30__* %312 to i64
  %314 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %315 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %314, i32 0, i32 0
  store i64 %313, i64* %315, align 8
  br label %353

316:                                              ; preds = %169
  %317 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 6
  %318 = load i32*, i32** %317, align 8
  %319 = icmp eq i32* %318, null
  br i1 %319, label %320, label %332

320:                                              ; preds = %316
  %321 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %321, i32 0, i32 0
  %323 = load i32*, i32** %322, align 8
  %324 = call i8* @ngx_radix_tree_create(i32* %323, i32 -1)
  %325 = bitcast i8* %324 to i32*
  %326 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 6
  store i32* %325, i32** %326, align 8
  %327 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 6
  %328 = load i32*, i32** %327, align 8
  %329 = icmp eq i32* %328, null
  br i1 %329, label %330, label %331

330:                                              ; preds = %320
  br label %360

331:                                              ; preds = %320
  br label %332

332:                                              ; preds = %331, %316
  %333 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 6
  %334 = load i32*, i32** %333, align 8
  %335 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %336 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %337, i32 0, i32 1
  store i32* %334, i32** %338, align 8
  %339 = load i32, i32* @ngx_stream_geo_cidr_variable, align 4
  %340 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %341 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %340, i32 0, i32 1
  store i32 %339, i32* %341, align 8
  %342 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %343 = ptrtoint %struct.TYPE_30__* %342 to i64
  %344 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %345 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %344, i32 0, i32 0
  store i64 %343, i64* %345, align 8
  %346 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 6
  %347 = load i32*, i32** %346, align 8
  %348 = call i64 @ngx_radix32tree_insert(i32* %347, i32 0, i32 0, i64 ptrtoint (i32* @ngx_stream_variable_null_value to i64))
  %349 = load i64, i64* @NGX_ERROR, align 8
  %350 = icmp eq i64 %348, %349
  br i1 %350, label %351, label %352

351:                                              ; preds = %332
  br label %360

352:                                              ; preds = %332
  br label %353

353:                                              ; preds = %352, %302
  %354 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 4
  %355 = load i32*, i32** %354, align 8
  %356 = call i32 @ngx_destroy_pool(i32* %355)
  %357 = load i32*, i32** %14, align 8
  %358 = call i32 @ngx_destroy_pool(i32* %357)
  %359 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %359, i8** %4, align 8
  br label %367

360:                                              ; preds = %351, %330, %238, %168
  %361 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 4
  %362 = load i32*, i32** %361, align 8
  %363 = call i32 @ngx_destroy_pool(i32* %362)
  %364 = load i32*, i32** %14, align 8
  %365 = call i32 @ngx_destroy_pool(i32* %364)
  %366 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %366, i8** %4, align 8
  br label %367

367:                                              ; preds = %360, %353, %131, %117, %106, %85, %72, %44, %31
  %368 = load i8*, i8** %4, align 8
  ret i8* %368
}

declare dso_local i8* @ngx_palloc(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_33__*, i32, i8*, %struct.TYPE_32__*) #1

declare dso_local i64 @ngx_stream_get_variable_index(%struct.TYPE_33__*, %struct.TYPE_32__*) #1

declare dso_local %struct.TYPE_29__* @ngx_stream_add_variable(%struct.TYPE_33__*, %struct.TYPE_32__*, i32) #1

declare dso_local i8* @ngx_create_pool(i32, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @ngx_destroy_pool(i32*) #1

declare dso_local i32 @ngx_rbtree_init(i32*, i32*, i32) #1

declare dso_local i8* @ngx_conf_parse(%struct.TYPE_33__*, i32*) #1

declare dso_local i32 @ngx_memcpy(%struct.TYPE_24__*, i32, i64) #1

declare dso_local i32 @ngx_stream_geo_create_binary_base(%struct.TYPE_31__*) #1

declare dso_local i8* @ngx_radix_tree_create(i32*, i32) #1

declare dso_local i64 @ngx_radix32tree_insert(i32*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
