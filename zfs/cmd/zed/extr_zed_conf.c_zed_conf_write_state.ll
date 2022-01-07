; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_conf.c_zed_conf_write_state.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_conf.c_zed_conf_write_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zed_conf = type { i32, i32 }
%struct.iovec = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to write state file: %s\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to reposition state file offset: %s\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to write state file \22%s\22: %s\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"Failed to write state file \22%s\22: Wrote %d of %d bytes\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to sync state file \22%s\22: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zed_conf_write_state(%struct.zed_conf* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zed_conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [3 x %struct.iovec], align 16
  %10 = alloca i64, align 8
  store %struct.zed_conf* %0, %struct.zed_conf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.zed_conf*, %struct.zed_conf** %5, align 8
  %12 = icmp ne %struct.zed_conf* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* @errno, align 4
  %15 = load i32, i32* @LOG_ERR, align 4
  %16 = load i32, i32* @errno, align 4
  %17 = call i32 @strerror(i32 %16)
  %18 = call i32 (i32, i8*, i32, ...) @zed_log_msg(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 -1, i32* %4, align 4
  br label %97

19:                                               ; preds = %3
  %20 = load %struct.zed_conf*, %struct.zed_conf** %5, align 8
  %21 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SEEK_SET, align 4
  %24 = call i64 @lseek(i32 %22, i32 0, i32 %23)
  %25 = icmp eq i64 %24, -1
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load i32, i32* @LOG_WARNING, align 4
  %28 = load i32, i32* @errno, align 4
  %29 = call i32 @strerror(i32 %28)
  %30 = call i32 (i32, i8*, i32, ...) @zed_log_msg(i32 %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  store i32 -1, i32* %4, align 4
  br label %97

31:                                               ; preds = %19
  store i64 0, i64* %8, align 8
  %32 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %9, i64 0, i64 0
  %33 = getelementptr inbounds %struct.iovec, %struct.iovec* %32, i32 0, i32 1
  store i32* %6, i32** %33, align 8
  %34 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %9, i64 0, i64 0
  %35 = getelementptr inbounds %struct.iovec, %struct.iovec* %34, i32 0, i32 0
  store i32 4, i32* %35, align 16
  %36 = load i64, i64* %8, align 8
  %37 = add nsw i64 %36, 4
  store i64 %37, i64* %8, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %9, i64 0, i64 1
  %41 = getelementptr inbounds %struct.iovec, %struct.iovec* %40, i32 0, i32 1
  store i32* %39, i32** %41, align 8
  %42 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %9, i64 0, i64 1
  %43 = getelementptr inbounds %struct.iovec, %struct.iovec* %42, i32 0, i32 0
  store i32 4, i32* %43, align 16
  %44 = load i64, i64* %8, align 8
  %45 = add nsw i64 %44, 4
  store i64 %45, i64* %8, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %9, i64 0, i64 2
  %49 = getelementptr inbounds %struct.iovec, %struct.iovec* %48, i32 0, i32 1
  store i32* %47, i32** %49, align 8
  %50 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %9, i64 0, i64 2
  %51 = getelementptr inbounds %struct.iovec, %struct.iovec* %50, i32 0, i32 0
  store i32 4, i32* %51, align 16
  %52 = load i64, i64* %8, align 8
  %53 = add nsw i64 %52, 4
  store i64 %53, i64* %8, align 8
  %54 = load %struct.zed_conf*, %struct.zed_conf** %5, align 8
  %55 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %9, i64 0, i64 0
  %58 = call i64 @writev(i32 %56, %struct.iovec* %57, i32 3)
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %10, align 8
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %31
  %62 = load i32, i32* @LOG_WARNING, align 4
  %63 = load %struct.zed_conf*, %struct.zed_conf** %5, align 8
  %64 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @errno, align 4
  %67 = call i32 @strerror(i32 %66)
  %68 = call i32 (i32, i8*, i32, ...) @zed_log_msg(i32 %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %67)
  store i32 -1, i32* %4, align 4
  br label %97

69:                                               ; preds = %31
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* %8, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = load i32, i32* @EIO, align 4
  store i32 %74, i32* @errno, align 4
  %75 = load i32, i32* @LOG_WARNING, align 4
  %76 = load %struct.zed_conf*, %struct.zed_conf** %5, align 8
  %77 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* %8, align 8
  %81 = call i32 (i32, i8*, i32, ...) @zed_log_msg(i32 %75, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %78, i64 %79, i64 %80)
  store i32 -1, i32* %4, align 4
  br label %97

82:                                               ; preds = %69
  %83 = load %struct.zed_conf*, %struct.zed_conf** %5, align 8
  %84 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @fdatasync(i32 %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = load i32, i32* @LOG_WARNING, align 4
  %90 = load %struct.zed_conf*, %struct.zed_conf** %5, align 8
  %91 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @errno, align 4
  %94 = call i32 @strerror(i32 %93)
  %95 = call i32 (i32, i8*, i32, ...) @zed_log_msg(i32 %89, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %92, i32 %94)
  store i32 -1, i32* %4, align 4
  br label %97

96:                                               ; preds = %82
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %88, %73, %61, %26, %13
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @zed_log_msg(i32, i8*, i32, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i64 @writev(i32, %struct.iovec*, i32) #1

declare dso_local i64 @fdatasync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
