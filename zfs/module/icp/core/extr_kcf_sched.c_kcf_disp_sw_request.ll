; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_sched.c_kcf_disp_sw_request.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_sched.c_kcf_disp_sw_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@kcfpool = common dso_local global %struct.TYPE_3__* null, align 8
@gswq = common dso_local global %struct.TYPE_4__* null, align 8
@CRYPTO_QUEUED = common dso_local global i32 0, align 4
@kcf_minthreads = common dso_local global i32 0, align 4
@kcf_maxthreads = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @kcf_disp_sw_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcf_disp_sw_request(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @kcf_enqueue(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %75

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kcfpool, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %11
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gswq, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @mutex_enter(i32* %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gswq, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = call i32 @cv_signal(i32* %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gswq, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i32 @mutex_exit(i32* %24)
  %26 = load i32, i32* @CRYPTO_QUEUED, align 4
  store i32 %26, i32* %2, align 4
  br label %75

27:                                               ; preds = %11
  %28 = load i32, i32* @kcf_minthreads, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kcfpool, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kcfpool, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %31, %34
  %36 = sub nsw i32 %28, %35
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %73

39:                                               ; preds = %27
  %40 = load i32, i32* %5, align 4
  %41 = load i64, i64* @kcf_maxthreads, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kcfpool, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = sub nsw i64 %41, %45
  %47 = call i32 @MIN(i32 %40, i64 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %39
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kcfpool, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 4
  %53 = call i32 @mutex_enter(i32* %52)
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kcfpool, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 6
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %50
  %59 = load i64, i64* @B_TRUE, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kcfpool, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 6
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kcfpool, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kcfpool, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 5
  %67 = call i32 @cv_signal(i32* %66)
  br label %68

68:                                               ; preds = %58, %50
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kcfpool, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 4
  %71 = call i32 @mutex_exit(i32* %70)
  br label %72

72:                                               ; preds = %68, %39
  br label %73

73:                                               ; preds = %72, %27
  %74 = load i32, i32* @CRYPTO_QUEUED, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %16, %9
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @kcf_enqueue(i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @cv_signal(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @MIN(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
