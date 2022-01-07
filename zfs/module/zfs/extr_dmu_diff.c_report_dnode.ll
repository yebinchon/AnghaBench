; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_diff.c_report_dnode.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_diff.c_report_dnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diffarg = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_5__ = type { i64 }

@DMU_OT_NONE = common dso_local global i64 0, align 8
@DDR_INUSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.diffarg*, i64, %struct.TYPE_5__*)* @report_dnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @report_dnode(%struct.diffarg* %0, i64 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.diffarg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store %struct.diffarg* %0, %struct.diffarg** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DMU_OT_NONE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.diffarg*, %struct.diffarg** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @report_free_dnode_range(%struct.diffarg* %18, i64 %19, i64 %20)
  store i32 %21, i32* %4, align 4
  br label %62

22:                                               ; preds = %3
  %23 = load %struct.diffarg*, %struct.diffarg** %5, align 8
  %24 = getelementptr inbounds %struct.diffarg, %struct.diffarg* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DDR_INUSE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %22
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.diffarg*, %struct.diffarg** %5, align 8
  %32 = getelementptr inbounds %struct.diffarg, %struct.diffarg* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  %36 = icmp ne i64 %30, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %29, %22
  %38 = load %struct.diffarg*, %struct.diffarg** %5, align 8
  %39 = call i64 @write_record(%struct.diffarg* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.diffarg*, %struct.diffarg** %5, align 8
  %43 = getelementptr inbounds %struct.diffarg, %struct.diffarg* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %4, align 4
  br label %62

45:                                               ; preds = %37
  %46 = load i64, i64* @DDR_INUSE, align 8
  %47 = load %struct.diffarg*, %struct.diffarg** %5, align 8
  %48 = getelementptr inbounds %struct.diffarg, %struct.diffarg* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i64 %46, i64* %49, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.diffarg*, %struct.diffarg** %5, align 8
  %52 = getelementptr inbounds %struct.diffarg, %struct.diffarg* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i64 %50, i64* %53, align 8
  %54 = load %struct.diffarg*, %struct.diffarg** %5, align 8
  %55 = getelementptr inbounds %struct.diffarg, %struct.diffarg* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store i64 %50, i64* %56, align 8
  store i32 0, i32* %4, align 4
  br label %62

57:                                               ; preds = %29
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.diffarg*, %struct.diffarg** %5, align 8
  %60 = getelementptr inbounds %struct.diffarg, %struct.diffarg* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i64 %58, i64* %61, align 8
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %57, %45, %41, %17
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @report_free_dnode_range(%struct.diffarg*, i64, i64) #1

declare dso_local i64 @write_record(%struct.diffarg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
