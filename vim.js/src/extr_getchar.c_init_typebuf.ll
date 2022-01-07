; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_getchar.c_init_typebuf.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_getchar.c_init_typebuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i32, i32, i32* }

@typebuf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@typebuf_init = common dso_local global i32* null, align 8
@noremapbuf_init = common dso_local global i32 0, align 4
@TYPELEN_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_typebuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_typebuf() #0 {
  %1 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @typebuf, i32 0, i32 5), align 8
  %2 = icmp eq i32* %1, null
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = load i32*, i32** @typebuf_init, align 8
  store i32* %4, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @typebuf, i32 0, i32 5), align 8
  %5 = load i32, i32* @noremapbuf_init, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @typebuf, i32 0, i32 4), align 4
  %6 = load i32, i32* @TYPELEN_INIT, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @typebuf, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @typebuf, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @typebuf, i32 0, i32 1), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @typebuf, i32 0, i32 0), align 8
  br label %7

7:                                                ; preds = %3, %0
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
