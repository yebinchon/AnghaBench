; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_dissect-image.c_is_loop_device.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_dissect-image.c_is_loop_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"/../loop/\00", align 1
@errno = common dso_local global i32 0, align 4
@ENOTBLK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"/loop/\00", align 1
@F_OK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @is_loop_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_loop_device(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = call i32 @SYS_BLOCK_PATH_MAX(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @assert(i8* %12)
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @stat(i8* %14, %struct.stat* %6)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @errno, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %61

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @S_ISBLK(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOTBLK, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %61

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @xsprintf_sys_block_path(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @F_OK, align 4
  %33 = call i64 @access(i8* %11, i32 %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %28
  %36 = load i32, i32* @errno, align 4
  %37 = load i32, i32* @ENOENT, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @errno, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %61

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @xsprintf_sys_block_path(i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @F_OK, align 4
  %47 = call i64 @access(i8* %11, i32 %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %42
  %50 = load i32, i32* @errno, align 4
  %51 = load i32, i32* @ENOENT, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @errno, align 4
  %56 = sub nsw i32 0, %55
  br label %57

57:                                               ; preds = %54, %53
  %58 = phi i32 [ 0, %53 ], [ %56, %54 ]
  store i32 %58, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %61

59:                                               ; preds = %42
  br label %60

60:                                               ; preds = %59, %28
  store i32 1, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %61

61:                                               ; preds = %60, %57, %39, %25, %17
  %62 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @SYS_BLOCK_PATH_MAX(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISBLK(i32) #1

declare dso_local i32 @xsprintf_sys_block_path(i8*, i8*, i32) #1

declare dso_local i64 @access(i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
