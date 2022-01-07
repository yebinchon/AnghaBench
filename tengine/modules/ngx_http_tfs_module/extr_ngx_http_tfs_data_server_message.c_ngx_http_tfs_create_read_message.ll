; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_data_server_message.c_ngx_http_tfs_create_read_message.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_data_server_message.c_ngx_http_tfs_create_read_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32*, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, i64 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__, i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_16__, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, i32, i32 }
%struct.TYPE_15__ = type { i64, i32, i32, i32, i32, i32 }

@NGX_HTTP_TFS_READ = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_READ_DATA_MESSAGE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_READ_V2 = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_READ_DATA_MESSAGE_V2 = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_PACKET_FLAG = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_PACKET_VERSION = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"read segment index %uD, block id: %uD, file id: %uL, offset: %D, length: %uD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (%struct.TYPE_19__*, %struct.TYPE_20__*, i64, i64)* @ngx_http_tfs_create_read_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @ngx_http_tfs_create_read_message(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 56, i64* %10, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %10, align 8
  %18 = call %struct.TYPE_23__* @ngx_create_temp_buf(i32 %16, i64 %17)
  store %struct.TYPE_23__* %18, %struct.TYPE_23__** %11, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %20 = icmp eq %struct.TYPE_23__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %5, align 8
  br label %151

22:                                               ; preds = %4
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %26, %struct.TYPE_21__** %13, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @NGX_HTTP_TFS_READ, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load i32, i32* @NGX_HTTP_TFS_READ_DATA_MESSAGE, align 4
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 5
  store i32 %31, i32* %35, align 8
  br label %47

36:                                               ; preds = %22
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @NGX_HTTP_TFS_READ_V2, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i32, i32* @NGX_HTTP_TFS_READ_DATA_MESSAGE_V2, align 4
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 5
  store i32 %41, i32* %45, align 8
  br label %46

46:                                               ; preds = %40, %36
  br label %47

47:                                               ; preds = %46, %30
  %48 = load i32, i32* @NGX_HTTP_TFS_PACKET_FLAG, align 4
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 4
  store i32 %48, i32* %52, align 4
  %53 = load i32, i32* @NGX_HTTP_TFS_PACKET_VERSION, align 4
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 3
  store i32 %53, i32* %57, align 8
  %58 = call i32 (...) @ngx_http_tfs_generate_packet_id()
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 2
  store i32 %58, i32* %62, align 4
  %63 = load i64, i64* %10, align 8
  %64 = sub i64 %63, 4
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  store i64 %64, i64* %68, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 2
  store i32 %72, i32* %75, align 4
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  store i32 %79, i32* %82, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load i64, i64* %9, align 8
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 3
  store i64 %93, i64* %95, align 8
  %96 = load i32, i32* @NGX_HTTP_TFS_PACKET_FLAG, align 4
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i64 1
  %101 = bitcast %struct.TYPE_15__* %100 to i8*
  %102 = load i64, i64* %10, align 8
  %103 = sub i64 %102, 4
  %104 = call i32 @ngx_http_tfs_crc(i32 %96, i8* %101, i64 %103)
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 1
  store i32 %104, i32* %108, align 8
  %109 = load i64, i64* %10, align 8
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = add i64 %112, %109
  store i64 %113, i64* %111, align 8
  %114 = load i32, i32* @NGX_LOG_INFO, align 4
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @ngx_log_error(i32 %114, i32 %117, i32 0, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %121, i32 %125, i32 %129, i32 %132, i32 %135)
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call %struct.TYPE_22__* @ngx_alloc_chain_link(i32 %139)
  store %struct.TYPE_22__* %140, %struct.TYPE_22__** %12, align 8
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %142 = icmp eq %struct.TYPE_22__* %141, null
  br i1 %142, label %143, label %144

143:                                              ; preds = %47
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %5, align 8
  br label %151

144:                                              ; preds = %47
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 1
  store %struct.TYPE_23__* %145, %struct.TYPE_23__** %147, align 8
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 0
  store i32* null, i32** %149, align 8
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  store %struct.TYPE_22__* %150, %struct.TYPE_22__** %5, align 8
  br label %151

151:                                              ; preds = %144, %143, %21
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  ret %struct.TYPE_22__* %152
}

declare dso_local %struct.TYPE_23__* @ngx_create_temp_buf(i32, i64) #1

declare dso_local i32 @ngx_http_tfs_generate_packet_id(...) #1

declare dso_local i32 @ngx_http_tfs_crc(i32, i8*, i64) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_22__* @ngx_alloc_chain_link(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
