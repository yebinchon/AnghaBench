; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_compobj.c_test_GlobalOptions.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_compobj.c_test_GlobalOptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_GlobalOptions = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IGlobalOptions = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@E_NOINTERFACE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"CoCreateInstance(CLSID_GlobalOptions) failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"CLSID_GlobalOptions not available\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GlobalOptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GlobalOptions() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = call i32 @CoInitialize(i32* null)
  %4 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %5 = bitcast i32** %1 to i8**
  %6 = call i64 @CoCreateInstance(i32* @CLSID_GlobalOptions, i32* null, i32 %4, i32* @IID_IGlobalOptions, i8** %5)
  store i64 %6, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @S_OK, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %17, label %10

10:                                               ; preds = %0
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* @E_NOINTERFACE, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @broken(i32 %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %10, %0
  %18 = phi i1 [ true, %0 ], [ %16, %10 ]
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* %2, align 8
  %21 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i64, i64* %2, align 8
  %23 = call i64 @FAILED(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = call i32 @win_skip(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 (...) @CoUninitialize()
  br label %41

28:                                               ; preds = %17
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @IGlobalOptions_Release(i32* %29)
  %31 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %32 = bitcast i32** %1 to i8**
  %33 = call i64 @CoCreateInstance(i32* @CLSID_GlobalOptions, i32* inttoptr (i64 3735928559 to i32*), i32 %31, i32* @IID_IGlobalOptions, i8** %32)
  store i64 %33, i64* %2, align 8
  %34 = load i64, i64* %2, align 8
  %35 = load i64, i64* @E_INVALIDARG, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i64, i64* %2, align 8
  %39 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = call i32 (...) @CoUninitialize()
  br label %41

41:                                               ; preds = %28, %25
  ret void
}

declare dso_local i32 @CoInitialize(i32*) #1

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @CoUninitialize(...) #1

declare dso_local i32 @IGlobalOptions_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
