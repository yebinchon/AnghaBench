; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_meta_server_message.c_ngx_http_tfs_select_meta_server.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_meta_server_message.c_ngx_http_tfs_select_meta_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__*, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i8*, i8* }

@NGX_HTTP_TFS_METASERVER_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ngx_http_tfs_select_meta_server(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @ngx_hton64(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  store i8* %10, i8** %11, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i8* @ngx_hton64(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = bitcast %struct.TYPE_11__* %5 to i32*
  %19 = call i64 @ngx_http_tfs_murmur_hash(i32* %18, i32 16)
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @NGX_HTTP_TFS_METASERVER_COUNT, align 8
  %22 = urem i64 %20, %21
  store i64 %22, i64* %4, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  ret i32* %30
}

declare dso_local i8* @ngx_hton64(i32) #1

declare dso_local i64 @ngx_http_tfs_murmur_hash(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
