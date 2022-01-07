; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_status_csv_format.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_status_csv_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_15__*, %struct.TYPE_13__*, %struct.TYPE_12__*, i32, i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i64 }
%struct.TYPE_12__ = type { i32 }

@NGX_CHECK_STATUS_DOWN = common dso_local global i64 0, align 8
@NGX_CHECK_STATUS_UP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"%ui,%V,%V,%s,%ui,%ui,%V,%ui\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_16__*, i64)* @ngx_http_upstream_check_status_csv_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_upstream_check_status_csv_format(%struct.TYPE_18__* %0, %struct.TYPE_16__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %8, align 8
  store i64 0, i64* %7, align 8
  br label %13

13:                                               ; preds = %126, %3
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %14, %18
  br i1 %19, label %20, label %129

20:                                               ; preds = %13
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %126

28:                                               ; preds = %20
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @NGX_CHECK_STATUS_DOWN, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  br label %126

43:                                               ; preds = %33
  br label %61

44:                                               ; preds = %28
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @NGX_CHECK_STATUS_UP, align 8
  %47 = and i64 %45, %46
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %126

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %44
  br label %61

61:                                               ; preds = %60, %43
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %67, %70
  %72 = load i64, i64* %7, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %74 = load i64, i64* %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %79 = load i64, i64* %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %85 = load i64, i64* %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %95 = load i64, i64* %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %102 = load i64, i64* %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %109 = load i64, i64* %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %117 = load i64, i64* %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @ngx_snprintf(i64 %64, i64 %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %72, i32 %77, i32* %83, i8* %93, i32 %100, i32 %107, i32* %115, i32 %122)
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  br label %126

126:                                              ; preds = %61, %58, %42, %27
  %127 = load i64, i64* %7, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %7, align 8
  br label %13

129:                                              ; preds = %13
  ret void
}

declare dso_local i64 @ngx_snprintf(i64, i64, i8*, i64, i32, i32*, i8*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
