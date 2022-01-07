; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_limit_conn_module.c_ngx_http_limit_conn_init_zone.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_limit_conn_module.c_ngx_http_limit_conn_init_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__, %struct.TYPE_16__* }
%struct.TYPE_13__ = type { %struct.TYPE_17__, i64, i64, i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i32*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_14__ = type { i32*, i32* }

@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"limit_conn_zone \22%V\22 uses the \22%V\22 key while previously it used the \22%V\22 key\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@ngx_http_limit_conn_rbtree_insert_value = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c" in limit_conn_zone \22%V\22%Z\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*)* @ngx_http_limit_conn_init_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_limit_conn_init_zone(%struct.TYPE_15__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %12, %struct.TYPE_16__** %6, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %10, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %17 = icmp ne %struct.TYPE_16__* %16, null
  br i1 %17, label %18, label %72

18:                                               ; preds = %2
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %23, %28
  br i1 %29, label %48, label %30

30:                                               ; preds = %18
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @ngx_strncmp(i32 %35, i32 %40, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %30, %18
  %49 = load i32, i32* @NGX_LOG_EMERG, align 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = call i32 @ngx_log_error(i32 %49, i32 %53, i32 0, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), %struct.TYPE_17__* %56, %struct.TYPE_18__* %59, %struct.TYPE_18__* %62)
  %64 = load i32, i32* @NGX_ERROR, align 4
  store i32 %64, i32* %3, align 4
  br label %149

65:                                               ; preds = %30
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  store i32* %68, i32** %70, align 8
  %71 = load i32, i32* @NGX_OK, align 4
  store i32 %71, i32* %3, align 4
  br label %149

72:                                               ; preds = %2
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %77, %struct.TYPE_14__** %8, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %72
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  store i32* %86, i32** %88, align 8
  %89 = load i32, i32* @NGX_OK, align 4
  store i32 %89, i32* %3, align 4
  br label %149

90:                                               ; preds = %72
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %92 = call i8* @ngx_slab_alloc(%struct.TYPE_14__* %91, i64 4)
  %93 = bitcast i8* %92 to i32*
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  store i32* %93, i32** %95, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %90
  %101 = load i32, i32* @NGX_ERROR, align 4
  store i32 %101, i32* %3, align 4
  br label %149

102:                                              ; preds = %90
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  store i32* %105, i32** %107, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %109 = call i8* @ngx_slab_alloc(%struct.TYPE_14__* %108, i64 4)
  %110 = bitcast i8* %109 to i32*
  store i32* %110, i32** %9, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %102
  %114 = load i32, i32* @NGX_ERROR, align 4
  store i32 %114, i32* %3, align 4
  br label %149

115:                                              ; preds = %102
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i32*, i32** %9, align 8
  %120 = load i32, i32* @ngx_http_limit_conn_rbtree_insert_value, align 4
  %121 = call i32 @ngx_rbtree_init(i32* %118, i32* %119, i32 %120)
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = add i64 23, %126
  store i64 %127, i64* %7, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %129 = load i64, i64* %7, align 8
  %130 = call i8* @ngx_slab_alloc(%struct.TYPE_14__* %128, i64 %129)
  %131 = bitcast i8* %130 to i32*
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  store i32* %131, i32** %133, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %115
  %139 = load i32, i32* @NGX_ERROR, align 4
  store i32 %139, i32* %3, align 4
  br label %149

140:                                              ; preds = %115
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = call i32 @ngx_sprintf(i32* %143, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_17__* %146)
  %148 = load i32, i32* @NGX_OK, align 4
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %140, %138, %113, %100, %83, %65, %48
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i64 @ngx_strncmp(i32, i32, i64) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_17__*, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i8* @ngx_slab_alloc(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @ngx_rbtree_init(i32*, i32*, i32) #1

declare dso_local i32 @ngx_sprintf(i32*, i8*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
