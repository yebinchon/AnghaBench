; ModuleID = '/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_process_cycle.c_ngx_cache_loader_process_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_process_cycle.c_ngx_cache_loader_process_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 (i32)* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_5__** }

@ngx_cycle = common dso_local global i64 0, align 8
@ngx_terminate = common dso_local global i64 0, align 8
@ngx_quit = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @ngx_cache_loader_process_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_cache_loader_process_handler(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__**, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i64, i64* @ngx_cycle, align 8
  %7 = inttoptr i64 %6 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  store %struct.TYPE_5__** %11, %struct.TYPE_5__*** %4, align 8
  store i64 0, i64* %3, align 8
  br label %12

12:                                               ; preds = %50, %1
  %13 = load i64, i64* %3, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %13, %17
  br i1 %18, label %19, label %53

19:                                               ; preds = %12
  %20 = load i64, i64* @ngx_terminate, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* @ngx_quit, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19
  br label %53

26:                                               ; preds = %22
  %27 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %27, i64 %28
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32 (i32)*, i32 (i32)** %31, align 8
  %33 = icmp ne i32 (i32)* %32, null
  br i1 %33, label %34, label %49

34:                                               ; preds = %26
  %35 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %36 = load i64, i64* %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %35, i64 %36
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32 (i32)*, i32 (i32)** %39, align 8
  %41 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %42 = load i64, i64* %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %41, i64 %42
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 %40(i32 %46)
  %48 = call i32 (...) @ngx_time_update()
  br label %49

49:                                               ; preds = %34, %26
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %3, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %3, align 8
  br label %12

53:                                               ; preds = %25, %12
  %54 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @ngx_time_update(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
