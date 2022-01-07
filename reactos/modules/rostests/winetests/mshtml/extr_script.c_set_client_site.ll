; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_script.c_set_client_site.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_script.c_set_client_site.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@view = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@IID_IOleObject = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Could not et IOleObject: %08x\0A\00", align 1
@ClientSite = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"SetClientSite failed: %08x\0A\00", align 1
@IID_IHlinkTarget = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Could not get IHlinkTarget iface: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Navgate failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @set_client_site to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_client_site(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %2
  %11 = load i32*, i32** @view, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = load i32*, i32** @view, align 8
  %15 = load i32, i32* @FALSE, align 4
  %16 = call i32 @IOleDocumentView_Show(i32* %14, i32 %15)
  %17 = load i32*, i32** @view, align 8
  %18 = call i32 @IOleDocumentView_CloseView(i32* %17, i32 0)
  %19 = load i32*, i32** @view, align 8
  %20 = call i32 @IOleDocumentView_SetInPlaceSite(i32* %19, i32* null)
  %21 = load i32*, i32** @view, align 8
  %22 = call i32 @IOleDocumentView_Release(i32* %21)
  store i32* null, i32** @view, align 8
  br label %23

23:                                               ; preds = %13, %10, %2
  %24 = load i32*, i32** %3, align 8
  %25 = bitcast i32** %5 to i8**
  %26 = call i64 @IHTMLDocument2_QueryInterface(i32* %24, i32* @IID_IOleObject, i8** %25)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @S_OK, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @ok(i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i32*, i32** %5, align 8
  %34 = load i64, i64* %4, align 8
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32* @ClientSite, i32* null
  %38 = call i64 @IOleObject_SetClientSite(i32* %33, i32* %37)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @S_OK, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %43)
  %45 = load i64, i64* %4, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %23
  %48 = load i32*, i32** %5, align 8
  %49 = bitcast i32** %7 to i8**
  %50 = call i64 @IOleObject_QueryInterface(i32* %48, i32* @IID_IHlinkTarget, i8** %49)
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @S_OK, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %55)
  %57 = load i32*, i32** %7, align 8
  %58 = call i64 @IHlinkTarget_Navigate(i32* %57, i32 0, i32* null)
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* @S_OK, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @ok(i32 %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %63)
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @IHlinkTarget_Release(i32* %65)
  br label %67

67:                                               ; preds = %47, %23
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @IOleObject_Release(i32* %68)
  ret void
}

declare dso_local i32 @IOleDocumentView_Show(i32*, i32) #1

declare dso_local i32 @IOleDocumentView_CloseView(i32*, i32) #1

declare dso_local i32 @IOleDocumentView_SetInPlaceSite(i32*, i32*) #1

declare dso_local i32 @IOleDocumentView_Release(i32*) #1

declare dso_local i64 @IHTMLDocument2_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IOleObject_SetClientSite(i32*, i32*) #1

declare dso_local i64 @IOleObject_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @IHlinkTarget_Navigate(i32*, i32, i32*) #1

declare dso_local i32 @IHlinkTarget_Release(i32*) #1

declare dso_local i32 @IOleObject_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
