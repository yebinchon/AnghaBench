; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/rpcrt4/extr_cstub.c_test_NdrDllRegisterProxy.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/rpcrt4/extr_cstub.c_test_NdrDllRegisterProxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_HANDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Incorrect return code %x\0A\00", align 1
@E_NOINTERFACE = common dso_local global i64 0, align 8
@proxy_file_list2 = common dso_local global i32** null, align 8
@proxy_file_list = common dso_local global i32** null, align 8
@S_OK = common dso_local global i64 0, align 8
@E_ACCESSDENIED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"NdrDllRegisterProxy failed %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"NdrDllUnregisterProxy failed %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_NdrDllRegisterProxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_NdrDllRegisterProxy() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = call i32* @GetModuleHandleA(i32* null)
  store i32* %4, i32** %3, align 8
  %5 = call i64 @NdrDllRegisterProxy(i32* null, i32** null, i32* null)
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = load i64, i64* @E_HANDLE, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i64, i64* %1, align 8
  %11 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %10)
  store i32* null, i32** %2, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @NdrDllRegisterProxy(i32* %12, i32** %2, i32* null)
  store i64 %13, i64* %1, align 8
  %14 = load i64, i64* %1, align 8
  %15 = load i64, i64* @E_NOINTERFACE, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %1, align 8
  %19 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = load i32**, i32*** @proxy_file_list2, align 8
  %22 = call i64 @NdrDllRegisterProxy(i32* %20, i32** %21, i32* null)
  store i64 %22, i64* %1, align 8
  %23 = load i64, i64* %1, align 8
  %24 = load i64, i64* @E_NOINTERFACE, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %1, align 8
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i32*, i32** %3, align 8
  %30 = load i32**, i32*** @proxy_file_list, align 8
  %31 = call i64 @NdrDllRegisterProxy(i32* %29, i32** %30, i32* null)
  store i64 %31, i64* %1, align 8
  %32 = load i64, i64* %1, align 8
  %33 = load i64, i64* @S_OK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %0
  %36 = load i64, i64* %1, align 8
  %37 = load i64, i64* @E_ACCESSDENIED, align 8
  %38 = icmp eq i64 %36, %37
  br label %39

39:                                               ; preds = %35, %0
  %40 = phi i1 [ true, %0 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %1, align 8
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  %44 = load i64, i64* %1, align 8
  %45 = load i64, i64* @S_OK, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %39
  %48 = load i32*, i32** %3, align 8
  %49 = load i32**, i32*** @proxy_file_list, align 8
  %50 = call i64 @NdrDllUnregisterProxy(i32* %48, i32** %49, i32* null)
  store i64 %50, i64* %1, align 8
  %51 = load i64, i64* %1, align 8
  %52 = load i64, i64* @S_OK, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* %1, align 8
  %56 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %55)
  br label %57

57:                                               ; preds = %47, %39
  ret void
}

declare dso_local i32* @GetModuleHandleA(i32*) #1

declare dso_local i64 @NdrDllRegisterProxy(i32*, i32**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @NdrDllUnregisterProxy(i32*, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
