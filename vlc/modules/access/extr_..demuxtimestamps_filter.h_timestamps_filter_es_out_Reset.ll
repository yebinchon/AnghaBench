; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_..demuxtimestamps_filter.h_timestamps_filter_es_out_Reset.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_..demuxtimestamps_filter.h_timestamps_filter_es_out_Reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tf_es_out_s = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64* }
%struct.tf_es_out_id_s = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tf_es_out_s*)* @timestamps_filter_es_out_Reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timestamps_filter_es_out_Reset(%struct.tf_es_out_s* %0) #0 {
  %2 = alloca %struct.tf_es_out_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tf_es_out_id_s*, align 8
  store %struct.tf_es_out_s* %0, %struct.tf_es_out_s** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %25, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.tf_es_out_s*, %struct.tf_es_out_s** %2, align 8
  %8 = getelementptr inbounds %struct.tf_es_out_s, %struct.tf_es_out_s* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %6, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %5
  %13 = load %struct.tf_es_out_s*, %struct.tf_es_out_s** %2, align 8
  %14 = getelementptr inbounds %struct.tf_es_out_s, %struct.tf_es_out_s* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.tf_es_out_id_s*
  store %struct.tf_es_out_id_s* %21, %struct.tf_es_out_id_s** %4, align 8
  %22 = load %struct.tf_es_out_id_s*, %struct.tf_es_out_id_s** %4, align 8
  %23 = getelementptr inbounds %struct.tf_es_out_id_s, %struct.tf_es_out_id_s* %22, i32 0, i32 0
  %24 = call i32 @timestamps_filter_init(i32* %23)
  br label %25

25:                                               ; preds = %12
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %5

28:                                               ; preds = %5
  %29 = load %struct.tf_es_out_s*, %struct.tf_es_out_s** %2, align 8
  %30 = getelementptr inbounds %struct.tf_es_out_s, %struct.tf_es_out_s* %29, i32 0, i32 1
  %31 = call i32 @timestamps_filter_init(i32* %30)
  %32 = load %struct.tf_es_out_s*, %struct.tf_es_out_s** %2, align 8
  %33 = getelementptr inbounds %struct.tf_es_out_s, %struct.tf_es_out_s* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  ret void
}

declare dso_local i32 @timestamps_filter_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
