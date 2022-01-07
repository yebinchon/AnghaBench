; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_getchar.c_alloc_typebuf.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_getchar.c_alloc_typebuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i32, i32*, i32* }

@TYPELEN_INIT = common dso_local global i32 0, align 4
@typebuf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FAIL = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @alloc_typebuf() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @TYPELEN_INIT, align 4
  %3 = call i8* @alloc(i32 %2)
  %4 = bitcast i8* %3 to i32*
  store i32* %4, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @typebuf, i32 0, i32 8), align 8
  %5 = load i32, i32* @TYPELEN_INIT, align 4
  %6 = call i8* @alloc(i32 %5)
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @typebuf, i32 0, i32 7), align 8
  %8 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @typebuf, i32 0, i32 8), align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %0
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @typebuf, i32 0, i32 7), align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10, %0
  %14 = call i32 (...) @free_typebuf()
  %15 = load i32, i32* @FAIL, align 4
  store i32 %15, i32* %1, align 4
  br label %24

16:                                               ; preds = %10
  %17 = load i32, i32* @TYPELEN_INIT, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @typebuf, i32 0, i32 6), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @typebuf, i32 0, i32 5), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @typebuf, i32 0, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @typebuf, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @typebuf, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @typebuf, i32 0, i32 1), align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @typebuf, i32 0, i32 0), align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @typebuf, i32 0, i32 0), align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i64 1, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @typebuf, i32 0, i32 0), align 8
  br label %22

22:                                               ; preds = %21, %16
  %23 = load i32, i32* @OK, align 4
  store i32 %23, i32* %1, align 4
  br label %24

24:                                               ; preds = %22, %13
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i8* @alloc(i32) #1

declare dso_local i32 @free_typebuf(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
