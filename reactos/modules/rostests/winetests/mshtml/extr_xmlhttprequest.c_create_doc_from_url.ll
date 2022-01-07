; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_xmlhttprequest.c_create_doc_from_url.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_xmlhttprequest.c_create_doc_from_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"CreateBindCtx failed: 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"CreateURLMoniker failed: 0x%08x\0A\00", align 1
@CLSID_HTMLDocument = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@CLSCTX_INPROC_HANDLER = common dso_local global i32 0, align 4
@IID_IHTMLDocument2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"CoCreateInstance failed: 0x%08x\0A\00", align 1
@IID_IPersistMoniker = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"IHTMLDocument2_QueryInterface failed: 0x%08x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@STGM_READWRITE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"IPersistMoniker_Load failed: 0x%08x\0A\00", align 1
@doc_complete = common dso_local global i32 0, align 4
@notif_doc = common dso_local global i32* null, align 8
@IID_IPropertyNotifySink = common dso_local global i32 0, align 4
@PropertyNotifySink = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @create_doc_from_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_doc_from_url(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %9 = call i64 @CreateBindCtx(i32 0, i32** %4)
  store i64 %9, i64* %8, align 8
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* @S_OK, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @a2bstr(i8* %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @CreateURLMoniker(i32* null, i32 %18, i32** %5)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @S_OK, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  %26 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %27 = load i32, i32* @CLSCTX_INPROC_HANDLER, align 4
  %28 = or i32 %26, %27
  %29 = bitcast i32** %7 to i8**
  %30 = call i64 @CoCreateInstance(i32* @CLSID_HTMLDocument, i32* null, i32 %28, i32* @IID_IHTMLDocument2, i8** %29)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @S_OK, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %35)
  %37 = load i32*, i32** %7, align 8
  %38 = bitcast i32** %6 to i8**
  %39 = call i64 @IHTMLDocument2_QueryInterface(i32* %37, i32* @IID_IPersistMoniker, i8** %38)
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @S_OK, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %44)
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @FALSE, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %51 = load i32, i32* @STGM_READWRITE, align 4
  %52 = or i32 %50, %51
  %53 = call i64 @IPersistMoniker_Load(i32* %46, i32 %47, i32* %48, i32* %49, i32 %52)
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* @S_OK, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %58)
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @IPersistMoniker_Release(i32* %60)
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @IMoniker_Release(i32* %62)
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @IBindCtx_Release(i32* %64)
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @SysFreeString(i32 %66)
  %68 = load i32, i32* @FALSE, align 4
  store i32 %68, i32* @doc_complete, align 4
  %69 = load i32*, i32** %7, align 8
  store i32* %69, i32** @notif_doc, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @do_advise(i32* %70, i32* @IID_IPropertyNotifySink, i32* @PropertyNotifySink)
  %72 = call i32 @pump_msgs(i32* @doc_complete)
  %73 = load i32*, i32** %7, align 8
  ret i32* %73
}

declare dso_local i64 @CreateBindCtx(i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @a2bstr(i8*) #1

declare dso_local i64 @CreateURLMoniker(i32*, i32, i32**) #1

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i64 @IHTMLDocument2_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @IPersistMoniker_Load(i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @IPersistMoniker_Release(i32*) #1

declare dso_local i32 @IMoniker_Release(i32*) #1

declare dso_local i32 @IBindCtx_Release(i32*) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i32 @do_advise(i32*, i32*, i32*) #1

declare dso_local i32 @pump_msgs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
