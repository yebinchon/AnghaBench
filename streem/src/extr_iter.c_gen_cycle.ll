; ModuleID = '/home/carl/AnghaBench/streem/src/extr_iter.c_gen_cycle.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_iter.c_gen_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.cycle_data* }
%struct.cycle_data = type { i64, i32 }

@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @gen_cycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_cycle(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cycle_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.cycle_data*, %struct.cycle_data** %10, align 8
  store %struct.cycle_data* %11, %struct.cycle_data** %5, align 8
  %12 = load %struct.cycle_data*, %struct.cycle_data** %5, align 8
  %13 = getelementptr inbounds %struct.cycle_data, %struct.cycle_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* %13, align 8
  %16 = load %struct.cycle_data*, %struct.cycle_data** %5, align 8
  %17 = getelementptr inbounds %struct.cycle_data, %struct.cycle_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32* @strm_ary_ptr(i32 %18)
  store i32* %19, i32** %6, align 8
  %20 = load %struct.cycle_data*, %struct.cycle_data** %5, align 8
  %21 = getelementptr inbounds %struct.cycle_data, %struct.cycle_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @strm_ary_len(i32 %22)
  store i64 %23, i64* %8, align 8
  %24 = load %struct.cycle_data*, %struct.cycle_data** %5, align 8
  %25 = getelementptr inbounds %struct.cycle_data, %struct.cycle_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i64, i64* %8, align 8
  %30 = add i64 %29, -1
  store i64 %30, i64* %8, align 8
  br label %31

31:                                               ; preds = %28, %2
  store i64 0, i64* %7, align 8
  br label %32

32:                                               ; preds = %43, %31
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (%struct.TYPE_5__*, i32, ...) @strm_emit(%struct.TYPE_5__* %37, i32 %41, i8* null)
  br label %43

43:                                               ; preds = %36
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %7, align 8
  br label %32

46:                                               ; preds = %32
  %47 = load %struct.cycle_data*, %struct.cycle_data** %5, align 8
  %48 = getelementptr inbounds %struct.cycle_data, %struct.cycle_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = call i32 @strm_stream_close(%struct.TYPE_5__* %52)
  br label %61

54:                                               ; preds = %46
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (%struct.TYPE_5__*, i32, ...) @strm_emit(%struct.TYPE_5__* %55, i32 %59, i32 (%struct.TYPE_5__*, i32)* @gen_cycle)
  br label %61

61:                                               ; preds = %54, %51
  %62 = load i32, i32* @STRM_OK, align 4
  ret i32 %62
}

declare dso_local i32* @strm_ary_ptr(i32) #1

declare dso_local i64 @strm_ary_len(i32) #1

declare dso_local i32 @strm_emit(%struct.TYPE_5__*, i32, ...) #1

declare dso_local i32 @strm_stream_close(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
