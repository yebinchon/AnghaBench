; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_obj-backend-fs.c_rename_and_sync.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_obj-backend-fs.c_rename_and_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"Failed to rename from %s to %s: %s.\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to open dir %s: %s.\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to fsync dir %s: %s.\0A\00", align 1
@MOVEFILE_REPLACE_EXISTING = common dso_local global i32 0, align 4
@MOVEFILE_WRITE_THROUGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @rename_and_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rename_and_sync(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @rename(i8* %9, i8* %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i64, i64* @errno, align 8
  %17 = call i32 @strerror(i64 %16)
  %18 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %15, i32 %17)
  store i32 -1, i32* %3, align 4
  br label %57

19:                                               ; preds = %2
  %20 = load i8*, i8** %5, align 8
  %21 = call i8* @g_path_get_dirname(i8* %20)
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* @O_RDONLY, align 4
  %24 = call i32 @open(i8* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* @errno, align 8
  %30 = call i32 @strerror(i64 %29)
  %31 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %28, i32 %30)
  br label %47

32:                                               ; preds = %19
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @fsync(i32 %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load i64, i64* @errno, align 8
  %38 = load i64, i64* @EINVAL, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i8*, i8** %6, align 8
  %42 = load i64, i64* @errno, align 8
  %43 = call i32 @strerror(i64 %42)
  %44 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %41, i32 %43)
  store i32 -1, i32* %7, align 4
  br label %45

45:                                               ; preds = %40, %36
  br label %47

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46, %45, %27
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @g_free(i8* %48)
  %50 = load i32, i32* %8, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @close(i32 %53)
  br label %55

55:                                               ; preds = %52, %47
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %13
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @rename(i8*, i8*) #1

declare dso_local i32 @seaf_warning(i8*, i8*, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i8* @g_path_get_dirname(i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @fsync(i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
