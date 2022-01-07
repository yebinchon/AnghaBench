; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_stubmanager.c_ipid_get_dispatch_params.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_stubmanager.c_ipid_get_dispatch_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stub_manager = type { i32 }
%struct.ifstub = type { i32*, i32, i32*, i32* }

@S_OK = common dso_local global i64 0, align 8
@RPC_E_DISCONNECTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ipid_get_dispatch_params(i32* %0, i32** %1, %struct.stub_manager** %2, i32** %3, i32** %4, i32* %5, i32** %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca %struct.stub_manager**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca %struct.stub_manager*, align 8
  %17 = alloca %struct.ifstub*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i32** %1, i32*** %10, align 8
  store %struct.stub_manager** %2, %struct.stub_manager*** %11, align 8
  store i32** %3, i32*** %12, align 8
  store i32** %4, i32*** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32** %6, i32*** %15, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i64 @ipid_to_ifstub(i32* %20, i32** %18, %struct.stub_manager** %16, %struct.ifstub** %17)
  store i64 %21, i64* %19, align 8
  %22 = load i64, i64* %19, align 8
  %23 = load i64, i64* @S_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  %26 = load i64, i64* @RPC_E_DISCONNECTED, align 8
  store i64 %26, i64* %8, align 8
  br label %62

27:                                               ; preds = %7
  %28 = load %struct.ifstub*, %struct.ifstub** %17, align 8
  %29 = getelementptr inbounds %struct.ifstub, %struct.ifstub* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = load i32**, i32*** %12, align 8
  store i32* %30, i32** %31, align 8
  %32 = load i32**, i32*** %12, align 8
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @IRpcStubBuffer_AddRef(i32* %33)
  %35 = load %struct.ifstub*, %struct.ifstub** %17, align 8
  %36 = getelementptr inbounds %struct.ifstub, %struct.ifstub* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32**, i32*** %13, align 8
  store i32* %37, i32** %38, align 8
  %39 = load i32**, i32*** %13, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @IRpcChannelBuffer_AddRef(i32* %40)
  %42 = load i32*, i32** %18, align 8
  %43 = load i32**, i32*** %10, align 8
  store i32* %42, i32** %43, align 8
  %44 = load %struct.ifstub*, %struct.ifstub** %17, align 8
  %45 = getelementptr inbounds %struct.ifstub, %struct.ifstub* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** %14, align 8
  store i32 %46, i32* %47, align 4
  %48 = load %struct.ifstub*, %struct.ifstub** %17, align 8
  %49 = getelementptr inbounds %struct.ifstub, %struct.ifstub* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32**, i32*** %15, align 8
  store i32* %50, i32** %51, align 8
  %52 = load %struct.stub_manager**, %struct.stub_manager*** %11, align 8
  %53 = icmp ne %struct.stub_manager** %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %27
  %55 = load %struct.stub_manager*, %struct.stub_manager** %16, align 8
  %56 = load %struct.stub_manager**, %struct.stub_manager*** %11, align 8
  store %struct.stub_manager* %55, %struct.stub_manager** %56, align 8
  br label %60

57:                                               ; preds = %27
  %58 = load %struct.stub_manager*, %struct.stub_manager** %16, align 8
  %59 = call i32 @stub_manager_int_release(%struct.stub_manager* %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i64, i64* @S_OK, align 8
  store i64 %61, i64* %8, align 8
  br label %62

62:                                               ; preds = %60, %25
  %63 = load i64, i64* %8, align 8
  ret i64 %63
}

declare dso_local i64 @ipid_to_ifstub(i32*, i32**, %struct.stub_manager**, %struct.ifstub**) #1

declare dso_local i32 @IRpcStubBuffer_AddRef(i32*) #1

declare dso_local i32 @IRpcChannelBuffer_AddRef(i32*) #1

declare dso_local i32 @stub_manager_int_release(%struct.stub_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
