; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_range_filter_module.c_ngx_http_range_header_filter.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_range_filter_module.c_ngx_http_range_header_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i64, %struct.TYPE_46__, i64, i32, %struct.TYPE_43__*, %struct.TYPE_41__, i32, i32, %struct.TYPE_34__* }
%struct.TYPE_46__ = type { i64, i32, %struct.TYPE_37__*, i32, %struct.TYPE_44__, i32, %struct.TYPE_33__*, %struct.TYPE_42__* }
%struct.TYPE_37__ = type { i32, i32, i32 }
%struct.TYPE_44__ = type { i32 }
%struct.TYPE_33__ = type { i32, i8* }
%struct.TYPE_42__ = type { %struct.TYPE_33__ }
%struct.TYPE_43__ = type { i32 }
%struct.TYPE_41__ = type { %struct.TYPE_40__*, %struct.TYPE_39__* }
%struct.TYPE_40__ = type { %struct.TYPE_33__ }
%struct.TYPE_39__ = type { %struct.TYPE_38__ }
%struct.TYPE_38__ = type { i32, i32 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_35__ = type { %struct.TYPE_45__, i32 }
%struct.TYPE_45__ = type { i32 }

@NGX_HTTP_VERSION_10 = common dso_local global i64 0, align 8
@NGX_HTTP_OK = common dso_local global i64 0, align 8
@ngx_http_core_module = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"bytes=\00", align 1
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"http ir:%V etag:%V\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"http ir:%T lm:%T\00", align 1
@ngx_http_range_body_filter_module = common dso_local global i32 0, align 4
@NGX_HTTP_PARTIAL_CONTENT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"Accept-Ranges\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_34__*)* @ngx_http_range_header_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_range_header_filter(%struct.TYPE_34__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_34__*, align 8
  %4 = alloca %struct.TYPE_33__*, align 8
  %5 = alloca %struct.TYPE_33__*, align 8
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_36__*, align 8
  %9 = alloca %struct.TYPE_35__*, align 8
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %3, align 8
  %10 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NGX_HTTP_VERSION_10, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %44, label %15

15:                                               ; preds = %1
  %16 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NGX_HTTP_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %44, label %22

22:                                               ; preds = %15
  %23 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %24 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %24, i32 0, i32 8
  %26 = load %struct.TYPE_34__*, %struct.TYPE_34__** %25, align 8
  %27 = icmp ne %struct.TYPE_34__* %23, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28, %22
  %34 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39, %33, %28, %15, %1
  %45 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %46 = call i32 @ngx_http_next_header_filter(%struct.TYPE_34__* %45)
  store i32 %46, i32* %2, align 4
  br label %288

47:                                               ; preds = %39
  %48 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %49 = load i32, i32* @ngx_http_core_module, align 4
  %50 = call %struct.TYPE_36__* @ngx_http_get_module_loc_conf(%struct.TYPE_34__* %48, i32 %49)
  store %struct.TYPE_36__* %50, %struct.TYPE_36__** %8, align 8
  %51 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %57 = call i32 @ngx_http_next_header_filter(%struct.TYPE_34__* %56)
  store i32 %57, i32* %2, align 4
  br label %288

58:                                               ; preds = %47
  %59 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_39__*, %struct.TYPE_39__** %61, align 8
  %63 = icmp eq %struct.TYPE_39__* %62, null
  br i1 %63, label %83, label %64

64:                                               ; preds = %58
  %65 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_39__*, %struct.TYPE_39__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %71, 7
  br i1 %72, label %83, label %73

73:                                               ; preds = %64
  %74 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_39__*, %struct.TYPE_39__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @ngx_strncasecmp(i32 %80, i32* bitcast ([7 x i8]* @.str to i32*), i32 6)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %73, %64, %58
  br label %254

84:                                               ; preds = %73
  %85 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_40__*, %struct.TYPE_40__** %87, align 8
  %89 = icmp ne %struct.TYPE_40__* %88, null
  br i1 %89, label %90, label %191

90:                                               ; preds = %84
  %91 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_40__*, %struct.TYPE_40__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %94, i32 0, i32 0
  store %struct.TYPE_33__* %95, %struct.TYPE_33__** %5, align 8
  %96 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp sge i32 %98, 2
  br i1 %99, label %100, label %156

100:                                              ; preds = %90
  %101 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %103, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 34
  br i1 %112, label %113, label %156

113:                                              ; preds = %100
  %114 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %115, i32 0, i32 7
  %117 = load %struct.TYPE_42__*, %struct.TYPE_42__** %116, align 8
  %118 = icmp eq %struct.TYPE_42__* %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %254

120:                                              ; preds = %113
  %121 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %122, i32 0, i32 7
  %124 = load %struct.TYPE_42__*, %struct.TYPE_42__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %124, i32 0, i32 0
  store %struct.TYPE_33__* %125, %struct.TYPE_33__** %6, align 8
  %126 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %127 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %127, i32 0, i32 4
  %129 = load %struct.TYPE_43__*, %struct.TYPE_43__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %133 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %134 = call i32 @ngx_log_debug2(i32 %126, i32 %131, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_33__* %132, %struct.TYPE_33__* %133)
  %135 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %137, %140
  br i1 %141, label %154, label %142

142:                                              ; preds = %120
  %143 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i64 @ngx_strncmp(i8* %145, i8* %148, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %142, %120
  br label %254

155:                                              ; preds = %142
  br label %192

156:                                              ; preds = %100, %90
  %157 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %158, i32 0, i32 6
  %160 = load %struct.TYPE_33__*, %struct.TYPE_33__** %159, align 8
  %161 = icmp eq %struct.TYPE_33__* %160, inttoptr (i64 -1 to %struct.TYPE_33__*)
  br i1 %161, label %162, label %163

162:                                              ; preds = %156
  br label %254

163:                                              ; preds = %156
  %164 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %164, i32 0, i32 1
  %166 = load i8*, i8** %165, align 8
  %167 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call %struct.TYPE_33__* @ngx_parse_http_time(i8* %166, i32 %169)
  store %struct.TYPE_33__* %170, %struct.TYPE_33__** %4, align 8
  %171 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %172 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %172, i32 0, i32 4
  %174 = load %struct.TYPE_43__*, %struct.TYPE_43__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %178 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %179, i32 0, i32 6
  %181 = load %struct.TYPE_33__*, %struct.TYPE_33__** %180, align 8
  %182 = call i32 @ngx_log_debug2(i32 %171, i32 %176, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_33__* %177, %struct.TYPE_33__* %181)
  %183 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %184 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %185, i32 0, i32 6
  %187 = load %struct.TYPE_33__*, %struct.TYPE_33__** %186, align 8
  %188 = icmp ne %struct.TYPE_33__* %183, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %163
  br label %254

190:                                              ; preds = %163
  br label %191

191:                                              ; preds = %190, %84
  br label %192

192:                                              ; preds = %191, %155
  %193 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = call %struct.TYPE_35__* @ngx_pcalloc(i32 %195, i32 8)
  store %struct.TYPE_35__* %196, %struct.TYPE_35__** %9, align 8
  %197 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %198 = icmp eq %struct.TYPE_35__* %197, null
  br i1 %198, label %199, label %200

199:                                              ; preds = %192
  store i32 130, i32* %2, align 4
  br label %288

200:                                              ; preds = %192
  %201 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %205, i32 0, i32 1
  store i32 %204, i32* %206, align 4
  %207 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %200
  br label %216

212:                                              ; preds = %200
  %213 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  br label %216

216:                                              ; preds = %212, %211
  %217 = phi i32 [ 1, %211 ], [ %215, %212 ]
  store i32 %217, i32* %7, align 4
  %218 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %219 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %220 = load i32, i32* %7, align 4
  %221 = call i32 @ngx_http_range_parse(%struct.TYPE_34__* %218, %struct.TYPE_35__* %219, i32 %220)
  switch i32 %221, label %252 [
    i32 128, label %222
    i32 129, label %248
    i32 130, label %251
  ]

222:                                              ; preds = %216
  %223 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %224 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %225 = load i32, i32* @ngx_http_range_body_filter_module, align 4
  %226 = call i32 @ngx_http_set_ctx(%struct.TYPE_34__* %223, %struct.TYPE_35__* %224, i32 %225)
  %227 = load i64, i64* @NGX_HTTP_PARTIAL_CONTENT, align 8
  %228 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %229, i32 0, i32 0
  store i64 %227, i64* %230, align 8
  %231 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %232, i32 0, i32 4
  %234 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %233, i32 0, i32 0
  store i32 0, i32* %234, align 4
  %235 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %236 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = icmp eq i32 %238, 1
  br i1 %239, label %240, label %244

240:                                              ; preds = %222
  %241 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %242 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %243 = call i32 @ngx_http_range_singlepart_header(%struct.TYPE_34__* %241, %struct.TYPE_35__* %242)
  store i32 %243, i32* %2, align 4
  br label %288

244:                                              ; preds = %222
  %245 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %246 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %247 = call i32 @ngx_http_range_multipart_header(%struct.TYPE_34__* %245, %struct.TYPE_35__* %246)
  store i32 %247, i32* %2, align 4
  br label %288

248:                                              ; preds = %216
  %249 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %250 = call i32 @ngx_http_range_not_satisfiable(%struct.TYPE_34__* %249)
  store i32 %250, i32* %2, align 4
  br label %288

251:                                              ; preds = %216
  store i32 130, i32* %2, align 4
  br label %288

252:                                              ; preds = %216
  br label %253

253:                                              ; preds = %252
  br label %254

254:                                              ; preds = %253, %189, %162, %154, %119, %83
  %255 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %256, i32 0, i32 3
  %258 = call %struct.TYPE_37__* @ngx_list_push(i32* %257)
  %259 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %260, i32 0, i32 2
  store %struct.TYPE_37__* %258, %struct.TYPE_37__** %261, align 8
  %262 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %263, i32 0, i32 2
  %265 = load %struct.TYPE_37__*, %struct.TYPE_37__** %264, align 8
  %266 = icmp eq %struct.TYPE_37__* %265, null
  br i1 %266, label %267, label %268

267:                                              ; preds = %254
  store i32 130, i32* %2, align 4
  br label %288

268:                                              ; preds = %254
  %269 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %270, i32 0, i32 2
  %272 = load %struct.TYPE_37__*, %struct.TYPE_37__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %272, i32 0, i32 0
  store i32 1, i32* %273, align 4
  %274 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %275, i32 0, i32 2
  %277 = load %struct.TYPE_37__*, %struct.TYPE_37__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %277, i32 0, i32 2
  %279 = call i32 @ngx_str_set(i32* %278, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %280 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %281, i32 0, i32 2
  %283 = load %struct.TYPE_37__*, %struct.TYPE_37__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %283, i32 0, i32 1
  %285 = call i32 @ngx_str_set(i32* %284, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %286 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %287 = call i32 @ngx_http_next_header_filter(%struct.TYPE_34__* %286)
  store i32 %287, i32* %2, align 4
  br label %288

288:                                              ; preds = %268, %267, %251, %248, %244, %240, %199, %55, %44
  %289 = load i32, i32* %2, align 4
  ret i32 %289
}

declare dso_local i32 @ngx_http_next_header_filter(%struct.TYPE_34__*) #1

declare dso_local %struct.TYPE_36__* @ngx_http_get_module_loc_conf(%struct.TYPE_34__*, i32) #1

declare dso_local i64 @ngx_strncasecmp(i32, i32*, i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, %struct.TYPE_33__*, %struct.TYPE_33__*) #1

declare dso_local i64 @ngx_strncmp(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_33__* @ngx_parse_http_time(i8*, i32) #1

declare dso_local %struct.TYPE_35__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_http_range_parse(%struct.TYPE_34__*, %struct.TYPE_35__*, i32) #1

declare dso_local i32 @ngx_http_set_ctx(%struct.TYPE_34__*, %struct.TYPE_35__*, i32) #1

declare dso_local i32 @ngx_http_range_singlepart_header(%struct.TYPE_34__*, %struct.TYPE_35__*) #1

declare dso_local i32 @ngx_http_range_multipart_header(%struct.TYPE_34__*, %struct.TYPE_35__*) #1

declare dso_local i32 @ngx_http_range_not_satisfiable(%struct.TYPE_34__*) #1

declare dso_local %struct.TYPE_37__* @ngx_list_push(i32*) #1

declare dso_local i32 @ngx_str_set(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
