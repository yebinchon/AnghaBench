; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_data_server_message.c_ngx_http_tfs_parse_statfile_message.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_data_server_message.c_ngx_http_tfs_parse_statfile_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_22__, %struct.TYPE_14__, i32, i32, %struct.TYPE_18__*, i64 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_21__ = type { i32, i64, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"stat file(data server)\00", align 1
@NGX_HTTP_TFS_EXIT_GENERAL_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_EXIT_NO_LOGICBLOCK_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_AGAIN = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_EXIT_FILE_INFO_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_FILE_DELETED = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32*)* @ngx_http_tfs_parse_statfile_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_tfs_parse_statfile_message(%struct.TYPE_17__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %16, %struct.TYPE_19__** %9, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %10, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %33 [
    i32 128, label %24
  ]

24:                                               ; preds = %2
  %25 = call i32 @ngx_str_set(i32* %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ngx_http_tfs_status_message(%struct.TYPE_13__* %27, i32* %8, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %145

33:                                               ; preds = %2
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %56, label %38

38:                                               ; preds = %33
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %43, %struct.TYPE_20__** %11, align 8
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sle i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* @NGX_HTTP_TFS_EXIT_GENERAL_ERROR, align 4
  store i32 %49, i32* %3, align 4
  br label %145

50:                                               ; preds = %38
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = call i32 @ngx_http_tfs_wrap_raw_file_info(i32* %52, %struct.TYPE_22__* %54)
  br label %143

56:                                               ; preds = %33
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %61, %struct.TYPE_21__** %12, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @NGX_HTTP_TFS_EXIT_NO_LOGICBLOCK_ERROR, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %56
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @ngx_http_tfs_remove_block_cache(%struct.TYPE_17__* %68, i32* %69)
  %71 = load i32, i32* @NGX_HTTP_TFS_AGAIN, align 4
  store i32 %71, i32* %3, align 4
  br label %145

72:                                               ; preds = %56
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @NGX_HTTP_TFS_EXIT_FILE_INFO_ERROR, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %109

78:                                               ; preds = %72
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @ngx_http_tfs_raw_fsname_get_file_id(i32 %82)
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 7
  store i32 %83, i32* %86, align 4
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 0
  store i32 -1, i32* %89, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 1
  store i32 -1, i32* %92, align 4
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 2
  store i32 -1, i32* %95, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 3
  store i32 -1, i32* %98, align 4
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 4
  store i32 -1, i32* %101, align 8
  %102 = load i32, i32* @NGX_HTTP_TFS_FILE_DELETED, align 4
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 6
  store i32 %102, i32* %105, align 8
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 5
  store i64 0, i64* %108, align 8
  br label %142

109:                                              ; preds = %72
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = icmp ne i64 %113, 4
  br i1 %114, label %120, label %115

115:                                              ; preds = %109
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp sle i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115, %109
  %121 = load i32, i32* @NGX_HTTP_TFS_EXIT_GENERAL_ERROR, align 4
  store i32 %121, i32* %3, align 4
  br label %145

122:                                              ; preds = %115
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 1
  store i32 %126, i32* %129, align 4
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %133, %137
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 2
  store i32 %138, i32* %141, align 8
  br label %142

142:                                              ; preds = %122, %78
  br label %143

143:                                              ; preds = %142, %50
  %144 = load i32, i32* @NGX_OK, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %143, %120, %67, %48, %24
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @ngx_str_set(i32*, i8*) #1

declare dso_local i32 @ngx_http_tfs_status_message(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @ngx_http_tfs_wrap_raw_file_info(i32*, %struct.TYPE_22__*) #1

declare dso_local i32 @ngx_http_tfs_remove_block_cache(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @ngx_http_tfs_raw_fsname_get_file_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
