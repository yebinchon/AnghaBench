; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_do_query.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_do_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, i32*)* @do_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_query(i32 %0, i8* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @MsiDatabaseOpenViewA(i32 %11, i8* %12, i32* %8)
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* @ERROR_SUCCESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i64, i64* %9, align 8
  store i64 %18, i64* %4, align 8
  br label %48

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @MsiViewExecute(i32 %20, i32 0)
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @ERROR_SUCCESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i64, i64* %9, align 8
  store i64 %26, i64* %4, align 8
  br label %48

27:                                               ; preds = %19
  %28 = load i32, i32* %8, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = call i64 @MsiViewFetch(i32 %28, i32* %29)
  store i64 %30, i64* %10, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @MsiViewClose(i32 %31)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @ERROR_SUCCESS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i64, i64* %9, align 8
  store i64 %37, i64* %4, align 8
  br label %48

38:                                               ; preds = %27
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @MsiCloseHandle(i32 %39)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @ERROR_SUCCESS, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i64, i64* %9, align 8
  store i64 %45, i64* %4, align 8
  br label %48

46:                                               ; preds = %38
  %47 = load i64, i64* %10, align 8
  store i64 %47, i64* %4, align 8
  br label %48

48:                                               ; preds = %46, %44, %36, %25, %17
  %49 = load i64, i64* %4, align 8
  ret i64 %49
}

declare dso_local i64 @MsiDatabaseOpenViewA(i32, i8*, i32*) #1

declare dso_local i64 @MsiViewExecute(i32, i32) #1

declare dso_local i64 @MsiViewFetch(i32, i32*) #1

declare dso_local i64 @MsiViewClose(i32) #1

declare dso_local i64 @MsiCloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
