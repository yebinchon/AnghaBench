; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs.c_ngx_http_tfs_reinit.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs.c_ngx_http_tfs_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_18__*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_19__*, i64 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32*, i32*, %struct.TYPE_14__*, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32*, %struct.TYPE_14__* }
%struct.TYPE_19__ = type { %struct.TYPE_19__* }

@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_HEADER = common dso_local global i32 0, align 4
@ngx_http_tfs_send_handler = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_tfs_reinit(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 6
  store i64 0, i64* %9, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 5
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  store %struct.TYPE_19__* %12, %struct.TYPE_19__** %6, align 8
  br label %13

13:                                               ; preds = %25, %2
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %15 = icmp ne %struct.TYPE_19__* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  store %struct.TYPE_19__* %19, %struct.TYPE_19__** %7, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %24 = call i32 @ngx_free_chain(i32 %22, %struct.TYPE_19__* %23)
  br label %25

25:                                               ; preds = %16
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_19__* %26, %struct.TYPE_19__** %6, align 8
  br label %13

27:                                               ; preds = %13
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = icmp ne %struct.TYPE_13__* %30, null
  br i1 %31, label %32, label %103

32:                                               ; preds = %27
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %103

39:                                               ; preds = %32
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %42, align 8
  %44 = icmp ne %struct.TYPE_18__* %40, %43
  br i1 %44, label %45, label %103

45:                                               ; preds = %39
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = icmp ne %struct.TYPE_14__* %49, null
  br i1 %50, label %51, label %103

51:                                               ; preds = %45
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call %struct.TYPE_12__* @ngx_alloc_chain_link(i32 %54)
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 3
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %58, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = icmp eq %struct.TYPE_12__* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %51
  %65 = load i32, i32* @NGX_ERROR, align 4
  store i32 %65, i32* %3, align 4
  br label %136

66:                                               ; preds = %51
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  store %struct.TYPE_14__* %70, %struct.TYPE_14__** %75, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  store i32* null, i32** %80, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 2
  store i32 %86, i32* %91, align 4
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  store i32 %97, i32* %102, align 4
  br label %103

103:                                              ; preds = %66, %45, %39, %32, %27
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %106, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  store i32* null, i32** %109, align 8
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  store i32* null, i32** %112, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 2
  store i32 %116, i32* %119, align 4
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  store i32 %123, i32* %126, align 4
  %127 = load i32, i32* @NGX_HTTP_TFS_HEADER, align 4
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  store i32 4, i32* %131, align 8
  %132 = load i32, i32* @ngx_http_tfs_send_handler, align 4
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* @NGX_OK, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %103, %64
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @ngx_free_chain(i32, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_12__* @ngx_alloc_chain_link(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
