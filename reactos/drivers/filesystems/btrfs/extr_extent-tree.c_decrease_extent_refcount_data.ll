; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_extent-tree.c_decrease_extent_refcount_data.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_extent-tree.c_decrease_extent_refcount_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8*, i8* }

@TYPE_EXTENT_DATA_REF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decrease_extent_refcount_data(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %20 = load i8*, i8** %13, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  store i8* %20, i8** %21, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  store i8* %22, i8** %23, align 8
  %24 = load i8*, i8** %15, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i8* %24, i8** %25, align 8
  %26 = load i32, i32* %16, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = load i32, i32* @TYPE_EXTENT_DATA_REF, align 4
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* %18, align 4
  %34 = call i32 @decrease_extent_refcount(i32* %28, i8* %29, i8* %30, i32 %31, %struct.TYPE_3__* %19, i32* null, i32 0, i32 0, i32 %32, i32 %33)
  ret i32 %34
}

declare dso_local i32 @decrease_extent_refcount(i32*, i8*, i8*, i32, %struct.TYPE_3__*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
