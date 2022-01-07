; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_cycle.c_ngx_clean_old_cycles.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_cycle.c_ngx_clean_old_cycles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i64, %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@ngx_cycle = common dso_local global %struct.TYPE_11__* null, align 8
@ngx_temp_pool = common dso_local global %struct.TYPE_9__* null, align 8
@NGX_LOG_DEBUG_CORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"clean old cycles\00", align 1
@ngx_old_cycles = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"live fd:%ui\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"clean old cycle: %ui\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"old cycles status: %ui\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @ngx_clean_old_cycles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_clean_old_cycles(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__**, align 8
  store i32* %0, i32** %2, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ngx_cycle, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ngx_temp_pool, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store i32* %12, i32** %14, align 8
  %15 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @ngx_log_debug0(i32 %15, i32* %16, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %6, align 8
  %18 = load %struct.TYPE_8__**, %struct.TYPE_8__*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ngx_old_cycles, i32 0, i32 1), align 8
  store %struct.TYPE_8__** %18, %struct.TYPE_8__*** %8, align 8
  store i64 0, i64* %3, align 8
  br label %19

19:                                               ; preds = %80, %1
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ngx_old_cycles, i32 0, i32 0), align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %83

23:                                               ; preds = %19
  %24 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %24, i64 %25
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = icmp eq %struct.TYPE_8__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %80

30:                                               ; preds = %23
  store i64 0, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %31

31:                                               ; preds = %58, %30
  %32 = load i64, i64* %4, align 8
  %33 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %34 = load i64, i64* %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %33, i64 %34
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %32, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %31
  %41 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %42 = load i64, i64* %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %41, i64 %42
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = load i64, i64* %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, -1
  br i1 %51, label %52, label %57

52:                                               ; preds = %40
  store i64 1, i64* %5, align 8
  %53 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @ngx_log_debug1(i32 %53, i32* %54, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  br label %61

57:                                               ; preds = %40
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %4, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %4, align 8
  br label %31

61:                                               ; preds = %52, %31
  %62 = load i64, i64* %5, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i64 1, i64* %6, align 8
  br label %80

65:                                               ; preds = %61
  %66 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = load i64, i64* %3, align 8
  %69 = call i32 @ngx_log_debug1(i32 %66, i32* %67, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %68)
  %70 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %71 = load i64, i64* %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %70, i64 %71
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = call i32 @ngx_destroy_pool(%struct.TYPE_9__* %75)
  %77 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %78 = load i64, i64* %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %77, i64 %78
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %79, align 8
  br label %80

80:                                               ; preds = %65, %64, %29
  %81 = load i64, i64* %3, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %3, align 8
  br label %19

83:                                               ; preds = %19
  %84 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = load i64, i64* %6, align 8
  %87 = call i32 @ngx_log_debug1(i32 %84, i32* %85, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %86)
  %88 = load i64, i64* %6, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load i32*, i32** %2, align 8
  %92 = call i32 @ngx_add_timer(i32* %91, i32 30000)
  br label %96

93:                                               ; preds = %83
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ngx_temp_pool, align 8
  %95 = call i32 @ngx_destroy_pool(%struct.TYPE_9__* %94)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** @ngx_temp_pool, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ngx_old_cycles, i32 0, i32 0), align 8
  br label %96

96:                                               ; preds = %93, %90
  ret void
}

declare dso_local i32 @ngx_log_debug0(i32, i32*, i32, i8*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32*, i32, i8*, i64) #1

declare dso_local i32 @ngx_destroy_pool(%struct.TYPE_9__*) #1

declare dso_local i32 @ngx_add_timer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
