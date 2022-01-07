; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_data_server_message.c_ngx_http_tfs_create_unlink_message.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_data_server_message.c_ngx_http_tfs_create_unlink_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__*, i32* }
%struct.TYPE_18__ = type { i64, i32* }
%struct.TYPE_24__ = type { i32, %struct.TYPE_23__, %struct.TYPE_21__, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_22__, %struct.TYPE_27__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_27__ = type { i32, i32, i32, i32* }
%struct.TYPE_26__ = type { %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, i32, i32 }
%struct.TYPE_19__ = type { i64, i32, i32, i32, i32, i32 }

@NGX_HTTP_TFS_UNLINK_FILE_MESSAGE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_PACKET_FLAG = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_PACKET_VERSION = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_REMOVE_FILE_MASTER = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_UNLINK_DELETE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_FILE_DEFAULT_OPTION = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"unlink segment index %uD, block id: %uD, file id: %uL, type: %i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (%struct.TYPE_24__*, %struct.TYPE_25__*)* @ngx_http_tfs_create_unlink_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @ngx_http_tfs_create_unlink_message(%struct.TYPE_24__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 1
  store %struct.TYPE_27__* %14, %struct.TYPE_27__** %11, align 8
  %15 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %16 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = add i64 52, %19
  %21 = add i64 %20, 12
  %22 = add i64 %21, 4
  store i64 %22, i64* %7, align 8
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %7, align 8
  %27 = call %struct.TYPE_18__* @ngx_create_temp_buf(i32 %25, i64 %26)
  store %struct.TYPE_18__* %27, %struct.TYPE_18__** %8, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %29 = icmp eq %struct.TYPE_18__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %3, align 8
  br label %209

31:                                               ; preds = %2
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = bitcast i32* %34 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %35, %struct.TYPE_26__** %12, align 8
  %36 = load i32, i32* @NGX_HTTP_TFS_UNLINK_FILE_MESSAGE, align 4
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 5
  store i32 %36, i32* %40, align 8
  %41 = load i32, i32* @NGX_HTTP_TFS_PACKET_FLAG, align 4
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 4
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* @NGX_HTTP_TFS_PACKET_VERSION, align 4
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 3
  store i32 %46, i32* %50, align 8
  %51 = call i32 (...) @ngx_http_tfs_generate_packet_id()
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 2
  store i32 %51, i32* %55, align 4
  %56 = load i64, i64* %7, align 8
  %57 = sub i64 %56, 4
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  store i64 %57, i64* %61, align 8
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 2
  store i32 %65, i32* %68, align 4
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 8
  %76 = load i32, i32* @NGX_HTTP_TFS_REMOVE_FILE_MASTER, align 4
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %93

84:                                               ; preds = %31
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %106

93:                                               ; preds = %31
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 2
  br i1 %98, label %99, label %105

99:                                               ; preds = %93
  %100 = load i32, i32* @NGX_HTTP_TFS_UNLINK_DELETE, align 4
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  br label %105

105:                                              ; preds = %99, %93
  br label %106

106:                                              ; preds = %105, %84
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 48
  store i32* %110, i32** %6, align 8
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 3, %113
  %115 = load i32*, i32** %6, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i32*, i32** %6, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 4
  store i32* %117, i32** %6, align 8
  store i64 0, i64* %9, align 8
  br label %118

118:                                              ; preds = %135, %106
  %119 = load i64, i64* %9, align 8
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = icmp ult i64 %119, %123
  br i1 %124, label %125, label %138

125:                                              ; preds = %118
  %126 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = load i64, i64* %9, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %6, align 8
  store i32 %131, i32* %132, align 4
  %133 = load i32*, i32** %6, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 4
  store i32* %134, i32** %6, align 8
  br label %135

135:                                              ; preds = %125
  %136 = load i64, i64* %9, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %9, align 8
  br label %118

138:                                              ; preds = %118
  %139 = load i32*, i32** %6, align 8
  store i32 -1, i32* %139, align 4
  %140 = load i32*, i32** %6, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 4
  store i32* %141, i32** %6, align 8
  %142 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %6, align 8
  store i32 %144, i32* %145, align 4
  %146 = load i32*, i32** %6, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 4
  store i32* %147, i32** %6, align 8
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32*, i32** %6, align 8
  store i32 %150, i32* %151, align 4
  %152 = load i32*, i32** %6, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 4
  store i32* %153, i32** %6, align 8
  %154 = load i32, i32* @NGX_HTTP_TFS_FILE_DEFAULT_OPTION, align 4
  %155 = load i32*, i32** %6, align 8
  store i32 %154, i32* %155, align 4
  %156 = load i32, i32* @NGX_HTTP_TFS_PACKET_FLAG, align 4
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i64 1
  %161 = bitcast %struct.TYPE_19__* %160 to i8*
  %162 = load i64, i64* %7, align 8
  %163 = sub i64 %162, 4
  %164 = call i32 @ngx_http_tfs_crc(i32 %156, i8* %161, i64 %163)
  %165 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 1
  store i32 %164, i32* %168, align 8
  %169 = load i64, i64* %7, align 8
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = add i64 %172, %169
  store i64 %173, i64* %171, align 8
  %174 = load i32, i32* @NGX_LOG_INFO, align 4
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @ngx_log_error(i32 %174, i32 %177, i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %181, i32 %185, i32 %189, i32 %193)
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call %struct.TYPE_17__* @ngx_alloc_chain_link(i32 %197)
  store %struct.TYPE_17__* %198, %struct.TYPE_17__** %10, align 8
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %200 = icmp eq %struct.TYPE_17__* %199, null
  br i1 %200, label %201, label %202

201:                                              ; preds = %138
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %3, align 8
  br label %209

202:                                              ; preds = %138
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 1
  store i32* null, i32** %204, align 8
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 0
  store %struct.TYPE_18__* %205, %struct.TYPE_18__** %207, align 8
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_17__* %208, %struct.TYPE_17__** %3, align 8
  br label %209

209:                                              ; preds = %202, %201, %30
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  ret %struct.TYPE_17__* %210
}

declare dso_local %struct.TYPE_18__* @ngx_create_temp_buf(i32, i64) #1

declare dso_local i32 @ngx_http_tfs_generate_packet_id(...) #1

declare dso_local i32 @ngx_http_tfs_crc(i32, i8*, i64) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_17__* @ngx_alloc_chain_link(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
