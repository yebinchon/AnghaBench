; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/qmgr/extr_job.c_compareFiles.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/qmgr/extr_job.c_compareFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"CreateFile\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ReadFile\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Files differ in length\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Files differ in contents\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @compareFiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compareFiles(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca [256 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @GENERIC_READ, align 4
  %13 = load i32, i32* @FILE_SHARE_READ, align 4
  %14 = load i32, i32* @OPEN_EXISTING, align 4
  %15 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %16 = call i64 @CreateFileW(i32* %11, i32 %12, i32 %13, i32* null, i32 %14, i32 %15, i32* null)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %19 = icmp ne i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @GENERIC_READ, align 4
  %24 = load i32, i32* @FILE_SHARE_READ, align 4
  %25 = load i32, i32* @OPEN_EXISTING, align 4
  %26 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %27 = call i64 @CreateFileW(i32* %22, i32 %23, i32 %24, i32* null, i32 %25, i32 %26, i32* null)
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %30 = icmp ne i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %35 = call i32 @ReadFile(i64 %33, i8* %34, i32 256, i64* %7, i32* null)
  %36 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %39 = call i32 @ReadFile(i64 %37, i8* %38, i32 256, i64* %8, i32* null)
  %40 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @CloseHandle(i64 %41)
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @CloseHandle(i64 %43)
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %52 = load i64, i64* %7, align 8
  %53 = call i64 @memcmp(i8* %50, i8* %51, i64 %52)
  %54 = icmp eq i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i64 @CreateFileW(i32*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @ReadFile(i64, i8*, i32, i64*, i32*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
