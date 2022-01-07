; ModuleID = '/home/carl/AnghaBench/seafile/msi/custom/extr_custom.c_readRegValue.c'
source_filename = "/home/carl/AnghaBench/seafile/msi/custom/extr_custom.c_readRegValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@REG_SZ = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @readRegValue(i32 %0, i8* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8** %3, i8*** %8, align 8
  store i8* null, i8** %10, align 8
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* @KEY_READ, align 4
  %19 = call i64 @RegOpenKeyEx(i32 %16, i8* %17, i64 0, i32 %18, i32* %9)
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %12, align 8
  %21 = load i64, i64* @ERROR_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %56

24:                                               ; preds = %4
  %25 = load i32, i32* %9, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @RegQueryValueEx(i32 %25, i8* %26, i32* null, i64* %14, i32* null, i64* %13)
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* @ERROR_SUCCESS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = load i64, i64* %14, align 8
  %33 = load i64, i64* @REG_SZ, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %24
  br label %56

36:                                               ; preds = %31
  %37 = load i64, i64* %13, align 8
  %38 = add nsw i64 %37, 1
  %39 = call i8* @malloc(i64 %38)
  store i8* %39, i8** %10, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i64, i64* %13, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8 0, i8* %42, align 1
  %43 = load i32, i32* %9, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = bitcast i8* %45 to i32*
  %47 = call i64 @RegQueryValueEx(i32 %43, i8* %44, i32* null, i64* null, i32* %46, i64* %13)
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* @ERROR_SUCCESS, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %36
  br label %56

52:                                               ; preds = %36
  %53 = load i8*, i8** %10, align 8
  %54 = load i8**, i8*** %8, align 8
  store i8* %53, i8** %54, align 8
  %55 = load i32, i32* @TRUE, align 4
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %52, %51, %35, %23
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @RegCloseKey(i32 %57)
  %59 = load i32, i32* %11, align 4
  ret i32 %59
}

declare dso_local i64 @RegOpenKeyEx(i32, i8*, i64, i32, i32*) #1

declare dso_local i64 @RegQueryValueEx(i32, i8*, i32*, i64*, i32*, i64*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
