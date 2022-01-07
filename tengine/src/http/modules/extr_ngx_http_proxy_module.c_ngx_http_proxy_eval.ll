; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_proxy_module.c_ngx_http_proxy_eval.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_proxy_module.c_ngx_http_proxy_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, %struct.TYPE_33__*, %struct.TYPE_25__* }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_29__*, %struct.TYPE_35__ }
%struct.TYPE_29__ = type { i32, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_35__ = type { i64, i64 }
%struct.TYPE_28__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { %struct.TYPE_35__ }
%struct.TYPE_27__ = type { %struct.TYPE_32__*, %struct.TYPE_30__* }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_39__ = type { i32, i64 }
%struct.TYPE_38__ = type { i32, i32, i32, i32, i64, i32, %struct.TYPE_36__*, %struct.TYPE_34__, %struct.TYPE_37__, i32 }
%struct.TYPE_36__ = type { i32, i32, i32 }
%struct.TYPE_34__ = type { i8*, i64 }
%struct.TYPE_37__ = type { i64, i64 }

@NGX_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid URL prefix in \22%V\22\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"%s in upstream \22%V\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_26__*, %struct.TYPE_28__*, %struct.TYPE_27__*)* @ngx_http_proxy_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_proxy_eval(%struct.TYPE_26__* %0, %struct.TYPE_28__* %1, %struct.TYPE_27__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_39__, align 8
  %12 = alloca %struct.TYPE_38__, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %5, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %6, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %7, align 8
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %15 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_32__*, %struct.TYPE_32__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32* @ngx_http_script_run(%struct.TYPE_26__* %14, %struct.TYPE_39__* %11, i32 %19, i32 0, i32 %24)
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i64, i64* @NGX_ERROR, align 8
  store i64 %28, i64* %4, align 8
  br label %238

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %11, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sgt i32 %31, 7
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %11, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @ngx_strncasecmp(i64 %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i64 7, i64* %9, align 8
  store i32 80, i32* %10, align 4
  br label %48

39:                                               ; preds = %33, %29
  %40 = load i32, i32* @NGX_LOG_ERR, align 4
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_33__*, %struct.TYPE_33__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i32, i32, i8*, %struct.TYPE_39__*, ...) @ngx_log_error(i32 %40, i32 %45, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_39__* %11)
  %47 = load i64, i64* @NGX_ERROR, align 8
  store i64 %47, i64* %4, align 8
  br label %238

48:                                               ; preds = %38
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %50, align 8
  store %struct.TYPE_25__* %51, %struct.TYPE_25__** %13, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %54, i32 0, i32 0
  store i64 %52, i64* %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %11, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %59, i32 0, i32 1
  store i64 %57, i64* %60, align 8
  %61 = call i32 @ngx_memzero(%struct.TYPE_38__* %12, i32 80)
  %62 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %11, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %9, align 8
  %66 = sub i64 %64, %65
  %67 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %12, i32 0, i32 8
  %68 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %11, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %9, align 8
  %72 = add i64 %70, %71
  %73 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %12, i32 0, i32 8
  %74 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load i32, i32* %10, align 4
  %76 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %12, i32 0, i32 0
  store i32 %75, i32* %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %12, i32 0, i32 1
  store i32 1, i32* %77, align 4
  %78 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %12, i32 0, i32 2
  store i32 1, i32* %78, align 8
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @ngx_parse_url(i32 %81, %struct.TYPE_38__* %12)
  %83 = load i64, i64* @NGX_OK, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %104

85:                                               ; preds = %48
  %86 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %12, i32 0, i32 9
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %85
  %90 = load i32, i32* @NGX_LOG_ERR, align 4
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_33__*, %struct.TYPE_33__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %12, i32 0, i32 9
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to %struct.TYPE_39__*
  %100 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %12, i32 0, i32 8
  %101 = call i32 (i32, i32, i32, i8*, %struct.TYPE_39__*, ...) @ngx_log_error(i32 %90, i32 %95, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_39__* %99, %struct.TYPE_37__* %100)
  br label %102

102:                                              ; preds = %89, %85
  %103 = load i64, i64* @NGX_ERROR, align 8
  store i64 %103, i64* %4, align 8
  br label %238

104:                                              ; preds = %48
  %105 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %12, i32 0, i32 7
  %106 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %150

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %12, i32 0, i32 7
  %111 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 63
  br i1 %116, label %117, label %149

117:                                              ; preds = %109
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %12, i32 0, i32 7
  %122 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, 1
  %125 = call i8* @ngx_pnalloc(i32 %120, i64 %124)
  store i8* %125, i8** %8, align 8
  %126 = load i8*, i8** %8, align 8
  %127 = icmp eq i8* %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %117
  %129 = load i64, i64* @NGX_ERROR, align 8
  store i64 %129, i64* %4, align 8
  br label %238

130:                                              ; preds = %117
  %131 = load i8*, i8** %8, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %8, align 8
  store i8 47, i8* %131, align 1
  %133 = load i8*, i8** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %12, i32 0, i32 7
  %135 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %12, i32 0, i32 7
  %138 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @ngx_memcpy(i8* %133, i8* %136, i64 %139)
  %141 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %12, i32 0, i32 7
  %142 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %143, 1
  store i64 %144, i64* %142, align 8
  %145 = load i8*, i8** %8, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 -1
  %147 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %12, i32 0, i32 7
  %148 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %147, i32 0, i32 0
  store i8* %146, i8** %148, align 8
  br label %149

149:                                              ; preds = %130, %109
  br label %150

150:                                              ; preds = %149, %104
  %151 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i32 0, i32 2
  %156 = bitcast %struct.TYPE_35__* %153 to i8*
  %157 = bitcast %struct.TYPE_35__* %155 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %156, i8* align 8 %157, i64 16, i1 false)
  %158 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %158, i32 0, i32 0
  %160 = call i32 @ngx_http_proxy_set_vars(%struct.TYPE_38__* %12, %struct.TYPE_31__* %159)
  %161 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call %struct.TYPE_29__* @ngx_pcalloc(i32 %163, i32 4)
  %165 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %165, i32 0, i32 1
  store %struct.TYPE_29__* %164, %struct.TYPE_29__** %166, align 8
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_29__*, %struct.TYPE_29__** %168, align 8
  %170 = icmp eq %struct.TYPE_29__* %169, null
  br i1 %170, label %171, label %173

171:                                              ; preds = %150
  %172 = load i64, i64* @NGX_ERROR, align 8
  store i64 %172, i64* %4, align 8
  br label %238

173:                                              ; preds = %150
  %174 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %12, i32 0, i32 6
  %175 = load %struct.TYPE_36__*, %struct.TYPE_36__** %174, align 8
  %176 = icmp ne %struct.TYPE_36__* %175, null
  br i1 %176, label %177, label %209

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %12, i32 0, i32 6
  %179 = load %struct.TYPE_36__*, %struct.TYPE_36__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %179, i64 0
  %181 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_29__*, %struct.TYPE_29__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %185, i32 0, i32 6
  store i32 %182, i32* %186, align 4
  %187 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %12, i32 0, i32 6
  %188 = load %struct.TYPE_36__*, %struct.TYPE_36__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %188, i64 0
  %190 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_29__*, %struct.TYPE_29__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %194, i32 0, i32 5
  store i32 %191, i32* %195, align 8
  %196 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %12, i32 0, i32 6
  %197 = load %struct.TYPE_36__*, %struct.TYPE_36__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %197, i64 0
  %199 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %202 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_29__*, %struct.TYPE_29__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %203, i32 0, i32 4
  store i32 %200, i32* %204, align 4
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_29__*, %struct.TYPE_29__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %207, i32 0, i32 0
  store i32 1, i32* %208, align 8
  br label %209

209:                                              ; preds = %177, %173
  %210 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %12, i32 0, i32 5
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %213 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_29__*, %struct.TYPE_29__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %214, i32 0, i32 3
  store i32 %211, i32* %215, align 8
  %216 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %12, i32 0, i32 4
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %209
  %220 = load i32, i32* %10, align 4
  br label %224

221:                                              ; preds = %209
  %222 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %12, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  br label %224

224:                                              ; preds = %221, %219
  %225 = phi i32 [ %220, %219 ], [ %223, %221 ]
  %226 = sext i32 %225 to i64
  %227 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %228 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_29__*, %struct.TYPE_29__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %229, i32 0, i32 2
  store i64 %226, i64* %230, align 8
  %231 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %12, i32 0, i32 4
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %234 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %233, i32 0, i32 1
  %235 = load %struct.TYPE_29__*, %struct.TYPE_29__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %235, i32 0, i32 1
  store i64 %232, i64* %236, align 8
  %237 = load i64, i64* @NGX_OK, align 8
  store i64 %237, i64* %4, align 8
  br label %238

238:                                              ; preds = %224, %171, %128, %102, %39, %27
  %239 = load i64, i64* %4, align 8
  ret i64 %239
}

declare dso_local i32* @ngx_http_script_run(%struct.TYPE_26__*, %struct.TYPE_39__*, i32, i32, i32) #1

declare dso_local i64 @ngx_strncasecmp(i64, i8*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_39__*, ...) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_38__*, i32) #1

declare dso_local i64 @ngx_parse_url(i32, %struct.TYPE_38__*) #1

declare dso_local i8* @ngx_pnalloc(i32, i64) #1

declare dso_local i32 @ngx_memcpy(i8*, i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_http_proxy_set_vars(%struct.TYPE_38__*, %struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_29__* @ngx_pcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
