; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_traverse.c_prefetch_needed.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_traverse.c_prefetch_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@TRAVERSE_PREFETCH_DATA = common dso_local global i32 0, align 4
@DMU_OT_INTENT_LOG = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @prefetch_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prefetch_needed(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @TRAVERSE_PREFETCH_DATA, align 4
  %10 = and i32 %8, %9
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load i32*, i32** %5, align 8
  %13 = call i64 @BP_IS_HOLE(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = call i64 @BP_IS_EMBEDDED(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = load i32*, i32** %5, align 8
  %21 = call i64 @BP_GET_TYPE(i32* %20)
  %22 = load i64, i64* @DMU_OT_INTENT_LOG, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @BP_IS_REDACTED(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %19, %15, %2
  %29 = load i32, i32* @B_FALSE, align 4
  store i32 %29, i32* %3, align 4
  br label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @B_TRUE, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @BP_IS_HOLE(i32*) #1

declare dso_local i64 @BP_IS_EMBEDDED(i32*) #1

declare dso_local i64 @BP_GET_TYPE(i32*) #1

declare dso_local i64 @BP_IS_REDACTED(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
