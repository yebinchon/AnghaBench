; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_user_agent_module/extr_ngx_http_user_agent_module.c_ngx_http_user_agent_block.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_user_agent_module/extr_ngx_http_user_agent_module.c_ngx_http_user_agent_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i8*, i32, %struct.TYPE_18__*, i32, %struct.TYPE_15__* }
%struct.TYPE_18__ = type { i32*, %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { i64 (%struct.TYPE_20__*)* }
%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64, i32 }

@NGX_HTTP_VAR_CHANGEABLE = common dso_local global i32 0, align 4
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@ngx_http_user_agent_variable = common dso_local global i32 0, align 4
@ngx_http_user_agent = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"no default value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_19__*, i32*, i8*)* @ngx_http_user_agent_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_user_agent_block(%struct.TYPE_19__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_16__, align 4
  %11 = alloca %struct.TYPE_19__, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %9, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i64 1
  %21 = bitcast %struct.TYPE_16__* %10 to i8*
  %22 = bitcast %struct.TYPE_16__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 8, i1 false)
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %30 = load i32, i32* @NGX_HTTP_VAR_CHANGEABLE, align 4
  %31 = call %struct.TYPE_17__* @ngx_http_add_variable(%struct.TYPE_19__* %29, %struct.TYPE_16__* %10, i32 %30)
  store %struct.TYPE_17__* %31, %struct.TYPE_17__** %12, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %33 = icmp eq %struct.TYPE_17__* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %35, i8** %4, align 8
  br label %115

36:                                               ; preds = %3
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.TYPE_18__* @ngx_palloc(i32 %39, i32 24)
  store %struct.TYPE_18__* %40, %struct.TYPE_18__** %13, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %42 = icmp eq %struct.TYPE_18__* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %44, i8** %4, align 8
  br label %115

45:                                               ; preds = %36
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call %struct.TYPE_20__* @ngx_trie_create(i32 %53)
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 1
  store %struct.TYPE_20__* %54, %struct.TYPE_20__** %56, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %58, align 8
  %60 = icmp eq %struct.TYPE_20__* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %45
  %62 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %62, i8** %4, align 8
  br label %115

63:                                               ; preds = %45
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  %66 = load i32, i32* @ngx_http_user_agent_variable, align 4
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %70 = ptrtoint %struct.TYPE_18__* %69 to i64
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %74 = bitcast %struct.TYPE_19__* %11 to i8*
  %75 = bitcast %struct.TYPE_19__* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 40, i1 false)
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 2
  store %struct.TYPE_18__* %76, %struct.TYPE_18__** %78, align 8
  %79 = load i32, i32* @ngx_http_user_agent, align 4
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %86 = call i8* @ngx_conf_parse(%struct.TYPE_19__* %85, i32* null)
  store i8* %86, i8** %8, align 8
  %87 = load i64, i64* @NGX_OK, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 0
  %92 = load i64 (%struct.TYPE_20__*)*, i64 (%struct.TYPE_20__*)** %91, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %94, align 8
  %96 = call i64 %92(%struct.TYPE_20__* %95)
  %97 = icmp ne i64 %87, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %63
  %99 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %99, i8** %4, align 8
  br label %115

100:                                              ; preds = %63
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %102 = bitcast %struct.TYPE_19__* %101 to i8*
  %103 = bitcast %struct.TYPE_19__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %102, i8* align 8 %103, i64 40, i1 false)
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %100
  %109 = load i32, i32* @NGX_LOG_EMERG, align 4
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %111 = call i32 @ngx_conf_log_error(i32 %109, %struct.TYPE_19__* %110, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %112 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %112, i8** %8, align 8
  br label %113

113:                                              ; preds = %108, %100
  %114 = load i8*, i8** %8, align 8
  store i8* %114, i8** %4, align 8
  br label %115

115:                                              ; preds = %113, %98, %61, %43, %34
  %116 = load i8*, i8** %4, align 8
  ret i8* %116
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_17__* @ngx_http_add_variable(%struct.TYPE_19__*, %struct.TYPE_16__*, i32) #2

declare dso_local %struct.TYPE_18__* @ngx_palloc(i32, i32) #2

declare dso_local %struct.TYPE_20__* @ngx_trie_create(i32) #2

declare dso_local i8* @ngx_conf_parse(%struct.TYPE_19__*, i32*) #2

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_19__*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
