; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_data_server_message.c_ngx_http_tfs_create_closefile_message.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_data_server_message.c_ngx_http_tfs_create_closefile_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_23__*, i32* }
%struct.TYPE_23__ = type { i64, i32* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_15__, %struct.TYPE_21__ }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32* }
%struct.TYPE_20__ = type { %struct.TYPE_17__, i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__, i32, i32 }
%struct.TYPE_16__ = type { i64, i32, i32, i32, i32, i32 }

@NGX_HTTP_TFS_CLOSE_FILE_MESSAGE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_PACKET_FLAG = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_PACKET_VERSION = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_CLOSE_FILE_MASTER = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_FILE_DEFAULT_OPTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (%struct.TYPE_18__*, %struct.TYPE_19__*)* @ngx_http_tfs_create_closefile_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @ngx_http_tfs_create_closefile_message(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 2
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %11, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = add i64 60, %19
  %21 = add i64 %20, 12
  %22 = add i64 %21, 8
  %23 = add i64 %22, 4
  store i64 %23, i64* %7, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %7, align 8
  %28 = call %struct.TYPE_23__* @ngx_create_temp_buf(i32 %26, i64 %27)
  store %struct.TYPE_23__* %28, %struct.TYPE_23__** %8, align 8
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %30 = icmp eq %struct.TYPE_23__* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %178

32:                                               ; preds = %2
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = bitcast i32* %35 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %36, %struct.TYPE_20__** %12, align 8
  %37 = load i32, i32* @NGX_HTTP_TFS_CLOSE_FILE_MESSAGE, align 4
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 5
  store i32 %37, i32* %41, align 8
  %42 = load i32, i32* @NGX_HTTP_TFS_PACKET_FLAG, align 4
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 4
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* @NGX_HTTP_TFS_PACKET_VERSION, align 4
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 3
  store i32 %47, i32* %51, align 8
  %52 = call i32 (...) @ngx_http_tfs_generate_packet_id()
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 2
  store i32 %52, i32* %56, align 4
  %57 = load i64, i64* %7, align 8
  %58 = sub i64 %57, 4
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  store i64 %58, i64* %62, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 2
  store i32 %66, i32* %69, align 4
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 8
  %77 = load i32, i32* @NGX_HTTP_TFS_CLOSE_FILE_MASTER, align 4
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 56
  store i32* %94, i32** %6, align 8
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 3, %97
  %99 = load i32*, i32** %6, align 8
  store i32 %98, i32* %99, align 4
  %100 = load i32*, i32** %6, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 4
  store i32* %101, i32** %6, align 8
  store i64 0, i64* %9, align 8
  br label %102

102:                                              ; preds = %119, %32
  %103 = load i64, i64* %9, align 8
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = icmp ult i64 %103, %107
  br i1 %108, label %109, label %122

109:                                              ; preds = %102
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* %9, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %6, align 8
  store i32 %115, i32* %116, align 4
  %117 = load i32*, i32** %6, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 4
  store i32* %118, i32** %6, align 8
  br label %119

119:                                              ; preds = %109
  %120 = load i64, i64* %9, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %9, align 8
  br label %102

122:                                              ; preds = %102
  %123 = load i32*, i32** %6, align 8
  store i32 -1, i32* %123, align 4
  %124 = load i32*, i32** %6, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 4
  store i32* %125, i32** %6, align 8
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %6, align 8
  store i32 %128, i32* %129, align 4
  %130 = load i32*, i32** %6, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 4
  store i32* %131, i32** %6, align 8
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i32*, i32** %6, align 8
  store i32 %134, i32* %135, align 4
  %136 = load i32*, i32** %6, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 4
  store i32* %137, i32** %6, align 8
  %138 = load i32*, i32** %6, align 8
  store i32 0, i32* %138, align 4
  %139 = load i32*, i32** %6, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 4
  store i32* %140, i32** %6, align 8
  %141 = load i32*, i32** %6, align 8
  store i32 0, i32* %141, align 4
  %142 = load i32*, i32** %6, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 4
  store i32* %143, i32** %6, align 8
  %144 = load i32, i32* @NGX_HTTP_TFS_FILE_DEFAULT_OPTION, align 4
  %145 = load i32*, i32** %6, align 8
  store i32 %144, i32* %145, align 4
  %146 = load i32, i32* @NGX_HTTP_TFS_PACKET_FLAG, align 4
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i64 1
  %151 = bitcast %struct.TYPE_16__* %150 to i8*
  %152 = load i64, i64* %7, align 8
  %153 = sub i64 %152, 4
  %154 = call i32 @ngx_http_tfs_crc(i32 %146, i8* %151, i64 %153)
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 1
  store i32 %154, i32* %158, align 8
  %159 = load i64, i64* %7, align 8
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = add i64 %162, %159
  store i64 %163, i64* %161, align 8
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call %struct.TYPE_22__* @ngx_alloc_chain_link(i32 %166)
  store %struct.TYPE_22__* %167, %struct.TYPE_22__** %10, align 8
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %169 = icmp eq %struct.TYPE_22__* %168, null
  br i1 %169, label %170, label %171

170:                                              ; preds = %122
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %178

171:                                              ; preds = %122
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 1
  store i32* null, i32** %173, align 8
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 0
  store %struct.TYPE_23__* %174, %struct.TYPE_23__** %176, align 8
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  store %struct.TYPE_22__* %177, %struct.TYPE_22__** %3, align 8
  br label %178

178:                                              ; preds = %171, %170, %31
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  ret %struct.TYPE_22__* %179
}

declare dso_local %struct.TYPE_23__* @ngx_create_temp_buf(i32, i64) #1

declare dso_local i32 @ngx_http_tfs_generate_packet_id(...) #1

declare dso_local i32 @ngx_http_tfs_crc(i32, i8*, i64) #1

declare dso_local %struct.TYPE_22__* @ngx_alloc_chain_link(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
