; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_core_module.c_ngx_http_core_limit_except.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_core_module.c_ngx_http_core_limit_except.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_27__*, %struct.TYPE_22__*, i32, %struct.TYPE_20__* }
%struct.TYPE_27__ = type { %struct.TYPE_26__**, i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i32, i32, i32, %struct.TYPE_26__**, %struct.TYPE_26__** }
%struct.TYPE_22__ = type { %struct.TYPE_21__** }
%struct.TYPE_21__ = type { i64, i64, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i8* (%struct.TYPE_28__*)* }
%struct.TYPE_20__ = type { i64, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@ngx_methods_names = common dso_local global %struct.TYPE_25__* null, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"invalid method \22%V\22\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_HTTP_GET = common dso_local global i32 0, align 4
@NGX_HTTP_HEAD = common dso_local global i64 0, align 8
@ngx_http_max_module = common dso_local global i32 0, align 4
@NGX_HTTP_MODULE = common dso_local global i64 0, align 8
@ngx_http_core_module = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_LMT_CONF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_28__*, i32*, i8*)* @ngx_http_core_limit_except to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_core_limit_except(%struct.TYPE_28__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_28__, align 8
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca %struct.TYPE_27__*, align 8
  %16 = alloca %struct.TYPE_27__*, align 8
  %17 = alloca %struct.TYPE_25__*, align 8
  %18 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %20, %struct.TYPE_26__** %8, align 8
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %262

26:                                               ; preds = %3
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 0
  store i32 -1, i32* %28, align 8
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %32, align 8
  store %struct.TYPE_23__* %33, %struct.TYPE_23__** %11, align 8
  store i64 1, i64* %12, align 8
  br label %34

34:                                               ; preds = %81, %26
  %35 = load i64, i64* %12, align 8
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %35, %40
  br i1 %41, label %42, label %84

42:                                               ; preds = %34
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** @ngx_methods_names, align 8
  store %struct.TYPE_25__* %43, %struct.TYPE_25__** %17, align 8
  br label %44

44:                                               ; preds = %69, %42
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %44
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %51 = load i64, i64* %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @ngx_strcasecmp(i32 %54, i64 %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %49
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %80

68:                                               ; preds = %49
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 1
  store %struct.TYPE_25__* %71, %struct.TYPE_25__** %17, align 8
  br label %44

72:                                               ; preds = %44
  %73 = load i32, i32* @NGX_LOG_EMERG, align 4
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %76 = load i64, i64* %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i64 %76
  %78 = call i32 @ngx_conf_log_error(i32 %73, %struct.TYPE_28__* %74, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_23__* %77)
  %79 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %79, i8** %4, align 8
  br label %262

80:                                               ; preds = %60
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %12, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %12, align 8
  br label %34

84:                                               ; preds = %34
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @NGX_HTTP_GET, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %84
  %92 = load i64, i64* @NGX_HTTP_HEAD, align 8
  %93 = xor i64 %92, -1
  %94 = trunc i64 %93 to i32
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %91, %84
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i8* @ngx_pcalloc(i32 %102, i32 16)
  %104 = bitcast i8* %103 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %104, %struct.TYPE_27__** %15, align 8
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %106 = icmp eq %struct.TYPE_27__* %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %99
  %108 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %108, i8** %4, align 8
  br label %262

109:                                              ; preds = %99
  %110 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %111, align 8
  store %struct.TYPE_27__* %112, %struct.TYPE_27__** %16, align 8
  %113 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %117 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 8
  %123 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @ngx_http_max_module, align 4
  %127 = sext i32 %126 to i64
  %128 = mul i64 8, %127
  %129 = trunc i64 %128 to i32
  %130 = call i8* @ngx_pcalloc(i32 %125, i32 %129)
  %131 = bitcast i8* %130 to %struct.TYPE_26__**
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %133 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %132, i32 0, i32 0
  store %struct.TYPE_26__** %131, %struct.TYPE_26__*** %133, align 8
  %134 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %135 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %135, align 8
  %137 = icmp eq %struct.TYPE_26__** %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %109
  %139 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %139, i8** %4, align 8
  br label %262

140:                                              ; preds = %109
  store i64 0, i64* %12, align 8
  br label %141

141:                                              ; preds = %208, %140
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %145, align 8
  %147 = load i64, i64* %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %146, i64 %147
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %148, align 8
  %150 = icmp ne %struct.TYPE_21__* %149, null
  br i1 %150, label %151, label %211

151:                                              ; preds = %141
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %155, align 8
  %157 = load i64, i64* %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %156, i64 %157
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @NGX_HTTP_MODULE, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %151
  br label %208

165:                                              ; preds = %151
  %166 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %169, align 8
  %171 = load i64, i64* %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %170, i64 %171
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %174, align 8
  store %struct.TYPE_24__* %175, %struct.TYPE_24__** %14, align 8
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 0
  %178 = load i8* (%struct.TYPE_28__*)*, i8* (%struct.TYPE_28__*)** %177, align 8
  %179 = icmp ne i8* (%struct.TYPE_28__*)* %178, null
  br i1 %179, label %180, label %207

180:                                              ; preds = %165
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i32 0, i32 0
  %183 = load i8* (%struct.TYPE_28__*)*, i8* (%struct.TYPE_28__*)** %182, align 8
  %184 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %185 = call i8* %183(%struct.TYPE_28__* %184)
  store i8* %185, i8** %10, align 8
  %186 = load i8*, i8** %10, align 8
  %187 = icmp eq i8* %186, null
  br i1 %187, label %188, label %190

188:                                              ; preds = %180
  %189 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %189, i8** %4, align 8
  br label %262

190:                                              ; preds = %180
  %191 = load i8*, i8** %10, align 8
  %192 = bitcast i8* %191 to %struct.TYPE_26__*
  %193 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %194, align 8
  %196 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %196, i32 0, i32 2
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %199, align 8
  %201 = load i64, i64* %12, align 8
  %202 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %200, i64 %201
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %195, i64 %205
  store %struct.TYPE_26__* %192, %struct.TYPE_26__** %206, align 8
  br label %207

207:                                              ; preds = %190, %165
  br label %208

208:                                              ; preds = %207, %164
  %209 = load i64, i64* %12, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* %12, align 8
  br label %141

211:                                              ; preds = %141
  %212 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %213 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %213, align 8
  %215 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @ngx_http_core_module, i32 0, i32 0), align 8
  %216 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %214, i64 %215
  %217 = load %struct.TYPE_26__*, %struct.TYPE_26__** %216, align 8
  store %struct.TYPE_26__* %217, %struct.TYPE_26__** %18, align 8
  %218 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %219 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %219, align 8
  %221 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %221, i32 0, i32 6
  store %struct.TYPE_26__** %220, %struct.TYPE_26__*** %222, align 8
  %223 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %224 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %224, align 8
  %226 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %227 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %226, i32 0, i32 5
  store %struct.TYPE_26__** %225, %struct.TYPE_26__*** %227, align 8
  %228 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %232 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %231, i32 0, i32 4
  store i32 %230, i32* %232, align 8
  %233 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %234 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %233, i32 0, i32 1
  store i32 1, i32* %234, align 4
  %235 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %236 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %235, i32 0, i32 2
  store i32 1, i32* %236, align 8
  %237 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %238 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %238, i32 0, i32 3
  %240 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %241 = call i64 @ngx_http_add_location(%struct.TYPE_28__* %237, i32* %239, %struct.TYPE_26__* %240)
  %242 = load i64, i64* @NGX_OK, align 8
  %243 = icmp ne i64 %241, %242
  br i1 %243, label %244, label %246

244:                                              ; preds = %211
  %245 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %245, i8** %4, align 8
  br label %262

246:                                              ; preds = %211
  %247 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %248 = bitcast %struct.TYPE_28__* %13 to i8*
  %249 = bitcast %struct.TYPE_28__* %247 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %248, i8* align 8 %249, i64 40, i1 false)
  %250 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %251 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %251, i32 0, i32 1
  store %struct.TYPE_27__* %250, %struct.TYPE_27__** %252, align 8
  %253 = load i32, i32* @NGX_HTTP_LMT_CONF, align 4
  %254 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %254, i32 0, i32 0
  store i32 %253, i32* %255, align 8
  %256 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %257 = call i8* @ngx_conf_parse(%struct.TYPE_28__* %256, i32* null)
  store i8* %257, i8** %9, align 8
  %258 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %259 = bitcast %struct.TYPE_28__* %258 to i8*
  %260 = bitcast %struct.TYPE_28__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %259, i8* align 8 %260, i64 40, i1 false)
  %261 = load i8*, i8** %9, align 8
  store i8* %261, i8** %4, align 8
  br label %262

262:                                              ; preds = %246, %244, %188, %138, %107, %72, %25
  %263 = load i8*, i8** %4, align 8
  ret i8* %263
}

declare dso_local i64 @ngx_strcasecmp(i32, i64) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_28__*, i32, i8*, %struct.TYPE_23__*) #1

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

declare dso_local i64 @ngx_http_add_location(%struct.TYPE_28__*, i32*, %struct.TYPE_26__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @ngx_conf_parse(%struct.TYPE_28__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
