; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_meta_server_message.c_ngx_http_tfs_create_ls_message.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_meta_server_message.c_ngx_http_tfs_create_ls_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32*, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__*, i32, %struct.TYPE_14__, i32, %struct.TYPE_19__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_17__, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i64, i32, i32, i32, i32, i32 }

@NGX_HTTP_TFS_LS_FILEPATH_MESSAGE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_PACKET_FLAG = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_PACKET_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (%struct.TYPE_18__*)* @ngx_http_tfs_create_ls_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @ngx_http_tfs_create_ls_message(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 5
  store %struct.TYPE_19__* %11, %struct.TYPE_19__** %8, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = add i64 56, %16
  %18 = add i64 %17, 1
  %19 = add i64 %18, 4
  %20 = add i64 %19, 4
  store i64 %20, i64* %4, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call %struct.TYPE_22__* @ngx_create_temp_buf(i32 %23, i64 %24)
  store %struct.TYPE_22__* %25, %struct.TYPE_22__** %6, align 8
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %27 = icmp eq %struct.TYPE_22__* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %2, align 8
  br label %135

29:                                               ; preds = %1
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %33, %struct.TYPE_20__** %9, align 8
  %34 = load i32, i32* @NGX_HTTP_TFS_LS_FILEPATH_MESSAGE, align 4
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 5
  store i32 %34, i32* %37, align 8
  %38 = load i64, i64* %4, align 8
  %39 = sub i64 %38, 4
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  store i64 %39, i64* %42, align 8
  %43 = load i32, i32* @NGX_HTTP_TFS_PACKET_FLAG, align 4
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 4
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @NGX_HTTP_TFS_PACKET_VERSION, align 4
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 3
  store i32 %47, i32* %50, align 8
  %51 = call i32 (...) @ngx_http_tfs_generate_packet_id()
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 4
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  %89 = call i32* @ngx_cpymem(i32 %79, i32 %83, i32 %88)
  store i32* %89, i32** %5, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32*, i32** %5, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32*, i32** %5, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 4
  store i32* %95, i32** %5, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %5, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* @NGX_HTTP_TFS_PACKET_FLAG, align 4
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i64 1
  %107 = bitcast %struct.TYPE_17__* %106 to i8*
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @ngx_http_tfs_crc(i32 %103, i8* %107, i64 %111)
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 1
  store i32 %112, i32* %115, align 8
  %116 = load i64, i64* %4, align 8
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add i64 %119, %116
  store i64 %120, i64* %118, align 8
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call %struct.TYPE_21__* @ngx_alloc_chain_link(i32 %123)
  store %struct.TYPE_21__* %124, %struct.TYPE_21__** %7, align 8
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %126 = icmp eq %struct.TYPE_21__* %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %29
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %2, align 8
  br label %135

128:                                              ; preds = %29
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 1
  store %struct.TYPE_22__* %129, %struct.TYPE_22__** %131, align 8
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 0
  store i32* null, i32** %133, align 8
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_21__* %134, %struct.TYPE_21__** %2, align 8
  br label %135

135:                                              ; preds = %128, %127, %28
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  ret %struct.TYPE_21__* %136
}

declare dso_local %struct.TYPE_22__* @ngx_create_temp_buf(i32, i64) #1

declare dso_local i32 @ngx_http_tfs_generate_packet_id(...) #1

declare dso_local i32* @ngx_cpymem(i32, i32, i32) #1

declare dso_local i32 @ngx_http_tfs_crc(i32, i8*, i64) #1

declare dso_local %struct.TYPE_21__* @ngx_alloc_chain_link(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
