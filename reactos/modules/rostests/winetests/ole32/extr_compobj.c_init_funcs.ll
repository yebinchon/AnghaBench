; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_compobj.c_init_funcs.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_compobj.c_init_funcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"ole32\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"advapi32\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"kernel32\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"CoGetObjectContext\00", align 1
@pCoGetObjectContext = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"CoSwitchCallContext\00", align 1
@pCoSwitchCallContext = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"CoGetTreatAsClass\00", align 1
@pCoGetTreatAsClass = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"CoTreatAsClass\00", align 1
@pCoTreatAsClass = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [18 x i8] c"CoGetContextToken\00", align 1
@pCoGetContextToken = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [19 x i8] c"CoGetApartmentType\00", align 1
@pCoGetApartmentType = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [16 x i8] c"RegDeleteKeyExA\00", align 1
@pRegDeleteKeyExA = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [21 x i8] c"RegOverridePredefKey\00", align 1
@pRegOverridePredefKey = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [15 x i8] c"CoInitializeEx\00", align 1
@pCoInitializeEx = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [15 x i8] c"ActivateActCtx\00", align 1
@pActivateActCtx = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [14 x i8] c"CreateActCtxW\00", align 1
@pCreateActCtxW = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [17 x i8] c"DeactivateActCtx\00", align 1
@pDeactivateActCtx = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [15 x i8] c"IsWow64Process\00", align 1
@pIsWow64Process = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [14 x i8] c"ReleaseActCtx\00", align 1
@pReleaseActCtx = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_funcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_funcs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @GetModuleHandleA(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %4, i32* %1, align 4
  %5 = call i32 @GetModuleHandleA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %5, i32* %2, align 4
  %6 = call i32 @GetModuleHandleA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %1, align 4
  %8 = call i64 @GetProcAddress(i32 %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %9 = inttoptr i64 %8 to i8*
  store i8* %9, i8** @pCoGetObjectContext, align 8
  %10 = load i32, i32* %1, align 4
  %11 = call i64 @GetProcAddress(i32 %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** @pCoSwitchCallContext, align 8
  %13 = load i32, i32* %1, align 4
  %14 = call i64 @GetProcAddress(i32 %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** @pCoGetTreatAsClass, align 8
  %16 = load i32, i32* %1, align 4
  %17 = call i64 @GetProcAddress(i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** @pCoTreatAsClass, align 8
  %19 = load i32, i32* %1, align 4
  %20 = call i64 @GetProcAddress(i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** @pCoGetContextToken, align 8
  %22 = load i32, i32* %1, align 4
  %23 = call i64 @GetProcAddress(i32 %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** @pCoGetApartmentType, align 8
  %25 = load i32, i32* %2, align 4
  %26 = call i64 @GetProcAddress(i32 %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** @pRegDeleteKeyExA, align 8
  %28 = load i32, i32* %2, align 4
  %29 = call i64 @GetProcAddress(i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** @pRegOverridePredefKey, align 8
  %31 = load i32, i32* %1, align 4
  %32 = call i64 @GetProcAddress(i32 %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** @pCoInitializeEx, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i64 @GetProcAddress(i32 %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** @pActivateActCtx, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i64 @GetProcAddress(i32 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** @pCreateActCtxW, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i64 @GetProcAddress(i32 %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** @pDeactivateActCtx, align 8
  %43 = load i32, i32* %3, align 4
  %44 = call i64 @GetProcAddress(i32 %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %45 = inttoptr i64 %44 to i8*
  store i8* %45, i8** @pIsWow64Process, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i64 @GetProcAddress(i32 %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  %48 = inttoptr i64 %47 to i8*
  store i8* %48, i8** @pReleaseActCtx, align 8
  ret void
}

declare dso_local i32 @GetModuleHandleA(i8*) #1

declare dso_local i64 @GetProcAddress(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
