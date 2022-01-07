; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_wait_for_container.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_wait_for_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Failed to wait for container: %m\00", align 1
@arg_quiet = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Container %s exited successfully.\00", align 1
@arg_machine = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Container %s failed with error code %i.\00", align 1
@CONTAINER_TERMINATED = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Container %s has been shut down.\00", align 1
@SIGHUP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Container %s is being rebooted.\00", align 1
@CONTAINER_REBOOTED = common dso_local global i32 0, align 4
@_fallthrough_ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"Container %s terminated by signal %s.\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Container %s failed due to unknown reason.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @wait_for_container to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_container(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @wait_for_terminate(i32 %8, %struct.TYPE_3__* %6)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @log_warning_errno(i32 %13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %3, align 4
  br label %103

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %98 [
    i32 129, label %18
    i32 128, label %51
    i32 130, label %90
  ]

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load i32, i32* @arg_quiet, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @LOG_DEBUG, align 4
  br label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @LOG_INFO, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = load i32, i32* @arg_machine, align 4
  %32 = call i32 (i32, i8*, i32, ...) @log_full(i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %46

33:                                               ; preds = %18
  %34 = load i32, i32* @arg_quiet, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @LOG_DEBUG, align 4
  br label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @LOG_INFO, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = load i32, i32* @arg_machine, align 4
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, i8*, i32, ...) @log_full(i32 %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 %44)
  br label %46

46:                                               ; preds = %40, %29
  %47 = load i32, i32* @CONTAINER_TERMINATED, align 4
  %48 = load i32*, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %3, align 4
  br label %103

51:                                               ; preds = %15
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SIGINT, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = load i32, i32* @arg_quiet, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @LOG_DEBUG, align 4
  br label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @LOG_INFO, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = load i32, i32* @arg_machine, align 4
  %66 = call i32 (i32, i8*, i32, ...) @log_full(i32 %64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @CONTAINER_TERMINATED, align 4
  %68 = load i32*, i32** %5, align 8
  store i32 %67, i32* %68, align 4
  store i32 0, i32* %3, align 4
  br label %103

69:                                               ; preds = %51
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @SIGHUP, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %69
  %75 = load i32, i32* @arg_quiet, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* @LOG_DEBUG, align 4
  br label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @LOG_INFO, align 4
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  %83 = load i32, i32* @arg_machine, align 4
  %84 = call i32 (i32, i8*, i32, ...) @log_full(i32 %82, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @CONTAINER_REBOOTED, align 4
  %86 = load i32*, i32** %5, align 8
  store i32 %85, i32* %86, align 4
  store i32 0, i32* %3, align 4
  br label %103

87:                                               ; preds = %69
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* @_fallthrough_, align 4
  br label %90

90:                                               ; preds = %15, %88
  %91 = load i32, i32* @EIO, align 4
  %92 = call i32 @SYNTHETIC_ERRNO(i32 %91)
  %93 = load i32, i32* @arg_machine, align 4
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @signal_to_string(i32 %95)
  %97 = call i32 (i32, i8*, i32, ...) @log_error_errno(i32 %92, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %93, i32 %96)
  store i32 %97, i32* %3, align 4
  br label %103

98:                                               ; preds = %15
  %99 = load i32, i32* @EIO, align 4
  %100 = call i32 @SYNTHETIC_ERRNO(i32 %99)
  %101 = load i32, i32* @arg_machine, align 4
  %102 = call i32 (i32, i8*, i32, ...) @log_error_errno(i32 %100, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %101)
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %98, %90, %81, %63, %46, %12
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @wait_for_terminate(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @log_warning_errno(i32, i8*) #1

declare dso_local i32 @log_full(i32, i8*, i32, ...) #1

declare dso_local i32 @log_error_errno(i32, i8*, i32, ...) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i32 @signal_to_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
