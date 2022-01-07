; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_data_server_message.c_ngx_http_tfs_data_server_parse_message.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_data_server_message.c_ngx_http_tfs_data_server_parse_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64, i32* }

@NGX_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_tfs_data_server_parse_message(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %5 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds i32, i32* %8, i64 %12
  store i32* %13, i32** %4, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %65 [
    i32 139, label %19
    i32 137, label %22
    i32 136, label %26
    i32 138, label %49
  ]

19:                                               ; preds = %1
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %21 = call i32 @ngx_http_tfs_parse_read_message(%struct.TYPE_15__* %20)
  store i32 %21, i32* %2, align 4
  br label %67

22:                                               ; preds = %1
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @ngx_http_tfs_parse_statfile_message(%struct.TYPE_15__* %23, i32* %24)
  store i32 %25, i32* %2, align 4
  br label %67

26:                                               ; preds = %1
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %47 [
    i32 129, label %30
    i32 131, label %34
    i32 128, label %38
    i32 132, label %41
    i32 130, label %44
  ]

30:                                               ; preds = %26
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @ngx_http_tfs_parse_statfile_message(%struct.TYPE_15__* %31, i32* %32)
  store i32 %33, i32* %2, align 4
  br label %67

34:                                               ; preds = %26
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @ngx_http_tfs_parse_createfile_message(%struct.TYPE_15__* %35, i32* %36)
  store i32 %37, i32* %2, align 4
  br label %67

38:                                               ; preds = %26
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %40 = call i32 @ngx_http_tfs_parse_write_message(%struct.TYPE_15__* %39)
  store i32 %40, i32* %2, align 4
  br label %67

41:                                               ; preds = %26
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %43 = call i32 @ngx_http_tfs_parse_closefile_message(%struct.TYPE_15__* %42)
  store i32 %43, i32* %2, align 4
  br label %67

44:                                               ; preds = %26
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %46 = call i32 @ngx_http_tfs_parse_remove_message(%struct.TYPE_15__* %45)
  store i32 %46, i32* %2, align 4
  br label %67

47:                                               ; preds = %26
  %48 = load i32, i32* @NGX_ERROR, align 4
  store i32 %48, i32* %2, align 4
  br label %67

49:                                               ; preds = %1
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %63 [
    i32 133, label %53
    i32 134, label %57
    i32 135, label %60
  ]

53:                                               ; preds = %49
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @ngx_http_tfs_parse_statfile_message(%struct.TYPE_15__* %54, i32* %55)
  store i32 %56, i32* %2, align 4
  br label %67

57:                                               ; preds = %49
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %59 = call i32 @ngx_http_tfs_parse_read_message(%struct.TYPE_15__* %58)
  store i32 %59, i32* %2, align 4
  br label %67

60:                                               ; preds = %49
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %62 = call i32 @ngx_http_tfs_parse_remove_message(%struct.TYPE_15__* %61)
  store i32 %62, i32* %2, align 4
  br label %67

63:                                               ; preds = %49
  %64 = load i32, i32* @NGX_ERROR, align 4
  store i32 %64, i32* %2, align 4
  br label %67

65:                                               ; preds = %1
  %66 = load i32, i32* @NGX_ERROR, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %63, %60, %57, %53, %47, %44, %41, %38, %34, %30, %22, %19
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @ngx_http_tfs_parse_read_message(%struct.TYPE_15__*) #1

declare dso_local i32 @ngx_http_tfs_parse_statfile_message(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @ngx_http_tfs_parse_createfile_message(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @ngx_http_tfs_parse_write_message(%struct.TYPE_15__*) #1

declare dso_local i32 @ngx_http_tfs_parse_closefile_message(%struct.TYPE_15__*) #1

declare dso_local i32 @ngx_http_tfs_parse_remove_message(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
