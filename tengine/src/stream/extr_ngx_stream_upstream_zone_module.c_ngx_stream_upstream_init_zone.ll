; ModuleID = '/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_upstream_zone_module.c_ngx_stream_upstream_init_zone.c'
source_filename = "/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_upstream_zone_module.c_ngx_stream_upstream_init_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_17__, %struct.TYPE_21__* }
%struct.TYPE_17__ = type { %struct.TYPE_15__, i64, i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_21__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, %struct.TYPE_19__** }
%struct.TYPE_19__ = type { %struct.TYPE_23__*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_20__* }
%struct.TYPE_22__ = type { %struct.TYPE_20__*, i32* }

@NGX_OK = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c" in upstream zone \22%V\22%Z\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, i8*)* @ngx_stream_upstream_init_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_stream_upstream_init_zone(%struct.TYPE_23__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_20__**, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_19__**, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %18, %struct.TYPE_22__** %8, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %13, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %24, align 8
  store %struct.TYPE_19__** %25, %struct.TYPE_19__*** %12, align 8
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %66

31:                                               ; preds = %2
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  store %struct.TYPE_20__* %34, %struct.TYPE_20__** %9, align 8
  store i64 0, i64* %7, align 8
  br label %35

35:                                               ; preds = %61, %31
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %36, %40
  br i1 %41, label %42, label %64

42:                                               ; preds = %35
  %43 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %12, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %43, i64 %44
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %45, align 8
  store %struct.TYPE_19__* %46, %struct.TYPE_19__** %11, align 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %48, align 8
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %51 = icmp ne %struct.TYPE_23__* %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %61

53:                                               ; preds = %42
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  store %struct.TYPE_20__* %54, %struct.TYPE_20__** %57, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %59, align 8
  store %struct.TYPE_20__* %60, %struct.TYPE_20__** %9, align 8
  br label %61

61:                                               ; preds = %53, %52
  %62 = load i64, i64* %7, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %7, align 8
  br label %35

64:                                               ; preds = %35
  %65 = load i32, i32* @NGX_OK, align 4
  store i32 %65, i32* %3, align 4
  br label %132

66:                                               ; preds = %2
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add i64 21, %71
  store i64 %72, i64* %6, align 8
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %74 = load i64, i64* %6, align 8
  %75 = call i32* @ngx_slab_alloc(%struct.TYPE_22__* %73, i64 %74)
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 1
  store i32* %75, i32** %77, align 8
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %66
  %83 = load i32, i32* @NGX_ERROR, align 4
  store i32 %83, i32* %3, align 4
  br label %132

84:                                               ; preds = %66
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = call i32 @ngx_sprintf(i32* %87, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__* %90)
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 0
  %94 = bitcast %struct.TYPE_20__** %93 to i8*
  %95 = bitcast i8* %94 to %struct.TYPE_20__**
  store %struct.TYPE_20__** %95, %struct.TYPE_20__*** %10, align 8
  store i64 0, i64* %7, align 8
  br label %96

96:                                               ; preds = %127, %84
  %97 = load i64, i64* %7, align 8
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ult i64 %97, %101
  br i1 %102, label %103, label %130

103:                                              ; preds = %96
  %104 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %12, align 8
  %105 = load i64, i64* %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %104, i64 %105
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %106, align 8
  store %struct.TYPE_19__* %107, %struct.TYPE_19__** %11, align 8
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %109, align 8
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %112 = icmp ne %struct.TYPE_23__* %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %103
  br label %127

114:                                              ; preds = %103
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %117 = call %struct.TYPE_20__* @ngx_stream_upstream_zone_copy_peers(%struct.TYPE_22__* %115, %struct.TYPE_19__* %116)
  store %struct.TYPE_20__* %117, %struct.TYPE_20__** %9, align 8
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %119 = icmp eq %struct.TYPE_20__* %118, null
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = load i32, i32* @NGX_ERROR, align 4
  store i32 %121, i32* %3, align 4
  br label %132

122:                                              ; preds = %114
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %124 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %10, align 8
  store %struct.TYPE_20__* %123, %struct.TYPE_20__** %124, align 8
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 0
  store %struct.TYPE_20__** %126, %struct.TYPE_20__*** %10, align 8
  br label %127

127:                                              ; preds = %122, %113
  %128 = load i64, i64* %7, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %7, align 8
  br label %96

130:                                              ; preds = %96
  %131 = load i32, i32* @NGX_OK, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %130, %120, %82, %64
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32* @ngx_slab_alloc(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @ngx_sprintf(i32*, i8*, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_20__* @ngx_stream_upstream_zone_copy_peers(%struct.TYPE_22__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
