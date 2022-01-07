; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_search_absolute_directory.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_search_absolute_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"A:\\\00", align 1
@DRIVE_FIXED = common dso_local global i64 0, align 8
@INVALID_FILE_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @search_absolute_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @search_absolute_directory(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @lstrlenA(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = call i32 (...) @GetLogicalDrives()
  store i32 %11, i32* %8, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @lstrcpyA(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %69, %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 26
  br i1 %16, label %17, label %74

17:                                               ; preds = %14
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 1, %19
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %69

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 65, %25
  %27 = trunc i32 %26 to i8
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 %27, i8* %29, align 1
  %30 = load i8*, i8** %3, align 8
  %31 = call i64 @GetDriveTypeA(i8* %30)
  %32 = load i64, i64* @DRIVE_FIXED, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %69

35:                                               ; preds = %24
  %36 = load i8*, i8** %3, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 3
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  %41 = call i32 @lstrcpynA(i8* %37, i32 %38, i32 %40)
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @GetFileAttributesA(i8* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @INVALID_FILE_ATTRIBUTES, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %35
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %47
  %53 = load i8*, i8** %3, align 8
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 3, %54
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %53, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 92
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load i8*, i8** %3, align 8
  %64 = call i32 @lstrcatA(i8* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %52
  br label %74

66:                                               ; preds = %47, %35
  %67 = load i8*, i8** %3, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 3
  store i8 0, i8* %68, align 1
  br label %69

69:                                               ; preds = %66, %34, %23
  %70 = load i8*, i8** %3, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  store i8 0, i8* %71, align 1
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %14

74:                                               ; preds = %65, %14
  ret void
}

declare dso_local i32 @lstrlenA(i32) #1

declare dso_local i32 @GetLogicalDrives(...) #1

declare dso_local i32 @lstrcpyA(i8*, i8*) #1

declare dso_local i64 @GetDriveTypeA(i8*) #1

declare dso_local i32 @lstrcpynA(i8*, i32, i32) #1

declare dso_local i32 @GetFileAttributesA(i8*) #1

declare dso_local i32 @lstrcatA(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
