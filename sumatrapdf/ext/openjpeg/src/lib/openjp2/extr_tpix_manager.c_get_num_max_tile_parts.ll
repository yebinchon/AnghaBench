; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_tpix_manager.c_get_num_max_tile_parts.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_tpix_manager.c_get_num_max_tile_parts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_num_max_tile_parts(i64 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast %struct.TYPE_5__* %3 to { i64, %struct.TYPE_4__* }*
  %7 = getelementptr inbounds { i64, %struct.TYPE_4__* }, { i64, %struct.TYPE_4__* }* %6, i32 0, i32 0
  store i64 %0, i64* %7, align 8
  %8 = getelementptr inbounds { i64, %struct.TYPE_4__* }, { i64, %struct.TYPE_4__* }* %6, i32 0, i32 1
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %8, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %27, %2
  %10 = load i32, i32* %5, align 4
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %12, %14
  %16 = icmp slt i32 %10, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @MAX(i32 %24, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %9

30:                                               ; preds = %9
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
