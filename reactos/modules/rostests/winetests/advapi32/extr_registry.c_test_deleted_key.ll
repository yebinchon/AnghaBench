; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_test_deleted_key.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_test_deleted_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Software\\Wine\\Test\00", align 1
@hkey_main = common dso_local global i32 0, align 4
@ERROR_KEY_DELETED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"expect ERROR_KEY_DELETED, got %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@REG_SZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_deleted_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_deleted_key() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [20 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %8 = call i64 @RegOpenKeyA(i32 %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %1)
  %9 = load i32, i32* @hkey_main, align 4
  %10 = call i32 @delete_key(i32 %9)
  store i32 20, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* %1, align 4
  %12 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %13 = call i64 @RegEnumValueA(i32 %11, i32 0, i8* %12, i32* %4, i32* null, i32* %5, i32 0, i32 0)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @ERROR_KEY_DELETED, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %18)
  %20 = load i32, i32* %1, align 4
  %21 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %22 = call i64 @RegEnumKeyA(i32 %20, i32 0, i8* %21, i32 20)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @ERROR_KEY_DELETED, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  store i32 20, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %29 = load i32, i32* %1, align 4
  %30 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %31 = bitcast i8* %30 to i32*
  %32 = call i64 @RegQueryValueExA(i32 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* %5, i32* %31, i32* %4)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @ERROR_KEY_DELETED, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* @REG_SZ, align 4
  %41 = call i64 @RegSetValueExA(i32 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 %40, i32* bitcast ([6 x i8]* @.str.3 to i32*), i32 6)
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @ERROR_KEY_DELETED, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  %48 = load i32, i32* %1, align 4
  %49 = call i64 @RegOpenKeyA(i32 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %2)
  store i64 %49, i64* %6, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @ERROR_KEY_DELETED, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @ok(i32 %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %54)
  %56 = load i64, i64* %6, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %0
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @RegCloseKey(i32 %59)
  br label %61

61:                                               ; preds = %58, %0
  %62 = load i32, i32* %1, align 4
  %63 = call i64 @RegCreateKeyA(i32 %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %2)
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* @ERROR_KEY_DELETED, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i64, i64* %6, align 8
  %69 = call i32 @ok(i32 %67, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %68)
  %70 = load i64, i64* %6, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %61
  %73 = load i32, i32* %2, align 4
  %74 = call i32 @RegCloseKey(i32 %73)
  br label %75

75:                                               ; preds = %72, %61
  %76 = load i32, i32* %1, align 4
  %77 = call i64 @RegFlushKey(i32 %76)
  store i64 %77, i64* %6, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* @ERROR_KEY_DELETED, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i64, i64* %6, align 8
  %83 = call i32 @ok(i32 %81, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %82)
  %84 = load i32, i32* %1, align 4
  %85 = call i32 @RegCloseKey(i32 %84)
  %86 = call i32 (...) @setup_main_key()
  ret void
}

declare dso_local i64 @RegOpenKeyA(i32, i8*, i32*) #1

declare dso_local i32 @delete_key(i32) #1

declare dso_local i64 @RegEnumValueA(i32, i32, i8*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @RegEnumKeyA(i32, i32, i8*, i32) #1

declare dso_local i64 @RegQueryValueExA(i32, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @RegSetValueExA(i32, i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i64 @RegCreateKeyA(i32, i8*, i32*) #1

declare dso_local i64 @RegFlushKey(i32) #1

declare dso_local i32 @setup_main_key(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
