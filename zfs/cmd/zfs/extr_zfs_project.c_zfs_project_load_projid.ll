; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_project.c_zfs_project_load_projid.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_project.c_zfs_project_load_projid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@O_NOCTTY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to open %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@ZFS_IOC_FSGETXATTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to get xattr for %s: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_6__*)* @zfs_project_load_projid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_project_load_projid(i8* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @O_RDONLY, align 4
  %11 = load i32, i32* @O_NOCTTY, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @open(i8* %9, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load i32, i32* @stderr, align 4
  %18 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* @errno, align 4
  %21 = call i8* @strerror(i32 %20)
  %22 = call i32 @fprintf(i32 %17, i8* %18, i8* %19, i8* %21)
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %46

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @ZFS_IOC_FSGETXATTR, align 4
  %27 = call i32 @ioctl(i32 %25, i32 %26, %struct.TYPE_5__* %6)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i32, i32* @stderr, align 4
  %32 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* @errno, align 4
  %35 = call i8* @strerror(i32 %34)
  %36 = call i32 @fprintf(i32 %31, i8* %32, i8* %33, i8* %35)
  br label %42

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %30
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @close(i32 %43)
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %16
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
