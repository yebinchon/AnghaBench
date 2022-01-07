; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_arc.c_arc_space_return.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_arc.c_arc_space_return.c"
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
@arc_meta_max = common dso_local global i64 0, align 8
@arc_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arc_space_return(i32 %0, i32 %1) #0 {
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
    i32 128, label %21
    i32 134, label %25
    i32 131, label %29
    i32 132, label %33
    i32 130, label %37
    i32 129, label %41
  ]

16:                                               ; preds = %11
  br label %45

17:                                               ; preds = %11
  %18 = load i32, i32* %3, align 4
  %19 = sub nsw i32 0, %18
  %20 = call i32 @aggsum_add(i32* @astat_data_size, i32 %19)
  br label %45

21:                                               ; preds = %11
  %22 = load i32, i32* %3, align 4
  %23 = sub nsw i32 0, %22
  %24 = call i32 @aggsum_add(i32* @astat_metadata_size, i32 %23)
  br label %45

25:                                               ; preds = %11
  %26 = load i32, i32* %3, align 4
  %27 = sub nsw i32 0, %26
  %28 = call i32 @aggsum_add(i32* @astat_bonus_size, i32 %27)
  br label %45

29:                                               ; preds = %11
  %30 = load i32, i32* %3, align 4
  %31 = sub nsw i32 0, %30
  %32 = call i32 @aggsum_add(i32* @astat_dnode_size, i32 %31)
  br label %45

33:                                               ; preds = %11
  %34 = load i32, i32* %3, align 4
  %35 = sub nsw i32 0, %34
  %36 = call i32 @aggsum_add(i32* @astat_dbuf_size, i32 %35)
  br label %45

37:                                               ; preds = %11
  %38 = load i32, i32* %3, align 4
  %39 = sub nsw i32 0, %38
  %40 = call i32 @aggsum_add(i32* @astat_hdr_size, i32 %39)
  br label %45

41:                                               ; preds = %11
  %42 = load i32, i32* %3, align 4
  %43 = sub nsw i32 0, %42
  %44 = call i32 @aggsum_add(i32* @astat_l2_hdr_size, i32 %43)
  br label %45

45:                                               ; preds = %41, %37, %33, %29, %25, %21, %17, %16
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 133
  br i1 %47, label %48, label %63

48:                                               ; preds = %45
  %49 = load i32, i32* %3, align 4
  %50 = call i64 @aggsum_compare(i32* @arc_meta_used, i32 %49)
  %51 = icmp sge i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @ASSERT(i32 %52)
  %54 = load i64, i64* @arc_meta_max, align 8
  %55 = call i64 @aggsum_upper_bound(i32* @arc_meta_used)
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = call i64 @aggsum_upper_bound(i32* @arc_meta_used)
  store i64 %58, i64* @arc_meta_max, align 8
  br label %59

59:                                               ; preds = %57, %48
  %60 = load i32, i32* %3, align 4
  %61 = sub nsw i32 0, %60
  %62 = call i32 @aggsum_add(i32* @arc_meta_used, i32 %61)
  br label %63

63:                                               ; preds = %59, %45
  %64 = load i32, i32* %3, align 4
  %65 = call i64 @aggsum_compare(i32* @arc_size, i32 %64)
  %66 = icmp sge i64 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @ASSERT(i32 %67)
  %69 = load i32, i32* %3, align 4
  %70 = sub nsw i32 0, %69
  %71 = call i32 @aggsum_add(i32* @arc_size, i32 %70)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @aggsum_add(i32*, i32) #1

declare dso_local i64 @aggsum_compare(i32*, i32) #1

declare dso_local i64 @aggsum_upper_bound(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
