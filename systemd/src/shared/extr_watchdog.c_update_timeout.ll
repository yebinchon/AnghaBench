; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_watchdog.c_update_timeout.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_watchdog.c_update_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@watchdog_fd = common dso_local global i64 0, align 8
@watchdog_timeout = common dso_local global i32 0, align 4
@USEC_INFINITY = common dso_local global i32 0, align 4
@WDIOS_DISABLECARD = common dso_local global i32 0, align 4
@WDIOC_SETOPTIONS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to disable hardware watchdog: %m\00", align 1
@FORMAT_TIMESPAN_MAX = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@WDIOC_SETTIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to set timeout to %is: %m\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Set hardware watchdog to %s.\00", align 1
@WDIOS_ENABLECARD = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed to enable hardware watchdog: %m\00", align 1
@WDIOC_KEEPALIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to ping hardware watchdog: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @update_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_timeout() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = load i64, i64* @watchdog_fd, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %97

12:                                               ; preds = %0
  %13 = load i32, i32* @watchdog_timeout, align 4
  %14 = load i32, i32* @USEC_INFINITY, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 0, i32* %1, align 4
  br label %97

17:                                               ; preds = %12
  %18 = load i32, i32* @watchdog_timeout, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load i32, i32* @WDIOS_DISABLECARD, align 4
  store i32 %21, i32* %3, align 4
  %22 = load i64, i64* @watchdog_fd, align 8
  %23 = load i32, i32* @WDIOC_SETOPTIONS, align 4
  %24 = call i32 @ioctl(i64 %22, i32 %23, i32* %3)
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @errno, align 4
  %29 = call i32 (i32, i8*, ...) @log_warning_errno(i32 %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 %29, i32* %1, align 4
  br label %97

30:                                               ; preds = %20
  br label %95

31:                                               ; preds = %17
  %32 = load i32, i32* @FORMAT_TIMESPAN_MAX, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %6, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %7, align 8
  %36 = load i32, i32* @watchdog_timeout, align 4
  %37 = load i32, i32* @USEC_PER_SEC, align 4
  %38 = call i64 @DIV_ROUND_UP(i32 %36, i32 %37)
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %4, align 4
  %40 = load i64, i64* @watchdog_fd, align 8
  %41 = load i32, i32* @WDIOC_SETTIMEOUT, align 4
  %42 = call i32 @ioctl(i64 %40, i32 %41, i32* %4)
  store i32 %42, i32* %2, align 4
  %43 = load i32, i32* %2, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %31
  %46 = load i32, i32* @errno, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 (i32, i8*, ...) @log_warning_errno(i32 %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  store i32 %48, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %91

49:                                               ; preds = %31
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @USEC_PER_SEC, align 4
  %52 = mul nsw i32 %50, %51
  store i32 %52, i32* @watchdog_timeout, align 4
  %53 = trunc i64 %33 to i32
  %54 = load i32, i32* @watchdog_timeout, align 4
  %55 = call i32 @format_timespan(i8* %35, i32 %53, i32 %54, i32 0)
  %56 = call i32 @log_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @WDIOS_ENABLECARD, align 4
  store i32 %57, i32* %5, align 4
  %58 = load i64, i64* @watchdog_fd, align 8
  %59 = load i32, i32* @WDIOC_SETOPTIONS, align 4
  %60 = call i32 @ioctl(i64 %58, i32 %59, i32* %5)
  store i32 %60, i32* %2, align 4
  %61 = load i32, i32* %2, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %49
  %64 = load i32, i32* @errno, align 4
  %65 = load i32, i32* @ENOTTY, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* @LOG_DEBUG, align 4
  br label %71

69:                                               ; preds = %63
  %70 = load i32, i32* @LOG_WARNING, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = call i32 @log_full(i32 %72, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i32, i32* @errno, align 4
  %75 = load i32, i32* @ENOTTY, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* @errno, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %91

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %80, %49
  %82 = load i64, i64* @watchdog_fd, align 8
  %83 = load i32, i32* @WDIOC_KEEPALIVE, align 4
  %84 = call i32 @ioctl(i64 %82, i32 %83, i32* null)
  store i32 %84, i32* %2, align 4
  %85 = load i32, i32* %2, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* @errno, align 4
  %89 = call i32 (i32, i8*, ...) @log_warning_errno(i32 %88, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  store i32 %89, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %91

90:                                               ; preds = %81
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %90, %87, %77, %45
  %92 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %8, align 4
  switch i32 %93, label %99 [
    i32 0, label %94
    i32 1, label %97
  ]

94:                                               ; preds = %91
  br label %95

95:                                               ; preds = %94, %30
  br label %96

96:                                               ; preds = %95
  store i32 0, i32* %1, align 4
  br label %97

97:                                               ; preds = %96, %91, %27, %16, %11
  %98 = load i32, i32* %1, align 4
  ret i32 %98

99:                                               ; preds = %91
  unreachable
}

declare dso_local i32 @ioctl(i64, i32, i32*) #1

declare dso_local i32 @log_warning_errno(i32, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @log_info(i8*, i32) #1

declare dso_local i32 @format_timespan(i8*, i32, i32, i32) #1

declare dso_local i32 @log_full(i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
