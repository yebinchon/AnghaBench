; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/nfs/extr_nfs41_debug.c_print_fs_ioctl.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/nfs/extr_nfs41_debug.c_print_fs_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"IOCTL_NFS41_INVALCACHE\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"IOCTL_NFS41_UPCALL\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"IOCTL_NFS41_DOWNCALL\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"IOCTL_NFS41_ADDCONN\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"IOCTL_NFS41_DELCONN\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"IOCTL_NFS41_GETSTATE\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"IOCTL_NFS41_START\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"IOCTL_NFS41_STOP\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"UNKNOWN FS IOCTL %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_fs_ioctl(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %29

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %26 [
    i32 132, label %10
    i32 131, label %12
    i32 128, label %14
    i32 135, label %16
    i32 134, label %18
    i32 133, label %20
    i32 130, label %22
    i32 129, label %24
  ]

10:                                               ; preds = %8
  %11 = call i32 (i8*, ...) @DbgP(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %29

12:                                               ; preds = %8
  %13 = call i32 (i8*, ...) @DbgP(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %29

14:                                               ; preds = %8
  %15 = call i32 (i8*, ...) @DbgP(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %29

16:                                               ; preds = %8
  %17 = call i32 (i8*, ...) @DbgP(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %29

18:                                               ; preds = %8
  %19 = call i32 (i8*, ...) @DbgP(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %29

20:                                               ; preds = %8
  %21 = call i32 (i8*, ...) @DbgP(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %29

22:                                               ; preds = %8
  %23 = call i32 (i8*, ...) @DbgP(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %29

24:                                               ; preds = %8
  %25 = call i32 (i8*, ...) @DbgP(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  br label %29

26:                                               ; preds = %8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 (i8*, ...) @DbgP(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %7, %26, %24, %22, %20, %18, %16, %14, %12, %10
  ret void
}

declare dso_local i32 @DbgP(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
