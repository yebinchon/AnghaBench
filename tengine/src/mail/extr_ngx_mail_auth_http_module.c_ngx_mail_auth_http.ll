; ModuleID = '/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_auth_http_module.c_ngx_mail_auth_http.c'
source_filename = "/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_auth_http_module.c_ngx_mail_auth_http.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_17__, %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32, i64, %struct.TYPE_17__, %struct.TYPE_17__, i32, %struct.TYPE_14__, i64 }

@.str = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"%s in auth_http \22%V\22\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@AF_UNIX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_16__*, i32*, i8*)* @ngx_mail_auth_http to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_mail_auth_http(%struct.TYPE_16__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %8, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %9, align 8
  %18 = call i32 @ngx_memzero(%struct.TYPE_13__* %10, i32 56)
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 6
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i64 1
  %22 = bitcast %struct.TYPE_14__* %19 to i8*
  %23 = bitcast %struct.TYPE_14__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 8, i1 false)
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  store i32 80, i32* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @ngx_strncmp(i32 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 7
  store i32 %35, i32* %33, align 4
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 7
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %31, %3
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @ngx_parse_url(i32 %43, %struct.TYPE_13__* %10)
  %45 = load i64, i64* @NGX_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 7
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load i32, i32* @NGX_LOG_EMERG, align 4
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 7
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 6
  %57 = call i32 @ngx_conf_log_error(i32 %52, %struct.TYPE_16__* %53, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %55, %struct.TYPE_14__* %56)
  br label %58

58:                                               ; preds = %51, %47
  %59 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %59, i8** %4, align 8
  br label %96

60:                                               ; preds = %40
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @AF_UNIX, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %60
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 4
  %73 = bitcast %struct.TYPE_17__* %71 to i8*
  %74 = bitcast %struct.TYPE_17__* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 8, i1 false)
  br label %79

75:                                               ; preds = %60
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 1
  %78 = call i32 @ngx_str_set(%struct.TYPE_17__* %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %79

79:                                               ; preds = %75, %69
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 3
  %83 = bitcast %struct.TYPE_17__* %81 to i8*
  %84 = bitcast %struct.TYPE_17__* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 8 %84, i64 8, i1 false)
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %79
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = call i32 @ngx_str_set(%struct.TYPE_17__* %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %94

94:                                               ; preds = %90, %79
  %95 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %95, i8** %4, align 8
  br label %96

96:                                               ; preds = %94, %58
  %97 = load i8*, i8** %4, align 8
  ret i8* %97
}

declare dso_local i32 @ngx_memzero(%struct.TYPE_13__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_strncmp(i32, i8*, i32) #1

declare dso_local i64 @ngx_parse_url(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_16__*, i32, i8*, i64, %struct.TYPE_14__*) #1

declare dso_local i32 @ngx_str_set(%struct.TYPE_17__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
