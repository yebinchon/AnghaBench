; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_name_server_message.c_ngx_http_tfs_create_batch_block_info_message.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_name_server_message.c_ngx_http_tfs_create_batch_block_info_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32*, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_15__, i64*, i64 }
%struct.TYPE_15__ = type { i64, i32, i32, i32, i32, i32 }

@NGX_HTTP_TFS_MAX_BATCH_COUNT = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_OPEN_MODE_READ = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_NO_BLOCK_CACHE = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_BATCH_GET_BLOCK_INFO_MESSAGE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_PACKET_FLAG = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_PACKET_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_19__* (%struct.TYPE_16__*)* @ngx_http_tfs_create_batch_block_info_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_19__* @ngx_http_tfs_create_batch_block_info_message(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = sub i64 %16, %20
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @NGX_HTTP_TFS_MAX_BATCH_COUNT, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i64, i64* @NGX_HTTP_TFS_MAX_BATCH_COUNT, align 8
  store i64 %26, i64* %5, align 8
  br label %27

27:                                               ; preds = %25, %1
  %28 = load i64, i64* %5, align 8
  store i64 %28, i64* %6, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @NGX_HTTP_TFS_OPEN_MODE_READ, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %66

36:                                               ; preds = %27
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %39, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i64 %44
  store %struct.TYPE_17__* %45, %struct.TYPE_17__** %11, align 8
  store i64 0, i64* %7, align 8
  br label %46

46:                                               ; preds = %60, %36
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %46
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @NGX_HTTP_TFS_NO_BLOCK_CACHE, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i64, i64* %6, align 8
  %58 = add nsw i64 %57, -1
  store i64 %58, i64* %6, align 8
  br label %59

59:                                               ; preds = %56, %50
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %7, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %7, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 1
  store %struct.TYPE_17__* %64, %struct.TYPE_17__** %11, align 8
  br label %46

65:                                               ; preds = %46
  br label %66

66:                                               ; preds = %65, %27
  %67 = load i64, i64* %6, align 8
  %68 = mul i64 %67, 8
  %69 = add i64 56, %68
  store i64 %69, i64* %4, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %4, align 8
  %74 = call %struct.TYPE_20__* @ngx_create_temp_buf(i32 %72, i64 %73)
  store %struct.TYPE_20__* %74, %struct.TYPE_20__** %9, align 8
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %76 = icmp eq %struct.TYPE_20__* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %2, align 8
  br label %197

78:                                               ; preds = %66
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %82, %struct.TYPE_18__** %12, align 8
  %83 = load i32, i32* @NGX_HTTP_TFS_BATCH_GET_BLOCK_INFO_MESSAGE, align 4
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 5
  store i32 %83, i32* %86, align 8
  %87 = load i64, i64* %4, align 8
  %88 = sub i64 %87, 4
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  store i64 %88, i64* %91, align 8
  %92 = load i32, i32* @NGX_HTTP_TFS_PACKET_FLAG, align 4
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 4
  store i32 %92, i32* %95, align 4
  %96 = load i32, i32* @NGX_HTTP_TFS_PACKET_VERSION, align 4
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 3
  store i32 %96, i32* %99, align 8
  %100 = call i32 (...) @ngx_http_tfs_generate_packet_id()
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 2
  store i32 %100, i32* %103, align 4
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load i64, i64* %6, align 8
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 3
  store i64 %110, i64* %112, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %115, align 8
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i64 %120
  store %struct.TYPE_17__* %121, %struct.TYPE_17__** %11, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %122

122:                                              ; preds = %159, %78
  %123 = load i64, i64* %7, align 8
  %124 = load i64, i64* %5, align 8
  %125 = icmp slt i64 %123, %124
  br i1 %125, label %126, label %164

126:                                              ; preds = %122
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @NGX_HTTP_TFS_OPEN_MODE_READ, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %152

134:                                              ; preds = %126
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @NGX_HTTP_TFS_NO_BLOCK_CACHE, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %151

140:                                              ; preds = %134
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 2
  %147 = load i64*, i64** %146, align 8
  %148 = load i64, i64* %8, align 8
  %149 = add nsw i64 %148, 1
  store i64 %149, i64* %8, align 8
  %150 = getelementptr inbounds i64, i64* %147, i64 %148
  store i64 %144, i64* %150, align 8
  br label %151

151:                                              ; preds = %140, %134
  br label %158

152:                                              ; preds = %126
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 2
  %155 = load i64*, i64** %154, align 8
  %156 = load i64, i64* %7, align 8
  %157 = getelementptr inbounds i64, i64* %155, i64 %156
  store i64 0, i64* %157, align 8
  br label %158

158:                                              ; preds = %152, %151
  br label %159

159:                                              ; preds = %158
  %160 = load i64, i64* %7, align 8
  %161 = add nsw i64 %160, 1
  store i64 %161, i64* %7, align 8
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 1
  store %struct.TYPE_17__* %163, %struct.TYPE_17__** %11, align 8
  br label %122

164:                                              ; preds = %122
  %165 = load i32, i32* @NGX_HTTP_TFS_PACKET_FLAG, align 4
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i64 1
  %169 = bitcast %struct.TYPE_15__* %168 to i8*
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @ngx_http_tfs_crc(i32 %165, i8* %169, i64 %173)
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 1
  store i32 %174, i32* %177, align 8
  %178 = load i64, i64* %4, align 8
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = add i64 %181, %178
  store i64 %182, i64* %180, align 8
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call %struct.TYPE_19__* @ngx_alloc_chain_link(i32 %185)
  store %struct.TYPE_19__* %186, %struct.TYPE_19__** %10, align 8
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %188 = icmp eq %struct.TYPE_19__* %187, null
  br i1 %188, label %189, label %190

189:                                              ; preds = %164
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %2, align 8
  br label %197

190:                                              ; preds = %164
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 1
  store %struct.TYPE_20__* %191, %struct.TYPE_20__** %193, align 8
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 0
  store i32* null, i32** %195, align 8
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  store %struct.TYPE_19__* %196, %struct.TYPE_19__** %2, align 8
  br label %197

197:                                              ; preds = %190, %189, %77
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  ret %struct.TYPE_19__* %198
}

declare dso_local %struct.TYPE_20__* @ngx_create_temp_buf(i32, i64) #1

declare dso_local i32 @ngx_http_tfs_generate_packet_id(...) #1

declare dso_local i32 @ngx_http_tfs_crc(i32, i8*, i64) #1

declare dso_local %struct.TYPE_19__* @ngx_alloc_chain_link(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
