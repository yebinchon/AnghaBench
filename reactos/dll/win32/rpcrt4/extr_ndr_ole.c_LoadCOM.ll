; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_ole.c_LoadCOM.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_ole.c_LoadCOM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hOLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"OLE32.DLL\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"CoGetMarshalSizeMax\00", align 1
@COM_GetMarshalSizeMax = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"CoMarshalInterface\00", align 1
@COM_MarshalInterface = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"CoUnmarshalInterface\00", align 1
@COM_UnmarshalInterface = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"CoReleaseMarshalData\00", align 1
@COM_ReleaseMarshalData = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"CoGetClassObject\00", align 1
@COM_GetClassObject = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"CoGetPSClsid\00", align 1
@COM_GetPSClsid = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"CoTaskMemAlloc\00", align 1
@COM_MemAlloc = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [14 x i8] c"CoTaskMemFree\00", align 1
@COM_MemFree = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @LoadCOM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @LoadCOM() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @hOLE, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = load i64, i64* @hOLE, align 8
  store i64 %5, i64* %1, align 8
  br label %37

6:                                                ; preds = %0
  %7 = call i64 @LoadLibraryA(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i64 %7, i64* @hOLE, align 8
  %8 = load i64, i64* @hOLE, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  store i64 0, i64* %1, align 8
  br label %37

11:                                               ; preds = %6
  %12 = load i64, i64* @hOLE, align 8
  %13 = call i64 @GetProcAddress(i64 %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** @COM_GetMarshalSizeMax, align 8
  %15 = load i64, i64* @hOLE, align 8
  %16 = call i64 @GetProcAddress(i64 %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** @COM_MarshalInterface, align 8
  %18 = load i64, i64* @hOLE, align 8
  %19 = call i64 @GetProcAddress(i64 %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** @COM_UnmarshalInterface, align 8
  %21 = load i64, i64* @hOLE, align 8
  %22 = call i64 @GetProcAddress(i64 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** @COM_ReleaseMarshalData, align 8
  %24 = load i64, i64* @hOLE, align 8
  %25 = call i64 @GetProcAddress(i64 %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** @COM_GetClassObject, align 8
  %27 = load i64, i64* @hOLE, align 8
  %28 = call i64 @GetProcAddress(i64 %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** @COM_GetPSClsid, align 8
  %30 = load i64, i64* @hOLE, align 8
  %31 = call i64 @GetProcAddress(i64 %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** @COM_MemAlloc, align 8
  %33 = load i64, i64* @hOLE, align 8
  %34 = call i64 @GetProcAddress(i64 %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** @COM_MemFree, align 8
  %36 = load i64, i64* @hOLE, align 8
  store i64 %36, i64* %1, align 8
  br label %37

37:                                               ; preds = %11, %10, %4
  %38 = load i64, i64* %1, align 8
  ret i64 %38
}

declare dso_local i64 @LoadLibraryA(i8*) #1

declare dso_local i64 @GetProcAddress(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
