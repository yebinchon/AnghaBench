; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_name_server_message.c_ngx_http_tfs_create_block_info_message.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_name_server_message.c_ngx_http_tfs_create_block_info_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32*, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_16__, i64, i32, i32 }
%struct.TYPE_16__ = type { i64, i32, i32, i32, i32, i32 }

@NGX_HTTP_TFS_GET_BLOCK_INFO_MESSAGE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_PACKET_FLAG = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_PACKET_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_20__* (%struct.TYPE_17__*, %struct.TYPE_18__*)* @ngx_http_tfs_create_block_info_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_20__* @ngx_http_tfs_create_block_info_message(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store i64 48, i64* %6, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i64, i64* %6, align 8
  %14 = call %struct.TYPE_21__* @ngx_create_temp_buf(i32 %12, i64 %13)
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %7, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %16 = icmp eq %struct.TYPE_21__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %3, align 8
  br label %90

18:                                               ; preds = %2
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %22, %struct.TYPE_19__** %9, align 8
  %23 = load i32, i32* @NGX_HTTP_TFS_GET_BLOCK_INFO_MESSAGE, align 4
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 5
  store i32 %23, i32* %26, align 8
  %27 = load i64, i64* %6, align 8
  %28 = sub i64 %27, 4
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  store i64 %28, i64* %31, align 8
  %32 = load i32, i32* @NGX_HTTP_TFS_PACKET_FLAG, align 4
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 4
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @NGX_HTTP_TFS_PACKET_VERSION, align 4
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 3
  store i32 %36, i32* %39, align 8
  %40 = call i32 (...) @ngx_http_tfs_generate_packet_id()
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 4
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* @NGX_HTTP_TFS_PACKET_FLAG, align 4
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i64 1
  %62 = bitcast %struct.TYPE_16__* %61 to i8*
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @ngx_http_tfs_crc(i32 %58, i8* %62, i64 %66)
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, %71
  store i64 %75, i64* %73, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call %struct.TYPE_20__* @ngx_alloc_chain_link(i32 %78)
  store %struct.TYPE_20__* %79, %struct.TYPE_20__** %8, align 8
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %81 = icmp eq %struct.TYPE_20__* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %18
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %3, align 8
  br label %90

83:                                               ; preds = %18
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 1
  store %struct.TYPE_21__* %84, %struct.TYPE_21__** %86, align 8
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  store i32* null, i32** %88, align 8
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_20__* %89, %struct.TYPE_20__** %3, align 8
  br label %90

90:                                               ; preds = %83, %82, %17
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  ret %struct.TYPE_20__* %91
}

declare dso_local %struct.TYPE_21__* @ngx_create_temp_buf(i32, i64) #1

declare dso_local i32 @ngx_http_tfs_generate_packet_id(...) #1

declare dso_local i32 @ngx_http_tfs_crc(i32, i8*, i64) #1

declare dso_local %struct.TYPE_20__* @ngx_alloc_chain_link(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
