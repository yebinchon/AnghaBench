; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_drive.c_FlushDrive.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_drive.c_FlushDrive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@__const.FlushDrive.logical_drive = private unnamed_addr constant [7 x i8] c"\\\\.\\#:\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to open %c: for flushing: %s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to flush %c: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8)* @FlushDrive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @FlushDrive(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [7 x i8], align 1
  store i8 %0, i8* %2, align 1
  %6 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* @FALSE, align 8
  store i64 %7, i64* %4, align 8
  %8 = bitcast [7 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.FlushDrive.logical_drive, i32 0, i32 0), i64 7, i1 false)
  %9 = load i8, i8* %2, align 1
  %10 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 4
  store i8 %9, i8* %10, align 1
  %11 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 0
  %12 = load i32, i32* @GENERIC_READ, align 4
  %13 = load i32, i32* @GENERIC_WRITE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @FILE_SHARE_READ, align 4
  %16 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @OPEN_EXISTING, align 4
  %19 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %20 = call i64 @CreateFileA(i8* %11, i32 %14, i32 %17, i32* null, i32 %18, i32 %19, i32* null)
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i8, i8* %2, align 1
  %26 = call i32 (...) @WindowsErrorString()
  %27 = call i32 @uprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8 signext %25, i32 %26)
  br label %39

28:                                               ; preds = %1
  %29 = load i64, i64* %3, align 8
  %30 = call i64 @FlushFileBuffers(i64 %29)
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @FALSE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i8, i8* %2, align 1
  %36 = call i32 (...) @WindowsErrorString()
  %37 = call i32 @uprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8 signext %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %28
  br label %39

39:                                               ; preds = %38, %24
  %40 = load i64, i64* %3, align 8
  %41 = call i32 @safe_closehandle(i64 %40)
  %42 = load i64, i64* %4, align 8
  ret i64 %42
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @uprintf(i8*, i8 signext, i32) #2

declare dso_local i32 @WindowsErrorString(...) #2

declare dso_local i64 @FlushFileBuffers(i64) #2

declare dso_local i32 @safe_closehandle(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
