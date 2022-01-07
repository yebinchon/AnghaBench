; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_rist.c_is_index_in_range.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_rist.c_is_index_in_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rist_flow = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rist_flow*, i64)* @is_index_in_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_index_in_range(%struct.rist_flow* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rist_flow*, align 8
  %5 = alloca i64, align 8
  store %struct.rist_flow* %0, %struct.rist_flow** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.rist_flow*, %struct.rist_flow** %4, align 8
  %7 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.rist_flow*, %struct.rist_flow** %4, align 8
  %10 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp sle i64 %8, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.rist_flow*, %struct.rist_flow** %4, align 8
  %16 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %14, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.rist_flow*, %struct.rist_flow** %4, align 8
  %22 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sle i64 %20, %23
  br label %25

25:                                               ; preds = %19, %13
  %26 = phi i1 [ false, %13 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %3, align 4
  br label %43

28:                                               ; preds = %2
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.rist_flow*, %struct.rist_flow** %4, align 8
  %31 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.rist_flow*, %struct.rist_flow** %4, align 8
  %37 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sle i64 %35, %38
  br label %40

40:                                               ; preds = %34, %28
  %41 = phi i1 [ true, %28 ], [ %39, %34 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %40, %25
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
