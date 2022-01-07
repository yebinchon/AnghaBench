; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_headers_filter_module.c_ngx_http_set_response_header.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_headers_filter_module.c_ngx_http_set_response_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__, i32 }

@NGX_OK = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, %struct.TYPE_12__*)* @ngx_http_set_response_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_set_response_header(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__**, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = bitcast %struct.TYPE_10__* %11 to i8*
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %12, i64 %16
  %18 = bitcast i8* %17 to %struct.TYPE_11__**
  store %struct.TYPE_11__** %18, %struct.TYPE_11__*** %9, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %3
  %24 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = icmp ne %struct.TYPE_11__* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %31, align 8
  br label %32

32:                                               ; preds = %27, %23
  %33 = load i32, i32* @NGX_OK, align 4
  store i32 %33, i32* %4, align 4
  br label %67

34:                                               ; preds = %3
  %35 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = icmp ne %struct.TYPE_11__* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %8, align 8
  br label %53

41:                                               ; preds = %34
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = call %struct.TYPE_11__* @ngx_list_push(i32* %44)
  store %struct.TYPE_11__* %45, %struct.TYPE_11__** %8, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %47 = icmp eq %struct.TYPE_11__* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @NGX_ERROR, align 4
  store i32 %49, i32* %4, align 4
  br label %67

50:                                               ; preds = %41
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %52 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  store %struct.TYPE_11__* %51, %struct.TYPE_11__** %52, align 8
  br label %53

53:                                               ; preds = %50, %38
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %64 = bitcast %struct.TYPE_12__* %62 to i8*
  %65 = bitcast %struct.TYPE_12__* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %64, i8* align 8 %65, i64 8, i1 false)
  %66 = load i32, i32* @NGX_OK, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %53, %48, %32
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.TYPE_11__* @ngx_list_push(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
