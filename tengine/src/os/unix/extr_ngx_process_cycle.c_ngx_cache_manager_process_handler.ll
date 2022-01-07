; ModuleID = '/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_process_cycle.c_ngx_cache_manager_process_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_process_cycle.c_ngx_cache_manager_process_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32 (i32)*, i32 }

@ngx_cycle = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @ngx_cache_manager_process_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_cache_manager_process_handler(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__**, align 8
  store i32* %0, i32** %2, align 8
  store i32 3600000, i32* %4, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ngx_cycle, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  store %struct.TYPE_5__** %10, %struct.TYPE_5__*** %6, align 8
  store i64 0, i64* %3, align 8
  br label %11

11:                                               ; preds = %51, %1
  %12 = load i64, i64* %3, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ngx_cycle, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %12, %16
  br i1 %17, label %18, label %54

18:                                               ; preds = %11
  %19 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %19, i64 %20
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32 (i32)*, i32 (i32)** %23, align 8
  %25 = icmp ne i32 (i32)* %24, null
  br i1 %25, label %26, label %50

26:                                               ; preds = %18
  %27 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %27, i64 %28
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32 (i32)*, i32 (i32)** %31, align 8
  %33 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %34 = load i64, i64* %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %33, i64 %34
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 %32(i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %26
  %44 = load i32, i32* %5, align 4
  br label %47

45:                                               ; preds = %26
  %46 = load i32, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  store i32 %48, i32* %4, align 4
  %49 = call i32 (...) @ngx_time_update()
  br label %50

50:                                               ; preds = %47, %18
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %3, align 8
  br label %11

54:                                               ; preds = %11
  %55 = load i32, i32* %4, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 1, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %54
  %59 = load i32*, i32** %2, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @ngx_add_timer(i32* %59, i32 %60)
  ret void
}

declare dso_local i32 @ngx_time_update(...) #1

declare dso_local i32 @ngx_add_timer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
