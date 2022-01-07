; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http.c_ngx_http_init_headers_in_hash.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http.c_ngx_http_init_headers_in_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__*, i32, %struct.TYPE_15__ }
%struct.TYPE_19__ = type { i32, i8*, i32*, i32, i32, i32 (i32, i64)*, i32* }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_headers_in = common dso_local global %struct.TYPE_16__* null, align 8
@ngx_cacheline_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"headers_in_hash\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_20__*, %struct.TYPE_17__*)* @ngx_http_init_headers_in_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_init_headers_in_hash(%struct.TYPE_20__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_21__, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_19__, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @ngx_array_init(%struct.TYPE_21__* %6, i32 %12, i32 32, i32 32)
  %14 = load i64, i64* @NGX_OK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i64, i64* @NGX_ERROR, align 8
  store i64 %17, i64* %3, align 8
  br label %82

18:                                               ; preds = %2
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** @ngx_http_headers_in, align 8
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %9, align 8
  br label %20

20:                                               ; preds = %53, %18
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %56

26:                                               ; preds = %20
  %27 = call %struct.TYPE_18__* @ngx_array_push(%struct.TYPE_21__* %6)
  store %struct.TYPE_18__* %27, %struct.TYPE_18__** %7, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %29 = icmp eq %struct.TYPE_18__* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i64, i64* @NGX_ERROR, align 8
  store i64 %31, i64* %3, align 8
  br label %82

32:                                               ; preds = %26
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = bitcast %struct.TYPE_15__* %34 to i8*
  %38 = bitcast %struct.TYPE_15__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 16, i1 false)
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @ngx_hash_key_lc(i32 %42, i64 %46)
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  store %struct.TYPE_16__* %50, %struct.TYPE_16__** %52, align 8
  br label %53

53:                                               ; preds = %32
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 1
  store %struct.TYPE_16__* %55, %struct.TYPE_16__** %9, align 8
  br label %20

56:                                               ; preds = %20
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 6
  store i32* %58, i32** %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 5
  store i32 (i32, i64)* @ngx_hash_key_lc, i32 (i32, i64)** %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  store i32 512, i32* %61, align 8
  %62 = load i32, i32* @ngx_cacheline_size, align 4
  %63 = call i32 @ngx_align(i32 64, i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 4
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %65, align 8
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 3
  store i32 %68, i32* %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 2
  store i32* null, i32** %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @ngx_hash_init(%struct.TYPE_19__* %8, i32 %72, i32 %74)
  %76 = load i64, i64* @NGX_OK, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %56
  %79 = load i64, i64* @NGX_ERROR, align 8
  store i64 %79, i64* %3, align 8
  br label %82

80:                                               ; preds = %56
  %81 = load i64, i64* @NGX_OK, align 8
  store i64 %81, i64* %3, align 8
  br label %82

82:                                               ; preds = %80, %78, %30, %16
  %83 = load i64, i64* %3, align 8
  ret i64 %83
}

declare dso_local i64 @ngx_array_init(%struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_18__* @ngx_array_push(%struct.TYPE_21__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_hash_key_lc(i32, i64) #1

declare dso_local i32 @ngx_align(i32, i32) #1

declare dso_local i64 @ngx_hash_init(%struct.TYPE_19__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
