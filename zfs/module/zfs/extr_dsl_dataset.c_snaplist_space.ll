; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_snaplist_space.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_snaplist_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.promotenode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@UINT64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64*)* @snaplist_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snaplist_space(i32* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.promotenode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load i64*, i64** %6, align 8
  store i64 0, i64* %11, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call %struct.promotenode* @list_head(i32* %12)
  store %struct.promotenode* %13, %struct.promotenode** %7, align 8
  br label %14

14:                                               ; preds = %29, %3
  %15 = load %struct.promotenode*, %struct.promotenode** %7, align 8
  %16 = icmp ne %struct.promotenode* %15, null
  br i1 %16, label %17, label %33

17:                                               ; preds = %14
  %18 = load %struct.promotenode*, %struct.promotenode** %7, align 8
  %19 = getelementptr inbounds %struct.promotenode, %struct.promotenode* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %5, align 8
  %23 = load i32, i32* @UINT64_MAX, align 4
  %24 = call i32 @dsl_deadlist_space_range(i32* %21, i64 %22, i32 %23, i64* %8, i64* %9, i64* %10)
  %25 = load i64, i64* %8, align 8
  %26 = load i64*, i64** %6, align 8
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, %25
  store i64 %28, i64* %26, align 8
  br label %29

29:                                               ; preds = %17
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.promotenode*, %struct.promotenode** %7, align 8
  %32 = call %struct.promotenode* @list_next(i32* %30, %struct.promotenode* %31)
  store %struct.promotenode* %32, %struct.promotenode** %7, align 8
  br label %14

33:                                               ; preds = %14
  ret i32 0
}

declare dso_local %struct.promotenode* @list_head(i32*) #1

declare dso_local i32 @dsl_deadlist_space_range(i32*, i64, i32, i64*, i64*, i64*) #1

declare dso_local %struct.promotenode* @list_next(i32*, %struct.promotenode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
