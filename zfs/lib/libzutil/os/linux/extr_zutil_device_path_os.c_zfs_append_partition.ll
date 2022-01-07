; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzutil/os/linux/extr_zutil_device_path_os.c_zfs_append_partition.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzutil/os/linux/extr_zutil_device_path_os.c_zfs_append_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UDISK_ROOT = common dso_local global i8* null, align 8
@ZVOL_ROOT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"-part1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"p1\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_append_partition(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @strlen(i8* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i8*, i8** @UDISK_ROOT, align 8
  %11 = load i8*, i8** @UDISK_ROOT, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = call i64 @strncmp(i8* %9, i8* %10, i32 %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** @ZVOL_ROOT, align 8
  %18 = load i8*, i8** @ZVOL_ROOT, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = call i64 @strncmp(i8* %16, i8* %17, i32 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %15, %2
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 6
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %5, align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %63

29:                                               ; preds = %22
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @strcat(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 6
  store i32 %33, i32* %6, align 4
  br label %61

34:                                               ; preds = %15
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 2
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %5, align 8
  %39 = icmp uge i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 -1, i32* %3, align 4
  br label %63

41:                                               ; preds = %34
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = call i64 @isdigit(i8 signext %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %41
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @strcat(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 2
  store i32 %54, i32* %6, align 4
  br label %60

55:                                               ; preds = %41
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @strcat(i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %55, %50
  br label %61

61:                                               ; preds = %60, %29
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %40, %28
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
