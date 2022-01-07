; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/lzx_compress/extr_lzx_layer.c_lzx_finish.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/lzx_compress/extr_lzx_layer.c_lzx_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzx_data = type { %struct.lzx_data*, %struct.lzx_data*, %struct.lzx_data*, %struct.lzx_data*, i32, i32 }
%struct.lzx_results = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lzx_finish(%struct.lzx_data* %0, %struct.lzx_results* %1) #0 {
  %3 = alloca %struct.lzx_data*, align 8
  %4 = alloca %struct.lzx_results*, align 8
  store %struct.lzx_data* %0, %struct.lzx_data** %3, align 8
  store %struct.lzx_results* %1, %struct.lzx_results** %4, align 8
  %5 = load %struct.lzx_results*, %struct.lzx_results** %4, align 8
  %6 = icmp ne %struct.lzx_results* %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = load %struct.lzx_data*, %struct.lzx_data** %3, align 8
  %9 = getelementptr inbounds %struct.lzx_data, %struct.lzx_data* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.lzx_results*, %struct.lzx_results** %4, align 8
  %12 = getelementptr inbounds %struct.lzx_results, %struct.lzx_results* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.lzx_data*, %struct.lzx_data** %3, align 8
  %14 = getelementptr inbounds %struct.lzx_data, %struct.lzx_data* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.lzx_results*, %struct.lzx_results** %4, align 8
  %17 = getelementptr inbounds %struct.lzx_results, %struct.lzx_results* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %18

18:                                               ; preds = %7, %2
  %19 = load %struct.lzx_data*, %struct.lzx_data** %3, align 8
  %20 = getelementptr inbounds %struct.lzx_data, %struct.lzx_data* %19, i32 0, i32 3
  %21 = load %struct.lzx_data*, %struct.lzx_data** %20, align 8
  %22 = call i32 @lz_release(%struct.lzx_data* %21)
  %23 = load %struct.lzx_data*, %struct.lzx_data** %3, align 8
  %24 = getelementptr inbounds %struct.lzx_data, %struct.lzx_data* %23, i32 0, i32 3
  %25 = load %struct.lzx_data*, %struct.lzx_data** %24, align 8
  %26 = call i32 @free(%struct.lzx_data* %25)
  %27 = load %struct.lzx_data*, %struct.lzx_data** %3, align 8
  %28 = getelementptr inbounds %struct.lzx_data, %struct.lzx_data* %27, i32 0, i32 2
  %29 = load %struct.lzx_data*, %struct.lzx_data** %28, align 8
  %30 = call i32 @free(%struct.lzx_data* %29)
  %31 = load %struct.lzx_data*, %struct.lzx_data** %3, align 8
  %32 = getelementptr inbounds %struct.lzx_data, %struct.lzx_data* %31, i32 0, i32 1
  %33 = load %struct.lzx_data*, %struct.lzx_data** %32, align 8
  %34 = call i32 @free(%struct.lzx_data* %33)
  %35 = load %struct.lzx_data*, %struct.lzx_data** %3, align 8
  %36 = getelementptr inbounds %struct.lzx_data, %struct.lzx_data* %35, i32 0, i32 0
  %37 = load %struct.lzx_data*, %struct.lzx_data** %36, align 8
  %38 = call i32 @free(%struct.lzx_data* %37)
  %39 = load %struct.lzx_data*, %struct.lzx_data** %3, align 8
  %40 = call i32 @free(%struct.lzx_data* %39)
  ret i32 0
}

declare dso_local i32 @lz_release(%struct.lzx_data*) #1

declare dso_local i32 @free(%struct.lzx_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
