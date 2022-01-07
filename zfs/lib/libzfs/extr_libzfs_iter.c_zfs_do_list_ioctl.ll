; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_iter.c_zfs_do_list_ioctl.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_iter.c_zfs_do_list_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@errno = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cannot iterate filesystems\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, %struct.TYPE_9__*)* @zfs_do_list_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_do_list_ioctl(%struct.TYPE_8__* %0, i32 %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  br label %13

13:                                               ; preds = %41, %3
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @strlcpy(i32 %16, i32 %19, i32 4)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %26 = call i32 @zfs_ioctl(i32 %23, i32 %24, %struct.TYPE_9__* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %55

29:                                               ; preds = %13
  %30 = load i32, i32* @errno, align 4
  switch i32 %30, label %46 [
    i32 129, label %31
    i32 128, label %45
    i32 130, label %45
  ]

31:                                               ; preds = %29
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %36 = call i32 @zcmd_expand_dst_nvlist(i32 %34, %struct.TYPE_9__* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %40 = call i32 @zcmd_free_nvlists(%struct.TYPE_9__* %39)
  store i32 -1, i32* %4, align 4
  br label %57

41:                                               ; preds = %31
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %13

45:                                               ; preds = %29, %29
  store i32 1, i32* %8, align 4
  br label %54

46:                                               ; preds = %29
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @errno, align 4
  %51 = load i32, i32* @TEXT_DOMAIN, align 4
  %52 = call i32 @dgettext(i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %53 = call i32 @zfs_standard_error(i32 %49, i32 %50, i32 %52)
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %46, %45
  br label %55

55:                                               ; preds = %54, %13
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %38
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @zfs_ioctl(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @zcmd_expand_dst_nvlist(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @zcmd_free_nvlists(%struct.TYPE_9__*) #1

declare dso_local i32 @zfs_standard_error(i32, i32, i32) #1

declare dso_local i32 @dgettext(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
