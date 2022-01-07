; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660.c_iso9660_get_ltime.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660.c_iso9660_get_ltime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.tm = type { i32, i32, i32, i64 }

@tm_year = common dso_local global i32 0, align 4
@lt_year = common dso_local global i32 0, align 4
@tm_mon = common dso_local global i32 0, align 4
@lt_month = common dso_local global i32 0, align 4
@tm_mday = common dso_local global i32 0, align 4
@lt_day = common dso_local global i32 0, align 4
@tm_hour = common dso_local global i32 0, align 4
@lt_hour = common dso_local global i32 0, align 4
@tm_min = common dso_local global i32 0, align 4
@lt_minute = common dso_local global i32 0, align 4
@tm_sec = common dso_local global i32 0, align 4
@lt_second = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iso9660_get_ltime(%struct.TYPE_3__* %0, %struct.tm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.tm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tm, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.tm* %1, %struct.tm** %5, align 8
  %8 = load %struct.tm*, %struct.tm** %5, align 8
  %9 = icmp ne %struct.tm* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

11:                                               ; preds = %2
  %12 = load %struct.tm*, %struct.tm** %5, align 8
  %13 = call i32 @memset(%struct.tm* %12, i32 0, i32 24)
  %14 = load i32, i32* @tm_year, align 4
  %15 = load i32, i32* @lt_year, align 4
  %16 = call i32 @set_ltime_field(i32 %14, i32 %15, i32 -1900)
  %17 = load i32, i32* @tm_mon, align 4
  %18 = load i32, i32* @lt_month, align 4
  %19 = call i32 @set_ltime_field(i32 %17, i32 %18, i32 -1)
  %20 = load i32, i32* @tm_mday, align 4
  %21 = load i32, i32* @lt_day, align 4
  %22 = call i32 @set_ltime_field(i32 %20, i32 %21, i32 0)
  %23 = load i32, i32* @tm_hour, align 4
  %24 = load i32, i32* @lt_hour, align 4
  %25 = call i32 @set_ltime_field(i32 %23, i32 %24, i32 0)
  %26 = load i32, i32* @tm_min, align 4
  %27 = load i32, i32* @lt_minute, align 4
  %28 = call i32 @set_ltime_field(i32 %26, i32 %27, i32 0)
  %29 = load i32, i32* @tm_sec, align 4
  %30 = load i32, i32* @lt_second, align 4
  %31 = call i32 @set_ltime_field(i32 %29, i32 %30, i32 0)
  %32 = load %struct.tm*, %struct.tm** %5, align 8
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %32, i32 0, i32 0
  store i32 -1, i32* %33, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, 900
  %38 = load %struct.tm*, %struct.tm** %5, align 8
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.tm*, %struct.tm** %5, align 8
  %43 = call i32 @mktime(%struct.tm* %42)
  store i32 %43, i32* %6, align 4
  %44 = call i32 @localtime_r(i32* %6, %struct.tm* %7)
  %45 = load %struct.tm*, %struct.tm** %5, align 8
  %46 = call i32 @memcpy(%struct.tm* %45, %struct.tm* %7, i32 24)
  %47 = load %struct.tm*, %struct.tm** %5, align 8
  %48 = getelementptr inbounds %struct.tm, %struct.tm* %47, i32 0, i32 0
  store i32 -1, i32* %48, align 8
  store i32 1, i32* %3, align 4
  br label %49

49:                                               ; preds = %11, %10
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i32 @set_ltime_field(i32, i32, i32) #1

declare dso_local i32 @mktime(%struct.tm*) #1

declare dso_local i32 @localtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @memcpy(%struct.tm*, %struct.tm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
