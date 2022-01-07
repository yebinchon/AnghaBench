; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_marshal.c_proxy_manager_get_remunknown.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_marshal.c_proxy_manager_get_remunknown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proxy_manager = type { i32, i32, i32*, %struct.TYPE_7__, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.apartment = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i32 }

@S_OK = common dso_local global i64 0, align 8
@SORFP_NOLIFETIMEMGMT = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i64 0, align 8
@CO_E_NOTINITIALIZED = common dso_local global i64 0, align 8
@SORF_NOPING = common dso_local global i32 0, align 4
@IID_IRemUnknown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"got IRemUnknown* pointer %p, hr = 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.proxy_manager*, i32**)* @proxy_manager_get_remunknown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @proxy_manager_get_remunknown(%struct.proxy_manager* %0, i32** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.proxy_manager*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.apartment*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__, align 8
  store %struct.proxy_manager* %0, %struct.proxy_manager** %4, align 8
  store i32** %1, i32*** %5, align 8
  %10 = load i64, i64* @S_OK, align 8
  store i64 %10, i64* %6, align 8
  %11 = load %struct.proxy_manager*, %struct.proxy_manager** %4, align 8
  %12 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SORFP_NOLIFETIMEMGMT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* @S_FALSE, align 8
  store i64 %18, i64* %3, align 8
  br label %124

19:                                               ; preds = %2
  %20 = call %struct.apartment* (...) @apartment_get_current_or_mta()
  store %struct.apartment* %20, %struct.apartment** %7, align 8
  %21 = icmp ne %struct.apartment* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* @CO_E_NOTINITIALIZED, align 8
  store i64 %23, i64* %3, align 8
  br label %124

24:                                               ; preds = %19
  %25 = load %struct.proxy_manager*, %struct.proxy_manager** %4, align 8
  %26 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %25, i32 0, i32 7
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = icmp ne %struct.TYPE_5__* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.proxy_manager*, %struct.proxy_manager** %4, align 8
  %31 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %30, i32 0, i32 7
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.apartment*, %struct.apartment** %7, align 8
  %36 = getelementptr inbounds %struct.apartment, %struct.apartment* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br label %39

39:                                               ; preds = %29, %24
  %40 = phi i1 [ false, %24 ], [ %38, %29 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %8, align 4
  %42 = load %struct.proxy_manager*, %struct.proxy_manager** %4, align 8
  %43 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %42, i32 0, i32 1
  %44 = call i32 @EnterCriticalSection(i32* %43)
  %45 = load %struct.proxy_manager*, %struct.proxy_manager** %4, align 8
  %46 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %60

49:                                               ; preds = %39
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load %struct.proxy_manager*, %struct.proxy_manager** %4, align 8
  %54 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i32**, i32*** %5, align 8
  store i32* %55, i32** %56, align 8
  %57 = load i32**, i32*** %5, align 8
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @IRemUnknown_AddRef(i32* %58)
  br label %113

60:                                               ; preds = %49, %39
  %61 = load %struct.proxy_manager*, %struct.proxy_manager** %4, align 8
  %62 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %61, i32 0, i32 7
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = icmp ne %struct.TYPE_5__* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load i32**, i32*** %5, align 8
  store i32* null, i32** %66, align 8
  %67 = load i64, i64* @S_FALSE, align 8
  store i64 %67, i64* %6, align 8
  br label %112

68:                                               ; preds = %60
  %69 = load i32, i32* @SORFP_NOLIFETIMEMGMT, align 4
  %70 = load i32, i32* @SORF_NOPING, align 4
  %71 = or i32 %69, %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i32 %71, i32* %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store i32 1, i32* %73, align 4
  %74 = load %struct.proxy_manager*, %struct.proxy_manager** %4, align 8
  %75 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 4
  store i32 %76, i32* %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  store i64 -1, i64* %78, align 8
  %79 = load %struct.proxy_manager*, %struct.proxy_manager** %4, align 8
  %80 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  store i32 %82, i32* %83, align 8
  %84 = load %struct.apartment*, %struct.apartment** %7, align 8
  %85 = load %struct.proxy_manager*, %struct.proxy_manager** %4, align 8
  %86 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.proxy_manager*, %struct.proxy_manager** %4, align 8
  %89 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.proxy_manager*, %struct.proxy_manager** %4, align 8
  %92 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %91, i32 0, i32 3
  %93 = load i32**, i32*** %5, align 8
  %94 = bitcast i32** %93 to i8**
  %95 = call i64 @unmarshal_object(%struct.TYPE_6__* %9, %struct.apartment* %84, i32 %87, i32 %90, i32* @IID_IRemUnknown, %struct.TYPE_7__* %92, i8** %94)
  store i64 %95, i64* %6, align 8
  %96 = load i64, i64* %6, align 8
  %97 = load i64, i64* @S_OK, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %111

99:                                               ; preds = %68
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %99
  %103 = load i32**, i32*** %5, align 8
  %104 = load i32*, i32** %103, align 8
  %105 = load %struct.proxy_manager*, %struct.proxy_manager** %4, align 8
  %106 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %105, i32 0, i32 2
  store i32* %104, i32** %106, align 8
  %107 = load %struct.proxy_manager*, %struct.proxy_manager** %4, align 8
  %108 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @IRemUnknown_AddRef(i32* %109)
  br label %111

111:                                              ; preds = %102, %99, %68
  br label %112

112:                                              ; preds = %111, %65
  br label %113

113:                                              ; preds = %112, %52
  %114 = load %struct.proxy_manager*, %struct.proxy_manager** %4, align 8
  %115 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %114, i32 0, i32 1
  %116 = call i32 @LeaveCriticalSection(i32* %115)
  %117 = load %struct.apartment*, %struct.apartment** %7, align 8
  %118 = call i32 @apartment_release(%struct.apartment* %117)
  %119 = load i32**, i32*** %5, align 8
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* %6, align 8
  %122 = call i32 @TRACE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32* %120, i64 %121)
  %123 = load i64, i64* %6, align 8
  store i64 %123, i64* %3, align 8
  br label %124

124:                                              ; preds = %113, %22, %17
  %125 = load i64, i64* %3, align 8
  ret i64 %125
}

declare dso_local %struct.apartment* @apartment_get_current_or_mta(...) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @IRemUnknown_AddRef(i32*) #1

declare dso_local i64 @unmarshal_object(%struct.TYPE_6__*, %struct.apartment*, i32, i32, i32*, %struct.TYPE_7__*, i8**) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @apartment_release(%struct.apartment*) #1

declare dso_local i32 @TRACE(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
