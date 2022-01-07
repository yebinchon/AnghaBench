; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_server_handler.c_ngx_http_tfs_retry_ns.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_server_handler.c_ngx_http_tfs_retry_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { {}*, i32, %struct.TYPE_24__, i32, i8*, i8*, %struct.TYPE_21__, i32, i32, i32, %struct.TYPE_20__, i8*, i32, i32*, i32, i32, i32, i32, %struct.TYPE_26__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 (%struct.TYPE_18__*, i32, i32)* }

@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_EXIT_SERVER_OBJECT_NOT_FOUND = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_NAME_SERVER = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_NO = common dso_local global i8* null, align 8
@NGX_HTTP_TFS_NO_BLOCK_CACHE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_STATE_WRITE_CLUSTER_ID_NS = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_tfs_retry_ns(%struct.TYPE_25__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  %6 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 18
  %8 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  store %struct.TYPE_26__* %8, %struct.TYPE_26__** %5, align 8
  %9 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 1
  %12 = load i32 (%struct.TYPE_18__*, i32, i32)*, i32 (%struct.TYPE_18__*, i32, i32)** %11, align 8
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 %12(%struct.TYPE_18__* %14, i32 %18, i32 0)
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 11
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %57, label %24

24:                                               ; preds = %1
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 17
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 16
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 12
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 15
  %37 = call i64 @ngx_http_tfs_select_name_server(%struct.TYPE_25__* %29, i32 %32, i32* %34, i32* %36)
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @NGX_ERROR, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %24
  %42 = load i64, i64* @NGX_HTTP_TFS_EXIT_SERVER_OBJECT_NOT_FOUND, align 8
  store i64 %42, i64* %2, align 8
  br label %163

43:                                               ; preds = %24
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 14
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 13
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @NGX_HTTP_TFS_NAME_SERVER, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 12
  %54 = call i32 @ngx_http_tfs_peer_set_addr(i32 %46, i32* %51, i32* %53)
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %56 = call i32 @ngx_http_tfs_reset_segment_data(%struct.TYPE_25__* %55)
  br label %61

57:                                               ; preds = %1
  %58 = load i8*, i8** @NGX_HTTP_TFS_NO, align 8
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 11
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %57, %43
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 6
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %149 [
    i32 130, label %67
    i32 129, label %67
    i32 128, label %111
  ]

67:                                               ; preds = %61, %61
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 10
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @NGX_HTTP_TFS_NO_BLOCK_CACHE, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %110

74:                                               ; preds = %67
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 9
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %99, label %79

79:                                               ; preds = %74
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 6
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %95, label %85

85:                                               ; preds = %79
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 8
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %85
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %90, %79
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 0
  %98 = bitcast {}** %97 to i64 (%struct.TYPE_25__*)**
  store i64 (%struct.TYPE_25__*)* @ngx_http_tfs_batch_lookup_block_cache, i64 (%struct.TYPE_25__*)** %98, align 8
  br label %103

99:                                               ; preds = %90, %85, %74
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 0
  %102 = bitcast {}** %101 to i64 (%struct.TYPE_25__*)**
  store i64 (%struct.TYPE_25__*)* @ngx_http_tfs_lookup_block_cache, i64 (%struct.TYPE_25__*)** %102, align 8
  br label %103

103:                                              ; preds = %99, %95
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 0
  %106 = bitcast {}** %105 to i64 (%struct.TYPE_25__*)**
  %107 = load i64 (%struct.TYPE_25__*)*, i64 (%struct.TYPE_25__*)** %106, align 8
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %109 = call i64 %107(%struct.TYPE_25__* %108)
  store i64 %109, i64* %2, align 8
  br label %163

110:                                              ; preds = %67
  br label %149

111:                                              ; preds = %61
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 6
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = load i64, i64* @NGX_ERROR, align 8
  store i64 %118, i64* %2, align 8
  br label %163

119:                                              ; preds = %111
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 5
  %122 = load i8*, i8** %121, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %148

124:                                              ; preds = %119
  %125 = load i8*, i8** @NGX_HTTP_TFS_NO, align 8
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 5
  store i8* %125, i8** %127, align 8
  %128 = load i8*, i8** @NGX_HTTP_TFS_NO, align 8
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %129, i32 0, i32 4
  store i8* %128, i8** %130, align 8
  %131 = load i32, i32* @NGX_HTTP_TFS_STATE_WRITE_CLUSTER_ID_NS, align 4
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 8
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i64 0
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 1
  store i32 0, i32* %140, align 4
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i64 0
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 0
  store i32 0, i32* %147, align 4
  br label %148

148:                                              ; preds = %124, %119
  br label %149

149:                                              ; preds = %148, %61, %110
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %154 = call i64 @ngx_http_tfs_reinit(i32 %152, %struct.TYPE_25__* %153)
  %155 = load i64, i64* @NGX_OK, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %149
  %158 = load i64, i64* @NGX_ERROR, align 8
  store i64 %158, i64* %2, align 8
  br label %163

159:                                              ; preds = %149
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %161 = call i32 @ngx_http_tfs_connect(%struct.TYPE_25__* %160)
  %162 = load i64, i64* @NGX_OK, align 8
  store i64 %162, i64* %2, align 8
  br label %163

163:                                              ; preds = %159, %157, %117, %103, %41
  %164 = load i64, i64* %2, align 8
  ret i64 %164
}

declare dso_local i64 @ngx_http_tfs_select_name_server(%struct.TYPE_25__*, i32, i32*, i32*) #1

declare dso_local i32 @ngx_http_tfs_peer_set_addr(i32, i32*, i32*) #1

declare dso_local i32 @ngx_http_tfs_reset_segment_data(%struct.TYPE_25__*) #1

declare dso_local i64 @ngx_http_tfs_batch_lookup_block_cache(%struct.TYPE_25__*) #1

declare dso_local i64 @ngx_http_tfs_lookup_block_cache(%struct.TYPE_25__*) #1

declare dso_local i64 @ngx_http_tfs_reinit(i32, %struct.TYPE_25__*) #1

declare dso_local i32 @ngx_http_tfs_connect(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
