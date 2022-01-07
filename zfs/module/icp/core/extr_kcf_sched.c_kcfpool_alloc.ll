; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_sched.c_kcfpool_alloc.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_sched.c_kcfpool_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i8*, i64, i8*, i64, i64, i64 }

@KM_SLEEP = common dso_local global i32 0, align 4
@kcfpool = common dso_local global %struct.TYPE_3__* null, align 8
@B_FALSE = common dso_local global i8* null, align 8
@MUTEX_DEFAULT = common dso_local global i32 0, align 4
@CV_DEFAULT = common dso_local global i32 0, align 4
@KCF_DEFAULT_THRTIMEOUT = common dso_local global i32 0, align 4
@kcf_idlethr_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @kcfpool_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kcfpool_alloc() #0 {
  %1 = load i32, i32* @KM_SLEEP, align 4
  %2 = call %struct.TYPE_3__* @kmem_alloc(i32 4, i32 %1)
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** @kcfpool, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kcfpool, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kcfpool, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 9
  store i64 0, i64* %6, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kcfpool, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 7
  store i64 0, i64* %8, align 8
  %9 = load i8*, i8** @B_FALSE, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kcfpool, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 6
  store i8* %9, i8** %11, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kcfpool, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 5
  store i64 0, i64* %13, align 8
  %14 = load i8*, i8** @B_FALSE, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kcfpool, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 4
  store i8* %14, i8** %16, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kcfpool, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  %19 = load i32, i32* @MUTEX_DEFAULT, align 4
  %20 = call i32 @mutex_init(i32* %18, i32* null, i32 %19, i32* null)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kcfpool, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i32, i32* @CV_DEFAULT, align 4
  %24 = call i32 @cv_init(i32* %22, i32* null, i32 %23, i32* null)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kcfpool, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* @MUTEX_DEFAULT, align 4
  %28 = call i32 @mutex_init(i32* %26, i32* null, i32 %27, i32* null)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kcfpool, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* @CV_DEFAULT, align 4
  %32 = call i32 @cv_init(i32* %30, i32* null, i32 %31, i32* null)
  %33 = load i32, i32* @KCF_DEFAULT_THRTIMEOUT, align 4
  store i32 %33, i32* @kcf_idlethr_timeout, align 4
  ret void
}

declare dso_local %struct.TYPE_3__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*, i32*, i32, i32*) #1

declare dso_local i32 @cv_init(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
