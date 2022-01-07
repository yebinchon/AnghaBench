; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_agents.c_zfs_agent_dispatch.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_agents.c_zfs_agent_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"ereport.fs.zfs.\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"resource.fs.zfs.\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"sysevent.fs.zfs.vdev_remove\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"sysevent.fs.zfs.vdev_remove_dev\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"sysevent.fs.zfs.pool_destroy\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"zfs-diagnosis\00", align 1
@FM_LIST_SUSPECT_CLASS = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [24 x i8] c"resource.fs.zfs.removed\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"resource.fs.zfs.statechange\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"zfs-retire\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"EC_dev_\00", align 1
@EC_ZFS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32*)* @zfs_agent_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfs_agent_dispatch(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32* @strstr(i8* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32* %8, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %3
  %11 = load i8*, i8** %4, align 8
  %12 = call i32* @strstr(i8* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp ne i32* %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22, %18, %14, %10, %3
  %27 = call i32 @fmd_module_hdl(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %28 = load i32*, i32** %6, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @fmd_module_recv(i32 %27, i32* %28, i8* %29)
  br label %31

31:                                               ; preds = %26, %22
  %32 = load i8*, i8** %4, align 8
  %33 = load i8*, i8** @FM_LIST_SUSPECT_CLASS, align 8
  %34 = call i64 @strcmp(i8* %32, i8* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %4, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = load i8*, i8** %4, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i8*, i8** %4, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44, %40, %36, %31
  %49 = call i32 @fmd_module_hdl(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %50 = load i32*, i32** %6, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @fmd_module_recv(i32 %49, i32* %50, i8* %51)
  br label %53

53:                                               ; preds = %48, %44
  %54 = load i8*, i8** %4, align 8
  %55 = call i32* @strstr(i8* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %56 = icmp ne i32* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = load i8*, i8** %4, align 8
  %59 = load i8*, i8** @EC_ZFS, align 8
  %60 = call i64 @strcmp(i8* %58, i8* %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57, %53
  %63 = load i8*, i8** %4, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @zfs_slm_event(i8* %63, i8* %64, i32* %65)
  br label %67

67:                                               ; preds = %62, %57
  ret void
}

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fmd_module_recv(i32, i32*, i8*) #1

declare dso_local i32 @fmd_module_hdl(i8*) #1

declare dso_local i32 @zfs_slm_event(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
