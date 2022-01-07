; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzpool/extr_kernel.c_cv_timedwait_hires.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzpool/extr_kernel.c_cv_timedwait_hires.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.timeval = type { i32, i64 }
%struct.timespec = type { i32, i64 }

@CALLOUT_FLAG_ABSOLUTE = common dso_local global i32 0, align 4
@NANOSEC = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cv_timedwait_hires(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.timeval, align 8
  %14 = alloca %struct.timespec, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @CALLOUT_FLAG_ABSOLUTE, align 4
  %21 = icmp eq i32 %19, %20
  br label %22

22:                                               ; preds = %18, %5
  %23 = phi i1 [ true, %5 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @CALLOUT_FLAG_ABSOLUTE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = call i64 (...) @gethrtime()
  %33 = load i32, i32* %15, align 4
  %34 = sext i32 %33 to i64
  %35 = sub nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %15, align 4
  br label %37

37:                                               ; preds = %31, %22
  %38 = load i32, i32* %15, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 -1, i32* %6, align 4
  br label %91

41:                                               ; preds = %37
  %42 = call i32 @gettimeofday(%struct.timeval* %13, i32* null)
  %43 = call i32 @VERIFY0(i32 %42)
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* @NANOSEC, align 4
  %48 = sdiv i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %45, %49
  %51 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i32 0, i32 1
  store i64 %50, i64* %51, align 8
  %52 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @NSEC_PER_USEC, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* @NANOSEC, align 4
  %58 = srem i32 %56, %57
  %59 = add nsw i32 %55, %58
  %60 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i32 0, i32 0
  store i32 %59, i32* %60, align 8
  %61 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @NANOSEC, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %41
  %66 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %66, align 8
  %69 = load i32, i32* @NANOSEC, align 4
  %70 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %71, %69
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %65, %41
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = call i32 @memset(i32* %75, i32 0, i32 4)
  %77 = load i32*, i32** %7, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = call i32 @pthread_cond_timedwait(i32* %77, i32* %79, %struct.timespec* %14)
  store i32 %80, i32* %12, align 4
  %81 = call i32 (...) @pthread_self()
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @ETIMEDOUT, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %73
  store i32 -1, i32* %6, align 4
  br label %91

88:                                               ; preds = %73
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @VERIFY0(i32 %89)
  store i32 1, i32* %6, align 4
  br label %91

91:                                               ; preds = %88, %87, %40
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @gethrtime(...) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @pthread_cond_timedwait(i32*, i32*, %struct.timespec*) #1

declare dso_local i32 @pthread_self(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
