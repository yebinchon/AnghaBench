; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_root_server_message.c_ngx_http_tfs_root_server_create_message.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_root_server_message.c_ngx_http_tfs_root_server_create_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }

@NGX_HTTP_TFS_PACKET_FLAG = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_REQ_RT_GET_TABLE_MESSAGE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_PACKET_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @ngx_http_tfs_root_server_create_message(i32* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call %struct.TYPE_11__* @ngx_create_temp_buf(i32* %7, i32 24)
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %4, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = icmp eq %struct.TYPE_11__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %67

12:                                               ; preds = %1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %6, align 8
  %17 = load i32, i32* @NGX_HTTP_TFS_PACKET_FLAG, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 5
  store i32 %17, i32* %20, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i32 4, i32* %23, align 4
  %24 = load i32, i32* @NGX_HTTP_TFS_REQ_RT_GET_TABLE_MESSAGE, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 4
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @NGX_HTTP_TFS_PACKET_VERSION, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @NGX_HTTP_TFS_PACKET_FLAG, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i64 1
  %36 = bitcast %struct.TYPE_8__* %35 to i8*
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ngx_http_tfs_crc(i32 %32, i8* %36, i32 %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 4
  %45 = call i32 (...) @ngx_http_tfs_generate_packet_id()
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = add i64 %52, 24
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 8
  %55 = load i32*, i32** %3, align 8
  %56 = call %struct.TYPE_10__* @ngx_alloc_chain_link(i32* %55)
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** %5, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = icmp eq %struct.TYPE_10__* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %12
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %67

60:                                               ; preds = %12
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  store %struct.TYPE_11__* %61, %struct.TYPE_11__** %63, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %66, %struct.TYPE_10__** %2, align 8
  br label %67

67:                                               ; preds = %60, %59, %11
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %68
}

declare dso_local %struct.TYPE_11__* @ngx_create_temp_buf(i32*, i32) #1

declare dso_local i32 @ngx_http_tfs_crc(i32, i8*, i32) #1

declare dso_local i32 @ngx_http_tfs_generate_packet_id(...) #1

declare dso_local %struct.TYPE_10__* @ngx_alloc_chain_link(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
