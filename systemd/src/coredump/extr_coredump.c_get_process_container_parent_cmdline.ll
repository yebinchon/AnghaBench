; ModuleID = '/home/carl/AnghaBench/systemd/src/coredump/extr_coredump.c_get_process_container_parent_cmdline.c'
source_filename = "/home/carl/AnghaBench/systemd/src/coredump/extr_coredump.c_get_process_container_parent_cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@SIZE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @get_process_container_parent_cmdline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_process_container_parent_cmdline(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stat, align 8
  %10 = alloca %struct.stat, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = call i64 @stat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.stat* %9)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @errno, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %50

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call i8* @procfs_file_alloca(i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @stat(i8* %19, %struct.stat* %10)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @errno, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %50

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i8**, i8*** %5, align 8
  store i8* null, i8** %32, align 8
  store i32 0, i32* %3, align 4
  br label %50

33:                                               ; preds = %25
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @get_mount_namespace_leader(i32 %34, i32* %7)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %50

40:                                               ; preds = %33
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @SIZE_MAX, align 4
  %43 = load i8**, i8*** %5, align 8
  %44 = call i32 @get_process_cmdline(i32 %41, i32 %42, i32 0, i8** %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %50

49:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %47, %38, %31, %22, %13
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i8* @procfs_file_alloca(i32, i8*) #1

declare dso_local i32 @get_mount_namespace_leader(i32, i32*) #1

declare dso_local i32 @get_process_cmdline(i32, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
