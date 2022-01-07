; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_IOleInPlaceSite_GetWindow.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_IOleInPlaceSite_GetWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"IRichEditOle_QueryInterface: 0x%08x\0A\00", align 1
@IID_IOleInPlaceSite = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"IOleClientSite_QueryInterface: 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"IOleInPlaceSite_GetWindow: 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"got wrong pointer.\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_IOleInPlaceSite_GetWindow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_IOleInPlaceSite_GetWindow() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %8 = call i32 @create_interfaces(i64* %1, i32** %2, i32** %3, i32* null)
  %9 = load i32*, i32** %2, align 8
  %10 = call i64 @IRichEditOle_GetClientSite(i32* %9, i32** %4)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @S_OK, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i64, i64* %6, align 8
  %16 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = bitcast i32** %5 to i8**
  %19 = call i64 @IOleClientSite_QueryInterface(i32* %17, i32* @IID_IOleInPlaceSite, i8** %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @S_OK, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %6, align 8
  %25 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = call i64 @IOleInPlaceSite_GetWindow(i32* %26, i64* %7)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @S_OK, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %6, align 8
  %33 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %32)
  %34 = load i64, i64* %1, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %39 = load i32*, i32** %5, align 8
  %40 = call i64 @IOleInPlaceSite_GetWindow(i32* %39, i64* null)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @E_INVALIDARG, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %6, align 8
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %45)
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @IOleInPlaceSite_Release(i32* %47)
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @IOleClientSite_Release(i32* %49)
  %51 = call i32 @release_interfaces(i64* %1, i32** %2, i32** %3, i32* null)
  ret void
}

declare dso_local i32 @create_interfaces(i64*, i32**, i32**, i32*) #1

declare dso_local i64 @IRichEditOle_GetClientSite(i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IOleClientSite_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @IOleInPlaceSite_GetWindow(i32*, i64*) #1

declare dso_local i32 @IOleInPlaceSite_Release(i32*) #1

declare dso_local i32 @IOleClientSite_Release(i32*) #1

declare dso_local i32 @release_interfaces(i64*, i32**, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
