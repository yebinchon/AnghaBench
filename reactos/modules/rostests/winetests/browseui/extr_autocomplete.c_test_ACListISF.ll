; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/browseui/extr_autocomplete.c_test_ACListISF.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/browseui/extr_autocomplete.c_test_ACListISF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_ACListISF = common dso_local global i32 0, align 4
@CLSCTX_INPROC = common dso_local global i32 0, align 4
@IID_IACList = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"failed to create ACListISF instance, 0x%08x\0A\00", align 1
@IID_IEnumString = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"got %p, %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ACListISF to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ACListISF() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @CLSCTX_INPROC, align 4
  %6 = bitcast i32** %2 to i8**
  %7 = call i64 @CoCreateInstance(i32* @CLSID_ACListISF, i32* null, i32 %5, i32* @IID_IACList, i8** %6)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @S_OK, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i64, i64* %4, align 8
  %13 = call i32 (i32, i8*, i64, ...) @ok(i32 %11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = bitcast i32** %1 to i8**
  %16 = call i64 @IACList_QueryInterface(i32* %14, i32* @IID_IEnumString, i8** %15)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @S_OK, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %4, align 8
  %22 = call i32 (i32, i8*, i64, ...) @ok(i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = bitcast i32** %3 to i8**
  %25 = call i64 @IEnumString_QueryInterface(i32* %23, i32* @IID_IACList, i8** %24)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @S_OK, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i64, i64* %4, align 8
  %31 = call i32 (i32, i8*, i64, ...) @ok(i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = icmp eq i32* %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i32*, i32** %2, align 8
  %37 = ptrtoint i32* %36 to i64
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 (i32, i8*, i64, ...) @ok(i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %37, i32* %38)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @IACList_Release(i32* %40)
  %42 = load i32*, i32** %1, align 8
  %43 = call i32 @IEnumString_Release(i32* %42)
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @IACList_Release(i32* %44)
  ret void
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i64 @IACList_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @IEnumString_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IACList_Release(i32*) #1

declare dso_local i32 @IEnumString_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
