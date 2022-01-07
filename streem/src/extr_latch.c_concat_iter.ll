; ModuleID = '/home/carl/AnghaBench/streem/src/extr_latch.c_concat_iter.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_latch.c_concat_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.concat_data* }
%struct.concat_data = type { i64, i64, %struct.TYPE_9__** }

@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @concat_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @concat_iter(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.concat_data*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load %struct.concat_data*, %struct.concat_data** %7, align 8
  store %struct.concat_data* %8, %struct.concat_data** %5, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @strm_emit(%struct.TYPE_9__* %9, i32 %10, i32* null)
  %12 = load %struct.concat_data*, %struct.concat_data** %5, align 8
  %13 = getelementptr inbounds %struct.concat_data, %struct.concat_data* %12, i32 0, i32 2
  %14 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %13, align 8
  %15 = load %struct.concat_data*, %struct.concat_data** %5, align 8
  %16 = getelementptr inbounds %struct.concat_data, %struct.concat_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %14, i64 %17
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = call i64 @strm_latch_finish_p(%struct.TYPE_9__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %2
  %23 = load %struct.concat_data*, %struct.concat_data** %5, align 8
  %24 = getelementptr inbounds %struct.concat_data, %struct.concat_data* %23, i32 0, i32 2
  %25 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %24, align 8
  %26 = load %struct.concat_data*, %struct.concat_data** %5, align 8
  %27 = getelementptr inbounds %struct.concat_data, %struct.concat_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %25, i64 %28
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = call i32 @strm_stream_close(%struct.TYPE_9__* %30)
  %32 = load %struct.concat_data*, %struct.concat_data** %5, align 8
  %33 = getelementptr inbounds %struct.concat_data, %struct.concat_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %33, align 8
  br label %36

36:                                               ; preds = %22, %2
  %37 = load %struct.concat_data*, %struct.concat_data** %5, align 8
  %38 = getelementptr inbounds %struct.concat_data, %struct.concat_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.concat_data*, %struct.concat_data** %5, align 8
  %41 = getelementptr inbounds %struct.concat_data, %struct.concat_data* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %39, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %36
  %45 = load %struct.concat_data*, %struct.concat_data** %5, align 8
  %46 = getelementptr inbounds %struct.concat_data, %struct.concat_data* %45, i32 0, i32 2
  %47 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %46, align 8
  %48 = load %struct.concat_data*, %struct.concat_data** %5, align 8
  %49 = getelementptr inbounds %struct.concat_data, %struct.concat_data* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %47, i64 %50
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = call i32 @strm_latch_receive(%struct.TYPE_9__* %52, %struct.TYPE_9__* %53, i32 (%struct.TYPE_9__*, i32)* @concat_iter)
  br label %58

55:                                               ; preds = %36
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = call i32 @strm_stream_close(%struct.TYPE_9__* %56)
  br label %58

58:                                               ; preds = %55, %44
  %59 = load i32, i32* @STRM_OK, align 4
  ret i32 %59
}

declare dso_local i32 @strm_emit(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i64 @strm_latch_finish_p(%struct.TYPE_9__*) #1

declare dso_local i32 @strm_stream_close(%struct.TYPE_9__*) #1

declare dso_local i32 @strm_latch_receive(%struct.TYPE_9__*, %struct.TYPE_9__*, i32 (%struct.TYPE_9__*, i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
