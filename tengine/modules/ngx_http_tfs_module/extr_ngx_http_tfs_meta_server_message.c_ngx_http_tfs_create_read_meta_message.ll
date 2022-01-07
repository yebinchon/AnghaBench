; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_meta_server_message.c_ngx_http_tfs_create_read_meta_message.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_meta_server_message.c_ngx_http_tfs_create_read_meta_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_21__ = type { i32, i32, i32, %struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_22__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_22__ = type { %struct.TYPE_16__, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_20__, i32, i32, i32 }
%struct.TYPE_20__ = type { i64, i32, i32, i32, i32, i32 }

@NGX_HTTP_TFS_READ_FILEPATH_MESSAGE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_PACKET_FLAG = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_PACKET_VERSION = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_MAX_FRAGMENT_SIZE = common dso_local global i64 0, align 8
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"max_frag_count: %uz, req_frag_count: %uz, data size: %uz\00", align 1
@NGX_HTTP_TFS_YES = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_NO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_24__* (%struct.TYPE_21__*, i64, i64)* @ngx_http_tfs_create_read_meta_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_24__* @ngx_http_tfs_create_read_meta_message(%struct.TYPE_21__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 5
  store %struct.TYPE_22__* %17, %struct.TYPE_22__** %14, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 56, %22
  %24 = add i64 %23, 1
  %25 = add i64 %24, 8
  %26 = add i64 %25, 8
  %27 = add i64 %26, 8
  store i64 %27, i64* %9, align 8
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call %struct.TYPE_15__* @ngx_create_temp_buf(i32 %30, i64 %31)
  store %struct.TYPE_15__* %32, %struct.TYPE_15__** %12, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %34 = icmp eq %struct.TYPE_15__* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %3
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %4, align 8
  br label %179

36:                                               ; preds = %3
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %40, %struct.TYPE_23__** %15, align 8
  %41 = load i32, i32* @NGX_HTTP_TFS_READ_FILEPATH_MESSAGE, align 4
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 5
  store i32 %41, i32* %44, align 8
  %45 = load i64, i64* %9, align 8
  %46 = sub i64 %45, 4
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  store i64 %46, i64* %49, align 8
  %50 = load i32, i32* @NGX_HTTP_TFS_PACKET_FLAG, align 4
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 4
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @NGX_HTTP_TFS_PACKET_VERSION, align 4
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 3
  store i32 %54, i32* %57, align 8
  %58 = call i32 (...) @ngx_http_tfs_generate_packet_id()
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 2
  store i32 %58, i32* %61, align 4
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  %91 = call i32* @ngx_cpymem(i32 %81, i32 %85, i32 %90)
  store i32* %91, i32** %8, align 8
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 4
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = bitcast i32* %98 to i64*
  store i64 %97, i64* %99, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 8
  store i32* %101, i32** %8, align 8
  %102 = load i64, i64* %6, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = bitcast i32* %103 to i64*
  store i64 %102, i64* %104, align 8
  %105 = load i32*, i32** %8, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 8
  store i32* %106, i32** %8, align 8
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = sub i64 %112, 4
  %114 = udiv i64 %113, 4
  store i64 %114, i64* %10, align 8
  %115 = load i64, i64* %7, align 8
  %116 = load i64, i64* @NGX_HTTP_TFS_MAX_FRAGMENT_SIZE, align 8
  %117 = udiv i64 %115, %116
  store i64 %117, i64* %11, align 8
  %118 = load i32, i32* @NGX_LOG_INFO, align 4
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i64, i64* %10, align 8
  %123 = load i64, i64* %11, align 8
  %124 = load i64, i64* %7, align 8
  %125 = call i32 @ngx_log_error(i32 %118, i32 %121, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %122, i64 %123, i64 %124)
  %126 = load i64, i64* %11, align 8
  %127 = load i64, i64* %10, align 8
  %128 = icmp ugt i64 %126, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %36
  %130 = load i64, i64* %10, align 8
  %131 = sub i64 %130, 1
  %132 = load i64, i64* @NGX_HTTP_TFS_MAX_FRAGMENT_SIZE, align 8
  %133 = mul i64 %131, %132
  %134 = load i32*, i32** %8, align 8
  %135 = bitcast i32* %134 to i64*
  store i64 %133, i64* %135, align 8
  %136 = load i32, i32* @NGX_HTTP_TFS_YES, align 4
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  br label %146

139:                                              ; preds = %36
  %140 = load i64, i64* %7, align 8
  %141 = load i32*, i32** %8, align 8
  %142 = bitcast i32* %141 to i64*
  store i64 %140, i64* %142, align 8
  %143 = load i32, i32* @NGX_HTTP_TFS_NO, align 4
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %139, %129
  %147 = load i32, i32* @NGX_HTTP_TFS_PACKET_FLAG, align 4
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i64 1
  %151 = bitcast %struct.TYPE_20__* %150 to i8*
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @ngx_http_tfs_crc(i32 %147, i8* %151, i64 %155)
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 1
  store i32 %156, i32* %159, align 8
  %160 = load i64, i64* %9, align 8
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = add i64 %163, %160
  store i64 %164, i64* %162, align 8
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call %struct.TYPE_24__* @ngx_alloc_chain_link(i32 %167)
  store %struct.TYPE_24__* %168, %struct.TYPE_24__** %13, align 8
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %170 = icmp eq %struct.TYPE_24__* %169, null
  br i1 %170, label %171, label %172

171:                                              ; preds = %146
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %4, align 8
  br label %179

172:                                              ; preds = %146
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 1
  store %struct.TYPE_15__* %173, %struct.TYPE_15__** %175, align 8
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 0
  store i32* null, i32** %177, align 8
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  store %struct.TYPE_24__* %178, %struct.TYPE_24__** %4, align 8
  br label %179

179:                                              ; preds = %172, %171, %35
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  ret %struct.TYPE_24__* %180
}

declare dso_local %struct.TYPE_15__* @ngx_create_temp_buf(i32, i64) #1

declare dso_local i32 @ngx_http_tfs_generate_packet_id(...) #1

declare dso_local i32* @ngx_cpymem(i32, i32, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i64, i64, i64) #1

declare dso_local i32 @ngx_http_tfs_crc(i32, i8*, i64) #1

declare dso_local %struct.TYPE_24__* @ngx_alloc_chain_link(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
