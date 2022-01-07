; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_misc.c_register_protocols.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_misc.c_register_protocols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@register_protocols.wszAbout = internal constant [6 x i8] c"about\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"CoInternetGetSession failed: %08x\0A\00", align 1
@CLSID_AboutProtocol = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IClassFactory = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Could not get AboutProtocol factory: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @register_protocols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @register_protocols() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = call i64 @pCoInternetGetSession(i32 0, i32** %1, i32 0)
  store i64 %4, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @S_OK, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @FAILED(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  br label %37

15:                                               ; preds = %0
  %16 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %17 = bitcast i32** %2 to i8**
  %18 = call i64 @CoGetClassObject(i32* @CLSID_AboutProtocol, i32 %16, i32* null, i32* @IID_IClassFactory, i8** %17)
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @S_OK, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  %25 = load i64, i64* %3, align 8
  %26 = call i64 @FAILED(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  br label %37

29:                                               ; preds = %15
  %30 = load i32*, i32** %1, align 8
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @IInternetSession_RegisterNameSpace(i32* %30, i32* %31, i32* @CLSID_AboutProtocol, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @register_protocols.wszAbout, i64 0, i64 0), i32 0, i32* null, i32 0)
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @IClassFactory_Release(i32* %33)
  %35 = load i32*, i32** %1, align 8
  %36 = call i32 @IInternetSession_Release(i32* %35)
  br label %37

37:                                               ; preds = %29, %28, %14
  ret void
}

declare dso_local i64 @pCoInternetGetSession(i32, i32**, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @CoGetClassObject(i32*, i32, i32*, i32*, i8**) #1

declare dso_local i32 @IInternetSession_RegisterNameSpace(i32*, i32*, i32*, i8*, i32, i32*, i32) #1

declare dso_local i32 @IClassFactory_Release(i32*) #1

declare dso_local i32 @IInternetSession_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
