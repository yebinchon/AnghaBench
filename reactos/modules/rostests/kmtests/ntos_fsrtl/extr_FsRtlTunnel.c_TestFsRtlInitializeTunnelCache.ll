; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/kmtests/ntos_fsrtl/extr_FsRtlTunnel.c_TestFsRtlInitializeTunnelCache.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/kmtests/ntos_fsrtl/extr_FsRtlTunnel.c_TestFsRtlInitializeTunnelCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PagedPool = common dso_local global i32 0, align 4
@T = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"PTUNEL is NULL after allocated memory\0A\00", align 1
@Tb = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [98 x i8] c"FsRtlInitializeTunnelCache function did not change anything in the memory at the address PTUNEL.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TestFsRtlInitializeTunnelCache() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @PagedPool, align 4
  %3 = call i8* @ExAllocatePool(i32 %2, i32 4)
  %4 = bitcast i8* %3 to i32*
  store i32* %4, i32** @T, align 8
  %5 = load i32*, i32** @T, align 8
  %6 = icmp ne i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @ok(i32 %7, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @PagedPool, align 4
  %10 = call i8* @ExAllocatePool(i32 %9, i32 4)
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** @Tb, align 8
  %12 = load i32*, i32** @Tb, align 8
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %16 = load i32*, i32** @T, align 8
  %17 = bitcast i32* %16 to i8*
  %18 = call i32 @memset(i8* %17, i32 0, i32 4)
  %19 = load i32*, i32** @Tb, align 8
  %20 = bitcast i32* %19 to i8*
  %21 = call i32 @memset(i8* %20, i32 0, i32 4)
  %22 = load i32*, i32** @T, align 8
  %23 = call i32 @FsRtlInitializeTunnelCache(i32* %22)
  %24 = load i32*, i32** @T, align 8
  %25 = load i32*, i32** @Tb, align 8
  %26 = call i32 @RtlCompareMemory(i32* %24, i32* %25, i32 4)
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ne i64 %28, 4
  %30 = zext i1 %29 to i32
  %31 = call i32 @ok(i32 %30, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i8* @ExAllocatePool(i32, i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @FsRtlInitializeTunnelCache(i32*) #1

declare dso_local i32 @RtlCompareMemory(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
