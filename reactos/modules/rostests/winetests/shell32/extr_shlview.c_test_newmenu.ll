; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlview.c_test_newmenu.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlview.c_test_newmenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_NewMenu = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IUnknown = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Failed to create NewMenu object, hr %#x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"NewMenu is not supported.\0A\00", align 1
@IID_IShellExtInit = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to get IShellExtInit, hr %#x.\0A\00", align 1
@IID_IContextMenu = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to get IContextMenu, hr %#x.\0A\00", align 1
@IID_IContextMenu2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Failed to get IContextMenu2, hr %#x.\0A\00", align 1
@IID_IContextMenu3 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"Failed to get IContextMenu3, hr %#x.\0A\00", align 1
@IID_IObjectWithSite = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"Failed to get IObjectWithSite, hr %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_newmenu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_newmenu() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %5 = bitcast i32** %1 to i8**
  %6 = call i64 @CoCreateInstance(i32* @CLSID_NewMenu, i32* null, i32 %4, i32* @IID_IUnknown, i8** %5)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @S_OK, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @S_OK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %0
  %17 = call i32 @skip(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %76

18:                                               ; preds = %0
  %19 = load i32*, i32** %1, align 8
  %20 = bitcast i32** %2 to i8**
  %21 = call i64 @IUnknown_QueryInterface(i32* %19, i32* @IID_IShellExtInit, i8** %20)
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @S_OK, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @IUnknown_Release(i32* %28)
  %30 = load i32*, i32** %1, align 8
  %31 = bitcast i32** %2 to i8**
  %32 = call i64 @IUnknown_QueryInterface(i32* %30, i32* @IID_IContextMenu, i8** %31)
  store i64 %32, i64* %3, align 8
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* @S_OK, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %37)
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @IUnknown_Release(i32* %39)
  %41 = load i32*, i32** %1, align 8
  %42 = bitcast i32** %2 to i8**
  %43 = call i64 @IUnknown_QueryInterface(i32* %41, i32* @IID_IContextMenu2, i8** %42)
  store i64 %43, i64* %3, align 8
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* @S_OK, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %3, align 8
  %49 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64 %48)
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @IUnknown_Release(i32* %50)
  %52 = load i32*, i32** %1, align 8
  %53 = bitcast i32** %2 to i8**
  %54 = call i64 @IUnknown_QueryInterface(i32* %52, i32* @IID_IContextMenu3, i8** %53)
  store i64 %54, i64* %3, align 8
  %55 = load i64, i64* %3, align 8
  %56 = load i64, i64* @S_OK, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i64, i64* %3, align 8
  %60 = call i32 @ok(i32 %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i64 %59)
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @IUnknown_Release(i32* %61)
  %63 = load i32*, i32** %1, align 8
  %64 = bitcast i32** %2 to i8**
  %65 = call i64 @IUnknown_QueryInterface(i32* %63, i32* @IID_IObjectWithSite, i8** %64)
  store i64 %65, i64* %3, align 8
  %66 = load i64, i64* %3, align 8
  %67 = load i64, i64* @S_OK, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i64, i64* %3, align 8
  %71 = call i32 @ok(i32 %69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i64 %70)
  %72 = load i32*, i32** %2, align 8
  %73 = call i32 @IUnknown_Release(i32* %72)
  %74 = load i32*, i32** %1, align 8
  %75 = call i32 @IUnknown_Release(i32* %74)
  br label %76

76:                                               ; preds = %18, %16
  ret void
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i64 @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
