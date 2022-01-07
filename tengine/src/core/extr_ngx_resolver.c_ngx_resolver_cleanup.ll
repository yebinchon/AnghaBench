; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_resolver.c_ngx_resolver_cleanup.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_resolver.c_ngx_resolver_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_13__*, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__*, %struct.TYPE_12__*, i64, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i64 }

@NGX_LOG_DEBUG_CORE = common dso_local global i32 0, align 4
@ngx_cycle = common dso_local global %struct.TYPE_14__* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"cleanup resolver\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ngx_resolver_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_resolver_cleanup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %7, %struct.TYPE_10__** %3, align 8
  %8 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ngx_cycle, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ngx_log_debug0(i32 %8, i32 %11, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 5
  %16 = call i32 @ngx_resolver_cleanup_tree(%struct.TYPE_10__* %13, i32* %15)
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 4
  %20 = call i32 @ngx_resolver_cleanup_tree(%struct.TYPE_10__* %17, i32* %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 3
  %24 = call i32 @ngx_resolver_cleanup_tree(%struct.TYPE_10__* %21, i32* %23)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = call i32 @ngx_del_timer(%struct.TYPE_13__* %34)
  br label %36

36:                                               ; preds = %31, %1
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %5, align 8
  store i64 0, i64* %4, align 8
  br label %41

41:                                               ; preds = %125, %36
  %42 = load i64, i64* %4, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ult i64 %42, %46
  br i1 %47, label %48, label %128

48:                                               ; preds = %41
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %50 = load i64, i64* %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %57 = load i64, i64* %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @ngx_close_connection(i64 %60)
  br label %62

62:                                               ; preds = %55, %48
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %64 = load i64, i64* %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %62
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %71 = load i64, i64* %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @ngx_close_connection(i64 %74)
  br label %76

76:                                               ; preds = %69, %62
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %78 = load i64, i64* %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = icmp ne %struct.TYPE_12__* %81, null
  br i1 %82, label %83, label %100

83:                                               ; preds = %76
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %86 = load i64, i64* %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = call i32 @ngx_resolver_free(%struct.TYPE_10__* %84, %struct.TYPE_12__* %91)
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %95 = load i64, i64* %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = call i32 @ngx_resolver_free(%struct.TYPE_10__* %93, %struct.TYPE_12__* %98)
  br label %100

100:                                              ; preds = %83, %76
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %102 = load i64, i64* %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = icmp ne %struct.TYPE_12__* %105, null
  br i1 %106, label %107, label %124

107:                                              ; preds = %100
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %110 = load i64, i64* %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %114, align 8
  %116 = call i32 @ngx_resolver_free(%struct.TYPE_10__* %108, %struct.TYPE_12__* %115)
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %119 = load i64, i64* %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %121, align 8
  %123 = call i32 @ngx_resolver_free(%struct.TYPE_10__* %117, %struct.TYPE_12__* %122)
  br label %124

124:                                              ; preds = %107, %100
  br label %125

125:                                              ; preds = %124
  %126 = load i64, i64* %4, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %4, align 8
  br label %41

128:                                              ; preds = %41
  ret void
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_resolver_cleanup_tree(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_13__*) #1

declare dso_local i32 @ngx_close_connection(i64) #1

declare dso_local i32 @ngx_resolver_free(%struct.TYPE_10__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
