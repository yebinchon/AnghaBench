; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_ftp.c_test_getfile_no_open.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_ftp.c_test_getfile_no_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"welcome.msg\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"should_be_non_existing_deadbeef\00", align 1
@FALSE = common dso_local global i64 0, align 8
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@FTP_TRANSFER_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Expected FtpGetFileA to fail\0A\00", align 1
@ERROR_INTERNET_NOT_INITIALIZED = common dso_local global i64 0, align 8
@ERROR_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [81 x i8] c"Expected ERROR_INTERNET_NOT_INITIALIZED or ERROR_INVALID_HANDLE (win98), got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_getfile_no_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_getfile_no_open() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 @SetLastError(i32 -559038737)
  %3 = load i64, i64* @FALSE, align 8
  %4 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %5 = load i32, i32* @FTP_TRANSFER_TYPE_UNKNOWN, align 4
  %6 = call i64 @FtpGetFileA(i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %3, i32 %4, i32 %5, i32 0)
  store i64 %6, i64* %1, align 8
  %7 = load i64, i64* %1, align 8
  %8 = load i64, i64* @FALSE, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %12 = call i64 (...) @GetLastError()
  %13 = load i64, i64* @ERROR_INTERNET_NOT_INITIALIZED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %0
  %16 = call i64 (...) @GetLastError()
  %17 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %18 = icmp eq i64 %16, %17
  br label %19

19:                                               ; preds = %15, %0
  %20 = phi i1 [ true, %0 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i64 (...) @GetLastError()
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0), i64 %22)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @FtpGetFileA(i32*, i8*, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
