; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/quartz/extr_filtermapper.c_test_ifiltermapper_from_filtergraph.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/quartz/extr_filtermapper.c_test_ifiltermapper_from_filtergraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_FilterGraph = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IFilterGraph2 = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"CoCreateInstance failed with %08x\0A\00", align 1
@IID_IFilterMapper2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"IFilterGraph2_QueryInterface failed with %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"unexpected reference count: %u\0A\00", align 1
@IID_IFilterGraph = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"IFilterMapper2_QueryInterface failed with %08x\0A\00", align 1
@CLSID_FilterMapper2 = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"IFilterMapper2_QueryInterface unexpected result: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ifiltermapper_from_filtergraph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ifiltermapper_from_filtergraph() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %6 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %7 = bitcast i32** %1 to i32*
  %8 = call i32 @CoCreateInstance(i32* @CLSID_FilterGraph, i32* null, i32 %6, i32* @IID_IFilterGraph2, i32* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @S_OK, align 4
  %11 = icmp eq i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32*, i32** %1, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %0
  br label %103

18:                                               ; preds = %0
  %19 = load i32*, i32** %1, align 8
  %20 = bitcast i32** %2 to i32*
  %21 = call i32 @IFilterGraph2_QueryInterface(i32* %19, i32* @IID_IFilterMapper2, i32* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @S_OK, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %18
  br label %103

31:                                               ; preds = %18
  %32 = load i32*, i32** %1, align 8
  %33 = call i32 @getRefcount(i32* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @getRefcount(i32* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @IFilterMapper2_AddRef(i32* %46)
  %48 = load i32*, i32** %1, align 8
  %49 = call i32 @getRefcount(i32* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, 3
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @getRefcount(i32* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp eq i32 %57, 3
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32*, i32** %2, align 8
  %63 = call i32 @IFilterMapper2_Release(i32* %62)
  %64 = load i32*, i32** %2, align 8
  %65 = bitcast i32** %3 to i32*
  %66 = call i32 @IFilterMapper2_QueryInterface(i32* %64, i32* @IID_IFilterGraph, i32* %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @S_OK, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @ok(i32 %70, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load i32*, i32** %3, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %31
  br label %103

76:                                               ; preds = %31
  %77 = load i32*, i32** %2, align 8
  %78 = call i32 @IFilterMapper2_Release(i32* %77)
  store i32* null, i32** %2, align 8
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @IFilterGraph_Release(i32* %79)
  store i32* null, i32** %3, align 8
  %81 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %82 = bitcast i32** %2 to i32*
  %83 = call i32 @CoCreateInstance(i32* @CLSID_FilterMapper2, i32* null, i32 %81, i32* @IID_IFilterMapper2, i32* %82)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @S_OK, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @ok(i32 %87, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load i32*, i32** %2, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %76
  br label %103

93:                                               ; preds = %76
  %94 = load i32*, i32** %2, align 8
  %95 = bitcast i32** %3 to i32*
  %96 = call i32 @IFilterMapper2_QueryInterface(i32* %94, i32* @IID_IFilterGraph, i32* %95)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @E_NOINTERFACE, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @ok(i32 %100, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %93, %92, %75, %30, %17
  %104 = load i32*, i32** %2, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32*, i32** %2, align 8
  %108 = call i32 @IFilterMapper2_Release(i32* %107)
  br label %109

109:                                              ; preds = %106, %103
  %110 = load i32*, i32** %3, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32*, i32** %3, align 8
  %114 = call i32 @IFilterGraph_Release(i32* %113)
  br label %115

115:                                              ; preds = %112, %109
  %116 = load i32*, i32** %1, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32*, i32** %1, align 8
  %120 = call i32 @IFilterGraph2_Release(i32* %119)
  br label %121

121:                                              ; preds = %118, %115
  ret void
}

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @IFilterGraph2_QueryInterface(i32*, i32*, i32*) #1

declare dso_local i32 @getRefcount(i32*) #1

declare dso_local i32 @IFilterMapper2_AddRef(i32*) #1

declare dso_local i32 @IFilterMapper2_Release(i32*) #1

declare dso_local i32 @IFilterMapper2_QueryInterface(i32*, i32*, i32*) #1

declare dso_local i32 @IFilterGraph_Release(i32*) #1

declare dso_local i32 @IFilterGraph2_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
