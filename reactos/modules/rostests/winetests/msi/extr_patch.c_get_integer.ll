; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_patch.c_get_integer.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_patch.c_get_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"expected ERROR_SUCCESS, got %u\0A\00", align 1
@ERROR_NO_MORE_ITEMS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"expected ERROR_NO_MORE_ITEMS, got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i8*)* @get_integer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_integer(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 -1, i32* %8, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @MsiDatabaseOpenViewA(i32 %12, i8* %13, i32* %9)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @ERROR_SUCCESS, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @MsiViewExecute(i32 %21, i32 0)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @ERROR_SUCCESS, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @MsiViewFetch(i32 %29, i32* %10)
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @ERROR_SUCCESS, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @ERROR_SUCCESS, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %3
  %41 = load i32, i32* %10, align 4
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @MsiRecordGetInteger(i32 %41, i64 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @MsiCloseHandle(i32 %44)
  %46 = load i32, i32* %9, align 4
  %47 = call i64 @MsiViewFetch(i32 %46, i32* %10)
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* @ERROR_NO_MORE_ITEMS, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  br label %54

54:                                               ; preds = %40, %3
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @MsiViewClose(i32 %55)
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @MsiCloseHandle(i32 %57)
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local i64 @MsiDatabaseOpenViewA(i32, i8*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @MsiViewExecute(i32, i32) #1

declare dso_local i64 @MsiViewFetch(i32, i32*) #1

declare dso_local i32 @MsiRecordGetInteger(i32, i64) #1

declare dso_local i32 @MsiCloseHandle(i32) #1

declare dso_local i32 @MsiViewClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
