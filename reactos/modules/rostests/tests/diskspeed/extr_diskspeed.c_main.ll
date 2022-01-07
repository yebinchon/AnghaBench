; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/diskspeed/extr_diskspeed.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/diskspeed/extr_diskspeed.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i8* }

@.str = private unnamed_addr constant [21 x i8] c"\\\\.\\PHYSICALDRIVE%ld\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@MEM_RELEASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Cannot open '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"Transfer Size (kB)           1     2     4     8    16    32    64   128   256\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Transfer Rate (MB/s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [81 x i8] c"-------------------------------------------------------------------------------\0A\00", align 1
@MEM_COMMIT = common dso_local global i32 0, align 4
@PAGE_READWRITE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"%.24s \00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Disk %ld                   \00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%3ld.%ld \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_10__, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [20 x i8], align 16
  %12 = alloca %struct.TYPE_11__, align 8
  store i32 0, i32* %1, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %0, %102
  %14 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %18 = load i32, i32* @GENERIC_READ, align 4
  %19 = load i32, i32* @FILE_SHARE_READ, align 4
  %20 = load i32, i32* @OPEN_EXISTING, align 4
  %21 = call i64 @CreateFile(i8* %17, i32 %18, i32 %19, i32* null, i32 %20, i32 0, i32* null)
  store i64 %21, i64* %2, align 8
  %22 = load i64, i64* %2, align 8
  %23 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %13
  %26 = load i32, i32* %10, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = load i32, i32* @MEM_RELEASE, align 4
  %31 = call i32 @VirtualFree(%struct.TYPE_10__* %29, i32 524288, i32 %30)
  br label %35

32:                                               ; preds = %25
  %33 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %32, %28
  br label %108

36:                                               ; preds = %13
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0))
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.4, i64 0, i64 0))
  %43 = load i32, i32* @MEM_COMMIT, align 4
  %44 = load i32, i32* @PAGE_READWRITE, align 4
  %45 = call %struct.TYPE_10__* @VirtualAlloc(i32* null, i32 524288, i32 %43, i32 %44)
  store %struct.TYPE_10__* %45, %struct.TYPE_10__** %4, align 8
  br label %46

46:                                               ; preds = %39, %36
  %47 = load i64, i64* %2, align 8
  %48 = call i32 @GetInquiryData(i64 %47, %struct.TYPE_11__* %12)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %53)
  br label %59

55:                                               ; preds = %46
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %55, %51
  store i32 1024, i32* %8, align 4
  %60 = call i32 @memset(%struct.TYPE_10__* %3, i32 0, i32 4)
  br label %61

61:                                               ; preds = %90, %59
  %62 = load i32, i32* %8, align 4
  %63 = icmp sle i32 %62, 262144
  br i1 %63, label %64, label %102

64:                                               ; preds = %61
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @memset(%struct.TYPE_10__* %65, i32 0, i32 %66)
  store i32 0, i32* %7, align 4
  %68 = call i32 (...) @GetTickCount()
  %69 = add nsw i32 %68, 2000
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %89, %64
  %71 = load i32, i32* %5, align 4
  %72 = call i32 (...) @GetTickCount()
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %70
  %75 = load i64, i64* %2, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @ReadFile(i64 %75, %struct.TYPE_10__* %76, i32 %77, i32* %6, %struct.TYPE_10__* %3)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %74
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %6, align 4
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, %85
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %81, %74
  br label %70

90:                                               ; preds = %70
  %91 = load i32, i32* %7, align 4
  %92 = sdiv i32 %91, 2048
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = sdiv i32 %93, 1024
  %95 = load i32, i32* %7, align 4
  %96 = srem i32 %95, 1024
  %97 = mul nsw i32 %96, 10
  %98 = sdiv i32 %97, 1024
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %94, i32 %98)
  %100 = load i32, i32* %8, align 4
  %101 = mul nsw i32 %100, 2
  store i32 %101, i32* %8, align 4
  br label %61

102:                                              ; preds = %61
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %104 = load i64, i64* %2, align 8
  %105 = call i32 @CloseHandle(i64 %104)
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %13

108:                                              ; preds = %35
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @CreateFile(i8*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @VirtualFree(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.TYPE_10__* @VirtualAlloc(i32*, i32, i32, i32) #1

declare dso_local i32 @GetInquiryData(i64, %struct.TYPE_11__*) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @GetTickCount(...) #1

declare dso_local i32 @ReadFile(i64, %struct.TYPE_10__*, i32, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
