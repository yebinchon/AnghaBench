; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_pluginhost.c_update_readystate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_pluginhost.c_update_readystate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32*, i32* }

@IID_IDispatchEx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Use IDispatchEx\0A\00", align 1
@IID_IDispatch = common dso_local global i32 0, align 4
@DISPID_READYSTATE = common dso_local global i32 0, align 4
@IID_NULL = common dso_local global i32 0, align 4
@DISPATCH_PROPERTYGET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"readystate = %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @update_readystate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_readystate(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %9 = bitcast %struct.TYPE_6__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  store i32 0, i32* %6, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = bitcast i32** %4 to i8**
  %14 = call i32 @IUnknown_QueryInterface(i32 %12, i32* @IID_IDispatchEx, i8** %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @SUCCEEDED(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = call i32 @FIXME(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @IDispatchEx_Release(i32* %20)
  br label %22

22:                                               ; preds = %18, %1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = bitcast i32** %5 to i8**
  %27 = call i32 @IUnknown_QueryInterface(i32 %25, i32* @IID_IDispatch, i8** %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @FAILED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %46

32:                                               ; preds = %22
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @DISPID_READYSTATE, align 4
  %35 = load i32, i32* @DISPATCH_PROPERTYGET, align 4
  %36 = call i32 @IDispatch_Invoke(i32* %33, i32 %34, i32* @IID_NULL, i32 0, i32 %35, %struct.TYPE_6__* %3, i32* %7, i32* null, i32* %6)
  store i32 %36, i32* %8, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @IDispatch_Release(i32* %37)
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @SUCCEEDED(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %32
  %43 = call i32 @debugstr_variant(i32* %7)
  %44 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = call i32 @VariantClear(i32* %7)
  br label %46

46:                                               ; preds = %31, %42, %32
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @IUnknown_QueryInterface(i32, i32*, i8**) #2

declare dso_local i64 @SUCCEEDED(i32) #2

declare dso_local i32 @FIXME(i8*) #2

declare dso_local i32 @IDispatchEx_Release(i32*) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @IDispatch_Invoke(i32*, i32, i32*, i32, i32, %struct.TYPE_6__*, i32*, i32*, i32*) #2

declare dso_local i32 @IDispatch_Release(i32*) #2

declare dso_local i32 @TRACE(i8*, i32) #2

declare dso_local i32 @debugstr_variant(i32*) #2

declare dso_local i32 @VariantClear(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
