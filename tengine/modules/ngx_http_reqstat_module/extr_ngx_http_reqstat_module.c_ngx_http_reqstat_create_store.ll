; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_reqstat_module/extr_ngx_http_reqstat_module.c_ngx_http_reqstat_create_store.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_reqstat_module/extr_ngx_http_reqstat_module.c_ngx_http_reqstat_create_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, %struct.TYPE_23__* }
%struct.TYPE_20__ = type { %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_19__** }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_22__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_22__ = type { i32*, i32 }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to reap the key \22%V\22\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"failed to alloc node in zone \22%V\22, enlarge it please\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (%struct.TYPE_20__*, %struct.TYPE_23__*)* @ngx_http_reqstat_create_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @ngx_http_reqstat_create_store(%struct.TYPE_20__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_19__**, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32**, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.TYPE_21__* @ngx_pcalloc(i32 %17, i32 24)
  store %struct.TYPE_21__* %18, %struct.TYPE_21__** %12, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %20 = icmp eq %struct.TYPE_21__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %3, align 8
  br label %150

22:                                               ; preds = %2
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %26 = icmp eq %struct.TYPE_16__* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  store %struct.TYPE_21__* %30, %struct.TYPE_21__** %3, align 8
  br label %150

31:                                               ; preds = %22
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 3
  store %struct.TYPE_23__* %32, %struct.TYPE_23__** %34, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ngx_http_test_predicates(%struct.TYPE_20__* %35, i32 %38)
  switch i32 %39, label %45 [
    i32 128, label %40
    i32 129, label %41
  ]

40:                                               ; preds = %31
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %3, align 8
  br label %150

41:                                               ; preds = %31
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  store %struct.TYPE_21__* %44, %struct.TYPE_21__** %3, align 8
  br label %150

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @ngx_array_init(i32* %48, i32 %51, i64 %56, i32 8)
  %58 = icmp eq i32 %57, 128
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %3, align 8
  br label %150

60:                                               ; preds = %46
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @ngx_array_init(i32* %62, i32 %65, i64 %70, i32 4)
  %72 = icmp eq i32 %71, 128
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %3, align 8
  br label %150

74:                                               ; preds = %60
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %78, align 8
  store %struct.TYPE_19__** %79, %struct.TYPE_19__*** %9, align 8
  store i64 0, i64* %8, align 8
  br label %80

80:                                               ; preds = %145, %74
  %81 = load i64, i64* %8, align 8
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ult i64 %81, %86
  br i1 %87, label %88, label %148

88:                                               ; preds = %80
  %89 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %9, align 8
  %90 = load i64, i64* %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %89, i64 %90
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %91, align 8
  store %struct.TYPE_19__* %92, %struct.TYPE_19__** %10, align 8
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %94, align 8
  store %struct.TYPE_22__* %95, %struct.TYPE_22__** %11, align 8
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 1
  %99 = call i64 @ngx_http_complex_value(%struct.TYPE_20__* %96, i32* %98, i32* %6)
  %100 = load i64, i64* @NGX_OK, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %88
  %103 = load i32, i32* @NGX_LOG_WARN, align 4
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @ngx_log_error(i32 %103, i32 %108, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* %111)
  br label %145

113:                                              ; preds = %88
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 2
  %116 = call i8* @ngx_array_push(i32* %115)
  %117 = bitcast i8* %116 to i32*
  store i32* %117, i32** %7, align 8
  %118 = load i32, i32* %6, align 4
  %119 = load i32*, i32** %7, align 8
  store i32 %118, i32* %119, align 4
  %120 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %9, align 8
  %121 = load i64, i64* %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %120, i64 %121
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %122, align 8
  %124 = call i32* @ngx_http_reqstat_rbtree_lookup(%struct.TYPE_19__* %123, i32* %6)
  store i32* %124, i32** %13, align 8
  %125 = load i32*, i32** %13, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %138

127:                                              ; preds = %113
  %128 = load i32, i32* @NGX_LOG_WARN, align 4
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 0
  %137 = call i32 @ngx_log_error(i32 %128, i32 %133, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32* %136)
  br label %138

138:                                              ; preds = %127, %113
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 1
  %141 = call i8* @ngx_array_push(i32* %140)
  %142 = bitcast i8* %141 to i32**
  store i32** %142, i32*** %14, align 8
  %143 = load i32*, i32** %13, align 8
  %144 = load i32**, i32*** %14, align 8
  store i32* %143, i32** %144, align 8
  br label %145

145:                                              ; preds = %138, %102
  %146 = load i64, i64* %8, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %8, align 8
  br label %80

148:                                              ; preds = %80
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  store %struct.TYPE_21__* %149, %struct.TYPE_21__** %3, align 8
  br label %150

150:                                              ; preds = %148, %73, %59, %41, %40, %27, %21
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  ret %struct.TYPE_21__* %151
}

declare dso_local %struct.TYPE_21__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_http_test_predicates(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @ngx_array_init(i32*, i32, i64, i32) #1

declare dso_local i64 @ngx_http_complex_value(%struct.TYPE_20__*, i32*, i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32*) #1

declare dso_local i8* @ngx_array_push(i32*) #1

declare dso_local i32* @ngx_http_reqstat_rbtree_lookup(%struct.TYPE_19__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
