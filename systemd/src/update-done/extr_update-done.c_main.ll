; ModuleID = '/home/carl/AnghaBench/systemd/src/update-done/extr_update-done.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/update-done/extr_update-done.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"/usr\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to stat /usr: %m\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"SELinux setup failed: %m\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"/etc/.updated\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"/var/.updated\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = call i32 (...) @log_setup_service()
  %10 = call i64 @stat(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.stat* %6)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @errno, align 4
  %14 = call i32 @log_error_errno(i32 %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %15, i32* %3, align 4
  br label %40

16:                                               ; preds = %2
  %17 = call i32 (...) @mac_selinux_init()
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @log_error_errno(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %23, i32* %3, align 4
  br label %40

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %26 = call i32 @apply_timestamp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32* %25)
  store i32 %26, i32* %7, align 4
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %28 = call i32 @apply_timestamp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31, %24
  %35 = load i32, i32* @EXIT_FAILURE, align 4
  br label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %20, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @log_setup_service(...) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @mac_selinux_init(...) #1

declare dso_local i32 @apply_timestamp(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
