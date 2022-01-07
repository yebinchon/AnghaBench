; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_stubmanager.c_ipid_to_ifstub.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_stubmanager.c_ipid_to_ifstub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.stub_manager = type { i32 }
%struct.ifstub = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Couldn't find apartment corresponding to TID 0x%04x\0A\00", align 1
@RPC_E_INVALID_OBJECT = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32**, %struct.stub_manager**, %struct.ifstub**)* @ipid_to_ifstub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipid_to_ifstub(%struct.TYPE_4__* %0, i32** %1, %struct.stub_manager** %2, %struct.ifstub** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.stub_manager**, align 8
  %9 = alloca %struct.ifstub**, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32** %1, i32*** %7, align 8
  store %struct.stub_manager** %2, %struct.stub_manager*** %8, align 8
  store %struct.ifstub** %3, %struct.ifstub*** %9, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 65535
  br i1 %13, label %14, label %23

14:                                               ; preds = %4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TRUE, align 4
  %21 = call i32* @apartment_findfromoxid(i32 %19, i32 %20)
  %22 = load i32**, i32*** %7, align 8
  store i32* %21, i32** %22, align 8
  br label %29

23:                                               ; preds = %4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32* @apartment_findfromtid(i32 %26)
  %28 = load i32**, i32*** %7, align 8
  store i32* %27, i32** %28, align 8
  br label %29

29:                                               ; preds = %23, %14
  %30 = load i32**, i32*** %7, align 8
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @TRACE(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @RPC_E_INVALID_OBJECT, align 4
  store i32 %38, i32* %5, align 4
  br label %57

39:                                               ; preds = %29
  %40 = load i32**, i32*** %7, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = load %struct.ifstub**, %struct.ifstub*** %9, align 8
  %44 = call %struct.stub_manager* @get_stub_manager_from_ipid(i32* %41, %struct.TYPE_4__* %42, %struct.ifstub** %43)
  %45 = load %struct.stub_manager**, %struct.stub_manager*** %8, align 8
  store %struct.stub_manager* %44, %struct.stub_manager** %45, align 8
  %46 = load %struct.stub_manager**, %struct.stub_manager*** %8, align 8
  %47 = load %struct.stub_manager*, %struct.stub_manager** %46, align 8
  %48 = icmp ne %struct.stub_manager* %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %39
  %50 = load i32**, i32*** %7, align 8
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @apartment_release(i32* %51)
  %53 = load i32**, i32*** %7, align 8
  store i32* null, i32** %53, align 8
  %54 = load i32, i32* @RPC_E_INVALID_OBJECT, align 4
  store i32 %54, i32* %5, align 4
  br label %57

55:                                               ; preds = %39
  %56 = load i32, i32* @S_OK, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %55, %49, %33
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32* @apartment_findfromoxid(i32, i32) #1

declare dso_local i32* @apartment_findfromtid(i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local %struct.stub_manager* @get_stub_manager_from_ipid(i32*, %struct.TYPE_4__*, %struct.ifstub**) #1

declare dso_local i32 @apartment_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
