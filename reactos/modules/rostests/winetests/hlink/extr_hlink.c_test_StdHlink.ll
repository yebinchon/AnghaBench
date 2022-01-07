; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/hlink/extr_hlink.c_test_StdHlink.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/hlink/extr_hlink.c_test_StdHlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_StdHlink.testW = internal constant [5 x i8] c"test\00", align 1
@CLSID_StdHlink = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@CLSCTX_INPROC_HANDLER = common dso_local global i32 0, align 4
@IID_IHlink = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"CoCreateInstance failed: %08x\0A\00", align 1
@S_FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"GetTargetFrameName failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"str = %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"SetTargetFrameName failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_StdHlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_StdHlink() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %5 = load i32, i32* @CLSCTX_INPROC_HANDLER, align 4
  %6 = or i32 %4, %5
  %7 = bitcast i32** %1 to i8**
  %8 = call i64 @CoCreateInstance(i32* @CLSID_StdHlink, i32* null, i32 %6, i32* @IID_IHlink, i8** %7)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @S_OK, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %13)
  store i8* inttoptr (i64 3735928559 to i8*), i8** %2, align 8
  %15 = load i32*, i32** %1, align 8
  %16 = call i64 @IHlink_GetTargetFrameName(i32* %15, i8** %2)
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @S_FALSE, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  %23 = load i8*, i8** %2, align 8
  %24 = icmp ne i8* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load i8*, i8** %2, align 8
  %28 = call i64 @wine_dbgstr_w(i8* %27)
  %29 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = call i64 @IHlink_SetTargetFrameName(i32* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_StdHlink.testW, i64 0, i64 0))
  store i64 %31, i64* %3, align 8
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* @S_OK, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %36)
  store i8* inttoptr (i64 3735928559 to i8*), i8** %2, align 8
  %38 = load i32*, i32** %1, align 8
  %39 = call i64 @IHlink_GetTargetFrameName(i32* %38, i8** %2)
  store i64 %39, i64* %3, align 8
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* @S_OK, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %44)
  %46 = load i8*, i8** %2, align 8
  %47 = call i32 @lstrcmpW(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_StdHlink.testW, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = load i8*, i8** %2, align 8
  %52 = call i64 @wine_dbgstr_w(i8* %51)
  %53 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %52)
  %54 = load i8*, i8** %2, align 8
  %55 = call i32 @CoTaskMemFree(i8* %54)
  %56 = load i32*, i32** %1, align 8
  %57 = call i64 @IHlink_SetTargetFrameName(i32* %56, i8* null)
  store i64 %57, i64* %3, align 8
  %58 = load i64, i64* %3, align 8
  %59 = load i64, i64* @S_OK, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i64, i64* %3, align 8
  %63 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %62)
  store i8* inttoptr (i64 3735928559 to i8*), i8** %2, align 8
  %64 = load i32*, i32** %1, align 8
  %65 = call i64 @IHlink_GetTargetFrameName(i32* %64, i8** %2)
  store i64 %65, i64* %3, align 8
  %66 = load i64, i64* %3, align 8
  %67 = load i64, i64* @S_FALSE, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i64, i64* %3, align 8
  %71 = call i32 @ok(i32 %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %70)
  %72 = load i8*, i8** %2, align 8
  %73 = icmp ne i8* %72, null
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = load i8*, i8** %2, align 8
  %77 = call i64 @wine_dbgstr_w(i8* %76)
  %78 = call i32 @ok(i32 %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %77)
  %79 = load i32*, i32** %1, align 8
  %80 = call i32 @IHlink_Release(i32* %79)
  ret void
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IHlink_GetTargetFrameName(i32*, i8**) #1

declare dso_local i64 @wine_dbgstr_w(i8*) #1

declare dso_local i64 @IHlink_SetTargetFrameName(i32*, i8*) #1

declare dso_local i32 @lstrcmpW(i8*, i8*) #1

declare dso_local i32 @CoTaskMemFree(i8*) #1

declare dso_local i32 @IHlink_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
