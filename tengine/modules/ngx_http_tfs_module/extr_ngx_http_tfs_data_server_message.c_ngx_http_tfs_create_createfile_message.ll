; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_data_server_message.c_ngx_http_tfs_create_createfile_message.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_data_server_message.c_ngx_http_tfs_create_createfile_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32*, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { i64, i32, i32, i32, i32, i32 }

@NGX_HTTP_TFS_CREATE_FILENAME_MESSAGE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_PACKET_FLAG = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_PACKET_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* (%struct.TYPE_15__*, %struct.TYPE_16__*)* @ngx_http_tfs_create_createfile_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @ngx_http_tfs_create_createfile_message(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i64 40, i64* %6, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i64, i64* %6, align 8
  %14 = call %struct.TYPE_19__* @ngx_create_temp_buf(i32 %12, i64 %13)
  store %struct.TYPE_19__* %14, %struct.TYPE_19__** %7, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %16 = icmp eq %struct.TYPE_19__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %3, align 8
  br label %88

18:                                               ; preds = %2
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %9, align 8
  %23 = load i32, i32* @NGX_HTTP_TFS_CREATE_FILENAME_MESSAGE, align 4
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 5
  store i32 %23, i32* %26, align 8
  %27 = load i64, i64* %6, align 8
  %28 = sub i64 %27, 4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  store i64 %28, i64* %31, align 8
  %32 = load i32, i32* @NGX_HTTP_TFS_PACKET_FLAG, align 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 4
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @NGX_HTTP_TFS_PACKET_VERSION, align 4
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 3
  store i32 %36, i32* %39, align 8
  %40 = call i32 (...) @ngx_http_tfs_generate_packet_id()
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 4
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @NGX_HTTP_TFS_PACKET_FLAG, align 4
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i64 1
  %60 = bitcast %struct.TYPE_14__* %59 to i8*
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @ngx_http_tfs_crc(i32 %56, i8* %60, i64 %64)
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, %69
  store i64 %73, i64* %71, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.TYPE_18__* @ngx_alloc_chain_link(i32 %76)
  store %struct.TYPE_18__* %77, %struct.TYPE_18__** %8, align 8
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %79 = icmp eq %struct.TYPE_18__* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %18
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %3, align 8
  br label %88

81:                                               ; preds = %18
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 1
  store %struct.TYPE_19__* %82, %struct.TYPE_19__** %84, align 8
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  store i32* null, i32** %86, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_18__* %87, %struct.TYPE_18__** %3, align 8
  br label %88

88:                                               ; preds = %81, %80, %17
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  ret %struct.TYPE_18__* %89
}

declare dso_local %struct.TYPE_19__* @ngx_create_temp_buf(i32, i64) #1

declare dso_local i32 @ngx_http_tfs_generate_packet_id(...) #1

declare dso_local i32 @ngx_http_tfs_crc(i32, i8*, i64) #1

declare dso_local %struct.TYPE_18__* @ngx_alloc_chain_link(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
