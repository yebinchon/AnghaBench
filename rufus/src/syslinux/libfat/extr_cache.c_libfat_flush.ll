; ModuleID = '/home/carl/AnghaBench/rufus/src/syslinux/libfat/extr_cache.c_libfat_flush.c'
source_filename = "/home/carl/AnghaBench/rufus/src/syslinux/libfat/extr_cache.c_libfat_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libfat_filesystem = type { %struct.libfat_sector* }
%struct.libfat_sector = type { %struct.libfat_sector* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libfat_flush(%struct.libfat_filesystem* %0) #0 {
  %2 = alloca %struct.libfat_filesystem*, align 8
  %3 = alloca %struct.libfat_sector*, align 8
  %4 = alloca %struct.libfat_sector*, align 8
  store %struct.libfat_filesystem* %0, %struct.libfat_filesystem** %2, align 8
  %5 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %2, align 8
  %6 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %5, i32 0, i32 0
  %7 = load %struct.libfat_sector*, %struct.libfat_sector** %6, align 8
  store %struct.libfat_sector* %7, %struct.libfat_sector** %4, align 8
  %8 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %2, align 8
  %9 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %8, i32 0, i32 0
  store %struct.libfat_sector* null, %struct.libfat_sector** %9, align 8
  %10 = load %struct.libfat_sector*, %struct.libfat_sector** %4, align 8
  store %struct.libfat_sector* %10, %struct.libfat_sector** %3, align 8
  br label %11

11:                                               ; preds = %20, %1
  %12 = load %struct.libfat_sector*, %struct.libfat_sector** %3, align 8
  %13 = icmp ne %struct.libfat_sector* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load %struct.libfat_sector*, %struct.libfat_sector** %3, align 8
  %16 = getelementptr inbounds %struct.libfat_sector, %struct.libfat_sector* %15, i32 0, i32 0
  %17 = load %struct.libfat_sector*, %struct.libfat_sector** %16, align 8
  store %struct.libfat_sector* %17, %struct.libfat_sector** %4, align 8
  %18 = load %struct.libfat_sector*, %struct.libfat_sector** %3, align 8
  %19 = call i32 @_mm_free(%struct.libfat_sector* %18)
  br label %20

20:                                               ; preds = %14
  %21 = load %struct.libfat_sector*, %struct.libfat_sector** %4, align 8
  store %struct.libfat_sector* %21, %struct.libfat_sector** %3, align 8
  br label %11

22:                                               ; preds = %11
  ret void
}

declare dso_local i32 @_mm_free(%struct.libfat_sector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
