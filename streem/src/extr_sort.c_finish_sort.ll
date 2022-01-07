; ModuleID = '/home/carl/AnghaBench/streem/src/extr_sort.c_finish_sort.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_sort.c_finish_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.sort_data* }
%struct.sort_data = type { i64, %struct.sort_data*, i32 }
%struct.sort_arg = type { i32, %struct.TYPE_4__* }

@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @finish_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @finish_sort(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sort_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sort_arg, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.sort_data*, %struct.sort_data** %10, align 8
  store %struct.sort_data* %11, %struct.sort_data** %5, align 8
  %12 = load %struct.sort_data*, %struct.sort_data** %5, align 8
  %13 = getelementptr inbounds %struct.sort_data, %struct.sort_data* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @strm_nil_p(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.sort_data*, %struct.sort_data** %5, align 8
  %19 = getelementptr inbounds %struct.sort_data, %struct.sort_data* %18, i32 0, i32 1
  %20 = load %struct.sort_data*, %struct.sort_data** %19, align 8
  %21 = load %struct.sort_data*, %struct.sort_data** %5, align 8
  %22 = getelementptr inbounds %struct.sort_data, %struct.sort_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @mem_sort(%struct.sort_data* %20, i64 %23, %struct.sort_arg* null)
  br label %39

25:                                               ; preds = %2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.sort_arg, %struct.sort_arg* %8, i32 0, i32 1
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %27, align 8
  %28 = load %struct.sort_data*, %struct.sort_data** %5, align 8
  %29 = getelementptr inbounds %struct.sort_data, %struct.sort_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.sort_arg, %struct.sort_arg* %8, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load %struct.sort_data*, %struct.sort_data** %5, align 8
  %33 = getelementptr inbounds %struct.sort_data, %struct.sort_data* %32, i32 0, i32 1
  %34 = load %struct.sort_data*, %struct.sort_data** %33, align 8
  %35 = load %struct.sort_data*, %struct.sort_data** %5, align 8
  %36 = getelementptr inbounds %struct.sort_data, %struct.sort_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @mem_sort(%struct.sort_data* %34, i64 %37, %struct.sort_arg* %8)
  br label %39

39:                                               ; preds = %25, %17
  store i64 0, i64* %6, align 8
  %40 = load %struct.sort_data*, %struct.sort_data** %5, align 8
  %41 = getelementptr inbounds %struct.sort_data, %struct.sort_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %7, align 8
  br label %43

43:                                               ; preds = %55, %39
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = load %struct.sort_data*, %struct.sort_data** %5, align 8
  %50 = getelementptr inbounds %struct.sort_data, %struct.sort_data* %49, i32 0, i32 1
  %51 = load %struct.sort_data*, %struct.sort_data** %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds %struct.sort_data, %struct.sort_data* %51, i64 %52
  %54 = call i32 @strm_emit(%struct.TYPE_4__* %48, %struct.sort_data* byval(%struct.sort_data) align 8 %53, i32* null)
  br label %55

55:                                               ; preds = %47
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %6, align 8
  br label %43

58:                                               ; preds = %43
  %59 = load %struct.sort_data*, %struct.sort_data** %5, align 8
  %60 = getelementptr inbounds %struct.sort_data, %struct.sort_data* %59, i32 0, i32 1
  %61 = load %struct.sort_data*, %struct.sort_data** %60, align 8
  %62 = call i32 @free(%struct.sort_data* %61)
  %63 = load %struct.sort_data*, %struct.sort_data** %5, align 8
  %64 = call i32 @free(%struct.sort_data* %63)
  %65 = load i32, i32* @STRM_OK, align 4
  ret i32 %65
}

declare dso_local i64 @strm_nil_p(i32) #1

declare dso_local i32 @mem_sort(%struct.sort_data*, i64, %struct.sort_arg*) #1

declare dso_local i32 @strm_emit(%struct.TYPE_4__*, %struct.sort_data* byval(%struct.sort_data) align 8, i32*) #1

declare dso_local i32 @free(%struct.sort_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
