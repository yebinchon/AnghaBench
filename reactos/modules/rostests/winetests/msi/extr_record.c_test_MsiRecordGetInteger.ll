; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_record.c_test_MsiRecordGetInteger.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_record.c_test_MsiRecordGetInteger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"Expected a valid handle\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Expected ERROR_SUCCESS, got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Expected 5, got %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-5\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Expected -5, got %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"5apple\00", align 1
@MSI_NULL_INTEGER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"Expected MSI_NULL_INTEGER, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_MsiRecordGetInteger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_MsiRecordGetInteger() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i64 @MsiCreateRecord(i32 1)
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = icmp ne i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 (i32, i8*, ...) @ok(i32 %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %9 = load i64, i64* %1, align 8
  %10 = call i32 @MsiRecordSetStringA(i64 %9, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @ERROR_SUCCESS, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %3, align 4
  %16 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  %17 = load i64, i64* %1, align 8
  %18 = call i32 @MsiRecordGetInteger(i64 %17, i32 1)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp eq i32 %19, 5
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %2, align 4
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  %24 = load i64, i64* %1, align 8
  %25 = call i32 @MsiRecordSetStringA(i64 %24, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @ERROR_SUCCESS, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %3, align 4
  %31 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load i64, i64* %1, align 8
  %33 = call i32 @MsiRecordGetInteger(i64 %32, i32 1)
  store i32 %33, i32* %2, align 4
  %34 = load i32, i32* %2, align 4
  %35 = icmp eq i32 %34, -5
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %2, align 4
  %38 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %37)
  %39 = load i64, i64* %1, align 8
  %40 = call i32 @MsiRecordSetStringA(i64 %39, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @ERROR_SUCCESS, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %3, align 4
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load i64, i64* %1, align 8
  %48 = call i32 @MsiRecordGetInteger(i64 %47, i32 1)
  store i32 %48, i32* %2, align 4
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @MSI_NULL_INTEGER, align 4
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %2, align 4
  %54 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %53)
  %55 = load i64, i64* %1, align 8
  %56 = call i32 @MsiCloseHandle(i64 %55)
  ret void
}

declare dso_local i64 @MsiCreateRecord(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @MsiRecordSetStringA(i64, i32, i8*) #1

declare dso_local i32 @MsiRecordGetInteger(i64, i32) #1

declare dso_local i32 @MsiCloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
