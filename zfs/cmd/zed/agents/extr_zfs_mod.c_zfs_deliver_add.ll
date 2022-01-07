; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_mod.c_zfs_deliver_add.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_mod.c_zfs_deliver_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEV_IDENTIFIER = common dso_local global i32 0, align 4
@DEV_PHYS_PATH = common dso_local global i32 0, align 4
@DEV_IS_PART = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"zfs_deliver_add: adding %s (%s) (is_slice %d)\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@zfs_process_add = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @zfs_deliver_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_deliver_add(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @DEV_IDENTIFIER, align 4
  %11 = call i64 @nvlist_lookup_string(i32* %9, i32 %10, i8** %7)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %49

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @DEV_PHYS_PATH, align 4
  %17 = call i64 @nvlist_lookup_string(i32* %15, i32 %16, i8** %6)
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @DEV_IS_PART, align 4
  %20 = call i64 @nvlist_lookup_boolean(i32* %18, i32 %19)
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @LOG_INFO, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = load i8*, i8** %6, align 8
  br label %30

29:                                               ; preds = %14
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i8* [ %28, %27 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %29 ]
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @zed_log_msg(i32 %23, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %31, i32 %32)
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* @zfs_process_add, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @devid_iter(i8* %34, i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %30
  %40 = load i8*, i8** %6, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* @zfs_process_add, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @devphys_iter(i8* %43, i8* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %42, %39, %30
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %13
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i64 @nvlist_lookup_boolean(i32*, i32) #1

declare dso_local i32 @zed_log_msg(i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @devid_iter(i8*, i32, i32) #1

declare dso_local i32 @devphys_iter(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
