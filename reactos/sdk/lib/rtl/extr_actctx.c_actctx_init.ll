; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_actctx_init.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_actctx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32*, i32*, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@ACTCTX_FLAG_RESOURCE_NAME_VALID = common dso_local global i32 0, align 4
@ACTCTX_FLAG_HMODULE_VALID = common dso_local global i32 0, align 4
@CREATEPROCESS_MANIFEST_RESOURCE_ID = common dso_local global i64 0, align 8
@process_actctx = common dso_local global i8* null, align 8
@SharedUserData = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [45 x i32] [i32 92, i32 119, i32 105, i32 110, i32 115, i32 120, i32 115, i32 92, i32 109, i32 97, i32 110, i32 105, i32 102, i32 101, i32 115, i32 116, i32 115, i32 92, i32 102, i32 111, i32 114, i32 119, i32 97, i32 114, i32 100, i32 99, i32 111, i32 109, i32 112, i32 97, i32 116, i32 105, i32 98, i32 108, i32 101, i32 46, i32 109, i32 97, i32 110, i32 105, i32 102, i32 101, i32 115, i32 116, i32 0], align 4
@.str.1 = private unnamed_addr constant [44 x i32] [i32 92, i32 119, i32 105, i32 110, i32 115, i32 120, i32 115, i32 92, i32 109, i32 97, i32 110, i32 105, i32 102, i32 101, i32 115, i32 116, i32 115, i32 92, i32 115, i32 121, i32 115, i32 116, i32 101, i32 109, i32 99, i32 111, i32 109, i32 112, i32 97, i32 116, i32 105, i32 98, i32 108, i32 101, i32 46, i32 109, i32 97, i32 110, i32 105, i32 102, i32 101, i32 115, i32 116, i32 0], align 4
@implicit_actctx = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c"Failed to create the implicit act ctx. Status: 0x%x!!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @actctx_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1024 x i32], align 16
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i32 32, i32* %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  store i32* null, i32** %8, align 8
  %9 = load i32, i32* @ACTCTX_FLAG_RESOURCE_NAME_VALID, align 4
  %10 = load i32, i32* @ACTCTX_FLAG_HMODULE_VALID, align 4
  %11 = or i32 %9, %10
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = call %struct.TYPE_8__* (...) @NtCurrentTeb()
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 4
  store i32* %17, i32** %18, align 8
  %19 = load i64, i64* @CREATEPROCESS_MANIFEST_RESOURCE_ID, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  store i32* %20, i32** %21, align 8
  %22 = ptrtoint %struct.TYPE_6__* %3 to i32
  %23 = call i32 @RtlCreateActivationContext(i32 0, i32 %22, i32 0, i32* null, i32* null, i32* %4)
  %24 = call i64 @NT_SUCCESS(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  %28 = call i8* @check_actctx(i32 %27)
  store i8* %28, i8** @process_actctx, align 8
  br label %29

29:                                               ; preds = %26, %1
  %30 = load i8*, i8** @process_actctx, align 8
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @LdrpInitializeProcessCompat(i8* %30, i32* %31)
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 4
  store i32* null, i32** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  store i32* null, i32** %35, align 8
  %36 = getelementptr inbounds [1024 x i32], [1024 x i32]* %5, i64 0, i64 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  store i32* %36, i32** %37, align 8
  %38 = getelementptr inbounds [1024 x i32], [1024 x i32]* %5, i64 0, i64 0
  %39 = getelementptr inbounds [1024 x i32], [1024 x i32]* %5, i64 0, i64 0
  %40 = call i32 @RTL_NUMBER_OF(i32* %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** @SharedUserData, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @RtlStringCchCopyW(i32* %38, i32 %40, i32 %43)
  %45 = call i64 (...) @RosGetProcessCompatVersion()
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %29
  %48 = getelementptr inbounds [1024 x i32], [1024 x i32]* %5, i64 0, i64 0
  %49 = getelementptr inbounds [1024 x i32], [1024 x i32]* %5, i64 0, i64 0
  %50 = call i32 @RTL_NUMBER_OF(i32* %49)
  %51 = call i32 @RtlStringCchCatW(i32* %48, i32 %50, i8* bitcast ([45 x i32]* @.str to i8*))
  br label %57

52:                                               ; preds = %29
  %53 = getelementptr inbounds [1024 x i32], [1024 x i32]* %5, i64 0, i64 0
  %54 = getelementptr inbounds [1024 x i32], [1024 x i32]* %5, i64 0, i64 0
  %55 = call i32 @RTL_NUMBER_OF(i32* %54)
  %56 = call i32 @RtlStringCchCatW(i32* %53, i32 %55, i8* bitcast ([44 x i32]* @.str.1 to i8*))
  br label %57

57:                                               ; preds = %52, %47
  %58 = ptrtoint %struct.TYPE_6__* %3 to i32
  %59 = call i32 @RtlCreateActivationContext(i32 0, i32 %58, i32 0, i32* null, i32* null, i32* %4)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i64 @NT_SUCCESS(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* %4, align 4
  %65 = call i8* @check_actctx(i32 %64)
  store i8* %65, i8** @implicit_actctx, align 8
  br label %69

66:                                               ; preds = %57
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @DPRINT1(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %66, %63
  ret void
}

declare dso_local %struct.TYPE_8__* @NtCurrentTeb(...) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @RtlCreateActivationContext(i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i8* @check_actctx(i32) #1

declare dso_local i32 @LdrpInitializeProcessCompat(i8*, i32*) #1

declare dso_local i32 @RtlStringCchCopyW(i32*, i32, i32) #1

declare dso_local i32 @RTL_NUMBER_OF(i32*) #1

declare dso_local i64 @RosGetProcessCompatVersion(...) #1

declare dso_local i32 @RtlStringCchCatW(i32*, i32, i8*) #1

declare dso_local i32 @DPRINT1(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
