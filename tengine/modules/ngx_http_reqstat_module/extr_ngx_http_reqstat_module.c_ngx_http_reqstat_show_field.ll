; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_reqstat_module/extr_ngx_http_reqstat_module.c_ngx_http_reqstat_show_field.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_reqstat_module/extr_ngx_http_reqstat_module.c_ngx_http_reqstat_show_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i8* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i8*, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_14__*, i32* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_16__* }

@ngx_http_reqstat_module = common dso_local global i32 0, align 4
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_HTTP_REQSTAT_RSRV = common dso_local global i64 0, align 8
@REQSTAT_RSRV_VARIABLES = common dso_local global %struct.TYPE_12__* null, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"field \22%V\22 does not exist\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_18__*, i32*, i8*)* @ngx_http_reqstat_show_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_reqstat_show_field(%struct.TYPE_18__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %15, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %19 = load i32, i32* @ngx_http_reqstat_module, align 4
  %20 = call %struct.TYPE_17__* @ngx_http_conf_get_module_main_conf(%struct.TYPE_18__* %18, i32 %19)
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %14, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = call i32* @ngx_array_create(i32 %23, i32 %29, i32 4)
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %38, i8** %4, align 8
  br label %223

39:                                               ; preds = %3
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  %49 = call i32* @ngx_array_push_n(i32* %42, i32 %48)
  store i32* %49, i32** %9, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %39
  %53 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %53, i8** %4, align 8
  br label %223

54:                                               ; preds = %39
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  store %struct.TYPE_16__* %59, %struct.TYPE_16__** %10, align 8
  store i64 1, i64* %12, align 8
  br label %60

60:                                               ; preds = %218, %54
  %61 = load i64, i64* %12, align 8
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = icmp ult i64 %61, %67
  br i1 %68, label %69, label %221

69:                                               ; preds = %60
  store i32 0, i32* %8, align 4
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %71 = load i64, i64* %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 36
  br i1 %78, label %79, label %153

79:                                               ; preds = %69
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %81 = load i64, i64* %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %83, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %87 = load i64, i64* %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, -1
  store i64 %91, i64* %89, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  %95 = icmp ne %struct.TYPE_14__* %94, null
  br i1 %95, label %96, label %152

96:                                               ; preds = %79
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  store %struct.TYPE_16__* %101, %struct.TYPE_16__** %11, align 8
  store i64 0, i64* %13, align 8
  br label %102

102:                                              ; preds = %148, %96
  %103 = load i64, i64* %13, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ult i64 %103, %108
  br i1 %109, label %110, label %151

110:                                              ; preds = %102
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %112 = load i64, i64* %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %117 = load i64, i64* %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %115, %120
  br i1 %121, label %140, label %122

122:                                              ; preds = %110
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %124 = load i64, i64* %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %129 = load i64, i64* %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %134 = load i64, i64* %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = call i64 @ngx_strncmp(i8* %127, i8* %132, i64 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %122, %110
  br label %148

141:                                              ; preds = %122
  %142 = load i64, i64* @NGX_HTTP_REQSTAT_RSRV, align 8
  %143 = load i64, i64* %13, align 8
  %144 = add i64 %142, %143
  %145 = trunc i64 %144 to i32
  %146 = load i32*, i32** %9, align 8
  %147 = getelementptr inbounds i32, i32* %146, i32 1
  store i32* %147, i32** %9, align 8
  store i32 %145, i32* %146, align 4
  store i32 1, i32* %8, align 4
  br label %151

148:                                              ; preds = %140
  %149 = load i64, i64* %13, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %13, align 8
  br label %102

151:                                              ; preds = %141, %102
  br label %152

152:                                              ; preds = %151, %79
  br label %204

153:                                              ; preds = %69
  store i64 0, i64* %13, align 8
  br label %154

154:                                              ; preds = %200, %153
  %155 = load i64, i64* %13, align 8
  %156 = load i64, i64* @NGX_HTTP_REQSTAT_RSRV, align 8
  %157 = icmp ult i64 %155, %156
  br i1 %157, label %158, label %203

158:                                              ; preds = %154
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %160 = load i64, i64* %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** @REQSTAT_RSRV_VARIABLES, align 8
  %165 = load i64, i64* %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %163, %169
  br i1 %170, label %190, label %171

171:                                              ; preds = %158
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** @REQSTAT_RSRV_VARIABLES, align 8
  %173 = load i64, i64* %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %179 = load i64, i64* %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %184 = load i64, i64* %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = call i64 @ngx_strncmp(i8* %177, i8* %182, i64 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %171, %158
  br label %200

191:                                              ; preds = %171
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** @REQSTAT_RSRV_VARIABLES, align 8
  %193 = load i64, i64* %13, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = trunc i64 %196 to i32
  %198 = load i32*, i32** %9, align 8
  %199 = getelementptr inbounds i32, i32* %198, i32 1
  store i32* %199, i32** %9, align 8
  store i32 %197, i32* %198, align 4
  store i32 1, i32* %8, align 4
  br label %203

200:                                              ; preds = %190
  %201 = load i64, i64* %13, align 8
  %202 = add i64 %201, 1
  store i64 %202, i64* %13, align 8
  br label %154

203:                                              ; preds = %191, %154
  br label %204

204:                                              ; preds = %203, %152
  %205 = load i32, i32* %8, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %217, label %207

207:                                              ; preds = %204
  %208 = load i32, i32* @NGX_LOG_EMERG, align 4
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %213 = load i64, i64* %12, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i64 %213
  %215 = call i32 @ngx_log_error(i32 %208, i32 %211, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.TYPE_16__* %214)
  %216 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %216, i8** %4, align 8
  br label %223

217:                                              ; preds = %204
  br label %218

218:                                              ; preds = %217
  %219 = load i64, i64* %12, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %12, align 8
  br label %60

221:                                              ; preds = %60
  %222 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %222, i8** %4, align 8
  br label %223

223:                                              ; preds = %221, %207, %52, %37
  %224 = load i8*, i8** %4, align 8
  ret i8* %224
}

declare dso_local %struct.TYPE_17__* @ngx_http_conf_get_module_main_conf(%struct.TYPE_18__*, i32) #1

declare dso_local i32* @ngx_array_create(i32, i32, i32) #1

declare dso_local i32* @ngx_array_push_n(i32*, i32) #1

declare dso_local i64 @ngx_strncmp(i8*, i8*, i64) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
