; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_compobj.c_test_IMallocSpy.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_compobj.c_test_IMallocSpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_INVALIDARG = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@CO_E_OBJNOTREG = common dso_local global i32* null, align 8
@testspy = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32* null, align 8
@CO_E_OBJISREG = common dso_local global i32* null, align 8
@MEMCTX_TASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_IMallocSpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_IMallocSpy() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = call i32* @CoRegisterMallocSpy(i32* null)
  store i32* %3, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32*, i32** @E_INVALIDARG, align 8
  %6 = icmp eq i32* %4, %5
  %7 = zext i1 %6 to i32
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @ok(i32 %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %8)
  %10 = call i32* (...) @CoRevokeMallocSpy()
  store i32* %10, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = load i32*, i32** @CO_E_OBJNOTREG, align 8
  %13 = icmp eq i32* %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %15)
  %17 = call i32* @CoRegisterMallocSpy(i32* @testspy)
  store i32* %17, i32** %2, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = load i32*, i32** @S_OK, align 8
  %20 = icmp eq i32* %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %22)
  %24 = call i32* @CoRegisterMallocSpy(i32* null)
  store i32* %24, i32** %2, align 8
  %25 = load i32*, i32** %2, align 8
  %26 = load i32*, i32** @E_INVALIDARG, align 8
  %27 = icmp eq i32* %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %29)
  %31 = call i32* @CoRegisterMallocSpy(i32* @testspy)
  store i32* %31, i32** %2, align 8
  %32 = load i32*, i32** %2, align 8
  %33 = load i32*, i32** @CO_E_OBJISREG, align 8
  %34 = icmp eq i32* %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %36)
  store i32* null, i32** %1, align 8
  %38 = load i32, i32* @MEMCTX_TASK, align 4
  %39 = call i32* @CoGetMalloc(i32 %38, i32** %1)
  store i32* %39, i32** %2, align 8
  %40 = load i32*, i32** %2, align 8
  %41 = load i32*, i32** @S_OK, align 8
  %42 = icmp eq i32* %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %44)
  %46 = load i32*, i32** %1, align 8
  %47 = icmp ne i32* %46, null
  %48 = zext i1 %47 to i32
  %49 = load i32*, i32** %1, align 8
  %50 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %49)
  %51 = load i32*, i32** %1, align 8
  %52 = call i32 @IMalloc_Free(i32* %51, i32* null)
  %53 = load i32*, i32** %1, align 8
  %54 = call i32 @IMalloc_Release(i32* %53)
  %55 = call i32* (...) @CoRevokeMallocSpy()
  store i32* %55, i32** %2, align 8
  %56 = load i32*, i32** %2, align 8
  %57 = load i32*, i32** @S_OK, align 8
  %58 = icmp eq i32* %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %60)
  %62 = call i32* (...) @CoRevokeMallocSpy()
  store i32* %62, i32** %2, align 8
  %63 = load i32*, i32** %2, align 8
  %64 = load i32*, i32** @CO_E_OBJNOTREG, align 8
  %65 = icmp eq i32* %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i32*, i32** %2, align 8
  %68 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %67)
  ret void
}

declare dso_local i32* @CoRegisterMallocSpy(i32*) #1

declare dso_local i32 @ok(i32, i8*, i32*) #1

declare dso_local i32* @CoRevokeMallocSpy(...) #1

declare dso_local i32* @CoGetMalloc(i32, i32**) #1

declare dso_local i32 @IMalloc_Free(i32*, i32*) #1

declare dso_local i32 @IMalloc_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
