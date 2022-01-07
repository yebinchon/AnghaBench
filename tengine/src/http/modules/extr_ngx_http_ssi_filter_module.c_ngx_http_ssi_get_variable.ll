; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_ssi_filter_module.c_ngx_http_ssi_get_variable.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_ssi_filter_module.c_ngx_http_ssi_get_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_16__ = type { i8, %struct.TYPE_17__*, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i8, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_18__ = type { i8, i64, i64*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_16__ }

@ngx_http_ssi_filter_module = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_19__*, %struct.TYPE_15__*, i8)* @ngx_http_ssi_get_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @ngx_http_ssi_get_variable(%struct.TYPE_19__* %0, %struct.TYPE_15__* %1, i8 signext %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i8 %2, i8* %7, align 1
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ngx_http_ssi_filter_module, align 4
  %16 = call %struct.TYPE_18__* @ngx_http_get_module_ctx(i32 %14, i32 %15)
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %11, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %20 = icmp eq %struct.TYPE_13__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  br label %103

22:                                               ; preds = %3
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  store %struct.TYPE_16__* %26, %struct.TYPE_16__** %9, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  store %struct.TYPE_17__* %29, %struct.TYPE_17__** %10, align 8
  store i8 0, i8* %8, align 1
  br label %30

30:                                               ; preds = %99, %22
  %31 = load i8, i8* %8, align 1
  %32 = sext i8 %31 to i32
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i8, i8* %34, align 8
  %36 = sext i8 %35 to i32
  %37 = icmp sge i32 %32, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %30
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  %42 = icmp eq %struct.TYPE_16__* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %102

44:                                               ; preds = %38
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %46, align 8
  store %struct.TYPE_16__* %47, %struct.TYPE_16__** %9, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %49, align 8
  store %struct.TYPE_17__* %50, %struct.TYPE_17__** %10, align 8
  store i8 0, i8* %8, align 1
  br label %51

51:                                               ; preds = %44, %30
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %56 = load i8, i8* %8, align 1
  %57 = sext i8 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %54, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  br label %99

64:                                               ; preds = %51
  %65 = load i8, i8* %7, align 1
  %66 = sext i8 %65 to i32
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %68 = load i8, i8* %8, align 1
  %69 = sext i8 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load i8, i8* %71, align 8
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %66, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %99

76:                                               ; preds = %64
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %81 = load i8, i8* %8, align 1
  %82 = sext i8 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @ngx_strncmp(i64 %79, i32 %86, i64 %89)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %76
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %94 = load i8, i8* %8, align 1
  %95 = sext i8 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 1
  store %struct.TYPE_15__* %97, %struct.TYPE_15__** %4, align 8
  br label %103

98:                                               ; preds = %76
  br label %99

99:                                               ; preds = %98, %75, %63
  %100 = load i8, i8* %8, align 1
  %101 = add i8 %100, 1
  store i8 %101, i8* %8, align 1
  br label %30

102:                                              ; preds = %43
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  br label %103

103:                                              ; preds = %102, %92, %21
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  ret %struct.TYPE_15__* %104
}

declare dso_local %struct.TYPE_18__* @ngx_http_get_module_ctx(i32, i32) #1

declare dso_local i64 @ngx_strncmp(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
