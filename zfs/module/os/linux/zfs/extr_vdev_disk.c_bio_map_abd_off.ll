; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_vdev_disk.c_bio_map_abd_off.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_vdev_disk.c_bio_map_abd_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bio*, i32*, i32, i64)* @bio_map_abd_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bio_map_abd_off(%struct.bio* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.bio* %0, %struct.bio** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = call i64 @abd_is_linear(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  %14 = load %struct.bio*, %struct.bio** %6, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i64 @abd_to_buf(i32* %15)
  %17 = inttoptr i64 %16 to i8*
  %18 = load i64, i64* %9, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @bio_map(%struct.bio* %14, i8* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  br label %28

22:                                               ; preds = %4
  %23 = load %struct.bio*, %struct.bio** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @abd_scatter_bio_map_off(%struct.bio* %23, i32* %24, i32 %25, i64 %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %22, %13
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i64 @abd_is_linear(i32*) #1

declare dso_local i32 @bio_map(%struct.bio*, i8*, i32) #1

declare dso_local i64 @abd_to_buf(i32*) #1

declare dso_local i32 @abd_scatter_bio_map_off(%struct.bio*, i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
