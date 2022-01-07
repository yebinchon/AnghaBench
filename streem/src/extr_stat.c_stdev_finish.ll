; ModuleID = '/home/carl/AnghaBench/streem/src/extr_stat.c_stdev_finish.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_stat.c_stdev_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.stdev_data* }
%struct.stdev_data = type { i32, i32, i32, i32 }

@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @stdev_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stdev_finish(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stdev_data*, align 8
  %6 = alloca double, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.stdev_data*, %struct.stdev_data** %8, align 8
  store %struct.stdev_data* %9, %struct.stdev_data** %5, align 8
  %10 = load %struct.stdev_data*, %struct.stdev_data** %5, align 8
  %11 = getelementptr inbounds %struct.stdev_data, %struct.stdev_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %75 [
    i32 129, label %13
    i32 128, label %27
    i32 131, label %41
    i32 130, label %58
  ]

13:                                               ; preds = %2
  %14 = load %struct.stdev_data*, %struct.stdev_data** %5, align 8
  %15 = getelementptr inbounds %struct.stdev_data, %struct.stdev_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.stdev_data*, %struct.stdev_data** %5, align 8
  %18 = getelementptr inbounds %struct.stdev_data, %struct.stdev_data* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sdiv i32 %16, %20
  %22 = call double @sqrt(i32 %21)
  store double %22, double* %6, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = load double, double* %6, align 8
  %25 = call i32 @strm_float_value(double %24)
  %26 = call i32 @strm_emit(%struct.TYPE_4__* %23, i32 %25, i32* null)
  br label %75

27:                                               ; preds = %2
  %28 = load %struct.stdev_data*, %struct.stdev_data** %5, align 8
  %29 = getelementptr inbounds %struct.stdev_data, %struct.stdev_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.stdev_data*, %struct.stdev_data** %5, align 8
  %32 = getelementptr inbounds %struct.stdev_data, %struct.stdev_data* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sdiv i32 %30, %34
  %36 = sitofp i32 %35 to double
  store double %36, double* %6, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = load double, double* %6, align 8
  %39 = call i32 @strm_float_value(double %38)
  %40 = call i32 @strm_emit(%struct.TYPE_4__* %37, i32 %39, i32* null)
  br label %75

41:                                               ; preds = %2
  %42 = load %struct.stdev_data*, %struct.stdev_data** %5, align 8
  %43 = getelementptr inbounds %struct.stdev_data, %struct.stdev_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.stdev_data*, %struct.stdev_data** %5, align 8
  %46 = getelementptr inbounds %struct.stdev_data, %struct.stdev_data* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sdiv i32 %44, %48
  %50 = call double @sqrt(i32 %49)
  store double %50, double* %6, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = load %struct.stdev_data*, %struct.stdev_data** %5, align 8
  %53 = getelementptr inbounds %struct.stdev_data, %struct.stdev_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load double, double* %6, align 8
  %56 = call i32 @float2(i32 %54, double %55)
  %57 = call i32 @strm_emit(%struct.TYPE_4__* %51, i32 %56, i32* null)
  br label %75

58:                                               ; preds = %2
  %59 = load %struct.stdev_data*, %struct.stdev_data** %5, align 8
  %60 = getelementptr inbounds %struct.stdev_data, %struct.stdev_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.stdev_data*, %struct.stdev_data** %5, align 8
  %63 = getelementptr inbounds %struct.stdev_data, %struct.stdev_data* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sdiv i32 %61, %65
  %67 = sitofp i32 %66 to double
  store double %67, double* %6, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %69 = load %struct.stdev_data*, %struct.stdev_data** %5, align 8
  %70 = getelementptr inbounds %struct.stdev_data, %struct.stdev_data* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load double, double* %6, align 8
  %73 = call i32 @float2(i32 %71, double %72)
  %74 = call i32 @strm_emit(%struct.TYPE_4__* %68, i32 %73, i32* null)
  br label %75

75:                                               ; preds = %2, %58, %41, %27, %13
  %76 = load i32, i32* @STRM_OK, align 4
  ret i32 %76
}

declare dso_local double @sqrt(i32) #1

declare dso_local i32 @strm_emit(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @strm_float_value(double) #1

declare dso_local i32 @float2(i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
