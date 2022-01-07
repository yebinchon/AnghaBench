; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_test_delete_value.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_test_delete_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hkey_main = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"test\00", align 1
@REG_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"expect ERROR_SUCCESS, got %i\0A\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"expect ERROR_FILE_NOT_FOUND, got %i\0A\00", align 1
@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"expected ERROR_SUCCESS, got %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"expected ERROR_FILE_NOT_FOUND, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_delete_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_delete_value() #0 {
  %1 = alloca i64, align 8
  %2 = alloca [401 x i8], align 16
  %3 = load i32, i32* @hkey_main, align 4
  %4 = load i32, i32* @REG_SZ, align 4
  %5 = call i64 @RegSetValueExA(i32 %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, i32 %4, i32* bitcast ([6 x i8]* @.str.1 to i32*), i32 6)
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = load i64, i64* @ERROR_SUCCESS, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i64, i64* %1, align 8
  %11 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %10)
  %12 = load i32, i32* @hkey_main, align 4
  %13 = call i64 @RegQueryValueExA(i32 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i32* null, i32* null, i32* null)
  store i64 %13, i64* %1, align 8
  %14 = load i64, i64* %1, align 8
  %15 = load i64, i64* @ERROR_SUCCESS, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %1, align 8
  %19 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %18)
  %20 = load i32, i32* @hkey_main, align 4
  %21 = call i64 @RegDeleteValueA(i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i64 %21, i64* %1, align 8
  %22 = load i64, i64* %1, align 8
  %23 = load i64, i64* @ERROR_SUCCESS, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* %1, align 8
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %26)
  %28 = load i32, i32* @hkey_main, align 4
  %29 = call i64 @RegQueryValueExA(i32 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i32* null, i32* null, i32* null)
  store i64 %29, i64* %1, align 8
  %30 = load i64, i64* %1, align 8
  %31 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i64, i64* %1, align 8
  %35 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %34)
  %36 = load i32, i32* @hkey_main, align 4
  %37 = call i64 @RegDeleteValueA(i32 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i64 %37, i64* %1, align 8
  %38 = load i64, i64* %1, align 8
  %39 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %1, align 8
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %42)
  %44 = getelementptr inbounds [401 x i8], [401 x i8]* %2, i64 0, i64 0
  %45 = call i32 @memset(i8* %44, i8 signext 97, i32 400)
  %46 = getelementptr inbounds [401 x i8], [401 x i8]* %2, i64 0, i64 400
  store i8 0, i8* %46, align 16
  %47 = load i32, i32* @hkey_main, align 4
  %48 = getelementptr inbounds [401 x i8], [401 x i8]* %2, i64 0, i64 0
  %49 = call i64 @RegDeleteValueA(i32 %47, i8* %48)
  store i64 %49, i64* %1, align 8
  %50 = load i64, i64* %1, align 8
  %51 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %60, label %53

53:                                               ; preds = %0
  %54 = load i64, i64* %1, align 8
  %55 = load i64, i64* @ERROR_MORE_DATA, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i64 @broken(i32 %57)
  %59 = icmp ne i64 %58, 0
  br label %60

60:                                               ; preds = %53, %0
  %61 = phi i1 [ true, %0 ], [ %59, %53 ]
  %62 = zext i1 %61 to i32
  %63 = load i64, i64* %1, align 8
  %64 = call i32 @ok(i32 %62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %63)
  %65 = load i32, i32* @hkey_main, align 4
  %66 = load i32, i32* @REG_SZ, align 4
  %67 = call i64 @RegSetValueExA(i32 %65, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 %66, i32* bitcast ([6 x i8]* @.str.1 to i32*), i32 6)
  store i64 %67, i64* %1, align 8
  %68 = load i64, i64* %1, align 8
  %69 = load i64, i64* @ERROR_SUCCESS, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i64, i64* %1, align 8
  %73 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %72)
  %74 = load i32, i32* @hkey_main, align 4
  %75 = call i64 @RegQueryValueExA(i32 %74, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32* null, i32* null, i32* null, i32* null)
  store i64 %75, i64* %1, align 8
  %76 = load i64, i64* %1, align 8
  %77 = load i64, i64* @ERROR_SUCCESS, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = load i64, i64* %1, align 8
  %81 = call i32 @ok(i32 %79, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %80)
  %82 = load i32, i32* @hkey_main, align 4
  %83 = call i64 @RegDeleteValueA(i32 %82, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  store i64 %83, i64* %1, align 8
  %84 = load i64, i64* %1, align 8
  %85 = load i64, i64* @ERROR_SUCCESS, align 8
  %86 = icmp eq i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = load i64, i64* %1, align 8
  %89 = call i32 @ok(i32 %87, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %88)
  %90 = load i32, i32* @hkey_main, align 4
  %91 = call i64 @RegQueryValueExA(i32 %90, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32* null, i32* null, i32* null, i32* null)
  store i64 %91, i64* %1, align 8
  %92 = load i64, i64* %1, align 8
  %93 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = load i64, i64* %1, align 8
  %97 = call i32 @ok(i32 %95, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i64 %96)
  ret void
}

declare dso_local i64 @RegSetValueExA(i32, i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @RegQueryValueExA(i32, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @RegDeleteValueA(i32, i8*) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
