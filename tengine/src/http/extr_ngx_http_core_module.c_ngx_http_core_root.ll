; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_core_module.c_ngx_http_core_root.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_core_module.c_ngx_http_core_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i8*, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, i32, %struct.TYPE_19__, i64, %struct.TYPE_17__, i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32*, i32*, %struct.TYPE_19__*, %struct.TYPE_22__* }

@.str = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"\22%V\22 directive is duplicate, \22%s\22 directive was specified earlier\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [63 x i8] c"the \22alias\22 directive cannot be used inside the named location\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"$document_root\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"${document_root}\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"the $document_root variable cannot be used in the \22%V\22 directive\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"$realpath_root\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"${realpath_root}\00", align 1
@.str.10 = private unnamed_addr constant [65 x i8] c"the $realpath_root variable cannot be used in the \22%V\22 directive\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@NGX_MAX_SIZE_T_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_22__*, %struct.TYPE_23__*, i8*)* @ngx_http_core_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_core_root(%struct.TYPE_22__* %0, %struct.TYPE_23__* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_20__, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %8, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp eq i64 %19, 5
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 0
  store i32 %22, i32* %10, align 4
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %50

28:                                               ; preds = %3
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %210

37:                                               ; preds = %28
  %38 = load i32, i32* @NGX_LOG_EMERG, align 4
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %48 = call i32 (i32, %struct.TYPE_22__*, i32, i8*, ...) @ngx_conf_log_error(i32 %38, %struct.TYPE_22__* %39, i32 0, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_18__* %41, i8* %47)
  %49 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %49, i8** %4, align 8
  br label %210

50:                                               ; preds = %3
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 6
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i32, i32* @NGX_LOG_EMERG, align 4
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %61 = call i32 (i32, %struct.TYPE_22__*, i32, i8*, ...) @ngx_conf_log_error(i32 %59, %struct.TYPE_22__* %60, i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0))
  %62 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %62, i8** %4, align 8
  br label %210

63:                                               ; preds = %55, %50
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %67, align 8
  store %struct.TYPE_19__* %68, %struct.TYPE_19__** %9, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i64 1
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @ngx_strstr(i8* %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %63
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i64 1
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @ngx_strstr(i8* %79, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %75, %63
  %83 = load i32, i32* @NGX_LOG_EMERG, align 4
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 0
  %87 = call i32 (i32, %struct.TYPE_22__*, i32, i8*, ...) @ngx_conf_log_error(i32 %83, %struct.TYPE_22__* %84, i32 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_18__* %86)
  %88 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %88, i8** %4, align 8
  br label %210

89:                                               ; preds = %75
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i64 1
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @ngx_strstr(i8* %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %89
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i64 1
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @ngx_strstr(i8* %100, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %96, %89
  %104 = load i32, i32* @NGX_LOG_EMERG, align 4
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 0
  %108 = call i32 (i32, %struct.TYPE_22__*, i32, i8*, ...) @ngx_conf_log_error(i32 %104, %struct.TYPE_22__* %105, i32 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.10, i64 0, i64 0), %struct.TYPE_18__* %107)
  %109 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %109, i8** %4, align 8
  br label %210

110:                                              ; preds = %96
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  br label %119

118:                                              ; preds = %110
  br label %119

119:                                              ; preds = %118, %113
  %120 = phi i32 [ %117, %113 ], [ 0, %118 ]
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 3
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i64 1
  %127 = bitcast %struct.TYPE_19__* %124 to i8*
  %128 = bitcast %struct.TYPE_19__* %126 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %127, i8* align 8 %128, i64 16, i1 false)
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %158, label %131

131:                                              ; preds = %119
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %158

137:                                              ; preds = %131
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = sub nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %141, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 47
  br i1 %151, label %152, label %158

152:                                              ; preds = %137
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %155, align 8
  br label %158

158:                                              ; preds = %152, %137, %131, %119
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 0
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp ne i32 %165, 36
  br i1 %166, label %167, label %179

167:                                              ; preds = %158
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 3
  %173 = call i64 @ngx_conf_full_name(i32 %170, %struct.TYPE_19__* %172, i32 0)
  %174 = load i64, i64* @NGX_OK, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %167
  %177 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %177, i8** %4, align 8
  br label %210

178:                                              ; preds = %167
  br label %179

179:                                              ; preds = %178, %158
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 3
  %182 = call i32 @ngx_http_script_variables_count(%struct.TYPE_19__* %181)
  store i32 %182, i32* %11, align 4
  %183 = call i32 @ngx_memzero(%struct.TYPE_20__* %12, i32 48)
  %184 = load i32, i32* %11, align 4
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  store i32 %184, i32* %185, align 8
  %186 = load i32, i32* %11, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %208

188:                                              ; preds = %179
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 6
  store %struct.TYPE_22__* %189, %struct.TYPE_22__** %190, align 8
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 5
  store %struct.TYPE_19__* %192, %struct.TYPE_19__** %193, align 8
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 4
  store i32* %195, i32** %196, align 8
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 3
  store i32* %198, i32** %199, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 1
  store i32 1, i32* %200, align 4
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 2
  store i32 1, i32* %201, align 8
  %202 = call i64 @ngx_http_script_compile(%struct.TYPE_20__* %12)
  %203 = load i64, i64* @NGX_OK, align 8
  %204 = icmp ne i64 %202, %203
  br i1 %204, label %205, label %207

205:                                              ; preds = %188
  %206 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %206, i8** %4, align 8
  br label %210

207:                                              ; preds = %188
  br label %208

208:                                              ; preds = %207, %179
  %209 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %209, i8** %4, align 8
  br label %210

210:                                              ; preds = %208, %205, %176, %103, %82, %58, %37, %36
  %211 = load i8*, i8** %4, align 8
  ret i8* %211
}

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_22__*, i32, i8*, ...) #1

declare dso_local i64 @ngx_strstr(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_conf_full_name(i32, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @ngx_http_script_variables_count(%struct.TYPE_19__*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @ngx_http_script_compile(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
