; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vrtc.c_clock_ts_to_ct.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vrtc.c_clock_ts_to_ct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.clocktime = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@SECDAY = common dso_local global i32 0, align 4
@POSIX_BASE_YEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timespec*, %struct.clocktime*)* @clock_ts_to_ct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clock_ts_to_ct(%struct.timespec* %0, %struct.clocktime* %1) #0 {
  %3 = alloca %struct.timespec*, align 8
  %4 = alloca %struct.clocktime*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.timespec* %0, %struct.timespec** %3, align 8
  store %struct.clocktime* %1, %struct.clocktime** %4, align 8
  %10 = load %struct.timespec*, %struct.timespec** %3, align 8
  %11 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @SECDAY, align 4
  %15 = sdiv i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @SECDAY, align 4
  %18 = srem i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @day_of_week(i32 %19)
  %21 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %22 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @POSIX_BASE_YEAR, align 4
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %34, %2
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @days_in_year(i32 %26)
  %28 = icmp sge i32 %25, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @days_in_year(i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %24

37:                                               ; preds = %24
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %40 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  store i32 1, i32* %5, align 4
  br label %41

41:                                               ; preds = %53, %37
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @days_in_month(i32 %43, i32 %44)
  %46 = icmp sge i32 %42, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @days_in_month(i32 %48, i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %41

56:                                               ; preds = %41
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %59 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  %62 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %63 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %8, align 4
  %65 = sdiv i32 %64, 3600
  %66 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %67 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %8, align 4
  %69 = srem i32 %68, 3600
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = sdiv i32 %70, 60
  %72 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %73 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %8, align 4
  %75 = srem i32 %74, 60
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %78 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 4
  %79 = load %struct.timespec*, %struct.timespec** %3, align 8
  %80 = getelementptr inbounds %struct.timespec, %struct.timespec* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %83 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %82, i32 0, i32 6
  store i32 %81, i32* %83, align 4
  ret void
}

declare dso_local i32 @day_of_week(i32) #1

declare dso_local i32 @days_in_year(i32) #1

declare dso_local i32 @days_in_month(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
