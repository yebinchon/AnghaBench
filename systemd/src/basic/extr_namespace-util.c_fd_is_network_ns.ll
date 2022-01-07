; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_namespace-util.c_fd_is_network_ns.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_namespace-util.c_fd_is_network_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i64 }

@errno = common dso_local global i32 0, align 4
@NSFS_MAGIC = common dso_local global i32 0, align 4
@PROC_SUPER_MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"/proc/self/ns/net\00", align 1
@EUCLEAN = common dso_local global i32 0, align 4
@NS_GET_NSTYPE = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@CLONE_NEWNET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fd_is_network_ns(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.statfs, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.statfs, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @fstatfs(i32 %7, %struct.statfs* %4)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @errno, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %59

13:                                               ; preds = %1
  %14 = load i32, i32* @NSFS_MAGIC, align 4
  %15 = call i64 @is_fs_type(%struct.statfs* %4, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %38, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @PROC_SUPER_MAGIC, align 4
  %19 = call i64 @is_fs_type(%struct.statfs* %4, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = call i64 @statfs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.statfs* %6)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @errno, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %59

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.statfs, %struct.statfs* %4, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.statfs, %struct.statfs* %6, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EUCLEAN, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %59

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %17
  store i32 0, i32* %2, align 4
  br label %59

38:                                               ; preds = %13
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @NS_GET_NSTYPE, align 4
  %41 = call i32 @ioctl(i32 %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = load i32, i32* @errno, align 4
  %46 = load i32, i32* @ENOTTY, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @EUCLEAN, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %59

51:                                               ; preds = %44
  %52 = load i32, i32* @errno, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %59

54:                                               ; preds = %38
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @CLONE_NEWNET, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %54, %51, %48, %37, %33, %24, %10
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i64 @fstatfs(i32, %struct.statfs*) #1

declare dso_local i64 @is_fs_type(%struct.statfs*, i32) #1

declare dso_local i64 @statfs(i8*, %struct.statfs*) #1

declare dso_local i32 @ioctl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
