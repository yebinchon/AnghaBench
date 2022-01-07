; ModuleID = '/home/carl/AnghaBench/systemd/src/import/extr_curl-util.c_curl_glue_socket_callback.c'
source_filename = "/home/carl/AnghaBench/systemd/src/import/extr_curl-util.c_curl_glue_socket_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@CURL_POLL_REMOVE = common dso_local global i32 0, align 4
@trivial_hash_ops = common dso_local global i32 0, align 4
@CURL_POLL_IN = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@CURL_POLL_OUT = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@CURL_POLL_INOUT = common dso_local global i32 0, align 4
@SD_EVENT_ON = common dso_local global i32 0, align 4
@curl_glue_on_io = common dso_local global i32 0, align 4
@CURLM_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"curl-io\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32, i8*, i8*)* @curl_glue_socket_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @curl_glue_socket_callback(%struct.TYPE_6__* %0, i32 %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %12, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %13, align 8
  store i32 0, i32* %14, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %21 = call i32 @assert(%struct.TYPE_6__* %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %23 = call i32 @assert(%struct.TYPE_6__* %22)
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @CURL_POLL_REMOVE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %5
  %28 = load i32*, i32** %12, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i32*, i32** %12, align 8
  %32 = call i32 @sd_event_source_disable_unref(i32* %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @FD_TO_PTR(i32 %36)
  %38 = call i32 @hashmap_remove(i32 %35, i32 %37)
  br label %39

39:                                               ; preds = %30, %27
  store i32 0, i32* %6, align 4
  br label %125

40:                                               ; preds = %5
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = call i32 @hashmap_ensure_allocated(i32* %42, i32* @trivial_hash_ops)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = call i32 (...) @log_oom()
  store i32 -1, i32* %6, align 4
  br label %125

48:                                               ; preds = %40
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @CURL_POLL_IN, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @EPOLLIN, align 4
  store i32 %53, i32* %14, align 4
  br label %70

54:                                               ; preds = %48
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @CURL_POLL_OUT, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @EPOLLOUT, align 4
  store i32 %59, i32* %14, align 4
  br label %69

60:                                               ; preds = %54
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @CURL_POLL_INOUT, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, i32* @EPOLLIN, align 4
  %66 = load i32, i32* @EPOLLOUT, align 4
  %67 = or i32 %65, %66
  store i32 %67, i32* %14, align 4
  br label %68

68:                                               ; preds = %64, %60
  br label %69

69:                                               ; preds = %68, %58
  br label %70

70:                                               ; preds = %69, %52
  %71 = load i32*, i32** %12, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %86

73:                                               ; preds = %70
  %74 = load i32*, i32** %12, align 8
  %75 = load i32, i32* %14, align 4
  %76 = call i64 @sd_event_source_set_io_events(i32* %74, i32 %75)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 -1, i32* %6, align 4
  br label %125

79:                                               ; preds = %73
  %80 = load i32*, i32** %12, align 8
  %81 = load i32, i32* @SD_EVENT_ON, align 4
  %82 = call i64 @sd_event_source_set_enabled(i32* %80, i32 %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i32 -1, i32* %6, align 4
  br label %125

85:                                               ; preds = %79
  br label %124

86:                                               ; preds = %70
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* @curl_glue_on_io, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %94 = call i64 @sd_event_add_io(i32 %89, i32** %12, i32 %90, i32 %91, i32 %92, %struct.TYPE_6__* %93)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %86
  store i32 -1, i32* %6, align 4
  br label %125

97:                                               ; preds = %86
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32*, i32** %12, align 8
  %103 = call i64 @curl_multi_assign(i32 %100, i32 %101, i32* %102)
  %104 = load i64, i64* @CURLM_OK, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %97
  store i32 -1, i32* %6, align 4
  br label %125

107:                                              ; preds = %97
  %108 = load i32*, i32** %12, align 8
  %109 = call i32 @sd_event_source_set_description(i32* %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @FD_TO_PTR(i32 %113)
  %115 = load i32*, i32** %12, align 8
  %116 = call i32 @hashmap_put(i32 %112, i32 %114, i32* %115)
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %15, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %107
  %120 = call i32 (...) @log_oom()
  %121 = load i32*, i32** %12, align 8
  %122 = call i32 @sd_event_source_unref(i32* %121)
  store i32 -1, i32* %6, align 4
  br label %125

123:                                              ; preds = %107
  br label %124

124:                                              ; preds = %123, %85
  store i32 0, i32* %6, align 4
  br label %125

125:                                              ; preds = %124, %119, %106, %96, %84, %78, %46, %39
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local i32 @sd_event_source_disable_unref(i32*) #1

declare dso_local i32 @hashmap_remove(i32, i32) #1

declare dso_local i32 @FD_TO_PTR(i32) #1

declare dso_local i32 @hashmap_ensure_allocated(i32*, i32*) #1

declare dso_local i32 @log_oom(...) #1

declare dso_local i64 @sd_event_source_set_io_events(i32*, i32) #1

declare dso_local i64 @sd_event_source_set_enabled(i32*, i32) #1

declare dso_local i64 @sd_event_add_io(i32, i32**, i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i64 @curl_multi_assign(i32, i32, i32*) #1

declare dso_local i32 @sd_event_source_set_description(i32*, i8*) #1

declare dso_local i32 @hashmap_put(i32, i32, i32*) #1

declare dso_local i32 @sd_event_source_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
