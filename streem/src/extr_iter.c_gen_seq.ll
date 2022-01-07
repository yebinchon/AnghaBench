; ModuleID = '/home/carl/AnghaBench/streem/src/extr_iter.c_gen_seq.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_iter.c_gen_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.seq_data* }
%struct.seq_data = type { i64, i64, i64 }

@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @gen_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_seq(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.seq_data*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.seq_data*, %struct.seq_data** %8, align 8
  store %struct.seq_data* %9, %struct.seq_data** %6, align 8
  %10 = load %struct.seq_data*, %struct.seq_data** %6, align 8
  %11 = getelementptr inbounds %struct.seq_data, %struct.seq_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load %struct.seq_data*, %struct.seq_data** %6, align 8
  %16 = getelementptr inbounds %struct.seq_data, %struct.seq_data* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.seq_data*, %struct.seq_data** %6, align 8
  %19 = getelementptr inbounds %struct.seq_data, %struct.seq_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = call i32 @strm_stream_close(%struct.TYPE_6__* %23)
  %25 = load i32, i32* @STRM_OK, align 4
  store i32 %25, i32* %3, align 4
  br label %41

26:                                               ; preds = %14, %2
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = load %struct.seq_data*, %struct.seq_data** %6, align 8
  %29 = getelementptr inbounds %struct.seq_data, %struct.seq_data* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @strm_float_value(i64 %30)
  %32 = call i32 @strm_emit(%struct.TYPE_6__* %27, i32 %31, i32 (%struct.TYPE_6__*, i32)* @gen_seq)
  %33 = load %struct.seq_data*, %struct.seq_data** %6, align 8
  %34 = getelementptr inbounds %struct.seq_data, %struct.seq_data* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.seq_data*, %struct.seq_data** %6, align 8
  %37 = getelementptr inbounds %struct.seq_data, %struct.seq_data* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, %35
  store i64 %39, i64* %37, align 8
  %40 = load i32, i32* @STRM_OK, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %26, %22
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @strm_stream_close(%struct.TYPE_6__*) #1

declare dso_local i32 @strm_emit(%struct.TYPE_6__*, i32, i32 (%struct.TYPE_6__*, i32)*) #1

declare dso_local i32 @strm_float_value(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
