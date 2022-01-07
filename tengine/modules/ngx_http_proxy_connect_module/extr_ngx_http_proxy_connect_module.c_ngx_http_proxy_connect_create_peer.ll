; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_proxy_connect_module/extr_ngx_http_proxy_connect_module.c_ngx_http_proxy_connect_create_peer.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_proxy_connect_module/extr_ngx_http_proxy_connect_module.c_ngx_http_proxy_connect_create_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_10__, %struct.sockaddr*, i32, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64, i32* }
%struct.sockaddr = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.sockaddr_in = type { i8*, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }

@NGX_ERROR = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@NGX_SOCKADDR_STRLEN = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*, %struct.TYPE_11__*)* @ngx_http_proxy_connect_create_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_proxy_connect_create_peer(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %11 = call i64 (...) @ngx_random()
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = urem i64 %11, %14
  store i64 %15, i64* %7, align 8
  store i32 24, i32* %9, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call %struct.sockaddr* @ngx_pcalloc(i32 %18, i32 %19)
  store %struct.sockaddr* %20, %struct.sockaddr** %10, align 8
  %21 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %22 = icmp eq %struct.sockaddr* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i64, i64* @NGX_ERROR, align 8
  store i64 %24, i64* %3, align 8
  br label %80

25:                                               ; preds = %2
  %26 = load i32, i32* @AF_INET, align 4
  %27 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %28 = bitcast %struct.sockaddr* %27 to %struct.sockaddr_in*
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 8
  %30 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %31 = bitcast %struct.sockaddr* %30 to %struct.sockaddr_in*
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 5
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i64 %37
  %39 = bitcast %struct.TYPE_9__* %33 to i8*
  %40 = bitcast %struct.TYPE_9__* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 4 %40, i64 8, i1 false)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i8* @htons(i32 %43)
  %45 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %46 = bitcast %struct.sockaddr* %45 to %struct.sockaddr_in*
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %46, i32 0, i32 0
  store i8* %44, i8** %47, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @NGX_SOCKADDR_STRLEN, align 4
  %52 = call i32* @ngx_pnalloc(i32 %50, i32 %51)
  store i32* %52, i32** %6, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %25
  %56 = load i64, i64* @NGX_ERROR, align 8
  store i64 %56, i64* %3, align 8
  br label %80

57:                                               ; preds = %25
  %58 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* @NGX_SOCKADDR_STRLEN, align 4
  %62 = call i64 @__ngx_sock_ntop(%struct.sockaddr* %58, i32 %59, i32* %60, i32 %61, i32 1)
  store i64 %62, i64* %8, align 8
  %63 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 3
  store %struct.sockaddr* %63, %struct.sockaddr** %65, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  store i32* %69, i32** %72, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  store i64 %73, i64* %76, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  store i64 1, i64* %78, align 8
  %79 = load i64, i64* @NGX_OK, align 8
  store i64 %79, i64* %3, align 8
  br label %80

80:                                               ; preds = %57, %55, %23
  %81 = load i64, i64* %3, align 8
  ret i64 %81
}

declare dso_local i64 @ngx_random(...) #1

declare dso_local %struct.sockaddr* @ngx_pcalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @htons(i32) #1

declare dso_local i32* @ngx_pnalloc(i32, i32) #1

declare dso_local i64 @__ngx_sock_ntop(%struct.sockaddr*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
