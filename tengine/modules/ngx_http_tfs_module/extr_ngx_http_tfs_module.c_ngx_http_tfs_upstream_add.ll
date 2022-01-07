; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_module.c_ngx_http_tfs_upstream_add.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_module.c_ngx_http_tfs_upstream_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__, %struct.TYPE_16__, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, %struct.TYPE_19__** }

@NGX_HTTP_TFS_UPSTREAM_CREATE = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s in tfs upstream \22%V\22\00", align 1
@ngx_http_tfs_module = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"duplicate tfs upstream \22%V\22\00", align 1
@NGX_HTTP_TFS_UPSTREAM_FIND = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c" host not found in tfs upstream \22%V\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_19__* @ngx_http_tfs_upstream_add(%struct.TYPE_21__* %0, %struct.TYPE_18__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_19__**, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @NGX_HTTP_TFS_UPSTREAM_CREATE, align 8
  %14 = and i64 %12, %13
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %41, label %16

16:                                               ; preds = %3
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %21 = call i64 @ngx_parse_url(i32 %19, %struct.TYPE_18__* %20)
  %22 = load i64, i64* @NGX_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %16
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load i32, i32* @NGX_LOG_EMERG, align 4
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.TYPE_16__*
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 1
  %38 = call i32 (i32, %struct.TYPE_21__*, i32, i8*, %struct.TYPE_16__*, ...) @ngx_conf_log_error(i32 %30, %struct.TYPE_21__* %31, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.TYPE_16__* %35, %struct.TYPE_16__* %37)
  br label %39

39:                                               ; preds = %29, %24
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  br label %143

40:                                               ; preds = %16
  br label %41

41:                                               ; preds = %40, %3
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %43 = load i32, i32* @ngx_http_tfs_module, align 4
  %44 = call %struct.TYPE_20__* @ngx_http_conf_get_module_main_conf(%struct.TYPE_21__* %42, i32 %43)
  store %struct.TYPE_20__* %44, %struct.TYPE_20__** %11, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %47, align 8
  store %struct.TYPE_19__** %48, %struct.TYPE_19__*** %10, align 8
  store i64 0, i64* %8, align 8
  br label %49

49:                                               ; preds = %104, %41
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ult i64 %50, %54
  br i1 %55, label %56, label %107

56:                                               ; preds = %49
  %57 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %57, i64 %58
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %63, %67
  br i1 %68, label %87, label %69

69:                                               ; preds = %56
  %70 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %70, i64 %71
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @ngx_strncasecmp(i32 %76, i32 %80, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %69, %56
  br label %104

88:                                               ; preds = %69
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* @NGX_HTTP_TFS_UPSTREAM_CREATE, align 8
  %91 = and i64 %89, %90
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load i32, i32* @NGX_LOG_EMERG, align 4
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = call i32 (i32, %struct.TYPE_21__*, i32, i8*, %struct.TYPE_16__*, ...) @ngx_conf_log_error(i32 %94, %struct.TYPE_21__* %95, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_16__* %97)
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  br label %143

99:                                               ; preds = %88
  %100 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %101 = load i64, i64* %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %100, i64 %101
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %102, align 8
  store %struct.TYPE_19__* %103, %struct.TYPE_19__** %4, align 8
  br label %143

104:                                              ; preds = %87
  %105 = load i64, i64* %8, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %8, align 8
  br label %49

107:                                              ; preds = %49
  %108 = load i64, i64* %7, align 8
  %109 = load i64, i64* @NGX_HTTP_TFS_UPSTREAM_FIND, align 8
  %110 = and i64 %108, %109
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load i32, i32* @NGX_LOG_EMERG, align 4
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 1
  %117 = call i32 (i32, %struct.TYPE_21__*, i32, i8*, %struct.TYPE_16__*, ...) @ngx_conf_log_error(i32 %113, %struct.TYPE_21__* %114, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_16__* %116)
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  br label %143

118:                                              ; preds = %107
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call %struct.TYPE_19__* @ngx_pcalloc(i32 %121, i32 8)
  store %struct.TYPE_19__* %122, %struct.TYPE_19__** %9, align 8
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %124 = icmp eq %struct.TYPE_19__* %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  br label %143

126:                                              ; preds = %118
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = bitcast %struct.TYPE_16__* %128 to i8*
  %132 = bitcast %struct.TYPE_16__* %130 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %131, i8* align 8 %132, i64 8, i1 false)
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 0
  %135 = call %struct.TYPE_19__** @ngx_array_push(%struct.TYPE_17__* %134)
  store %struct.TYPE_19__** %135, %struct.TYPE_19__*** %10, align 8
  %136 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %137 = icmp eq %struct.TYPE_19__** %136, null
  br i1 %137, label %138, label %139

138:                                              ; preds = %126
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  br label %143

139:                                              ; preds = %126
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %141 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  store %struct.TYPE_19__* %140, %struct.TYPE_19__** %141, align 8
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  store %struct.TYPE_19__* %142, %struct.TYPE_19__** %4, align 8
  br label %143

143:                                              ; preds = %139, %138, %125, %112, %99, %93, %39
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  ret %struct.TYPE_19__* %144
}

declare dso_local i64 @ngx_parse_url(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_21__*, i32, i8*, %struct.TYPE_16__*, ...) #1

declare dso_local %struct.TYPE_20__* @ngx_http_conf_get_module_main_conf(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @ngx_strncasecmp(i32, i32, i32) #1

declare dso_local %struct.TYPE_19__* @ngx_pcalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_19__** @ngx_array_push(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
