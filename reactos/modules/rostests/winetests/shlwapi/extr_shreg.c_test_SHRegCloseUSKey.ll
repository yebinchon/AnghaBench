; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_shreg.c_test_SHRegCloseUSKey.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_shreg.c_test_SHRegCloseUSKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_SHRegCloseUSKey.localW = internal constant [9 x i8] c"Software\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SHRegCloseUSKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SHRegCloseUSKey() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = call i64 @pSHRegCloseUSKey(i32* null)
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %6 = icmp eq i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = load i64, i64* %1, align 8
  %9 = call i32 @ok(i32 %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %8)
  %10 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %11 = load i32, i32* @FALSE, align 4
  %12 = call i64 @pSHRegOpenUSKeyW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SHRegCloseUSKey.localW, i64 0, i64 0), i32 %10, i32* null, i32** %2, i32 %11)
  store i64 %12, i64* %1, align 8
  %13 = load i64, i64* %1, align 8
  %14 = load i64, i64* @ERROR_SUCCESS, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %1, align 8
  %18 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call i64 @pSHRegCloseUSKey(i32* %19)
  store i64 %20, i64* %1, align 8
  %21 = load i64, i64* %1, align 8
  %22 = load i64, i64* @ERROR_SUCCESS, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i64, i64* %1, align 8
  %26 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %28 = load i32, i32* @FALSE, align 4
  %29 = call i64 @pSHRegOpenUSKeyW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SHRegCloseUSKey.localW, i64 0, i64 0), i32 %27, i32* null, i32** %2, i32 %28)
  store i64 %29, i64* %1, align 8
  %30 = load i64, i64* %1, align 8
  %31 = load i64, i64* @ERROR_SUCCESS, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i64, i64* %1, align 8
  %35 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = call i64 @pSHRegCloseUSKey(i32* %36)
  store i64 %37, i64* %1, align 8
  %38 = load i64, i64* %1, align 8
  %39 = load i64, i64* @ERROR_SUCCESS, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %1, align 8
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %42)
  ret void
}

declare dso_local i64 @pSHRegCloseUSKey(i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @pSHRegOpenUSKeyW(i8*, i32, i32*, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
