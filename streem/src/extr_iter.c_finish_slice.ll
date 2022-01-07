; ModuleID = '/home/carl/AnghaBench/streem/src/extr_iter.c_finish_slice.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_iter.c_finish_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.slice_data* }
%struct.slice_data = type { i64, %struct.slice_data* }

@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @finish_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @finish_slice(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.slice_data*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.slice_data*, %struct.slice_data** %8, align 8
  store %struct.slice_data* %9, %struct.slice_data** %5, align 8
  %10 = load %struct.slice_data*, %struct.slice_data** %5, align 8
  %11 = getelementptr inbounds %struct.slice_data, %struct.slice_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load %struct.slice_data*, %struct.slice_data** %5, align 8
  %16 = getelementptr inbounds %struct.slice_data, %struct.slice_data* %15, i32 0, i32 1
  %17 = load %struct.slice_data*, %struct.slice_data** %16, align 8
  %18 = load %struct.slice_data*, %struct.slice_data** %5, align 8
  %19 = getelementptr inbounds %struct.slice_data, %struct.slice_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @strm_ary_new(%struct.slice_data* %17, i64 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @strm_ary_value(i32 %23)
  %25 = call i32 @strm_emit(%struct.TYPE_4__* %22, i32 %24, i32* null)
  br label %26

26:                                               ; preds = %14, %2
  %27 = load %struct.slice_data*, %struct.slice_data** %5, align 8
  %28 = getelementptr inbounds %struct.slice_data, %struct.slice_data* %27, i32 0, i32 1
  %29 = load %struct.slice_data*, %struct.slice_data** %28, align 8
  %30 = call i32 @free(%struct.slice_data* %29)
  %31 = load %struct.slice_data*, %struct.slice_data** %5, align 8
  %32 = call i32 @free(%struct.slice_data* %31)
  %33 = load i32, i32* @STRM_OK, align 4
  ret i32 %33
}

declare dso_local i32 @strm_ary_new(%struct.slice_data*, i64) #1

declare dso_local i32 @strm_emit(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @strm_ary_value(i32) #1

declare dso_local i32 @free(%struct.slice_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
