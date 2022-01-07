; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_meta_server_message.c_ngx_http_tfs_meta_server_create_message.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_meta_server_message.c_ngx_http_tfs_meta_server_create_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, i32, i32, %struct.TYPE_15__, %struct.TYPE_14__, i32, %struct.TYPE_17__, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_17__, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32 }

@NGX_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"will create path: last_dir_level: %i, dir_len: %i, last_file_path: %V\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ngx_http_tfs_meta_server_create_message(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32* null, i32** %5, align 8
  %6 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %107 [
    i32 141, label %12
    i32 140, label %12
    i32 137, label %31
    i32 136, label %31
    i32 134, label %39
    i32 135, label %45
    i32 132, label %56
    i32 133, label %67
    i32 139, label %89
    i32 138, label %89
  ]

12:                                               ; preds = %1, %1
  %13 = load i32, i32* @NGX_LOG_DEBUG, align 4
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 6
  %26 = call i32 @ngx_log_error(i32 %13, i32 %16, i32 0, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %23, %struct.TYPE_17__* %25)
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 6
  %30 = call i32* @ngx_http_tfs_create_action_message(%struct.TYPE_16__* %27, %struct.TYPE_17__* %29, %struct.TYPE_17__* null)
  store i32* %30, i32** %5, align 8
  br label %107

31:                                               ; preds = %1, %1
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 6
  %38 = call i32* @ngx_http_tfs_create_action_message(%struct.TYPE_16__* %32, %struct.TYPE_17__* %35, %struct.TYPE_17__* %37)
  store i32* %38, i32** %5, align 8
  br label %107

39:                                               ; preds = %1
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = call i32* @ngx_http_tfs_create_action_message(%struct.TYPE_16__* %40, %struct.TYPE_17__* %43, %struct.TYPE_17__* null)
  store i32* %44, i32** %5, align 8
  br label %107

45:                                               ; preds = %1
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32* @ngx_http_tfs_create_read_meta_message(%struct.TYPE_16__* %46, i32 %50, i32 %54)
  store i32* %55, i32** %5, align 8
  br label %107

56:                                               ; preds = %1
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  switch i32 %59, label %66 [
    i32 129, label %60
    i32 128, label %63
  ]

60:                                               ; preds = %56
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %62 = call i32* @ngx_http_tfs_create_read_meta_message(%struct.TYPE_16__* %61, i32 0, i32 0)
  store i32* %62, i32** %5, align 8
  br label %66

63:                                               ; preds = %56
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %65 = call i32* @ngx_http_tfs_create_write_meta_message(%struct.TYPE_16__* %64)
  store i32* %65, i32** %5, align 8
  br label %66

66:                                               ; preds = %56, %63, %60
  br label %107

67:                                               ; preds = %1
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  switch i32 %70, label %88 [
    i32 131, label %71
    i32 130, label %82
  ]

71:                                               ; preds = %67
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32* @ngx_http_tfs_create_read_meta_message(%struct.TYPE_16__* %72, i32 %76, i32 %80)
  store i32* %81, i32** %5, align 8
  br label %88

82:                                               ; preds = %67
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = call i32* @ngx_http_tfs_create_action_message(%struct.TYPE_16__* %83, %struct.TYPE_17__* %86, %struct.TYPE_17__* null)
  store i32* %87, i32** %5, align 8
  br label %88

88:                                               ; preds = %67, %82, %71
  br label %107

89:                                               ; preds = %1, %1
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32* @ngx_http_tfs_json_init(i32 %92, i32 %95)
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  store i32* %96, i32** %98, align 8
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %89
  store i32* null, i32** %2, align 8
  br label %109

104:                                              ; preds = %89
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %106 = call i32* @ngx_http_tfs_create_ls_message(%struct.TYPE_16__* %105)
  store i32* %106, i32** %5, align 8
  br label %107

107:                                              ; preds = %1, %104, %88, %66, %45, %39, %31, %12
  %108 = load i32*, i32** %5, align 8
  store i32* %108, i32** %2, align 8
  br label %109

109:                                              ; preds = %107, %103
  %110 = load i32*, i32** %2, align 8
  ret i32* %110
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32, i32, %struct.TYPE_17__*) #1

declare dso_local i32* @ngx_http_tfs_create_action_message(%struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32* @ngx_http_tfs_create_read_meta_message(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32* @ngx_http_tfs_create_write_meta_message(%struct.TYPE_16__*) #1

declare dso_local i32* @ngx_http_tfs_json_init(i32, i32) #1

declare dso_local i32* @ngx_http_tfs_create_ls_message(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
