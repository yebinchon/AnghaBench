; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_resolver.c_ngx_resolve_start.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_resolver.c_ngx_resolve_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_19__*, %struct.TYPE_14__, %struct.TYPE_16__, %struct.TYPE_16__*, i32, %struct.TYPE_15__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i32, %struct.sockaddr* }
%struct.sockaddr = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }

@INADDR_NONE = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@NGX_NO_RESOLVER = common dso_local global %struct.TYPE_20__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @ngx_resolve_start(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %8 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %9 = icmp ne %struct.TYPE_20__* %8, null
  br i1 %9, label %10, label %61

10:                                               ; preds = %2
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 7
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 7
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @ngx_inet_addr(i32 %14, i32 %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @INADDR_NONE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %60

23:                                               ; preds = %10
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 2
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %26, align 8
  %27 = load i32, i32* @NGX_OK, align 4
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 4
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 5
  store %struct.TYPE_16__* %33, %struct.TYPE_16__** %35, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 3
  %38 = bitcast %struct.TYPE_14__* %37 to %struct.sockaddr*
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  store %struct.sockaddr* %38, %struct.sockaddr** %41, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  store i32 4, i32* %44, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 3
  %47 = call i32 @ngx_memzero(%struct.TYPE_14__* %46, i32 4)
  %48 = load i32, i32* @AF_INET, align 4
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  store i64 %52, i64* %56, align 8
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_20__* %59, %struct.TYPE_20__** %3, align 8
  br label %80

60:                                               ; preds = %10
  br label %61

61:                                               ; preds = %60, %2
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** @NGX_NO_RESOLVER, align 8
  store %struct.TYPE_20__* %68, %struct.TYPE_20__** %3, align 8
  br label %80

69:                                               ; preds = %61
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %71 = call %struct.TYPE_20__* @ngx_resolver_calloc(%struct.TYPE_19__* %70, i32 72)
  store %struct.TYPE_20__* %71, %struct.TYPE_20__** %7, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %73 = icmp ne %struct.TYPE_20__* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 2
  store %struct.TYPE_19__* %75, %struct.TYPE_19__** %77, align 8
  br label %78

78:                                               ; preds = %74, %69
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  store %struct.TYPE_20__* %79, %struct.TYPE_20__** %3, align 8
  br label %80

80:                                               ; preds = %78, %67, %23
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  ret %struct.TYPE_20__* %81
}

declare dso_local i64 @ngx_inet_addr(i32, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_14__*, i32) #1

declare dso_local %struct.TYPE_20__* @ngx_resolver_calloc(%struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
