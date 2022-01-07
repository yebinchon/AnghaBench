; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_vnswrr_module/extr_ngx_http_upstream_vnswrr_module.c_ngx_http_upstream_init_vnswrr.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_vnswrr_module/extr_ngx_http_upstream_vnswrr_module.c_ngx_http_upstream_init_vnswrr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_17__ = type { i32, i32, i64, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { i32*, %struct.TYPE_15__*, i32*, i8*, i8* }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"init vnswrr\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_upstream_vnswrr_module = common dso_local global i32 0, align 4
@NGX_CONF_UNSET_UINT = common dso_local global i8* null, align 8
@ngx_http_upstream_init_vnswrr_peer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_18__*, %struct.TYPE_16__*)* @ngx_http_upstream_init_vnswrr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_upstream_init_vnswrr(%struct.TYPE_18__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %10 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ngx_log_debug0(i32 %10, i32 %13, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = call i64 @ngx_http_upstream_init_round_robin(%struct.TYPE_18__* %15, %struct.TYPE_16__* %16)
  %18 = load i64, i64* @NGX_OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i64, i64* @NGX_ERROR, align 8
  store i64 %21, i64* %3, align 8
  br label %144

22:                                               ; preds = %2
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %24 = load i32, i32* @ngx_http_upstream_vnswrr_module, align 4
  %25 = call %struct.TYPE_15__* @ngx_http_conf_upstream_srv_conf(%struct.TYPE_16__* %23, i32 %24)
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %8, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %27 = icmp eq %struct.TYPE_15__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i64, i64* @NGX_ERROR, align 8
  store i64 %29, i64* %3, align 8
  br label %144

30:                                               ; preds = %22
  %31 = load i8*, i8** @NGX_CONF_UNSET_UINT, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** @NGX_CONF_UNSET_UINT, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 2
  store i32* null, i32** %38, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %40, align 8
  %41 = load i32, i32* @ngx_http_upstream_init_vnswrr_peer, align 4
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %49, %struct.TYPE_17__** %6, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %81

54:                                               ; preds = %30
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = mul i64 4, %61
  %63 = trunc i64 %62 to i32
  %64 = call i8* @ngx_pcalloc(i32 %57, i32 %63)
  %65 = bitcast i8* %64 to i32*
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  store i32* %65, i32** %67, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %54
  %73 = load i64, i64* @NGX_ERROR, align 8
  store i64 %73, i64* %3, align 8
  br label %144

74:                                               ; preds = %54
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ngx_http_upstream_init_virtual_peers(%struct.TYPE_17__* %75, %struct.TYPE_15__* %76, i32 0, i32 %79)
  br label %81

81:                                               ; preds = %74, %30
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %83, align 8
  store %struct.TYPE_17__* %84, %struct.TYPE_17__** %7, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %86 = icmp ne %struct.TYPE_17__* %85, null
  br i1 %86, label %87, label %142

87:                                               ; preds = %81
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @ngx_pcalloc(i32 %90, i32 40)
  %92 = bitcast i8* %91 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %92, %struct.TYPE_15__** %9, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %94 = icmp eq %struct.TYPE_15__* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load i64, i64* @NGX_ERROR, align 8
  store i64 %96, i64* %3, align 8
  br label %144

97:                                               ; preds = %87
  %98 = load i8*, i8** @NGX_CONF_UNSET_UINT, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 4
  store i8* %98, i8** %100, align 8
  %101 = load i8*, i8** @NGX_CONF_UNSET_UINT, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 3
  store i8* %101, i8** %103, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 2
  store i32* null, i32** %105, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 1
  store %struct.TYPE_15__* %106, %struct.TYPE_15__** %108, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %97
  %114 = load i64, i64* @NGX_OK, align 8
  store i64 %114, i64* %3, align 8
  br label %144

115:                                              ; preds = %97
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = mul i64 4, %122
  %124 = trunc i64 %123 to i32
  %125 = call i8* @ngx_pcalloc(i32 %118, i32 %124)
  %126 = bitcast i8* %125 to i32*
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  store i32* %126, i32** %128, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = icmp eq i32* %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %115
  %134 = load i64, i64* @NGX_ERROR, align 8
  store i64 %134, i64* %3, align 8
  br label %144

135:                                              ; preds = %115
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @ngx_http_upstream_init_virtual_peers(%struct.TYPE_17__* %136, %struct.TYPE_15__* %137, i32 0, i32 %140)
  br label %142

142:                                              ; preds = %135, %81
  %143 = load i64, i64* @NGX_OK, align 8
  store i64 %143, i64* %3, align 8
  br label %144

144:                                              ; preds = %142, %133, %113, %95, %72, %28, %20
  %145 = load i64, i64* %3, align 8
  ret i64 %145
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i64 @ngx_http_upstream_init_round_robin(%struct.TYPE_18__*, %struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_15__* @ngx_http_conf_upstream_srv_conf(%struct.TYPE_16__*, i32) #1

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_http_upstream_init_virtual_peers(%struct.TYPE_17__*, %struct.TYPE_15__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
