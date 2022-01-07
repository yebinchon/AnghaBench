; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_msi.c_test_usefeature.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_msi.c_test_usefeature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INSTALLSTATE_INVALIDARG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"wrong return val\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"{9085040-6000-11d3-8cfe-0150048383c9}\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"WORDVIEWFiles\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"{90850409-6000-11d3-8cfe-0150048383c9}\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"{0085040-6000-11d3-8cfe-0150048383c9}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_usefeature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_usefeature() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 @MsiQueryFeatureStateA(i8* null, i32* null)
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @INSTALLSTATE_INVALIDARG, align 8
  %5 = icmp eq i64 %3, %4
  %6 = zext i1 %5 to i32
  %7 = call i32 @ok(i32 %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %8 = call i64 @MsiQueryFeatureStateA(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* %1, align 8
  %10 = load i64, i64* @INSTALLSTATE_INVALIDARG, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %14 = call i64 @pMsiUseFeatureExA(i8* null, i8* null, i32 0, i32 0)
  store i64 %14, i64* %1, align 8
  %15 = load i64, i64* %1, align 8
  %16 = load i64, i64* @INSTALLSTATE_INVALIDARG, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %20 = call i64 @pMsiUseFeatureExA(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 -2, i32 1)
  store i64 %20, i64* %1, align 8
  %21 = load i64, i64* %1, align 8
  %22 = load i64, i64* @INSTALLSTATE_INVALIDARG, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %26 = call i64 @pMsiUseFeatureExA(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* null, i32 -2, i32 0)
  store i64 %26, i64* %1, align 8
  %27 = load i64, i64* %1, align 8
  %28 = load i64, i64* @INSTALLSTATE_INVALIDARG, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @ok(i32 %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %32 = call i64 @pMsiUseFeatureExA(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 -2, i32 0)
  store i64 %32, i64* %1, align 8
  %33 = load i64, i64* %1, align 8
  %34 = load i64, i64* @INSTALLSTATE_INVALIDARG, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %38 = call i64 @pMsiUseFeatureExA(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 -2, i32 0)
  store i64 %38, i64* %1, align 8
  %39 = load i64, i64* %1, align 8
  %40 = load i64, i64* @INSTALLSTATE_INVALIDARG, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %44 = call i64 @pMsiUseFeatureExA(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 -2, i32 1)
  store i64 %44, i64* %1, align 8
  %45 = load i64, i64* %1, align 8
  %46 = load i64, i64* @INSTALLSTATE_INVALIDARG, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i64 @MsiQueryFeatureStateA(i8*, i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i64 @pMsiUseFeatureExA(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
