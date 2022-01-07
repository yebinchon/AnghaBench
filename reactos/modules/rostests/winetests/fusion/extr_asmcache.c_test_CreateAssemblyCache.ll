; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/fusion/extr_asmcache.c_test_CreateAssemblyCache.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/fusion/extr_asmcache.c_test_CreateAssemblyCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_INVALIDARG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Expected E_INVALIDARG, got %08x\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Expected S_OK, got %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CreateAssemblyCache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CreateAssemblyCache() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = call i64 @pCreateAssemblyCache(i32** null, i32 0)
  store i64 %3, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @E_INVALIDARG, align 8
  %6 = icmp eq i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = load i64, i64* %2, align 8
  %9 = call i32 @ok(i32 %7, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %8)
  %10 = call i64 @pCreateAssemblyCache(i32** %1, i32 42)
  store i64 %10, i64* %2, align 8
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* @S_OK, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i64, i64* %2, align 8
  %16 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @IAssemblyCache_Release(i32* %17)
  ret void
}

declare dso_local i64 @pCreateAssemblyCache(i32**, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @IAssemblyCache_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
