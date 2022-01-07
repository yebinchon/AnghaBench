; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_limit_req_module.c_ngx_http_limit_req.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_limit_req_module.c_ngx_http_limit_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i8*, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_19__ }
%struct.TYPE_21__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_19__, i32* }

@.str = private unnamed_addr constant [6 x i8] c"zone=\00", align 1
@ngx_http_limit_req_module = common dso_local global i32 0, align 4
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"burst=\00", align 1
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"invalid burst value \22%V\22\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"delay=\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"invalid delay value \22%V\22\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"nodelay\00", align 1
@NGX_MAX_INT_T_VALUE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"invalid parameter \22%V\22\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"\22%V\22 must have \22zone\22 parameter\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_22__*, %struct.TYPE_23__*, i8*)* @ngx_http_limit_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_limit_req(%struct.TYPE_22__* %0, %struct.TYPE_23__* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_19__, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %18, %struct.TYPE_21__** %8, align 8
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  store %struct.TYPE_19__* %23, %struct.TYPE_19__** %11, align 8
  store i32* null, i32** %14, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i64 1, i64* %13, align 8
  br label %24

24:                                               ; preds = %148, %3
  %25 = load i64, i64* %13, align 8
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = icmp ult i64 %25, %31
  br i1 %32, label %33, label %151

33:                                               ; preds = %24
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %35 = load i64, i64* %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @ngx_strncmp(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %33
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %43 = load i64, i64* %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 5
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  store i32 %47, i32* %48, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %50 = load i64, i64* %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 5
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  store i8* %54, i8** %55, align 8
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %57 = call i32* @ngx_shared_memory_add(%struct.TYPE_22__* %56, %struct.TYPE_19__* %12, i32 0, i32* @ngx_http_limit_req_module)
  store i32* %57, i32** %14, align 8
  %58 = load i32*, i32** %14, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %41
  %61 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %61, i8** %4, align 8
  br label %222

62:                                               ; preds = %41
  br label %148

63:                                               ; preds = %33
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %65 = load i64, i64* %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @ngx_strncmp(i8* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %96

71:                                               ; preds = %63
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %73 = load i64, i64* %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 6
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %79 = load i64, i64* %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = sub nsw i32 %82, 6
  %84 = call i32 @ngx_atoi(i8* %77, i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp sle i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %71
  %88 = load i32, i32* @NGX_LOG_EMERG, align 4
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %91 = load i64, i64* %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i64 %91
  %93 = call i32 @ngx_conf_log_error(i32 %88, %struct.TYPE_22__* %89, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_19__* %92)
  %94 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %94, i8** %4, align 8
  br label %222

95:                                               ; preds = %71
  br label %148

96:                                               ; preds = %63
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %98 = load i64, i64* %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i64 @ngx_strncmp(i8* %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %129

104:                                              ; preds = %96
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %106 = load i64, i64* %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 6
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %112 = load i64, i64* %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = sub nsw i32 %115, 6
  %117 = call i32 @ngx_atoi(i8* %110, i32 %116)
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp sle i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %104
  %121 = load i32, i32* @NGX_LOG_EMERG, align 4
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %124 = load i64, i64* %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i64 %124
  %126 = call i32 @ngx_conf_log_error(i32 %121, %struct.TYPE_22__* %122, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_19__* %125)
  %127 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %127, i8** %4, align 8
  br label %222

128:                                              ; preds = %104
  br label %148

129:                                              ; preds = %96
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %131 = load i64, i64* %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i64 @ngx_strcmp(i8* %134, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %129
  %138 = load i32, i32* @NGX_MAX_INT_T_VALUE, align 4
  %139 = sdiv i32 %138, 1000
  store i32 %139, i32* %10, align 4
  br label %148

140:                                              ; preds = %129
  %141 = load i32, i32* @NGX_LOG_EMERG, align 4
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %144 = load i64, i64* %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i64 %144
  %146 = call i32 @ngx_conf_log_error(i32 %141, %struct.TYPE_22__* %142, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_19__* %145)
  %147 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %147, i8** %4, align 8
  br label %222

148:                                              ; preds = %137, %128, %95, %62
  %149 = load i64, i64* %13, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %13, align 8
  br label %24

151:                                              ; preds = %24
  %152 = load i32*, i32** %14, align 8
  %153 = icmp eq i32* %152, null
  br i1 %153, label %154, label %161

154:                                              ; preds = %151
  %155 = load i32, i32* @NGX_LOG_EMERG, align 4
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i32 0, i32 0
  %159 = call i32 @ngx_conf_log_error(i32 %155, %struct.TYPE_22__* %156, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_19__* %158)
  %160 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %160, i8** %4, align 8
  br label %222

161:                                              ; preds = %151
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %164, align 8
  store %struct.TYPE_20__* %165, %struct.TYPE_20__** %16, align 8
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %167 = icmp eq %struct.TYPE_20__* %166, null
  br i1 %167, label %168, label %180

168:                                              ; preds = %161
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i64 @ngx_array_init(%struct.TYPE_17__* %170, i32 %173, i32 1, i32 32)
  %175 = load i64, i64* @NGX_OK, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %168
  %178 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %178, i8** %4, align 8
  br label %222

179:                                              ; preds = %168
  br label %180

180:                                              ; preds = %179, %161
  store i64 0, i64* %13, align 8
  br label %181

181:                                              ; preds = %198, %180
  %182 = load i64, i64* %13, align 8
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp ult i64 %182, %186
  br i1 %187, label %188, label %201

188:                                              ; preds = %181
  %189 = load i32*, i32** %14, align 8
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %191 = load i64, i64* %13, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 3
  %194 = load i32*, i32** %193, align 8
  %195 = icmp eq i32* %189, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %188
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8** %4, align 8
  br label %222

197:                                              ; preds = %188
  br label %198

198:                                              ; preds = %197
  %199 = load i64, i64* %13, align 8
  %200 = add i64 %199, 1
  store i64 %200, i64* %13, align 8
  br label %181

201:                                              ; preds = %181
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 1
  %204 = call %struct.TYPE_20__* @ngx_array_push(%struct.TYPE_17__* %203)
  store %struct.TYPE_20__* %204, %struct.TYPE_20__** %15, align 8
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %206 = icmp eq %struct.TYPE_20__* %205, null
  br i1 %206, label %207, label %209

207:                                              ; preds = %201
  %208 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %208, i8** %4, align 8
  br label %222

209:                                              ; preds = %201
  %210 = load i32*, i32** %14, align 8
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %211, i32 0, i32 3
  store i32* %210, i32** %212, align 8
  %213 = load i32, i32* %9, align 4
  %214 = mul nsw i32 %213, 1000
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 0
  store i32 %214, i32* %216, align 8
  %217 = load i32, i32* %10, align 4
  %218 = mul nsw i32 %217, 1000
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 1
  store i32 %218, i32* %220, align 4
  %221 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %221, i8** %4, align 8
  br label %222

222:                                              ; preds = %209, %207, %196, %177, %154, %140, %120, %87, %60
  %223 = load i8*, i8** %4, align 8
  ret i8* %223
}

declare dso_local i64 @ngx_strncmp(i8*, i8*, i32) #1

declare dso_local i32* @ngx_shared_memory_add(%struct.TYPE_22__*, %struct.TYPE_19__*, i32, i32*) #1

declare dso_local i32 @ngx_atoi(i8*, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_22__*, i32, i8*, %struct.TYPE_19__*) #1

declare dso_local i64 @ngx_strcmp(i8*, i8*) #1

declare dso_local i64 @ngx_array_init(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_20__* @ngx_array_push(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
