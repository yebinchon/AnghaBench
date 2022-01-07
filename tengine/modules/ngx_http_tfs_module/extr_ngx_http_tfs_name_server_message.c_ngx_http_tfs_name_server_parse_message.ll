; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_name_server_message.c_ngx_http_tfs_name_server_parse_message.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_name_server_message.c_ngx_http_tfs_name_server_parse_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_11__, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32* }

@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_CMD_GET_GROUP_COUNT = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_CMD_GET_GROUP_SEQ = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_CMD_GET_CLUSTER_ID_NS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_tfs_name_server_parse_message(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %7 = load i32, i32* @NGX_ERROR, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 6
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  store i32* %21, i32** %6, align 8
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %131 [
    i32 136, label %23
    i32 138, label %27
    i32 135, label %58
    i32 137, label %111
  ]

23:                                               ; preds = %1
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @ngx_http_tfs_parse_block_info_message(%struct.TYPE_12__* %24, i32* %25)
  store i32 %26, i32* %2, align 4
  br label %133

27:                                               ; preds = %1
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %27
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %48, label %38

38:                                               ; preds = %32
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43, %32
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @ngx_http_tfs_parse_batch_block_info_message(%struct.TYPE_12__* %49, i32* %50)
  store i32 %51, i32* %5, align 4
  br label %56

52:                                               ; preds = %43, %38, %27
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @ngx_http_tfs_parse_block_info_message(%struct.TYPE_12__* %53, i32* %54)
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %133

58:                                               ; preds = %1
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  switch i32 %61, label %109 [
    i32 129, label %62
    i32 128, label %66
    i32 131, label %70
    i32 130, label %74
  ]

62:                                               ; preds = %58
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %64 = load i32, i32* @NGX_HTTP_TFS_CMD_GET_GROUP_COUNT, align 4
  %65 = call i32 @ngx_http_tfs_parse_ctl_message(%struct.TYPE_12__* %63, i32 %64)
  store i32 %65, i32* %2, align 4
  br label %133

66:                                               ; preds = %58
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %68 = load i32, i32* @NGX_HTTP_TFS_CMD_GET_GROUP_SEQ, align 4
  %69 = call i32 @ngx_http_tfs_parse_ctl_message(%struct.TYPE_12__* %67, i32 %68)
  store i32 %69, i32* %2, align 4
  br label %133

70:                                               ; preds = %58
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %72 = load i32, i32* @NGX_HTTP_TFS_CMD_GET_CLUSTER_ID_NS, align 4
  %73 = call i32 @ngx_http_tfs_parse_ctl_message(%struct.TYPE_12__* %71, i32 %72)
  store i32 %73, i32* %2, align 4
  br label %133

74:                                               ; preds = %58
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %104, label %79

79:                                               ; preds = %74
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %104, label %84

84:                                               ; preds = %79
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %100, label %90

90:                                               ; preds = %84
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %95, %84
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @ngx_http_tfs_parse_batch_block_info_message(%struct.TYPE_12__* %101, i32* %102)
  store i32 %103, i32* %5, align 4
  br label %108

104:                                              ; preds = %95, %90, %79, %74
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = call i32 @ngx_http_tfs_parse_block_info_message(%struct.TYPE_12__* %105, i32* %106)
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %104, %100
  br label %109

109:                                              ; preds = %108, %58
  %110 = load i32, i32* %5, align 4
  store i32 %110, i32* %2, align 4
  br label %133

111:                                              ; preds = %1
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  switch i32 %114, label %129 [
    i32 133, label %115
    i32 132, label %120
    i32 134, label %125
  ]

115:                                              ; preds = %111
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %117 = load i32, i32* @NGX_HTTP_TFS_CMD_GET_GROUP_COUNT, align 4
  %118 = call i32 @ngx_http_tfs_parse_ctl_message(%struct.TYPE_12__* %116, i32 %117)
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  store i32 %119, i32* %2, align 4
  br label %133

120:                                              ; preds = %111
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %122 = load i32, i32* @NGX_HTTP_TFS_CMD_GET_GROUP_SEQ, align 4
  %123 = call i32 @ngx_http_tfs_parse_ctl_message(%struct.TYPE_12__* %121, i32 %122)
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %5, align 4
  store i32 %124, i32* %2, align 4
  br label %133

125:                                              ; preds = %111
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %127 = load i32*, i32** %6, align 8
  %128 = call i32 @ngx_http_tfs_parse_block_info_message(%struct.TYPE_12__* %126, i32* %127)
  store i32 %128, i32* %2, align 4
  br label %133

129:                                              ; preds = %111
  br label %130

130:                                              ; preds = %129
  br label %131

131:                                              ; preds = %130, %1
  %132 = load i32, i32* @NGX_ERROR, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %131, %125, %120, %115, %109, %70, %66, %62, %56, %23
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @ngx_http_tfs_parse_block_info_message(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @ngx_http_tfs_parse_batch_block_info_message(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @ngx_http_tfs_parse_ctl_message(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
