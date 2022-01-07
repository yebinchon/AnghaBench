; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-network/extr_sd-network.c_monitor_add_inotify_watch.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-network/extr_sd-network.c_monitor_add_inotify_watch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"/run/systemd/netif/links/\00", align 1
@IN_MOVED_TO = common dso_local global i32 0, align 4
@IN_DELETE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"/run/systemd/netif/\00", align 1
@IN_CREATE = common dso_local global i32 0, align 4
@IN_ISDIR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"/run/systemd/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @monitor_add_inotify_watch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @monitor_add_inotify_watch(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @IN_MOVED_TO, align 4
  %7 = load i32, i32* @IN_DELETE, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @inotify_add_watch(i32 %5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %50

13:                                               ; preds = %1
  %14 = load i32, i32* @errno, align 4
  %15 = load i32, i32* @ENOENT, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @errno, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %50

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @IN_CREATE, align 4
  %24 = load i32, i32* @IN_ISDIR, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @inotify_add_watch(i32 %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %50

30:                                               ; preds = %21
  %31 = load i32, i32* @errno, align 4
  %32 = load i32, i32* @ENOENT, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @errno, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %50

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @IN_CREATE, align 4
  %41 = load i32, i32* @IN_ISDIR, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @inotify_add_watch(i32 %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* @errno, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %50

49:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %46, %34, %29, %17, %12
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @inotify_add_watch(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
