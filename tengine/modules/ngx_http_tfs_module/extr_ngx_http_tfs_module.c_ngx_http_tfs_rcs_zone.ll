; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_module.c_ngx_http_tfs_rcs_zone.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_module.c_ngx_http_tfs_rcs_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_14__, i32* }
%struct.TYPE_15__ = type { i32*, i32 }

@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"invalid number of arguments in \22rcs_zone\22 directive\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"size=\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"invalid zone size \22%V\22\00", align 1
@ngx_pagesize = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"zone \22%V\22 is too small\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"name=\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"invalid parameter \22%V\22\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"\22rcs_zone\22 must have \22size\22 parameter\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"\22rcs_zone\22 must have  \22name\22 parameter\00", align 1
@ngx_http_tfs_module = common dso_local global i32 0, align 4
@ngx_http_tfs_rc_server_init_zone = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_17__*, %struct.TYPE_16__*)* @ngx_http_tfs_rcs_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_tfs_rcs_zone(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__, align 8
  %9 = alloca %struct.TYPE_14__, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %7, align 8
  store i64 0, i64* %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 3
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load i32, i32* @NGX_LOG_EMERG, align 4
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %28 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ngx_conf_log_error(i32 %26, %struct.TYPE_17__* %27, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %29 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %29, i8** %3, align 8
  br label %173

30:                                               ; preds = %2
  store i64 1, i64* %10, align 8
  br label %31

31:                                               ; preds = %121, %30
  %32 = load i64, i64* %10, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = icmp ult i64 %32, %38
  br i1 %39, label %40, label %124

40:                                               ; preds = %31
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @ngx_strncmp(i64 %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %90

48:                                               ; preds = %40
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %53, 5
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  store i64 %54, i64* %55, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 5
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  store i64 %61, i64* %62, align 8
  %63 = call i64 @ngx_parse_size(%struct.TYPE_14__* %8)
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* @NGX_ERROR, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %48
  %68 = load i32, i32* @NGX_LOG_EMERG, align 4
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i64 %71
  %73 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ngx_conf_log_error(i32 %68, %struct.TYPE_17__* %69, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_14__* %72)
  %74 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %74, i8** %3, align 8
  br label %173

75:                                               ; preds = %48
  %76 = load i64, i64* %6, align 8
  %77 = load i32, i32* @ngx_pagesize, align 4
  %78 = mul nsw i32 8, %77
  %79 = sext i32 %78 to i64
  %80 = icmp slt i64 %76, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %75
  %82 = load i32, i32* @NGX_LOG_EMERG, align 4
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %85 = load i64, i64* %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i64 %85
  %87 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ngx_conf_log_error(i32 %82, %struct.TYPE_17__* %83, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_14__* %86)
  %88 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %88, i8** %3, align 8
  br label %173

89:                                               ; preds = %75
  br label %121

90:                                               ; preds = %40
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %92 = load i64, i64* %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i64 @ngx_strncmp(i64 %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %90
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %100 = load i64, i64* %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %103, 5
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  store i64 %104, i64* %105, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %107 = load i64, i64* %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, 5
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  store i64 %111, i64* %112, align 8
  br label %121

113:                                              ; preds = %90
  %114 = load i32, i32* @NGX_LOG_EMERG, align 4
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %117 = load i64, i64* %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i64 %117
  %119 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ngx_conf_log_error(i32 %114, %struct.TYPE_17__* %115, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_14__* %118)
  %120 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %120, i8** %3, align 8
  br label %173

121:                                              ; preds = %98, %89
  %122 = load i64, i64* %10, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %10, align 8
  br label %31

124:                                              ; preds = %31
  %125 = load i64, i64* %6, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %124
  %128 = load i32, i32* @NGX_LOG_EMERG, align 4
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %130 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ngx_conf_log_error(i32 %128, %struct.TYPE_17__* %129, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %131 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %131, i8** %3, align 8
  br label %173

132:                                              ; preds = %124
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = load i32, i32* @NGX_LOG_EMERG, align 4
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %139 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ngx_conf_log_error(i32 %137, %struct.TYPE_17__* %138, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %140 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %140, i8** %3, align 8
  br label %173

141:                                              ; preds = %132
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32* @ngx_pcalloc(i32 %144, i32 4)
  store i32* %145, i32** %12, align 8
  %146 = load i32*, i32** %12, align 8
  %147 = icmp eq i32* %146, null
  br i1 %147, label %148, label %150

148:                                              ; preds = %141
  %149 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %149, i8** %3, align 8
  br label %173

150:                                              ; preds = %141
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %152 = load i64, i64* %6, align 8
  %153 = call %struct.TYPE_15__* @ngx_shared_memory_add(%struct.TYPE_17__* %151, %struct.TYPE_14__* %9, i64 %152, i32* @ngx_http_tfs_module)
  store %struct.TYPE_15__* %153, %struct.TYPE_15__** %11, align 8
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %155 = icmp eq %struct.TYPE_15__* %154, null
  br i1 %155, label %156, label %158

156:                                              ; preds = %150
  %157 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %157, i8** %3, align 8
  br label %173

158:                                              ; preds = %150
  %159 = load i32, i32* @ngx_http_tfs_rc_server_init_zone, align 4
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 8
  %162 = load i32*, i32** %12, align 8
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  store i32* %162, i32** %164, align 8
  %165 = load i32*, i32** %12, align 8
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 1
  store i32* %165, i32** %167, align 8
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 0
  %170 = bitcast %struct.TYPE_14__* %169 to i8*
  %171 = bitcast %struct.TYPE_14__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %170, i8* align 8 %171, i64 16, i1 false)
  %172 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %172, i8** %3, align 8
  br label %173

173:                                              ; preds = %158, %156, %148, %136, %127, %113, %81, %67, %25
  %174 = load i8*, i8** %3, align 8
  ret i8* %174
}

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_17__*, i32, i8*, ...) #1

declare dso_local i64 @ngx_strncmp(i64, i8*, i32) #1

declare dso_local i64 @ngx_parse_size(%struct.TYPE_14__*) #1

declare dso_local i32* @ngx_pcalloc(i32, i32) #1

declare dso_local %struct.TYPE_15__* @ngx_shared_memory_add(%struct.TYPE_17__*, %struct.TYPE_14__*, i64, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
