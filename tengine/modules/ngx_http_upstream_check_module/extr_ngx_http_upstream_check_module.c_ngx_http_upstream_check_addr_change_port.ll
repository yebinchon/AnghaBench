; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_addr_change_port.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_addr_change_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i64, i32* }
%struct.TYPE_11__ = type { i32 }
%struct.sockaddr_in = type { i8* }

@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_INET_ADDRSTRLEN = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@NGX_INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32)* @ngx_http_upstream_check_addr_change_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_upstream_check_addr_change_port(i32* %0, %struct.TYPE_10__* %1, %struct.TYPE_10__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sockaddr_in*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.TYPE_11__* @ngx_palloc(i32* %18, i32 %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %24, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = icmp eq %struct.TYPE_11__* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* @NGX_ERROR, align 4
  store i32 %30, i32* %5, align 4
  br label %89

31:                                               ; preds = %4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ngx_memcpy(%struct.TYPE_11__* %34, %struct.TYPE_11__* %37, i32 %40)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %60 [
    i32 129, label %47
  ]

47:                                               ; preds = %31
  %48 = load i32, i32* @NGX_INET_ADDRSTRLEN, align 4
  %49 = sext i32 %48 to i64
  %50 = add i64 %49, 7
  %51 = sub i64 %50, 1
  store i64 %51, i64* %10, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = bitcast %struct.TYPE_11__* %54 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %55, %struct.sockaddr_in** %12, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i8* @htons(i32 %56)
  %58 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %59 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  br label %62

60:                                               ; preds = %31
  %61 = load i32, i32* @NGX_ERROR, align 4
  store i32 %61, i32* %5, align 4
  br label %89

62:                                               ; preds = %47
  %63 = load i32*, i32** %6, align 8
  %64 = load i64, i64* %10, align 8
  %65 = call i32* @ngx_pnalloc(i32* %63, i64 %64)
  store i32* %65, i32** %11, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @NGX_ERROR, align 4
  store i32 %69, i32* %5, align 4
  br label %89

70:                                               ; preds = %62
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = load i64, i64* %10, align 8
  %79 = call i64 @ngx_sock_ntop(%struct.TYPE_11__* %73, i32 %76, i32* %77, i64 %78, i32 1)
  store i64 %79, i64* %10, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  store i64 %80, i64* %83, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  store i32* %84, i32** %87, align 8
  %88 = load i32, i32* @NGX_OK, align 4
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %70, %68, %60, %29
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local %struct.TYPE_11__* @ngx_palloc(i32*, i32) #1

declare dso_local i32 @ngx_memcpy(%struct.TYPE_11__*, %struct.TYPE_11__*, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32* @ngx_pnalloc(i32*, i64) #1

declare dso_local i64 @ngx_sock_ntop(%struct.TYPE_11__*, i32, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
