; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_dispatch_cgroups_agent_fd.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_dispatch_cgroups_agent_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to read cgroups agent message: %m\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Got zero-length cgroups agent message, ignoring.\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Got overly long cgroups agent message, ignoring.\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"Got cgroups agent message with embedded NUL byte, ignoring.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*)* @manager_dispatch_cgroups_agent_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manager_dispatch_cgroups_agent_fd(i32* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %10, align 8
  %17 = load i32, i32* @PATH_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = load i32, i32* %7, align 4
  %22 = trunc i64 %18 to i32
  %23 = call i64 @recv(i32 %21, i8* %20, i32 %22, i32 0)
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %13, align 8
  %25 = icmp ult i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 @log_error_errno(i32 %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %52

29:                                               ; preds = %4
  %30 = load i64, i64* %13, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 @log_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %52

34:                                               ; preds = %29
  %35 = load i64, i64* %13, align 8
  %36 = icmp uge i64 %35, %18
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 @log_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %52

39:                                               ; preds = %34
  %40 = load i64, i64* %13, align 8
  %41 = call i64 @memchr(i8* %20, i32 0, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call i32 @log_error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %52

45:                                               ; preds = %39
  %46 = load i64, i64* %13, align 8
  %47 = getelementptr inbounds i8, i8* %20, i64 %46
  store i8 0, i8* %47, align 1
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @manager_notify_cgroup_empty(i32* %48, i8* %20)
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @bus_forward_agent_released(i32* %50, i8* %20)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %52

52:                                               ; preds = %45, %43, %37, %32, %26
  %53 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %53)
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @recv(i32, i8*, i32, i32) #2

declare dso_local i32 @log_error_errno(i32, i8*) #2

declare dso_local i32 @log_error(i8*) #2

declare dso_local i64 @memchr(i8*, i32, i64) #2

declare dso_local i32 @manager_notify_cgroup_empty(i32*, i8*) #2

declare dso_local i32 @bus_forward_agent_released(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
