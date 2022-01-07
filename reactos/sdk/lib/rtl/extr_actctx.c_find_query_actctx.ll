; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_find_query_actctx.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_find_query_actctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@RTL_QUERY_ACTIVATION_CONTEXT_FLAG_USE_ACTIVE_ACTIVATION_CONTEXT = common dso_local global i32 0, align 4
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@RTL_QUERY_ACTIVATION_CONTEXT_FLAG_IS_ADDRESS = common dso_local global i32 0, align 4
@RTL_QUERY_ACTIVATION_CONTEXT_FLAG_IS_HMODULE = common dso_local global i32 0, align 4
@STATUS_DLL_NOT_FOUND = common dso_local global i32 0, align 4
@ActivationContextBasicInformation = common dso_local global i64 0, align 8
@process_actctx = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i64)* @find_query_actctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_query_actctx(i64* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @RTL_QUERY_ACTIVATION_CONTEXT_FLAG_USE_ACTIVE_ACTIVATION_CONTEXT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %3
  %17 = load i64*, i64** %5, align 8
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %21, i32* %4, align 4
  br label %98

22:                                               ; preds = %16
  %23 = call %struct.TYPE_9__* (...) @NtCurrentTeb()
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = icmp ne %struct.TYPE_6__* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = call %struct.TYPE_9__* (...) @NtCurrentTeb()
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** %5, align 8
  store i64 %36, i64* %37, align 8
  br label %38

38:                                               ; preds = %29, %22
  br label %96

39:                                               ; preds = %3
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @RTL_QUERY_ACTIVATION_CONTEXT_FLAG_IS_ADDRESS, align 4
  %42 = load i32, i32* @RTL_QUERY_ACTIVATION_CONTEXT_FLAG_IS_HMODULE, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %83

46:                                               ; preds = %39
  %47 = load i64*, i64** %5, align 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %51, i32* %4, align 4
  br label %98

52:                                               ; preds = %46
  %53 = call i32 @LdrLockLoaderLock(i32 0, i32* null, i32* %9)
  %54 = load i64*, i64** %5, align 8
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @LdrFindEntryForAddress(i64 %55, %struct.TYPE_8__** %10)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %78, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @RTL_QUERY_ACTIVATION_CONTEXT_FLAG_IS_HMODULE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load i64*, i64** %5, align 8
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %65, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* @STATUS_DLL_NOT_FOUND, align 4
  store i32 %71, i32* %8, align 4
  br label %77

72:                                               ; preds = %63, %58
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %5, align 8
  store i64 %75, i64* %76, align 8
  br label %77

77:                                               ; preds = %72, %70
  br label %80

78:                                               ; preds = %52
  %79 = load i32, i32* @STATUS_DLL_NOT_FOUND, align 4
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %78, %77
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @LdrUnlockLoaderLock(i32 0, i32 %81)
  br label %95

83:                                               ; preds = %39
  %84 = load i64*, i64** %5, align 8
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %83
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* @ActivationContextBasicInformation, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i64, i64* @process_actctx, align 8
  %93 = load i64*, i64** %5, align 8
  store i64 %92, i64* %93, align 8
  br label %94

94:                                               ; preds = %91, %87, %83
  br label %95

95:                                               ; preds = %94, %80
  br label %96

96:                                               ; preds = %95, %38
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %96, %50, %20
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local %struct.TYPE_9__* @NtCurrentTeb(...) #1

declare dso_local i32 @LdrLockLoaderLock(i32, i32*, i32*) #1

declare dso_local i32 @LdrFindEntryForAddress(i64, %struct.TYPE_8__**) #1

declare dso_local i32 @LdrUnlockLoaderLock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
