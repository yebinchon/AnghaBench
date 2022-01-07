; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_geoip_module.c_ngx_http_geoip_proxy.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_geoip_module.c_ngx_http_geoip_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_7__ = type { i32* }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_8__*, i32*, i8*)* @ngx_http_geoip_proxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_geoip_proxy(%struct.TYPE_8__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %8, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %9, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = call i64 @ngx_http_geoip_cidr_value(%struct.TYPE_8__* %19, i32* %21, i32* %10)
  %23 = load i64, i64* @NGX_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %26, i8** %4, align 8
  br label %59

27:                                               ; preds = %3
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32* @ngx_array_create(i32 %35, i32 4, i32 4)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store i32* %36, i32** %38, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %44, i8** %4, align 8
  br label %59

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45, %27
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32* @ngx_array_push(i32* %49)
  store i32* %50, i32** %11, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %54, i8** %4, align 8
  br label %59

55:                                               ; preds = %46
  %56 = load i32, i32* %10, align 4
  %57 = load i32*, i32** %11, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %58, i8** %4, align 8
  br label %59

59:                                               ; preds = %55, %53, %43, %25
  %60 = load i8*, i8** %4, align 8
  ret i8* %60
}

declare dso_local i64 @ngx_http_geoip_cidr_value(%struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32* @ngx_array_create(i32, i32, i32) #1

declare dso_local i32* @ngx_array_push(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
