; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http.c_ngx_http_server_names.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http.c_ngx_http_server_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_35__ = type { i32, i32 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_33__*, %struct.TYPE_31__, i32*, i32*, i32, %struct.TYPE_27__ }
%struct.TYPE_33__ = type { i64, i32, i32 }
%struct.TYPE_31__ = type { i64, %struct.TYPE_34__** }
%struct.TYPE_34__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i64, %struct.TYPE_33__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_25__ = type { i8*, i32*, i32*, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32*, %struct.TYPE_30__, %struct.TYPE_29__, %struct.TYPE_28__, i32 }
%struct.TYPE_30__ = type { i64, i32 }
%struct.TYPE_29__ = type { i64, i32 }
%struct.TYPE_28__ = type { i64, i32 }

@NGX_DEFAULT_POOL_SIZE = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HASH_LARGE = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HASH_WILDCARD_KEY = common dso_local global i32 0, align 4
@NGX_DECLINED = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"invalid server name or wildcard \22%V\22 on %V\00", align 1
@NGX_BUSY = common dso_local global i64 0, align 8
@NGX_LOG_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"conflicting server name \22%V\22 on %V, ignored\00", align 1
@ngx_hash_key_lc = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"server_names_hash\00", align 1
@ngx_http_cmp_dns_wildcards = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_26__*, %struct.TYPE_35__*, %struct.TYPE_23__*)* @ngx_http_server_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_server_names(%struct.TYPE_26__* %0, %struct.TYPE_35__* %1, %struct.TYPE_23__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_35__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_25__, align 8
  %12 = alloca %struct.TYPE_24__, align 8
  %13 = alloca %struct.TYPE_33__*, align 8
  %14 = alloca %struct.TYPE_34__**, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %5, align 8
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %6, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %7, align 8
  %15 = call i32 @ngx_memzero(%struct.TYPE_24__* %12, i32 64)
  %16 = load i32, i32* @NGX_DEFAULT_POOL_SIZE, align 4
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32* @ngx_create_pool(i32 %16, i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  store i32* %20, i32** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i64, i64* @NGX_ERROR, align 8
  store i64 %26, i64* %4, align 8
  br label %239

27:                                               ; preds = %3
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 4
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* @NGX_HASH_LARGE, align 4
  %33 = call i64 @ngx_hash_keys_array_init(%struct.TYPE_24__* %12, i32 %32)
  %34 = load i64, i64* @NGX_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %234

37:                                               ; preds = %27
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %40, align 8
  store %struct.TYPE_34__** %41, %struct.TYPE_34__*** %14, align 8
  store i64 0, i64* %10, align 8
  br label %42

42:                                               ; preds = %124, %37
  %43 = load i64, i64* %10, align 8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %43, %47
  br i1 %48, label %49, label %127

49:                                               ; preds = %42
  %50 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %14, align 8
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_34__*, %struct.TYPE_34__** %50, i64 %51
  %53 = load %struct.TYPE_34__*, %struct.TYPE_34__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_33__*, %struct.TYPE_33__** %55, align 8
  store %struct.TYPE_33__* %56, %struct.TYPE_33__** %13, align 8
  store i64 0, i64* %9, align 8
  br label %57

57:                                               ; preds = %120, %49
  %58 = load i64, i64* %9, align 8
  %59 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %14, align 8
  %60 = load i64, i64* %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_34__*, %struct.TYPE_34__** %59, i64 %60
  %62 = load %struct.TYPE_34__*, %struct.TYPE_34__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ult i64 %58, %65
  br i1 %66, label %67, label %123

67:                                               ; preds = %57
  %68 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %73 = load i64, i64* %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @NGX_HASH_WILDCARD_KEY, align 4
  %78 = call i64 @ngx_hash_add_key(%struct.TYPE_24__* %12, i32* %71, i32 %76, i32 %77)
  store i64 %78, i64* %8, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* @NGX_ERROR, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %67
  %83 = load i64, i64* @NGX_ERROR, align 8
  store i64 %83, i64* %4, align 8
  br label %239

84:                                               ; preds = %67
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* @NGX_DECLINED, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %84
  %89 = load i32, i32* @NGX_LOG_EMERG, align 4
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %94 = load i64, i64* %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %98, i32 0, i32 0
  %100 = call i32 @ngx_log_error(i32 %89, i32 %92, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32* %96, i32* %99)
  %101 = load i64, i64* @NGX_ERROR, align 8
  store i64 %101, i64* %4, align 8
  br label %239

102:                                              ; preds = %84
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* @NGX_BUSY, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %102
  %107 = load i32, i32* @NGX_LOG_WARN, align 4
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %112 = load i64, i64* %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 6
  %117 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %116, i32 0, i32 0
  %118 = call i32 @ngx_log_error(i32 %107, i32 %110, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32* %114, i32* %117)
  br label %119

119:                                              ; preds = %106, %102
  br label %120

120:                                              ; preds = %119
  %121 = load i64, i64* %9, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %9, align 8
  br label %57

123:                                              ; preds = %57
  br label %124

124:                                              ; preds = %123
  %125 = load i64, i64* %10, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %10, align 8
  br label %42

127:                                              ; preds = %42
  %128 = load i32, i32* @ngx_hash_key_lc, align 4
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 6
  store i32 %128, i32* %129, align 4
  %130 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 5
  store i32 %132, i32* %133, align 8
  %134 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 4
  store i32 %136, i32* %137, align 4
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %138, align 8
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 3
  store i32 %141, i32* %142, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %163

147:                                              ; preds = %127
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 1
  store i32* %149, i32** %150, align 8
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 2
  store i32* null, i32** %151, align 8
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i64 @ngx_hash_init(%struct.TYPE_25__* %11, i32 %154, i64 %157)
  %159 = load i64, i64* @NGX_OK, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %147
  br label %234

162:                                              ; preds = %147
  br label %163

163:                                              ; preds = %162, %127
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %196

168:                                              ; preds = %163
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i32, i32* @ngx_http_cmp_dns_wildcards, align 4
  %176 = call i32 @ngx_qsort(i32 %171, i64 %174, i32 4, i32 %175)
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 1
  store i32* null, i32** %177, align 8
  %178 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 2
  store i32* %179, i32** %180, align 8
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = call i64 @ngx_hash_wildcard_init(%struct.TYPE_25__* %11, i32 %183, i64 %186)
  %188 = load i64, i64* @NGX_OK, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %168
  br label %234

191:                                              ; preds = %168
  %192 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %194, i32 0, i32 4
  store i32* %193, i32** %195, align 8
  br label %196

196:                                              ; preds = %191, %163
  %197 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %229

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i32, i32* @ngx_http_cmp_dns_wildcards, align 4
  %209 = call i32 @ngx_qsort(i32 %204, i64 %207, i32 4, i32 %208)
  %210 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 1
  store i32* null, i32** %210, align 8
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 2
  store i32* %212, i32** %213, align 8
  %214 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = call i64 @ngx_hash_wildcard_init(%struct.TYPE_25__* %11, i32 %216, i64 %219)
  %221 = load i64, i64* @NGX_OK, align 8
  %222 = icmp ne i64 %220, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %201
  br label %234

224:                                              ; preds = %201
  %225 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %227, i32 0, i32 3
  store i32* %226, i32** %228, align 8
  br label %229

229:                                              ; preds = %224, %196
  %230 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = call i32 @ngx_destroy_pool(i32* %231)
  %233 = load i64, i64* @NGX_OK, align 8
  store i64 %233, i64* %4, align 8
  br label %239

234:                                              ; preds = %223, %190, %161, %36
  %235 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = call i32 @ngx_destroy_pool(i32* %236)
  %238 = load i64, i64* @NGX_ERROR, align 8
  store i64 %238, i64* %4, align 8
  br label %239

239:                                              ; preds = %234, %229, %88, %82, %25
  %240 = load i64, i64* %4, align 8
  ret i64 %240
}

declare dso_local i32 @ngx_memzero(%struct.TYPE_24__*, i32) #1

declare dso_local i32* @ngx_create_pool(i32, i32) #1

declare dso_local i64 @ngx_hash_keys_array_init(%struct.TYPE_24__*, i32) #1

declare dso_local i64 @ngx_hash_add_key(%struct.TYPE_24__*, i32*, i32, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32*, i32*) #1

declare dso_local i64 @ngx_hash_init(%struct.TYPE_25__*, i32, i64) #1

declare dso_local i32 @ngx_qsort(i32, i64, i32, i32) #1

declare dso_local i64 @ngx_hash_wildcard_init(%struct.TYPE_25__*, i32, i64) #1

declare dso_local i32 @ngx_destroy_pool(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
