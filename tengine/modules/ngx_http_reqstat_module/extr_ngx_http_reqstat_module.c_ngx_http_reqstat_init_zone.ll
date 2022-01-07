; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_reqstat_module/extr_ngx_http_reqstat_module.c_ngx_http_reqstat_init_zone.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_reqstat_module/extr_ngx_http_reqstat_module.c_ngx_http_reqstat_init_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__, %struct.TYPE_16__* }
%struct.TYPE_12__ = type { %struct.TYPE_17__, i64, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__*, %struct.TYPE_14__*, %struct.TYPE_18__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32*, %struct.TYPE_13__* }
%struct.TYPE_18__ = type { i32 }

@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"reqstat \22%V\22 uses the value str \22%V\22 while previously it used \22%V\22\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c" in req_status zone \22%V\22%Z\00", align 1
@ngx_http_reqstat_rbtree_insert_value = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*)* @ngx_http_reqstat_init_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_reqstat_init_zone(%struct.TYPE_15__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %10, %struct.TYPE_16__** %8, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %7, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %15 = icmp ne %struct.TYPE_16__* %14, null
  br i1 %15, label %16, label %58

16:                                               ; preds = %2
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @ngx_strcmp(i32 %21, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %16
  %30 = load i32, i32* @NGX_LOG_EMERG, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %42, align 8
  %44 = call i32 @ngx_log_error(i32 %30, i32 %34, i32 0, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), %struct.TYPE_17__* %37, %struct.TYPE_18__* %40, %struct.TYPE_18__* %43)
  %45 = load i32, i32* @NGX_ERROR, align 4
  store i32 %45, i32* %3, align 4
  br label %143

46:                                               ; preds = %16
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  store %struct.TYPE_14__* %49, %struct.TYPE_14__** %51, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  store %struct.TYPE_13__* %54, %struct.TYPE_13__** %56, align 8
  %57 = load i32, i32* @NGX_OK, align 4
  store i32 %57, i32* %3, align 4
  br label %143

58:                                               ; preds = %2
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.TYPE_14__*
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  store %struct.TYPE_14__* %63, %struct.TYPE_14__** %65, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = call i8* @ngx_slab_alloc(%struct.TYPE_14__* %68, i64 4)
  %70 = bitcast i8* %69 to %struct.TYPE_13__*
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  store %struct.TYPE_13__* %70, %struct.TYPE_13__** %72, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = icmp eq %struct.TYPE_13__* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %58
  %78 = load i32, i32* @NGX_ERROR, align 4
  store i32 %78, i32* %3, align 4
  br label %143

79:                                               ; preds = %58
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  store %struct.TYPE_13__* %82, %struct.TYPE_13__** %86, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = add i64 23, %92
  store i64 %93, i64* %6, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  %97 = load i64, i64* %6, align 8
  %98 = call i8* @ngx_slab_alloc(%struct.TYPE_14__* %96, i64 %97)
  %99 = bitcast i8* %98 to i32*
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  store i32* %99, i32** %103, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %79
  %111 = load i32, i32* @NGX_ERROR, align 4
  store i32 %111, i32* %3, align 4
  br label %143

112:                                              ; preds = %79
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = call i32 @ngx_sprintf(i32* %117, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_17__* %120)
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 2
  %130 = load i32, i32* @ngx_http_reqstat_rbtree_insert_value, align 4
  %131 = call i32 @ngx_rbtree_init(i32* %125, i32* %129, i32 %130)
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  %136 = call i32 @ngx_queue_init(i32* %135)
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = call i32 @ngx_queue_init(i32* %140)
  %142 = load i32, i32* @NGX_OK, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %112, %110, %77, %46, %29
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i64 @ngx_strcmp(i32, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_17__*, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i8* @ngx_slab_alloc(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @ngx_sprintf(i32*, i8*, %struct.TYPE_17__*) #1

declare dso_local i32 @ngx_rbtree_init(i32*, i32*, i32) #1

declare dso_local i32 @ngx_queue_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
