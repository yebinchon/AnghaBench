; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_arc.c_arc_space_consume.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_arc.c_arc_space_consume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARC_SPACE_NUMTYPES = common dso_local global i32 0, align 4
@astat_data_size = common dso_local global i32 0, align 4
@astat_metadata_size = common dso_local global i32 0, align 4
@astat_bonus_size = common dso_local global i32 0, align 4
@astat_dnode_size = common dso_local global i32 0, align 4
@astat_dbuf_size = common dso_local global i32 0, align 4
@astat_hdr_size = common dso_local global i32 0, align 4
@astat_l2_hdr_size = common dso_local global i32 0, align 4
@arc_meta_used = common dso_local global i32 0, align 4
@arc_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arc_space_consume(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @ARC_SPACE_NUMTYPES, align 4
  %10 = icmp slt i32 %8, %9
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i1 [ false, %2 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %16 [
    i32 133, label %17
    i32 128, label %20
    i32 134, label %23
    i32 131, label %26
    i32 132, label %29
    i32 130, label %32
    i32 129, label %35
  ]

16:                                               ; preds = %11
  br label %38

17:                                               ; preds = %11
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @aggsum_add(i32* @astat_data_size, i32 %18)
  br label %38

20:                                               ; preds = %11
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @aggsum_add(i32* @astat_metadata_size, i32 %21)
  br label %38

23:                                               ; preds = %11
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @aggsum_add(i32* @astat_bonus_size, i32 %24)
  br label %38

26:                                               ; preds = %11
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @aggsum_add(i32* @astat_dnode_size, i32 %27)
  br label %38

29:                                               ; preds = %11
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @aggsum_add(i32* @astat_dbuf_size, i32 %30)
  br label %38

32:                                               ; preds = %11
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @aggsum_add(i32* @astat_hdr_size, i32 %33)
  br label %38

35:                                               ; preds = %11
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @aggsum_add(i32* @astat_l2_hdr_size, i32 %36)
  br label %38

38:                                               ; preds = %35, %32, %29, %26, %23, %20, %17, %16
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 133
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @aggsum_add(i32* @arc_meta_used, i32 %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @aggsum_add(i32* @arc_size, i32 %45)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @aggsum_add(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
