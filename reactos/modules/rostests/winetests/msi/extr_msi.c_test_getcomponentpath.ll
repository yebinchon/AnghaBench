; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_msi.c_test_getcomponentpath.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_msi.c_test_getcomponentpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INSTALLSTATE_INVALIDARG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"wrong return value\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"bogus\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"{00000000-0000-0000-000000000000}\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"{00000000-78E1-11D2-B60F-006097C998E7}\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"{00000000-0000-0000-0000-000000000000}\00", align 1
@INSTALLSTATE_UNKNOWN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"{00000409-78E1-11D2-B60F-006097C998E7}\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"{00000000-0000-0000-0000-00000000}\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"{029E403D-A86A-1D11-5B5B0006799C897E}\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"{00000000-78E1-11D2-B60F-006097C9987e}\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"{00000000-A68A-11d1-5B5B-0006799C897E}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_getcomponentpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_getcomponentpath() #0 {
  %1 = alloca i64, align 8
  %2 = alloca [256 x i8], align 16
  %3 = alloca i32, align 4
  %4 = call i64 @pMsiGetComponentPathA(i8* null, i8* null, i8* null, i32* null)
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @INSTALLSTATE_INVALIDARG, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %10 = call i64 @pMsiGetComponentPathA(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* null, i32* null)
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* %1, align 8
  %12 = load i64, i64* @INSTALLSTATE_INVALIDARG, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %16 = call i64 @pMsiGetComponentPathA(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* null, i32* null)
  store i64 %16, i64* %1, align 8
  %17 = load i64, i64* %1, align 8
  %18 = load i64, i64* @INSTALLSTATE_INVALIDARG, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 256, i32* %3, align 4
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  store i8 0, i8* %22, align 16
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %24 = call i64 @pMsiGetComponentPathA(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %23, i32* %3)
  store i64 %24, i64* %1, align 8
  %25 = load i64, i64* %1, align 8
  %26 = load i64, i64* @INSTALLSTATE_INVALIDARG, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %31 = call i64 @pMsiGetComponentPathA(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %30, i32* %3)
  store i64 %31, i64* %1, align 8
  %32 = load i64, i64* %1, align 8
  %33 = load i64, i64* @INSTALLSTATE_UNKNOWN, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %38 = call i64 @pMsiGetComponentPathA(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* %37, i32* %3)
  store i64 %38, i64* %1, align 8
  %39 = load i64, i64* %1, align 8
  %40 = load i64, i64* @INSTALLSTATE_INVALIDARG, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %44 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %45 = call i64 @pMsiGetComponentPathA(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8* %44, i32* %3)
  store i64 %45, i64* %1, align 8
  %46 = load i64, i64* %1, align 8
  %47 = load i64, i64* @INSTALLSTATE_INVALIDARG, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %52 = call i64 @pMsiGetComponentPathA(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i8* %51, i32* %3)
  store i64 %52, i64* %1, align 8
  %53 = load i64, i64* %1, align 8
  %54 = load i64, i64* @INSTALLSTATE_UNKNOWN, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i64 @pMsiGetComponentPathA(i8*, i8*, i8*, i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
