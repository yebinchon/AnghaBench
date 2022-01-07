; ModuleID = '/home/carl/AnghaBench/systemd/src/mount/extr_mount-tool.c_compare_item.c'
source_filename = "/home/carl/AnghaBench/systemd/src/mount/extr_mount-tool.c_compare_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i64* }

@COLUMN_NODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.item*, %struct.item*)* @compare_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_item(%struct.item* %0, %struct.item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.item*, align 8
  %5 = alloca %struct.item*, align 8
  store %struct.item* %0, %struct.item** %4, align 8
  store %struct.item* %1, %struct.item** %5, align 8
  %6 = load %struct.item*, %struct.item** %4, align 8
  %7 = getelementptr inbounds %struct.item, %struct.item* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = load i64, i64* @COLUMN_NODE, align 8
  %10 = getelementptr inbounds i64, i64* %8, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.item*, %struct.item** %5, align 8
  %13 = getelementptr inbounds %struct.item, %struct.item* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* @COLUMN_NODE, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %11, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %52

20:                                               ; preds = %2
  %21 = load %struct.item*, %struct.item** %4, align 8
  %22 = getelementptr inbounds %struct.item, %struct.item* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* @COLUMN_NODE, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %52

29:                                               ; preds = %20
  %30 = load %struct.item*, %struct.item** %5, align 8
  %31 = getelementptr inbounds %struct.item, %struct.item* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* @COLUMN_NODE, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %52

38:                                               ; preds = %29
  %39 = load %struct.item*, %struct.item** %4, align 8
  %40 = getelementptr inbounds %struct.item, %struct.item* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* @COLUMN_NODE, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.item*, %struct.item** %5, align 8
  %46 = getelementptr inbounds %struct.item, %struct.item* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* @COLUMN_NODE, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @path_compare(i64 %44, i64 %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %38, %37, %28, %19
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @path_compare(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
