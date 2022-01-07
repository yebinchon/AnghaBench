; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_redact.c_redact_record_before.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_redact.c_redact_record_before.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.redact_record = type { i64, i32, i32, i32, i32, i32 }

@B_TRUE = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.redact_record*, %struct.redact_record*)* @redact_record_before to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @redact_record_before(%struct.redact_record* %0, %struct.redact_record* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.redact_record*, align 8
  %5 = alloca %struct.redact_record*, align 8
  store %struct.redact_record* %0, %struct.redact_record** %4, align 8
  store %struct.redact_record* %1, %struct.redact_record** %5, align 8
  %6 = load %struct.redact_record*, %struct.redact_record** %4, align 8
  %7 = getelementptr inbounds %struct.redact_record, %struct.redact_record* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @B_TRUE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i64, i64* @B_FALSE, align 8
  store i64 %12, i64* %3, align 8
  br label %45

13:                                               ; preds = %2
  %14 = load %struct.redact_record*, %struct.redact_record** %5, align 8
  %15 = getelementptr inbounds %struct.redact_record, %struct.redact_record* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @B_TRUE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i64, i64* @B_TRUE, align 8
  store i64 %20, i64* %3, align 8
  br label %45

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.redact_record*, %struct.redact_record** %4, align 8
  %24 = getelementptr inbounds %struct.redact_record, %struct.redact_record* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.redact_record*, %struct.redact_record** %4, align 8
  %27 = getelementptr inbounds %struct.redact_record, %struct.redact_record* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.redact_record*, %struct.redact_record** %4, align 8
  %30 = getelementptr inbounds %struct.redact_record, %struct.redact_record* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.redact_record*, %struct.redact_record** %5, align 8
  %33 = getelementptr inbounds %struct.redact_record, %struct.redact_record* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.redact_record*, %struct.redact_record** %5, align 8
  %36 = getelementptr inbounds %struct.redact_record, %struct.redact_record* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.redact_record*, %struct.redact_record** %5, align 8
  %39 = getelementptr inbounds %struct.redact_record, %struct.redact_record* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @redact_range_compare(i32 %25, i32 %28, i32 %31, i32 %34, i32 %37, i32 %40)
  %42 = icmp sle i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %3, align 8
  br label %45

45:                                               ; preds = %22, %19, %11
  %46 = load i64, i64* %3, align 8
  ret i64 %46
}

declare dso_local i64 @redact_range_compare(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
