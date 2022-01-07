; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_fmd_api.c_fmd_fault_mkcode.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_fmd_api.c_fmd_fault_mkcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@FM_CLASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"fault.fs.zfs.vdev.io\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"ZFS-8000-FD\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"fault.fs.zfs.vdev.checksum\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"ZFS-8000-GH\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"fault.fs.zfs.io_failure_wait\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"ZFS-8000-HC\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"fault.fs.zfs.io_failure_continue\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"ZFS-8000-JQ\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"fault.fs.zfs.log_replay\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"ZFS-8000-K4\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"fault.fs.zfs.pool\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"ZFS-8000-CS\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"fault.fs.zfs.device\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"ZFS-8000-D3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @fmd_fault_mkcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fmd_fault_mkcode(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* @FM_CLASS, align 4
  %7 = call i64 @nvlist_lookup_string(i32* %5, i32 %6, i8** %3)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %51

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %50

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %49

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  br label %48

24:                                               ; preds = %19
  %25 = load i8*, i8** %3, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %4, align 8
  br label %47

29:                                               ; preds = %24
  %30 = load i8*, i8** %3, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8** %4, align 8
  br label %46

34:                                               ; preds = %29
  %35 = load i8*, i8** %3, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8** %4, align 8
  br label %45

39:                                               ; preds = %34
  %40 = load i8*, i8** %3, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8** %4, align 8
  br label %44

44:                                               ; preds = %43, %39
  br label %45

45:                                               ; preds = %44, %38
  br label %46

46:                                               ; preds = %45, %33
  br label %47

47:                                               ; preds = %46, %28
  br label %48

48:                                               ; preds = %47, %23
  br label %49

49:                                               ; preds = %48, %18
  br label %50

50:                                               ; preds = %49, %13
  br label %51

51:                                               ; preds = %50, %1
  %52 = load i8*, i8** %4, align 8
  ret i8* %52
}

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
