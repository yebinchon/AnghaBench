; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_resolver.c_ngx_resolver_create.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_resolver.c_ngx_resolver_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_26__, i32, i32*, %struct.TYPE_27__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_27__ = type { i32, i32*, %struct.TYPE_31__*, i32 }
%struct.TYPE_33__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_30__ = type { i32*, i64 }
%struct.TYPE_29__ = type { i32, i32, %struct.TYPE_31__*, %struct.TYPE_25__*, i32, i32, i32, %struct.TYPE_30__, i32 }
%struct.TYPE_25__ = type { i32, i32, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_31__*, i32 }

@ngx_resolver_cleanup = common dso_local global i32 0, align 4
@ngx_resolver_rbtree_insert_value = common dso_local global i32 0, align 4
@ngx_rbtree_insert_value = common dso_local global i32 0, align 4
@ngx_resolver_resend_handler = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"valid=\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid parameter: %V\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%s in resolver \22%V\22\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"no name servers defined\00", align 1
@NGX_RESOLVER_FILE = common dso_local global i32 0, align 4
@ngx_resolver_rbtree_insert_addr6_value = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_31__* @ngx_resolver_create(%struct.TYPE_33__* %0, %struct.TYPE_30__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_31__*, align 8
  %5 = alloca %struct.TYPE_33__*, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_30__, align 8
  %9 = alloca %struct.TYPE_29__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_31__*, align 8
  %13 = alloca %struct.TYPE_32__*, align 8
  %14 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %5, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i8* @ngx_pcalloc(i32 %17, i32 128)
  %19 = bitcast i8* %18 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %19, %struct.TYPE_31__** %12, align 8
  %20 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %21 = icmp eq %struct.TYPE_31__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %4, align 8
  br label %294

23:                                               ; preds = %3
  %24 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @ngx_pcalloc(i32 %26, i32 4)
  %28 = bitcast i8* %27 to %struct.TYPE_27__*
  %29 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %29, i32 0, i32 9
  store %struct.TYPE_27__* %28, %struct.TYPE_27__** %30, align 8
  %31 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %31, i32 0, i32 9
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %32, align 8
  %34 = icmp eq %struct.TYPE_27__* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %4, align 8
  br label %294

36:                                               ; preds = %23
  %37 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.TYPE_32__* @ngx_pool_cleanup_add(i32 %39, i32 0)
  store %struct.TYPE_32__* %40, %struct.TYPE_32__** %13, align 8
  %41 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %42 = icmp eq %struct.TYPE_32__* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %4, align 8
  br label %294

44:                                               ; preds = %36
  %45 = load i32, i32* @ngx_resolver_cleanup, align 4
  %46 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %49 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %49, i32 0, i32 0
  store %struct.TYPE_31__* %48, %struct.TYPE_31__** %50, align 8
  %51 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %51, i32 0, i32 25
  %53 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %53, i32 0, i32 24
  %55 = load i32, i32* @ngx_resolver_rbtree_insert_value, align 4
  %56 = call i32 @ngx_rbtree_init(i32* %52, i32* %54, i32 %55)
  %57 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %57, i32 0, i32 23
  %59 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %59, i32 0, i32 22
  %61 = load i32, i32* @ngx_resolver_rbtree_insert_value, align 4
  %62 = call i32 @ngx_rbtree_init(i32* %58, i32* %60, i32 %61)
  %63 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %63, i32 0, i32 21
  %65 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %65, i32 0, i32 20
  %67 = load i32, i32* @ngx_rbtree_insert_value, align 4
  %68 = call i32 @ngx_rbtree_init(i32* %64, i32* %66, i32 %67)
  %69 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %69, i32 0, i32 19
  %71 = call i32 @ngx_queue_init(i32* %70)
  %72 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %72, i32 0, i32 18
  %74 = call i32 @ngx_queue_init(i32* %73)
  %75 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %75, i32 0, i32 17
  %77 = call i32 @ngx_queue_init(i32* %76)
  %78 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %78, i32 0, i32 16
  %80 = call i32 @ngx_queue_init(i32* %79)
  %81 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %81, i32 0, i32 15
  %83 = call i32 @ngx_queue_init(i32* %82)
  %84 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %84, i32 0, i32 14
  %86 = call i32 @ngx_queue_init(i32* %85)
  %87 = load i32, i32* @ngx_resolver_resend_handler, align 4
  %88 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %88, i32 0, i32 9
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %90, i32 0, i32 3
  store i32 %87, i32* %91, align 8
  %92 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %93 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %93, i32 0, i32 9
  %95 = load %struct.TYPE_27__*, %struct.TYPE_27__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %95, i32 0, i32 2
  store %struct.TYPE_31__* %92, %struct.TYPE_31__** %96, align 8
  %97 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %101, i32 0, i32 9
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 1
  store i32* %100, i32** %104, align 8
  %105 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %105, i32 0, i32 9
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  %109 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %109, i32 0, i32 1
  store i32 -1, i32* %110, align 4
  %111 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %111, i32 0, i32 2
  store i32 5, i32* %112, align 8
  %113 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %113, i32 0, i32 3
  store i32 5, i32* %114, align 4
  %115 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %115, i32 0, i32 4
  store i32 30, i32* %116, align 8
  %117 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %117, i32 0, i32 5
  store i64 0, i64* %118, align 8
  %119 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %123, i32 0, i32 8
  store i32* %122, i32** %124, align 8
  %125 = load i32, i32* @NGX_LOG_ERR, align 4
  %126 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %126, i32 0, i32 7
  store i32 %125, i32* %127, align 8
  %128 = load i64, i64* %7, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %44
  %131 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %131, i32 0, i32 6
  %133 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i64, i64* %7, align 8
  %137 = call i64 @ngx_array_init(%struct.TYPE_26__* %132, i32 %135, i64 %136, i32 64)
  %138 = load i64, i64* @NGX_OK, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %130
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %4, align 8
  br label %294

141:                                              ; preds = %130
  br label %142

142:                                              ; preds = %141, %44
  store i64 0, i64* %10, align 8
  br label %143

143:                                              ; preds = %276, %142
  %144 = load i64, i64* %10, align 8
  %145 = load i64, i64* %7, align 8
  %146 = icmp ult i64 %144, %145
  br i1 %146, label %147, label %279

147:                                              ; preds = %143
  %148 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %149 = load i64, i64* %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = call i64 @ngx_strncmp(i32* %152, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %186

155:                                              ; preds = %147
  %156 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %157 = load i64, i64* %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = sub nsw i64 %160, 6
  %162 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 1
  store i64 %161, i64* %162, align 8
  %163 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %164 = load i64, i64* %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %163, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 6
  %169 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  store i32* %168, i32** %169, align 8
  %170 = call i64 @ngx_parse_time(%struct.TYPE_30__* %8, i32 1)
  %171 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %171, i32 0, i32 5
  store i64 %170, i64* %172, align 8
  %173 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %173, i32 0, i32 5
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @NGX_ERROR, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %155
  %179 = load i32, i32* @NGX_LOG_EMERG, align 4
  %180 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %181 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %182 = load i64, i64* %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %181, i64 %182
  %184 = call i32 (i32, %struct.TYPE_33__*, i32, i8*, ...) @ngx_conf_log_error(i32 %179, %struct.TYPE_33__* %180, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_30__* %183)
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %4, align 8
  br label %294

185:                                              ; preds = %155
  br label %276

186:                                              ; preds = %147
  %187 = call i32 @ngx_memzero(%struct.TYPE_29__* %9, i32 64)
  %188 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 7
  %189 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %190 = load i64, i64* %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %189, i64 %190
  %192 = bitcast %struct.TYPE_30__* %188 to i8*
  %193 = bitcast %struct.TYPE_30__* %191 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %192, i8* align 8 %193, i64 16, i1 false)
  %194 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 0
  store i32 53, i32* %194, align 8
  %195 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i64 @ngx_parse_url(i32 %197, %struct.TYPE_29__* %9)
  %199 = load i64, i64* @NGX_OK, align 8
  %200 = icmp ne i64 %198, %199
  br i1 %200, label %201, label %213

201:                                              ; preds = %186
  %202 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 8
  %203 = load i32, i32* %202, align 8
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %201
  %206 = load i32, i32* @NGX_LOG_EMERG, align 4
  %207 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 8
  %209 = load i32, i32* %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 7
  %211 = call i32 (i32, %struct.TYPE_33__*, i32, i8*, ...) @ngx_conf_log_error(i32 %206, %struct.TYPE_33__* %207, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %209, %struct.TYPE_30__* %210)
  br label %212

212:                                              ; preds = %205, %201
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %4, align 8
  br label %294

213:                                              ; preds = %186
  %214 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %215 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %214, i32 0, i32 6
  %216 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = call %struct.TYPE_29__* @ngx_array_push_n(%struct.TYPE_26__* %215, i32 %217)
  store %struct.TYPE_29__* %218, %struct.TYPE_29__** %14, align 8
  %219 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %220 = icmp eq %struct.TYPE_29__* %219, null
  br i1 %220, label %221, label %222

221:                                              ; preds = %213
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %4, align 8
  br label %294

222:                                              ; preds = %213
  %223 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %224 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = sext i32 %225 to i64
  %227 = mul i64 %226, 64
  %228 = trunc i64 %227 to i32
  %229 = call i32 @ngx_memzero(%struct.TYPE_29__* %223, i32 %228)
  store i64 0, i64* %11, align 8
  br label %230

230:                                              ; preds = %272, %222
  %231 = load i64, i64* %11, align 8
  %232 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = sext i32 %233 to i64
  %235 = icmp ult i64 %231, %234
  br i1 %235, label %236, label %275

236:                                              ; preds = %230
  %237 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 3
  %238 = load %struct.TYPE_25__*, %struct.TYPE_25__** %237, align 8
  %239 = load i64, i64* %11, align 8
  %240 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %238, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %244 = load i64, i64* %11, align 8
  %245 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %243, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %245, i32 0, i32 6
  store i32 %242, i32* %246, align 8
  %247 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 3
  %248 = load %struct.TYPE_25__*, %struct.TYPE_25__** %247, align 8
  %249 = load i64, i64* %11, align 8
  %250 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %248, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %254 = load i64, i64* %11, align 8
  %255 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %253, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %255, i32 0, i32 5
  store i32 %252, i32* %256, align 4
  %257 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 3
  %258 = load %struct.TYPE_25__*, %struct.TYPE_25__** %257, align 8
  %259 = load i64, i64* %11, align 8
  %260 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %258, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %264 = load i64, i64* %11, align 8
  %265 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %263, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %265, i32 0, i32 4
  store i32 %262, i32* %266, align 8
  %267 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %268 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %269 = load i64, i64* %11, align 8
  %270 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %268, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %270, i32 0, i32 2
  store %struct.TYPE_31__* %267, %struct.TYPE_31__** %271, align 8
  br label %272

272:                                              ; preds = %236
  %273 = load i64, i64* %11, align 8
  %274 = add i64 %273, 1
  store i64 %274, i64* %11, align 8
  br label %230

275:                                              ; preds = %230
  br label %276

276:                                              ; preds = %275, %185
  %277 = load i64, i64* %10, align 8
  %278 = add i64 %277, 1
  store i64 %278, i64* %10, align 8
  br label %143

279:                                              ; preds = %143
  %280 = load i64, i64* %7, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %292

282:                                              ; preds = %279
  %283 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %284 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %283, i32 0, i32 6
  %285 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = icmp eq i64 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %282
  %289 = load i32, i32* @NGX_LOG_EMERG, align 4
  %290 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %291 = call i32 (i32, %struct.TYPE_33__*, i32, i8*, ...) @ngx_conf_log_error(i32 %289, %struct.TYPE_33__* %290, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %4, align 8
  br label %294

292:                                              ; preds = %282, %279
  %293 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  store %struct.TYPE_31__* %293, %struct.TYPE_31__** %4, align 8
  br label %294

294:                                              ; preds = %292, %288, %221, %212, %178, %140, %43, %35, %22
  %295 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  ret %struct.TYPE_31__* %295
}

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

declare dso_local %struct.TYPE_32__* @ngx_pool_cleanup_add(i32, i32) #1

declare dso_local i32 @ngx_rbtree_init(i32*, i32*, i32) #1

declare dso_local i32 @ngx_queue_init(i32*) #1

declare dso_local i64 @ngx_array_init(%struct.TYPE_26__*, i32, i64, i32) #1

declare dso_local i64 @ngx_strncmp(i32*, i8*, i32) #1

declare dso_local i64 @ngx_parse_time(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_33__*, i32, i8*, ...) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_29__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_parse_url(i32, %struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_29__* @ngx_array_push_n(%struct.TYPE_26__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
