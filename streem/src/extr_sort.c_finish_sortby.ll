; ModuleID = '/home/carl/AnghaBench/streem/src/extr_sort.c_finish_sortby.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_sort.c_finish_sortby.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.sortby_data* }
%struct.sortby_data = type { i64, %struct.sortby_data*, i32 }

@sortby_cmp = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @finish_sortby to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @finish_sortby(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sortby_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.sortby_data*, %struct.sortby_data** %9, align 8
  store %struct.sortby_data* %10, %struct.sortby_data** %5, align 8
  %11 = load %struct.sortby_data*, %struct.sortby_data** %5, align 8
  %12 = getelementptr inbounds %struct.sortby_data, %struct.sortby_data* %11, i32 0, i32 1
  %13 = load %struct.sortby_data*, %struct.sortby_data** %12, align 8
  %14 = load %struct.sortby_data*, %struct.sortby_data** %5, align 8
  %15 = getelementptr inbounds %struct.sortby_data, %struct.sortby_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @sortby_cmp, align 4
  %18 = call i32 @qsort(%struct.sortby_data* %13, i64 %16, i32 4, i32 %17)
  store i64 0, i64* %6, align 8
  %19 = load %struct.sortby_data*, %struct.sortby_data** %5, align 8
  %20 = getelementptr inbounds %struct.sortby_data, %struct.sortby_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %7, align 8
  br label %22

22:                                               ; preds = %36, %2
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = load %struct.sortby_data*, %struct.sortby_data** %5, align 8
  %29 = getelementptr inbounds %struct.sortby_data, %struct.sortby_data* %28, i32 0, i32 1
  %30 = load %struct.sortby_data*, %struct.sortby_data** %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds %struct.sortby_data, %struct.sortby_data* %30, i64 %31
  %33 = getelementptr inbounds %struct.sortby_data, %struct.sortby_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @strm_emit(%struct.TYPE_4__* %27, i32 %34, i32* null)
  br label %36

36:                                               ; preds = %26
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %6, align 8
  br label %22

39:                                               ; preds = %22
  %40 = load %struct.sortby_data*, %struct.sortby_data** %5, align 8
  %41 = getelementptr inbounds %struct.sortby_data, %struct.sortby_data* %40, i32 0, i32 1
  %42 = load %struct.sortby_data*, %struct.sortby_data** %41, align 8
  %43 = call i32 @free(%struct.sortby_data* %42)
  %44 = load %struct.sortby_data*, %struct.sortby_data** %5, align 8
  %45 = call i32 @free(%struct.sortby_data* %44)
  %46 = load i32, i32* @STRM_OK, align 4
  ret i32 %46
}

declare dso_local i32 @qsort(%struct.sortby_data*, i64, i32, i32) #1

declare dso_local i32 @strm_emit(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @free(%struct.sortby_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
