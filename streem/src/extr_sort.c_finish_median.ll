; ModuleID = '/home/carl/AnghaBench/streem/src/extr_sort.c_finish_median.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_sort.c_finish_median.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.sort_data* }
%struct.sort_data = type { %struct.sort_data*, i32 }

@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @finish_median to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @finish_median(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sort_data*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.sort_data*, %struct.sort_data** %8, align 8
  store %struct.sort_data* %9, %struct.sort_data** %5, align 8
  %10 = load %struct.sort_data*, %struct.sort_data** %5, align 8
  %11 = getelementptr inbounds %struct.sort_data, %struct.sort_data* %10, i32 0, i32 0
  %12 = load %struct.sort_data*, %struct.sort_data** %11, align 8
  %13 = load %struct.sort_data*, %struct.sort_data** %5, align 8
  %14 = getelementptr inbounds %struct.sort_data, %struct.sort_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @quick_median(%struct.sort_data* %12, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.sort_data*, %struct.sort_data** %5, align 8
  %18 = getelementptr inbounds %struct.sort_data, %struct.sort_data* %17, i32 0, i32 0
  %19 = load %struct.sort_data*, %struct.sort_data** %18, align 8
  %20 = call i32 @free(%struct.sort_data* %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @strm_emit(%struct.TYPE_4__* %21, i32 %22, i32* null)
  %24 = load %struct.sort_data*, %struct.sort_data** %5, align 8
  %25 = call i32 @free(%struct.sort_data* %24)
  %26 = load i32, i32* @STRM_OK, align 4
  ret i32 %26
}

declare dso_local i32 @quick_median(%struct.sort_data*, i32) #1

declare dso_local i32 @free(%struct.sort_data*) #1

declare dso_local i32 @strm_emit(%struct.TYPE_4__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
