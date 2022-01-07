; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wbemprox/extr_query.c_test_GetNames.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wbemprox/extr_query.c_test_GetNames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_GetNames.queryW = internal constant [36 x i8] c"SELECT * FROM Win32_OperatingSystem\00", align 16
@wqlW = common dso_local global i8* null, align 8
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@WBEM_FLAG_NONSYSTEM_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_GetNames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetNames(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %11 = load i8*, i8** @wqlW, align 8
  %12 = call i32 @SysAllocString(i8* %11)
  store i32 %12, i32* %3, align 4
  %13 = call i32 @SysAllocString(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @test_GetNames.queryW, i64 0, i64 0))
  store i32 %13, i32* %4, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @IWbemServices_ExecQuery(i32* %14, i32 %15, i32 %16, i32 0, i32* null, i32** %5)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @S_OK, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %22)
  br label %24

24:                                               ; preds = %30, %1
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @IEnumWbemClassObject_Next(i32* %25, i32 10000, i32 1, i32** %7, i32* %9)
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %45

30:                                               ; preds = %24
  %31 = call i32 @VariantInit(i32* %10)
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* @WBEM_FLAG_NONSYSTEM_ONLY, align 4
  %34 = call i64 @IWbemClassObject_GetNames(i32* %32, i32* null, i32 %33, i32* %10, i32** %8)
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @S_OK, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @SafeArrayDestroy(i32* %41)
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @IWbemClassObject_Release(i32* %43)
  br label %24

45:                                               ; preds = %29
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @IEnumWbemClassObject_Release(i32* %46)
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @SysFreeString(i32 %48)
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @SysFreeString(i32 %50)
  ret void
}

declare dso_local i32 @SysAllocString(i8*) #1

declare dso_local i64 @IWbemServices_ExecQuery(i32*, i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @IEnumWbemClassObject_Next(i32*, i32, i32, i32**, i32*) #1

declare dso_local i32 @VariantInit(i32*) #1

declare dso_local i64 @IWbemClassObject_GetNames(i32*, i32*, i32, i32*, i32**) #1

declare dso_local i32 @SafeArrayDestroy(i32*) #1

declare dso_local i32 @IWbemClassObject_Release(i32*) #1

declare dso_local i32 @IEnumWbemClassObject_Release(i32*) #1

declare dso_local i32 @SysFreeString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
