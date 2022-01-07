; ModuleID = '/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_pipe.c_ngx_close_pipes.c'
source_filename = "/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_pipe.c_ngx_close_pipes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@ngx_last_pipe = common dso_local global i64 0, align 8
@ngx_pipes = common dso_local global %struct.TYPE_3__* null, align 8
@ngx_pipe_generation = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_close_pipes() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  store i64 -1, i64* %2, align 8
  br label %3

3:                                                ; preds = %31, %0
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* @ngx_last_pipe, align 8
  %6 = icmp ult i64 %4, %5
  br i1 %6, label %7, label %34

7:                                                ; preds = %3
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ngx_pipes, align 8
  %9 = load i64, i64* %1, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  br label %31

15:                                               ; preds = %7
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ngx_pipes, align 8
  %17 = load i64, i64* %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ngx_pipe_generation, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ngx_pipes, align 8
  %25 = load i64, i64* %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %25
  %27 = call i32 @ngx_close_pipe(%struct.TYPE_3__* %26)
  br label %30

28:                                               ; preds = %15
  %29 = load i64, i64* %1, align 8
  store i64 %29, i64* %2, align 8
  br label %30

30:                                               ; preds = %28, %23
  br label %31

31:                                               ; preds = %30, %14
  %32 = load i64, i64* %1, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %1, align 8
  br label %3

34:                                               ; preds = %3
  %35 = load i64, i64* %2, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* @ngx_last_pipe, align 8
  ret void
}

declare dso_local i32 @ngx_close_pipe(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
