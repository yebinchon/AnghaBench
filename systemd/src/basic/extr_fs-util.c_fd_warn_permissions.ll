; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_fs-util.c_fd_warn_permissions.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_fs-util.c_fd_warn_permissions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [105 x i8] c"Configuration file %s is marked executable. Please remove executable permission bits. Proceeding anyway.\00", align 1
@.str.1 = private unnamed_addr constant [116 x i8] c"Configuration file %s is marked world-writable. Please remove world writability permission bits. Proceeding anyway.\00", align 1
@.str.2 = private unnamed_addr constant [157 x i8] c"Configuration file %s is marked world-inaccessible. This has no effect as configuration data is accessible via APIs without restrictions. Proceeding anyway.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fd_warn_permissions(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @fstat(i32 %7, %struct.stat* %6)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @errno, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %47

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @S_ISREG(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %47

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 73
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @log_warning(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %24, %19
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 2
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @log_warning(i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %32, %27
  %36 = call i32 (...) @getpid_cached()
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 36
  %42 = icmp ne i32 %41, 36
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @log_warning(i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %43, %38, %35
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %18, %10
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @log_warning(i8*, i8*) #1

declare dso_local i32 @getpid_cached(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
