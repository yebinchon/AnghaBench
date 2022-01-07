; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_process_trailers.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_process_trailers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_15__*, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__*, %struct.TYPE_19__* }
%struct.TYPE_18__ = type { %struct.TYPE_16__, i32, i32 }
%struct.TYPE_16__ = type { i32 }

@NGX_OK = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_20__*)* @ngx_http_upstream_process_trailers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_upstream_process_trailers(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @NGX_OK, align 4
  store i32 %17, i32* %3, align 4
  br label %90

18:                                               ; preds = %2
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  store %struct.TYPE_19__* %22, %struct.TYPE_19__** %7, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  store %struct.TYPE_18__* %25, %struct.TYPE_18__** %8, align 8
  store i64 0, i64* %6, align 8
  br label %26

26:                                               ; preds = %85, %18
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp uge i64 %27, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %34, align 8
  %36 = icmp eq %struct.TYPE_19__* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %88

38:                                               ; preds = %32
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %40, align 8
  store %struct.TYPE_19__* %41, %struct.TYPE_19__** %7, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %43, align 8
  store %struct.TYPE_18__* %44, %struct.TYPE_18__** %8, align 8
  store i64 0, i64* %6, align 8
  br label %45

45:                                               ; preds = %38, %26
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @ngx_hash_find(i32* %49, i32 %54, i32 %59, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %45
  br label %85

69:                                               ; preds = %45
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = call %struct.TYPE_18__* @ngx_list_push(i32* %72)
  store %struct.TYPE_18__* %73, %struct.TYPE_18__** %9, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %75 = icmp eq %struct.TYPE_18__* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @NGX_ERROR, align 4
  store i32 %77, i32* %3, align 4
  br label %90

78:                                               ; preds = %69
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %81 = load i64, i64* %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i64 %81
  %83 = bitcast %struct.TYPE_18__* %79 to i8*
  %84 = bitcast %struct.TYPE_18__* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %83, i8* align 4 %84, i64 12, i1 false)
  br label %85

85:                                               ; preds = %78, %68
  %86 = load i64, i64* %6, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %6, align 8
  br label %26

88:                                               ; preds = %37
  %89 = load i32, i32* @NGX_OK, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %76, %16
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i64 @ngx_hash_find(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_18__* @ngx_list_push(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
