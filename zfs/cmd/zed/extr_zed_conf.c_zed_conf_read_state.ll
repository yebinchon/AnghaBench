; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_conf.c_zed_conf_read_state.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_conf.c_zed_conf_read_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zed_conf = type { i32, i32 }
%struct.iovec = type { i32, i64* }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to read state file: %s\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to reposition state file offset: %s\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to read state file \22%s\22: %s\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"Failed to read state file \22%s\22: Read %d of %d bytes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zed_conf_read_state(%struct.zed_conf* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zed_conf*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [3 x %struct.iovec], align 16
  %10 = alloca i64, align 8
  store %struct.zed_conf* %0, %struct.zed_conf** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load %struct.zed_conf*, %struct.zed_conf** %5, align 8
  %12 = icmp ne %struct.zed_conf* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i64*, i64** %6, align 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i64*, i64** %7, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %16, %13, %3
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* @errno, align 4
  %21 = load i32, i32* @LOG_ERR, align 4
  %22 = load i32, i32* @errno, align 4
  %23 = call i32 @strerror(i32 %22)
  %24 = call i32 (i32, i8*, i32, ...) @zed_log_msg(i32 %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 -1, i32* %4, align 4
  br label %97

25:                                               ; preds = %16
  %26 = load %struct.zed_conf*, %struct.zed_conf** %5, align 8
  %27 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SEEK_SET, align 4
  %30 = call i64 @lseek(i32 %28, i32 0, i32 %29)
  %31 = icmp eq i64 %30, -1
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i32, i32* @LOG_WARNING, align 4
  %34 = load i32, i32* @errno, align 4
  %35 = call i32 @strerror(i32 %34)
  %36 = call i32 (i32, i8*, i32, ...) @zed_log_msg(i32 %33, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  store i32 -1, i32* %4, align 4
  br label %97

37:                                               ; preds = %25
  store i64 0, i64* %8, align 8
  %38 = load i64*, i64** %6, align 8
  %39 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %9, i64 0, i64 0
  %40 = getelementptr inbounds %struct.iovec, %struct.iovec* %39, i32 0, i32 1
  store i64* %38, i64** %40, align 8
  %41 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %9, i64 0, i64 0
  %42 = getelementptr inbounds %struct.iovec, %struct.iovec* %41, i32 0, i32 0
  store i32 8, i32* %42, align 16
  %43 = load i64, i64* %8, align 8
  %44 = add nsw i64 %43, 8
  store i64 %44, i64* %8, align 8
  %45 = load i64*, i64** %7, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %9, i64 0, i64 1
  %48 = getelementptr inbounds %struct.iovec, %struct.iovec* %47, i32 0, i32 1
  store i64* %46, i64** %48, align 8
  %49 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %9, i64 0, i64 1
  %50 = getelementptr inbounds %struct.iovec, %struct.iovec* %49, i32 0, i32 0
  store i32 8, i32* %50, align 16
  %51 = load i64, i64* %8, align 8
  %52 = add nsw i64 %51, 8
  store i64 %52, i64* %8, align 8
  %53 = load i64*, i64** %7, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 1
  %55 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %9, i64 0, i64 2
  %56 = getelementptr inbounds %struct.iovec, %struct.iovec* %55, i32 0, i32 1
  store i64* %54, i64** %56, align 8
  %57 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %9, i64 0, i64 2
  %58 = getelementptr inbounds %struct.iovec, %struct.iovec* %57, i32 0, i32 0
  store i32 8, i32* %58, align 16
  %59 = load i64, i64* %8, align 8
  %60 = add nsw i64 %59, 8
  store i64 %60, i64* %8, align 8
  %61 = load %struct.zed_conf*, %struct.zed_conf** %5, align 8
  %62 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %9, i64 0, i64 0
  %65 = call i64 @readv(i32 %63, %struct.iovec* %64, i32 3)
  store i64 %65, i64* %10, align 8
  %66 = load i64, i64* %10, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %37
  %69 = load i64*, i64** %6, align 8
  store i64 0, i64* %69, align 8
  br label %96

70:                                               ; preds = %37
  %71 = load i64, i64* %10, align 8
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = load i32, i32* @LOG_WARNING, align 4
  %75 = load %struct.zed_conf*, %struct.zed_conf** %5, align 8
  %76 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @errno, align 4
  %79 = call i32 @strerror(i32 %78)
  %80 = call i32 (i32, i8*, i32, ...) @zed_log_msg(i32 %74, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 %79)
  store i32 -1, i32* %4, align 4
  br label %97

81:                                               ; preds = %70
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* %8, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  %86 = load i32, i32* @EIO, align 4
  store i32 %86, i32* @errno, align 4
  %87 = load i32, i32* @LOG_WARNING, align 4
  %88 = load %struct.zed_conf*, %struct.zed_conf** %5, align 8
  %89 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i64, i64* %10, align 8
  %92 = load i64, i64* %8, align 8
  %93 = call i32 (i32, i8*, i32, ...) @zed_log_msg(i32 %87, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %90, i64 %91, i64 %92)
  store i32 -1, i32* %4, align 4
  br label %97

94:                                               ; preds = %81
  br label %95

95:                                               ; preds = %94
  br label %96

96:                                               ; preds = %95, %68
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %85, %73, %32, %19
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @zed_log_msg(i32, i8*, i32, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i64 @readv(i32, %struct.iovec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
