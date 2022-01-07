; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_..demuxtimestamps_filter.h_timestamps_filter_es_out_getID.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_..demuxtimestamps_filter.h_timestamps_filter_es_out_getID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tf_es_out_id_s = type { i32* }
%struct.tf_es_out_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tf_es_out_id_s* (%struct.tf_es_out_s*, i32*)* @timestamps_filter_es_out_getID to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tf_es_out_id_s* @timestamps_filter_es_out_getID(%struct.tf_es_out_s* %0, i32* %1) #0 {
  %3 = alloca %struct.tf_es_out_id_s*, align 8
  %4 = alloca %struct.tf_es_out_s*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tf_es_out_id_s*, align 8
  store %struct.tf_es_out_s* %0, %struct.tf_es_out_s** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %33, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.tf_es_out_s*, %struct.tf_es_out_s** %4, align 8
  %11 = getelementptr inbounds %struct.tf_es_out_s, %struct.tf_es_out_s* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %8
  %16 = load %struct.tf_es_out_s*, %struct.tf_es_out_s** %4, align 8
  %17 = getelementptr inbounds %struct.tf_es_out_s, %struct.tf_es_out_s* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.tf_es_out_id_s*
  store %struct.tf_es_out_id_s* %24, %struct.tf_es_out_id_s** %7, align 8
  %25 = load %struct.tf_es_out_id_s*, %struct.tf_es_out_id_s** %7, align 8
  %26 = getelementptr inbounds %struct.tf_es_out_id_s, %struct.tf_es_out_id_s* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = icmp ne i32* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %15
  br label %33

31:                                               ; preds = %15
  %32 = load %struct.tf_es_out_id_s*, %struct.tf_es_out_id_s** %7, align 8
  store %struct.tf_es_out_id_s* %32, %struct.tf_es_out_id_s** %3, align 8
  br label %37

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %8

36:                                               ; preds = %8
  store %struct.tf_es_out_id_s* null, %struct.tf_es_out_id_s** %3, align 8
  br label %37

37:                                               ; preds = %36, %31
  %38 = load %struct.tf_es_out_id_s*, %struct.tf_es_out_id_s** %3, align 8
  ret %struct.tf_es_out_id_s* %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
