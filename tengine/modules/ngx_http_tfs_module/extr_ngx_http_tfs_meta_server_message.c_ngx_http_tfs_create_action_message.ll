; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_meta_server_message.c_ngx_http_tfs_create_action_message.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_meta_server_message.c_ngx_http_tfs_create_action_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_19__*, %struct.TYPE_24__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_20__, i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_21__, i32*, i32, i32 }
%struct.TYPE_21__ = type { i64, i32, i32, i32, i32, i32 }

@NGX_HTTP_TFS_FILEPATH_ACTION_MESSAGE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_PACKET_FLAG = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_PACKET_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_26__* (%struct.TYPE_23__*, %struct.TYPE_22__*, %struct.TYPE_22__*)* @ngx_http_tfs_create_action_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_26__* @ngx_http_tfs_create_action_message(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1, %struct.TYPE_22__* %2) #0 {
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %7, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 2
  store %struct.TYPE_24__* %15, %struct.TYPE_24__** %12, align 8
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = add i64 56, %19
  %21 = add i64 %20, 4
  %22 = add i64 %21, 4
  %23 = add i64 %22, 1
  %24 = add i64 %23, 4
  store i64 %24, i64* %8, align 8
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %26 = icmp ne %struct.TYPE_22__* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %3
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %8, align 8
  br label %40

40:                                               ; preds = %32, %27, %3
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call %struct.TYPE_17__* @ngx_create_temp_buf(i32 %43, i64 %44)
  store %struct.TYPE_17__* %45, %struct.TYPE_17__** %10, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %47 = icmp eq %struct.TYPE_17__* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %4, align 8
  br label %177

49:                                               ; preds = %40
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %53, %struct.TYPE_25__** %13, align 8
  %54 = load i32, i32* @NGX_HTTP_TFS_FILEPATH_ACTION_MESSAGE, align 4
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 5
  store i32 %54, i32* %57, align 8
  %58 = load i64, i64* %8, align 8
  %59 = sub i64 %58, 4
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  store i64 %59, i64* %62, align 8
  %63 = load i32, i32* @NGX_HTTP_TFS_PACKET_FLAG, align 4
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 4
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* @NGX_HTTP_TFS_PACKET_VERSION, align 4
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 3
  store i32 %67, i32* %70, align 8
  %71 = call i32 (...) @ngx_http_tfs_generate_packet_id()
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 4
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  %101 = call i32* @ngx_cpymem(i32* %93, i32* %96, i32 %100)
  store i32* %101, i32** %9, align 8
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %9, align 8
  store i32 %107, i32* %108, align 4
  %109 = load i32*, i32** %9, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 4
  store i32* %110, i32** %9, align 8
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %112 = icmp ne %struct.TYPE_22__* %111, null
  br i1 %112, label %113, label %135

113:                                              ; preds = %49
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %135

118:                                              ; preds = %113
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  %123 = load i32*, i32** %9, align 8
  store i32 %122, i32* %123, align 4
  %124 = load i32*, i32** %9, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 4
  store i32* %125, i32** %9, align 8
  %126 = load i32*, i32** %9, align 8
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, 1
  %134 = call i32* @ngx_cpymem(i32* %126, i32* %129, i32 %133)
  store i32* %134, i32** %9, align 8
  br label %139

135:                                              ; preds = %113, %49
  %136 = load i32*, i32** %9, align 8
  store i32 0, i32* %136, align 4
  %137 = load i32*, i32** %9, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 4
  store i32* %138, i32** %9, align 8
  br label %139

139:                                              ; preds = %135, %118
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32*, i32** %9, align 8
  store i32 %143, i32* %144, align 4
  %145 = load i32, i32* @NGX_HTTP_TFS_PACKET_FLAG, align 4
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i64 1
  %149 = bitcast %struct.TYPE_21__* %148 to i8*
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @ngx_http_tfs_crc(i32 %145, i8* %149, i64 %153)
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 1
  store i32 %154, i32* %157, align 8
  %158 = load i64, i64* %8, align 8
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = add i64 %161, %158
  store i64 %162, i64* %160, align 8
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call %struct.TYPE_26__* @ngx_alloc_chain_link(i32 %165)
  store %struct.TYPE_26__* %166, %struct.TYPE_26__** %11, align 8
  %167 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %168 = icmp eq %struct.TYPE_26__* %167, null
  br i1 %168, label %169, label %170

169:                                              ; preds = %139
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %4, align 8
  br label %177

170:                                              ; preds = %139
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %172 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %172, i32 0, i32 1
  store %struct.TYPE_17__* %171, %struct.TYPE_17__** %173, align 8
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %174, i32 0, i32 0
  store i32* null, i32** %175, align 8
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  store %struct.TYPE_26__* %176, %struct.TYPE_26__** %4, align 8
  br label %177

177:                                              ; preds = %170, %169, %48
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  ret %struct.TYPE_26__* %178
}

declare dso_local %struct.TYPE_17__* @ngx_create_temp_buf(i32, i64) #1

declare dso_local i32 @ngx_http_tfs_generate_packet_id(...) #1

declare dso_local i32* @ngx_cpymem(i32*, i32*, i32) #1

declare dso_local i32 @ngx_http_tfs_crc(i32, i8*, i64) #1

declare dso_local %struct.TYPE_26__* @ngx_alloc_chain_link(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
