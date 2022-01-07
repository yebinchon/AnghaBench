; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_store.c_delete_test_key.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_store.c_delete_test_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@delete_test_key.SysCertW = internal constant [38 x i8] c"Software\\Microsoft\\SystemCertificates\00", align 16
@delete_test_key.WineTestW = internal constant [9 x i8] c"WineTest\00", align 1
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @delete_test_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_test_key() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [32 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %8 = load i32, i32* @KEY_READ, align 4
  %9 = call i64 @RegOpenKeyExW(i32 %7, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @delete_test_key.SysCertW, i64 0, i64 0), i32 0, i32 %8, i32* %1)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  br label %45

12:                                               ; preds = %0
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @KEY_READ, align 4
  %15 = call i64 @RegOpenKeyExW(i32 %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @delete_test_key.WineTestW, i64 0, i64 0), i32 0, i32 %14, i32* %2)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @RegCloseKey(i32 %18)
  br label %45

20:                                               ; preds = %12
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @RegQueryInfoKeyW(i32 %21, i32* null, i32* null, i32* null, i32* %4, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null)
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %28, %20
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %6, align 4
  %27 = icmp sgt i32 %25, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %30 = call i32 @ARRAY_SIZE(i8* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* %6, align 4
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %34 = call i32 @RegEnumKeyExW(i32 %31, i32 %32, i8* %33, i32* %5, i32* null, i32* null, i32* null, i32* null)
  %35 = load i32, i32* %2, align 4
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %37 = call i32 @RegDeleteKeyW(i32 %35, i8* %36)
  br label %24

38:                                               ; preds = %24
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @RegCloseKey(i32 %39)
  %41 = load i32, i32* %1, align 4
  %42 = call i32 @RegDeleteKeyW(i32 %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @delete_test_key.WineTestW, i64 0, i64 0))
  %43 = load i32, i32* %1, align 4
  %44 = call i32 @RegCloseKey(i32 %43)
  br label %45

45:                                               ; preds = %38, %17, %11
  ret void
}

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @RegQueryInfoKeyW(i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @RegEnumKeyExW(i32, i32, i8*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RegDeleteKeyW(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
