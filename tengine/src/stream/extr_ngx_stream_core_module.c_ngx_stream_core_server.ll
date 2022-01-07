; ModuleID = '/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_core_module.c_ngx_stream_core_server.c'
source_filename = "/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_core_module.c_ngx_stream_core_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_19__*, %struct.TYPE_15__*, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__**, %struct.TYPE_17__** }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_19__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__** }
%struct.TYPE_14__ = type { i64, i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i8* (%struct.TYPE_20__*)* }

@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@ngx_stream_max_module = common dso_local global i32 0, align 4
@NGX_STREAM_MODULE = common dso_local global i64 0, align 8
@ngx_stream_core_module = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@NGX_STREAM_SRV_CONF = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"no \22listen\22 is defined for server in %s:%ui\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_20__*, i32*, i8*)* @ngx_stream_core_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_stream_core_server(%struct.TYPE_20__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_20__, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca %struct.TYPE_17__**, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i8* @ngx_pcalloc(i32 %20, i32 16)
  %22 = bitcast i8* %21 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %22, %struct.TYPE_19__** %13, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %24 = icmp eq %struct.TYPE_19__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %26, i8** %4, align 8
  br label %187

27:                                               ; preds = %3
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %29, align 8
  store %struct.TYPE_19__* %30, %struct.TYPE_19__** %14, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %32, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  store %struct.TYPE_18__** %33, %struct.TYPE_18__*** %35, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ngx_stream_max_module, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 8, %40
  %42 = trunc i64 %41 to i32
  %43 = call i8* @ngx_pcalloc(i32 %38, i32 %42)
  %44 = bitcast i8* %43 to %struct.TYPE_17__**
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 1
  store %struct.TYPE_17__** %44, %struct.TYPE_17__*** %46, align 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %48, align 8
  %50 = icmp eq %struct.TYPE_17__** %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %27
  %52 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %52, i8** %4, align 8
  br label %187

53:                                               ; preds = %27
  store i64 0, i64* %10, align 8
  br label %54

54:                                               ; preds = %121, %53
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %58, align 8
  %60 = load i64, i64* %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %59, i64 %60
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = icmp ne %struct.TYPE_14__* %62, null
  br i1 %63, label %64, label %124

64:                                               ; preds = %54
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %68, align 8
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %69, i64 %70
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @NGX_STREAM_MODULE, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %64
  br label %121

78:                                               ; preds = %64
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %82, align 8
  %84 = load i64, i64* %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %83, i64 %84
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %87, align 8
  store %struct.TYPE_16__* %88, %struct.TYPE_16__** %12, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i8* (%struct.TYPE_20__*)*, i8* (%struct.TYPE_20__*)** %90, align 8
  %92 = icmp ne i8* (%struct.TYPE_20__*)* %91, null
  br i1 %92, label %93, label %120

93:                                               ; preds = %78
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i8* (%struct.TYPE_20__*)*, i8* (%struct.TYPE_20__*)** %95, align 8
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %98 = call i8* %96(%struct.TYPE_20__* %97)
  store i8* %98, i8** %9, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = icmp eq i8* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %93
  %102 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %102, i8** %4, align 8
  br label %187

103:                                              ; preds = %93
  %104 = load i8*, i8** %9, align 8
  %105 = bitcast i8* %104 to %struct.TYPE_17__*
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %107, align 8
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %112, align 8
  %114 = load i64, i64* %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %113, i64 %114
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %108, i64 %118
  store %struct.TYPE_17__* %105, %struct.TYPE_17__** %119, align 8
  br label %120

120:                                              ; preds = %103, %78
  br label %121

121:                                              ; preds = %120, %77
  %122 = load i64, i64* %10, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %10, align 8
  br label %54

124:                                              ; preds = %54
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %126, align 8
  %128 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ngx_stream_core_module, i32 0, i32 0), align 8
  %129 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %127, i64 %128
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %129, align 8
  store %struct.TYPE_17__* %130, %struct.TYPE_17__** %15, align 8
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 3
  store %struct.TYPE_19__* %131, %struct.TYPE_19__** %133, align 8
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %135, align 8
  %137 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ngx_stream_core_module, i32 0, i32 0), align 8
  %138 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %136, i64 %137
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %138, align 8
  store %struct.TYPE_18__* %139, %struct.TYPE_18__** %17, align 8
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  %142 = call %struct.TYPE_17__** @ngx_array_push(i32* %141)
  store %struct.TYPE_17__** %142, %struct.TYPE_17__*** %16, align 8
  %143 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %16, align 8
  %144 = icmp eq %struct.TYPE_17__** %143, null
  br i1 %144, label %145, label %147

145:                                              ; preds = %124
  %146 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %146, i8** %4, align 8
  br label %187

147:                                              ; preds = %124
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %149 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %16, align 8
  store %struct.TYPE_17__* %148, %struct.TYPE_17__** %149, align 8
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %151 = bitcast %struct.TYPE_20__* %11 to i8*
  %152 = bitcast %struct.TYPE_20__* %150 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %151, i8* align 8 %152, i64 32, i1 false)
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 2
  store %struct.TYPE_19__* %153, %struct.TYPE_19__** %155, align 8
  %156 = load i32, i32* @NGX_STREAM_SRV_CONF, align 4
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 4
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %160 = call i8* @ngx_conf_parse(%struct.TYPE_20__* %159, i32* null)
  store i8* %160, i8** %8, align 8
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %162 = bitcast %struct.TYPE_20__* %161 to i8*
  %163 = bitcast %struct.TYPE_20__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %162, i8* align 8 %163, i64 32, i1 false)
  %164 = load i8*, i8** %8, align 8
  %165 = load i8*, i8** @NGX_CONF_OK, align 8
  %166 = icmp eq i8* %164, %165
  br i1 %166, label %167, label %185

167:                                              ; preds = %147
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %185, label %172

172:                                              ; preds = %167
  %173 = load i32, i32* @NGX_LOG_EMERG, align 4
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @ngx_log_error(i32 %173, i32 %176, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %179, i32 %182)
  %184 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %184, i8** %4, align 8
  br label %187

185:                                              ; preds = %167, %147
  %186 = load i8*, i8** %8, align 8
  store i8* %186, i8** %4, align 8
  br label %187

187:                                              ; preds = %185, %172, %145, %101, %51, %25
  %188 = load i8*, i8** %4, align 8
  ret i8* %188
}

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

declare dso_local %struct.TYPE_17__** @ngx_array_push(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @ngx_conf_parse(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
