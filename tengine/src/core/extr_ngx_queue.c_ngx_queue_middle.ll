; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_queue.c_ngx_queue_middle.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_queue.c_ngx_queue_middle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ngx_queue_middle(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32* @ngx_queue_head(i32* %6)
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32* @ngx_queue_last(i32* %9)
  %11 = icmp eq i32* %8, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32*, i32** %4, align 8
  store i32* %13, i32** %2, align 8
  br label %38

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = call i32* @ngx_queue_head(i32* %15)
  store i32* %16, i32** %5, align 8
  br label %17

17:                                               ; preds = %37, %14
  %18 = load i32*, i32** %4, align 8
  %19 = call i32* @ngx_queue_next(i32* %18)
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32* @ngx_queue_next(i32* %20)
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = call i32* @ngx_queue_last(i32* %23)
  %25 = icmp eq i32* %22, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32*, i32** %4, align 8
  store i32* %27, i32** %2, align 8
  br label %38

28:                                               ; preds = %17
  %29 = load i32*, i32** %5, align 8
  %30 = call i32* @ngx_queue_next(i32* %29)
  store i32* %30, i32** %5, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = call i32* @ngx_queue_last(i32* %32)
  %34 = icmp eq i32* %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32*, i32** %4, align 8
  store i32* %36, i32** %2, align 8
  br label %38

37:                                               ; preds = %28
  br label %17

38:                                               ; preds = %35, %26, %12
  %39 = load i32*, i32** %2, align 8
  ret i32* %39
}

declare dso_local i32* @ngx_queue_head(i32*) #1

declare dso_local i32* @ngx_queue_last(i32*) #1

declare dso_local i32* @ngx_queue_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
