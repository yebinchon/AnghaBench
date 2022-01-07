; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dyups_module/extr_ngx_http_dyups_module.c_ngx_http_dyups_show_list.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dyups_module/extr_ngx_http_dyups_module.c_ngx_http_dyups_show_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_15__*, i64, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_16__ }
%struct.TYPE_19__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, %struct.TYPE_18__* }

@ngx_http_dyups_module = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%V\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_20__* (%struct.TYPE_17__*)* @ngx_http_dyups_show_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_20__* @ngx_http_dyups_show_list(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_16__, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %12 = load i32, i32* @ngx_http_dyups_module, align 4
  %13 = call %struct.TYPE_19__* @ngx_http_get_module_main_conf(%struct.TYPE_17__* %11, i32 %12)
  store %struct.TYPE_19__* %13, %struct.TYPE_19__** %10, align 8
  store i64 0, i64* %5, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  store %struct.TYPE_18__* %17, %struct.TYPE_18__** %8, align 8
  store i64 0, i64* %4, align 8
  br label %18

18:                                               ; preds = %50, %1
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %19, %23
  br i1 %24, label %25, label %53

25:                                               ; preds = %18
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i64 %27
  store %struct.TYPE_18__* %28, %struct.TYPE_18__** %9, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  br label %50

34:                                               ; preds = %25
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %50

40:                                               ; preds = %34
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %46, 1
  %48 = load i64, i64* %5, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %5, align 8
  br label %50

50:                                               ; preds = %40, %39, %33
  %51 = load i64, i64* %4, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %4, align 8
  br label %18

53:                                               ; preds = %18
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %5, align 8
  %58 = call %struct.TYPE_20__* @ngx_create_temp_buf(i32 %56, i64 %57)
  store %struct.TYPE_20__* %58, %struct.TYPE_20__** %7, align 8
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %60 = icmp eq %struct.TYPE_20__* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %2, align 8
  br label %103

62:                                               ; preds = %53
  store i64 0, i64* %4, align 8
  br label %63

63:                                               ; preds = %98, %62
  %64 = load i64, i64* %4, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ult i64 %64, %68
  br i1 %69, label %70, label %101

70:                                               ; preds = %63
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %72 = load i64, i64* %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i64 %72
  store %struct.TYPE_18__* %73, %struct.TYPE_18__** %9, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %70
  br label %98

79:                                               ; preds = %70
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %98

85:                                               ; preds = %79
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = bitcast %struct.TYPE_16__* %6 to i8*
  %91 = bitcast %struct.TYPE_16__* %89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %90, i8* align 8 %91, i64 8, i1 false)
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ngx_sprintf(i32 %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.TYPE_16__* %6)
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %85, %84, %78
  %99 = load i64, i64* %4, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %4, align 8
  br label %63

101:                                              ; preds = %63
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  store %struct.TYPE_20__* %102, %struct.TYPE_20__** %2, align 8
  br label %103

103:                                              ; preds = %101, %61
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  ret %struct.TYPE_20__* %104
}

declare dso_local %struct.TYPE_19__* @ngx_http_get_module_main_conf(%struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_20__* @ngx_create_temp_buf(i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_sprintf(i32, i8*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
