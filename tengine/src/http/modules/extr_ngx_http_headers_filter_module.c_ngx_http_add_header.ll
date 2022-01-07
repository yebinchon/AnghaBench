; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_headers_filter_module.c_ngx_http_add_header.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_headers_filter_module.c_ngx_http_add_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__, i32 }

@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, %struct.TYPE_12__*)* @ngx_http_add_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_add_header(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %3
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = call %struct.TYPE_11__* @ngx_list_push(i32* %16)
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %8, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %19 = icmp eq %struct.TYPE_11__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @NGX_ERROR, align 4
  store i32 %21, i32* %4, align 4
  br label %37

22:                                               ; preds = %13
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %33 = bitcast %struct.TYPE_12__* %31 to i8*
  %34 = bitcast %struct.TYPE_12__* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 8, i1 false)
  br label %35

35:                                               ; preds = %22, %3
  %36 = load i32, i32* @NGX_OK, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %35, %20
  %38 = load i32, i32* %4, align 4
  ret i32 %38
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
