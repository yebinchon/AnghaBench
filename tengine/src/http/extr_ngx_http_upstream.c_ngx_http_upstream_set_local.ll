; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_set_local.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_set_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_22__*, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_20__ = type { i32*, %struct.TYPE_22__*, i32 }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"invalid local address \22%V\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_21__*, %struct.TYPE_19__*, %struct.TYPE_20__*)* @ngx_http_upstream_set_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_upstream_set_local(%struct.TYPE_21__* %0, %struct.TYPE_19__* %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_18__, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %7, align 8
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %12 = icmp eq %struct.TYPE_20__* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %16, align 8
  %17 = load i64, i64* @NGX_OK, align 8
  store i64 %17, i64* %4, align 8
  br label %94

18:                                               ; preds = %3
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %25, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  store %struct.TYPE_22__* %26, %struct.TYPE_22__** %29, align 8
  %30 = load i64, i64* @NGX_OK, align 8
  store i64 %30, i64* %4, align 8
  br label %94

31:                                               ; preds = %18
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @ngx_http_complex_value(%struct.TYPE_21__* %32, i32* %35, %struct.TYPE_18__* %9)
  %37 = load i64, i64* @NGX_OK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i64, i64* @NGX_ERROR, align 8
  store i64 %40, i64* %4, align 8
  br label %94

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, i64* @NGX_OK, align 8
  store i64 %46, i64* %4, align 8
  br label %94

47:                                               ; preds = %41
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.TYPE_22__* @ngx_palloc(i32 %50, i32 16)
  store %struct.TYPE_22__* %51, %struct.TYPE_22__** %10, align 8
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %53 = icmp eq %struct.TYPE_22__* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i64, i64* @NGX_ERROR, align 8
  store i64 %55, i64* %4, align 8
  br label %94

56:                                               ; preds = %47
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @ngx_parse_addr_port(i32 %59, %struct.TYPE_22__* %60, i32 %62, i64 %64)
  store i64 %65, i64* %8, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* @NGX_ERROR, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %56
  %70 = load i64, i64* @NGX_ERROR, align 8
  store i64 %70, i64* %4, align 8
  br label %94

71:                                               ; preds = %56
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* @NGX_OK, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = load i32, i32* @NGX_LOG_ERR, align 4
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ngx_log_error(i32 %76, i32 %81, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.TYPE_18__* %9)
  %83 = load i64, i64* @NGX_OK, align 8
  store i64 %83, i64* %4, align 8
  br label %94

84:                                               ; preds = %71
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 0
  %87 = bitcast %struct.TYPE_18__* %86 to i8*
  %88 = bitcast %struct.TYPE_18__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %87, i8* align 8 %88, i64 16, i1 false)
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  store %struct.TYPE_22__* %89, %struct.TYPE_22__** %92, align 8
  %93 = load i64, i64* @NGX_OK, align 8
  store i64 %93, i64* %4, align 8
  br label %94

94:                                               ; preds = %84, %75, %69, %54, %45, %39, %23, %13
  %95 = load i64, i64* %4, align 8
  ret i64 %95
}

declare dso_local i64 @ngx_http_complex_value(%struct.TYPE_21__*, i32*, %struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_22__* @ngx_palloc(i32, i32) #1

declare dso_local i64 @ngx_parse_addr_port(i32, %struct.TYPE_22__*, i32, i64) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_18__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
