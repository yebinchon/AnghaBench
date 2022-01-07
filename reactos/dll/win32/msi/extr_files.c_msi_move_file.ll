; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_files.c_msi_move_file.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_files.c_msi_move_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Source or dest is directory, not moving\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@msidbMoveFileOptionsMove = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"moving %s -> %s\0A\00", align 1
@MOVEFILE_REPLACE_EXISTING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"MoveFile failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"copying %s -> %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"CopyFile failed: %d\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32)* @msi_move_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @msi_move_file(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @GetFileAttributesW(i32 %9)
  %11 = load i64, i64* @FILE_ATTRIBUTE_DIRECTORY, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @GetFileAttributesW(i32 %14)
  %16 = load i64, i64* @FILE_ATTRIBUTE_DIRECTORY, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %13, %3
  %19 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %20 = load i64, i64* @FALSE, align 8
  store i64 %20, i64* %4, align 8
  br label %61

21:                                               ; preds = %13
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @msidbMoveFileOptionsMove, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @debugstr_w(i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @debugstr_w(i32 %28)
  %30 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @MOVEFILE_REPLACE_EXISTING, align 4
  %34 = call i64 @MoveFileExW(i32 %31, i32 %32, i32 %33)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %25
  %38 = call i32 (...) @GetLastError()
  %39 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load i64, i64* @FALSE, align 8
  store i64 %40, i64* %4, align 8
  br label %61

41:                                               ; preds = %25
  br label %59

42:                                               ; preds = %21
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @debugstr_w(i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @debugstr_w(i32 %45)
  %47 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %44, i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i64, i64* @FALSE, align 8
  %51 = call i64 @CopyFileW(i32 %48, i32 %49, i64 %50)
  store i64 %51, i64* %8, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %42
  %55 = call i32 (...) @GetLastError()
  %56 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %55)
  %57 = load i64, i64* @FALSE, align 8
  store i64 %57, i64* %4, align 8
  br label %61

58:                                               ; preds = %42
  br label %59

59:                                               ; preds = %58, %41
  %60 = load i64, i64* @TRUE, align 8
  store i64 %60, i64* %4, align 8
  br label %61

61:                                               ; preds = %59, %54, %37, %18
  %62 = load i64, i64* %4, align 8
  ret i64 %62
}

declare dso_local i64 @GetFileAttributesW(i32) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i64 @MoveFileExW(i32, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @CopyFileW(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
