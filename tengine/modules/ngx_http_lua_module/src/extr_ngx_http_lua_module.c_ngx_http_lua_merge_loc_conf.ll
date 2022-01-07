; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_module.c_ngx_http_lua_merge_loc_conf.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_module.c_ngx_http_lua_merge_loc_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_17__, i32, i32, %struct.TYPE_15__, i32, i32, i32, %struct.TYPE_26__, i32, i32, i32, %struct.TYPE_24__, i32, i32, i32, %struct.TYPE_22__, i32, i32, i32, %struct.TYPE_20__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }

@ngx_pagesize = common dso_local global i64 0, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@NGX_CONF_BITMASK_SET = common dso_local global i32 0, align 4
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_SSL_SSLv3 = common dso_local global i32 0, align 4
@NGX_SSL_TLSv1 = common dso_local global i32 0, align 4
@NGX_SSL_TLSv1_1 = common dso_local global i32 0, align 4
@NGX_SSL_TLSv1_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i8*)* @ngx_http_lua_merge_loc_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_lua_merge_loc_conf(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %10, %struct.TYPE_18__** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %8, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 40
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %3
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 40
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 40
  %24 = bitcast %struct.TYPE_20__* %21 to i8*
  %25 = bitcast %struct.TYPE_20__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 8, i1 false)
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 39
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 39
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 38
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 38
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 37
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 37
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %19, %3
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 36
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %41
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 36
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 36
  %53 = bitcast %struct.TYPE_22__* %50 to i8*
  %54 = bitcast %struct.TYPE_22__* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 8, i1 false)
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 35
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 35
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 34
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 34
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 33
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 33
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %48, %41
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 32
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %99

77:                                               ; preds = %70
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 32
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 32
  %82 = bitcast %struct.TYPE_24__* %79 to i8*
  %83 = bitcast %struct.TYPE_24__* %81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %82, i8* align 8 %83, i64 8, i1 false)
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 31
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 31
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 30
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 30
  store i32 %91, i32* %93, align 4
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 29
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 29
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %77, %70
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 28
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %128

106:                                              ; preds = %99
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 28
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 28
  %111 = bitcast %struct.TYPE_26__* %108 to i8*
  %112 = bitcast %struct.TYPE_26__* %110 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %111, i8* align 8 %112, i64 8, i1 false)
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 27
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 27
  store i32 %115, i32* %117, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 26
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 26
  store i32 %120, i32* %122, align 4
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 25
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 25
  store i32 %125, i32* %127, align 8
  br label %128

128:                                              ; preds = %106, %99
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 24
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %152

135:                                              ; preds = %128
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 24
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 24
  %140 = bitcast %struct.TYPE_15__* %137 to i8*
  %141 = bitcast %struct.TYPE_15__* %139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %140, i8* align 8 %141, i64 8, i1 false)
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 23
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 23
  store i32 %144, i32* %146, align 4
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 22
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 22
  store i32 %149, i32* %151, align 8
  br label %152

152:                                              ; preds = %135, %128
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 21
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %176

159:                                              ; preds = %152
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 21
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 21
  %164 = bitcast %struct.TYPE_17__* %161 to i8*
  %165 = bitcast %struct.TYPE_17__* %163 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %164, i8* align 8 %165, i64 8, i1 false)
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 20
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 20
  store i32 %168, i32* %170, align 8
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 19
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 19
  store i32 %173, i32* %175, align 4
  br label %176

176:                                              ; preds = %159, %152
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 13
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 13
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @ngx_conf_merge_value(i32 %179, i32 %182, i32 0)
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 12
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 12
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @ngx_conf_merge_value(i32 %186, i32 %189, i32 1)
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 11
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 11
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @ngx_conf_merge_value(i32 %193, i32 %196, i32 1)
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 10
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 10
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @ngx_conf_merge_value(i32 %200, i32 %203, i32 0)
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 9
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 9
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @ngx_conf_merge_value(i32 %207, i32 %210, i32 1)
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 8
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 8
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @ngx_conf_merge_msec_value(i32 %214, i32 %217, i32 60000)
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 7
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 7
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @ngx_conf_merge_msec_value(i32 %221, i32 %224, i32 60000)
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 6
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 6
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @ngx_conf_merge_msec_value(i32 %228, i32 %231, i32 60000)
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 5
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @ngx_conf_merge_msec_value(i32 %235, i32 %238, i32 60000)
  %240 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @ngx_conf_merge_size_value(i32 %242, i32 %245, i64 0)
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = load i64, i64* @ngx_pagesize, align 8
  %254 = call i32 @ngx_conf_merge_size_value(i32 %249, i32 %252, i64 %253)
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @ngx_conf_merge_uint_value(i32 %257, i32 %260, i32 30)
  %262 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @ngx_conf_merge_value(i32 %264, i32 %267, i32 1)
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = call i32 @ngx_conf_merge_value(i32 %271, i32 %274, i32 1)
  %276 = load i8*, i8** @NGX_CONF_OK, align 8
  ret i8* %276
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ngx_conf_merge_value(i32, i32, i32) #2

declare dso_local i32 @ngx_conf_merge_msec_value(i32, i32, i32) #2

declare dso_local i32 @ngx_conf_merge_size_value(i32, i32, i64) #2

declare dso_local i32 @ngx_conf_merge_uint_value(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
