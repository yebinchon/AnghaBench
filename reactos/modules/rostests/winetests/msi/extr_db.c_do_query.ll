; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_do_query.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_do_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i8*, i64*)* @do_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_query(i64 %0, i8* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %8, align 8
  %11 = load i64*, i64** %7, align 8
  %12 = icmp ne i64* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i64*, i64** %7, align 8
  store i64 0, i64* %14, align 8
  br label %15

15:                                               ; preds = %13, %3
  %16 = load i64, i64* %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @MsiDatabaseOpenViewA(i64 %16, i8* %17, i64* %8)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @ERROR_SUCCESS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i64, i64* %9, align 8
  store i64 %23, i64* %4, align 8
  br label %53

24:                                               ; preds = %15
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @MsiViewExecute(i64 %25, i32 0)
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @ERROR_SUCCESS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i64, i64* %9, align 8
  store i64 %31, i64* %4, align 8
  br label %53

32:                                               ; preds = %24
  %33 = load i64, i64* %8, align 8
  %34 = load i64*, i64** %7, align 8
  %35 = call i64 @MsiViewFetch(i64 %33, i64* %34)
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i64 @MsiViewClose(i64 %36)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @ERROR_SUCCESS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i64, i64* %9, align 8
  store i64 %42, i64* %4, align 8
  br label %53

43:                                               ; preds = %32
  %44 = load i64, i64* %8, align 8
  %45 = call i64 @MsiCloseHandle(i64 %44)
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* @ERROR_SUCCESS, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i64, i64* %9, align 8
  store i64 %50, i64* %4, align 8
  br label %53

51:                                               ; preds = %43
  %52 = load i64, i64* %10, align 8
  store i64 %52, i64* %4, align 8
  br label %53

53:                                               ; preds = %51, %49, %41, %30, %22
  %54 = load i64, i64* %4, align 8
  ret i64 %54
}

declare dso_local i64 @MsiDatabaseOpenViewA(i64, i8*, i64*) #1

declare dso_local i64 @MsiViewExecute(i64, i32) #1

declare dso_local i64 @MsiViewFetch(i64, i64*) #1

declare dso_local i64 @MsiViewClose(i64) #1

declare dso_local i64 @MsiCloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
