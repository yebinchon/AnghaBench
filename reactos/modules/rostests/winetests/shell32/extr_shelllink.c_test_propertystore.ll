; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shelllink.c_test_propertystore.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shelllink.c_test_propertystore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_ShellLink = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IShellLinkA = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@IID_IShellLinkW = common dso_local global i32 0, align 4
@IID_IPropertyStore = common dso_local global i32 0, align 4
@IID_IPropertyStoreCache = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"IShellLink doesn't support IPropertyStore.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_propertystore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_propertystore() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %7 = bitcast i32** %1 to i8**
  %8 = call i64 @CoCreateInstance(i32* @CLSID_ShellLink, i32* null, i32 %6, i32* @IID_IShellLinkA, i8** %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @S_OK, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i32*, i32** %1, align 8
  %16 = bitcast i32** %2 to i8**
  %17 = call i64 @IShellLinkA_QueryInterface(i32* %15, i32* @IID_IShellLinkW, i8** %16)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @S_OK, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i32*, i32** %1, align 8
  %25 = bitcast i32** %3 to i8**
  %26 = call i64 @IShellLinkA_QueryInterface(i32* %24, i32* @IID_IPropertyStore, i8** %25)
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @S_OK, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %0
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @IPropertyStore_Release(i32* %31)
  %33 = load i32*, i32** %2, align 8
  %34 = bitcast i32** %3 to i8**
  %35 = call i64 @IShellLinkW_QueryInterface(i32* %33, i32* @IID_IPropertyStore, i8** %34)
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @S_OK, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = bitcast i32** %5 to i8**
  %44 = call i64 @IPropertyStore_QueryInterface(i32* %42, i32* @IID_IPropertyStoreCache, i8** %43)
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @E_NOINTERFACE, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %49)
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @IPropertyStore_Release(i32* %51)
  br label %55

53:                                               ; preds = %0
  %54 = call i32 @win_skip(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %30
  %56 = load i32*, i32** %1, align 8
  %57 = call i32 @IShellLinkA_Release(i32* %56)
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @IShellLinkW_Release(i32* %58)
  ret void
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IShellLinkA_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IPropertyStore_Release(i32*) #1

declare dso_local i64 @IShellLinkW_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @IPropertyStore_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @IShellLinkA_Release(i32*) #1

declare dso_local i32 @IShellLinkW_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
