; ModuleID = '/home/carl/AnghaBench/streem/src/extr_iter.c_iter_filter.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_iter.c_iter_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.map_data* }
%struct.map_data = type { i32 }

@STRM_NG = common dso_local global i64 0, align 8
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @iter_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iter_filter(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.map_data*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.map_data*, %struct.map_data** %9, align 8
  store %struct.map_data* %10, %struct.map_data** %6, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = load %struct.map_data*, %struct.map_data** %6, align 8
  %13 = getelementptr inbounds %struct.map_data, %struct.map_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @strm_funcall(%struct.TYPE_5__* %11, i32 %14, i32 1, i32* %5, i32* %7)
  %16 = load i64, i64* @STRM_NG, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i64, i64* @STRM_NG, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %3, align 4
  br label %31

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @strm_value_bool(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @strm_emit(%struct.TYPE_5__* %26, i32 %27, i32* null)
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* @STRM_OK, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %29, %18
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @strm_funcall(%struct.TYPE_5__*, i32, i32, i32*, i32*) #1

declare dso_local i64 @strm_value_bool(i32) #1

declare dso_local i32 @strm_emit(%struct.TYPE_5__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
