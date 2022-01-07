; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/faultrep/extr_faultrep.c_test_AddERExcludedApplicationA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/faultrep/extr_faultrep.c_test_AddERExcludedApplicationA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@regpath_root = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Not enough access rights\0A\00", align 1
@regpath_exclude = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"winetest_faultrep.exe\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"got %d and 0x%x (expected FALSE)\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"AddERExcludedApplicationA should have failed got %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"AddERExcludedApplicationA failed (le=0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_AddERExcludedApplicationA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_AddERExcludedApplicationA() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %6 = load i32, i32* @regpath_root, align 4
  %7 = call i64 @RegCreateKeyA(i32 %5, i32 %6, i32* %3)
  store i64 %7, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 @skip(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %72

13:                                               ; preds = %0
  %14 = load i64, i64* %2, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @regpath_exclude, align 4
  %19 = call i64 @RegOpenKeyA(i32 %17, i32 %18, i32* %4)
  store i64 %19, i64* %2, align 8
  br label %20

20:                                               ; preds = %16, %13
  %21 = load i64, i64* %2, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @RegDeleteValueA(i32 %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %20
  %27 = call i32 @SetLastError(i32 -559038737)
  %28 = call i32 @AddERExcludedApplicationA(i8* null)
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* %1, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %1, align 4
  %34 = call i32 (...) @GetLastError()
  %35 = call i32 (i32, i8*, i32, ...) @ok(i32 %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %33, i32 %34)
  %36 = call i32 @SetLastError(i32 -559038737)
  %37 = call i32 @AddERExcludedApplicationA(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  store i32 %37, i32* %1, align 4
  %38 = load i32, i32* %1, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %1, align 4
  %43 = call i32 (...) @GetLastError()
  %44 = call i32 (i32, i8*, i32, ...) @ok(i32 %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 %43)
  %45 = call i32 @SetLastError(i32 -559038737)
  %46 = call i32 @AddERExcludedApplicationA(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 %46, i32* %1, align 4
  %47 = call i64 (...) @is_process_limited()
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %26
  %50 = load i32, i32* %1, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %1, align 4
  %55 = call i32 (i32, i8*, i32, ...) @ok(i32 %53, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  br label %65

56:                                               ; preds = %26
  %57 = load i32, i32* %1, align 4
  %58 = call i32 (...) @GetLastError()
  %59 = call i32 (i32, i8*, i32, ...) @ok(i32 %57, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %58)
  %60 = call i32 @SetLastError(i32 -559038737)
  %61 = call i32 @AddERExcludedApplicationA(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 %61, i32* %1, align 4
  %62 = load i32, i32* %1, align 4
  %63 = call i32 (...) @GetLastError()
  %64 = call i32 (i32, i8*, i32, ...) @ok(i32 %62, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %56, %49
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @RegDeleteValueA(i32 %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @RegCloseKey(i32 %68)
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @RegCloseKey(i32 %70)
  br label %72

72:                                               ; preds = %65, %11
  ret void
}

declare dso_local i64 @RegCreateKeyA(i32, i32, i32*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i64 @RegOpenKeyA(i32, i32, i32*) #1

declare dso_local i32 @RegDeleteValueA(i32, i8*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @AddERExcludedApplicationA(i8*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @is_process_limited(...) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
