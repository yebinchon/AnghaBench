; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_mount.c_dir_is_empty.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_mount.c_dir_is_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs64 = type { i64 }

@ZFS_SUPER_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @dir_is_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dir_is_empty(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.statfs64, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i64 @statfs64(i8* %5, %struct.statfs64* %4)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.statfs64, %struct.statfs64* %4, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ZFS_SUPER_MAGIC, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %8, %1
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @dir_is_empty_readdir(i8* %14)
  store i32 %15, i32* %2, align 4
  br label %19

16:                                               ; preds = %8
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @dir_is_empty_stat(i8* %17)
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i64 @statfs64(i8*, %struct.statfs64*) #1

declare dso_local i32 @dir_is_empty_readdir(i8*) #1

declare dso_local i32 @dir_is_empty_stat(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
