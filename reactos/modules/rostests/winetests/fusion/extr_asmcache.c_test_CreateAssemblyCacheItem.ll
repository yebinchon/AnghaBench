; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/fusion/extr_asmcache.c_test_CreateAssemblyCacheItem.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/fusion/extr_asmcache.c_test_CreateAssemblyCacheItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_CreateAssemblyCacheItem.wine = internal constant [5 x i8] c"wine\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Expected S_OK, got %08x\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Expected E_INVALIDARG, got %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CreateAssemblyCacheItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CreateAssemblyCacheItem() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = call i64 @pCreateAssemblyCache(i32** %1, i32 0)
  store i64 %4, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @S_OK, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load i32*, i32** %1, align 8
  %12 = call i64 @IAssemblyCache_CreateAssemblyCacheItem(i32* %11, i32 0, i8* null, i32** null, i8* null)
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @E_INVALIDARG, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %17)
  %19 = load i32*, i32** %1, align 8
  %20 = call i64 @IAssemblyCache_CreateAssemblyCacheItem(i32* %19, i32 0, i8* null, i32** %2, i8* null)
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @S_OK, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @IAssemblyCacheItem_Release(i32* %27)
  %29 = load i32*, i32** %1, align 8
  %30 = call i64 @IAssemblyCache_CreateAssemblyCacheItem(i32* %29, i32 0, i8* null, i32** %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_CreateAssemblyCacheItem.wine, i64 0, i64 0))
  store i64 %30, i64* %3, align 8
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @S_OK, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @IAssemblyCacheItem_Release(i32* %37)
  %39 = load i32*, i32** %1, align 8
  %40 = call i64 @IAssemblyCache_CreateAssemblyCacheItem(i32* %39, i32 1, i8* inttoptr (i64 3735928559 to i8*), i32** %2, i8* null)
  store i64 %40, i64* %3, align 8
  %41 = load i64, i64* %3, align 8
  %42 = load i64, i64* @S_OK, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %3, align 8
  %46 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %45)
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @IAssemblyCacheItem_Release(i32* %47)
  %49 = load i32*, i32** %1, align 8
  %50 = call i64 @IAssemblyCache_CreateAssemblyCacheItem(i32* %49, i32 1, i8* null, i32** %2, i8* null)
  store i64 %50, i64* %3, align 8
  %51 = load i64, i64* %3, align 8
  %52 = load i64, i64* @S_OK, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* %3, align 8
  %56 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %55)
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @IAssemblyCacheItem_Release(i32* %57)
  %59 = load i32*, i32** %1, align 8
  %60 = call i64 @IAssemblyCache_CreateAssemblyCacheItem(i32* %59, i32 0, i8* inttoptr (i64 3735928559 to i8*), i32** %2, i8* null)
  store i64 %60, i64* %3, align 8
  %61 = load i64, i64* %3, align 8
  %62 = load i64, i64* @S_OK, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i64, i64* %3, align 8
  %66 = call i32 @ok(i32 %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %65)
  %67 = load i32*, i32** %2, align 8
  %68 = call i32 @IAssemblyCacheItem_Release(i32* %67)
  %69 = load i32*, i32** %1, align 8
  %70 = call i32 @IAssemblyCache_Release(i32* %69)
  ret void
}

declare dso_local i64 @pCreateAssemblyCache(i32**, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IAssemblyCache_CreateAssemblyCacheItem(i32*, i32, i8*, i32**, i8*) #1

declare dso_local i32 @IAssemblyCacheItem_Release(i32*) #1

declare dso_local i32 @IAssemblyCache_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
