; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/vbscript/extr_vbscript.c_get_script_dispatch.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/vbscript/extr_vbscript.c_get_script_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"GetScriptDispatch failed: %08x\0A\00", align 1
@IID_IDispatchEx = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Could not get IDispatchEx iface: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @get_script_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_script_dispatch(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* inttoptr (i64 3735928559 to i32*), i32** %5, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i64 @IActiveScript_GetScriptDispatch(i32* %7, i32* null, i32** %5)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @S_OK, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @FAILED(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %32

19:                                               ; preds = %1
  %20 = load i32*, i32** %5, align 8
  %21 = bitcast i32** %4 to i8**
  %22 = call i64 @IDispatch_QueryInterface(i32* %20, i32* @IID_IDispatchEx, i8** %21)
  store i64 %22, i64* %6, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @IDispatch_Release(i32* %23)
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @S_OK, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load i32*, i32** %4, align 8
  store i32* %31, i32** %2, align 8
  br label %32

32:                                               ; preds = %19, %18
  %33 = load i32*, i32** %2, align 8
  ret i32* %33
}

declare dso_local i64 @IActiveScript_GetScriptDispatch(i32*, i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @IDispatch_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IDispatch_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
