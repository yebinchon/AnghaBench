; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_sched.c_kcf_enqueue.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_sched.c_kcf_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_4__*, %struct.TYPE_4__* }

@gswq = common dso_local global %struct.TYPE_5__* null, align 8
@CRYPTO_BUSY = common dso_local global i32 0, align 4
@REQ_WAITING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @kcf_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcf_enqueue(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** @gswq, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %7 = call i32 @mutex_enter(i32* %6)
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @gswq, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @gswq, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %10, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @gswq, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = call i32 @mutex_exit(i32* %17)
  %19 = load i32, i32* @CRYPTO_BUSY, align 4
  store i32 %19, i32* %2, align 4
  br label %63

20:                                               ; preds = %1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @gswq, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp eq %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @gswq, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %28, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @gswq, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 4
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %30, align 8
  br label %52

31:                                               ; preds = %20
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @gswq, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = icmp eq %struct.TYPE_4__* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @ASSERT(i32 %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @gswq, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %4, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** %45, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @gswq, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %48, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store %struct.TYPE_4__* %49, %struct.TYPE_4__** %51, align 8
  br label %52

52:                                               ; preds = %31, %25
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** @gswq, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %54, align 8
  %57 = load i32, i32* @REQ_WAITING, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** @gswq, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = call i32 @mutex_exit(i32* %61)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %52, %15
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
