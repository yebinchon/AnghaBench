; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_propstore.c_test_propertystore.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_propstore.c_test_propertystore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@VT_EMPTY = common dso_local global i64 0, align 8
@PKEY_AudioEndpoint_GUID = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Failed with %08x\0A\00", align 1
@VT_LPWSTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Value should be %i, is %i\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"guid: %s\0A\00", align 1
@DEVPKEY_DeviceInterface_FriendlyName = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"FriendlyName value had wrong type: 0x%x or was NULL\0A\00", align 1
@DEVPKEY_DeviceInterface_Enabled = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Key should not be found\0A\00", align 1
@DEVPKEY_DeviceInterface_ClassGuid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_propertystore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_propertystore(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca [128 x i8], align 16
  store i32* %0, i32** %2, align 8
  %6 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 127
  store i8 0, i8* %6, align 1
  %7 = load i64, i64* @VT_EMPTY, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i64 %7, i64* %8, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i64 @IPropertyStore_GetValue(i32* %9, i32* @PKEY_AudioEndpoint_GUID, %struct.TYPE_6__* %4)
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @S_OK, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i64, i64* %3, align 8
  %16 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @VT_LPWSTR, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* @VT_LPWSTR, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %22, i64 %24)
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* @S_OK, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @VT_LPWSTR, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load i32, i32* @CP_ACP, align 4
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %40 = call i32 @WideCharToMultiByte(i32 %35, i32 0, i64 %38, i32 -1, i8* %39, i32 127, i32* null, i32* null)
  %41 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %42 = call i32 @trace(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = call i32 @PropVariantClear(%struct.TYPE_6__* %4)
  br label %44

44:                                               ; preds = %34, %29, %1
  %45 = load i64, i64* @VT_EMPTY, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i64 %45, i64* %46, align 8
  %47 = load i32*, i32** %2, align 8
  %48 = call i64 @IPropertyStore_GetValue(i32* %47, i32* @DEVPKEY_DeviceInterface_FriendlyName, %struct.TYPE_6__* %4)
  store i64 %48, i64* %3, align 8
  %49 = load i64, i64* %3, align 8
  %50 = load i64, i64* @S_OK, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i64, i64* %3, align 8
  %54 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %53)
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @VT_LPWSTR, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %44
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br label %64

64:                                               ; preds = %59, %44
  %65 = phi i1 [ false, %44 ], [ %63, %59 ]
  %66 = zext i1 %65 to i32
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i64 %68)
  %70 = call i32 @PropVariantClear(%struct.TYPE_6__* %4)
  %71 = load i64, i64* @VT_EMPTY, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i64 %71, i64* %72, align 8
  %73 = load i32*, i32** %2, align 8
  %74 = call i64 @IPropertyStore_GetValue(i32* %73, i32* @DEVPKEY_DeviceInterface_Enabled, %struct.TYPE_6__* %4)
  store i64 %74, i64* %3, align 8
  %75 = load i64, i64* %3, align 8
  %76 = load i64, i64* @S_OK, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i64, i64* %3, align 8
  %80 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %79)
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @VT_EMPTY, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %87 = call i32 @PropVariantClear(%struct.TYPE_6__* %4)
  %88 = load i64, i64* @VT_EMPTY, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i64 %88, i64* %89, align 8
  %90 = load i32*, i32** %2, align 8
  %91 = call i64 @IPropertyStore_GetValue(i32* %90, i32* @DEVPKEY_DeviceInterface_ClassGuid, %struct.TYPE_6__* %4)
  store i64 %91, i64* %3, align 8
  %92 = load i64, i64* %3, align 8
  %93 = load i64, i64* @S_OK, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = load i64, i64* %3, align 8
  %97 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %96)
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @VT_EMPTY, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %104 = call i32 @PropVariantClear(%struct.TYPE_6__* %4)
  ret void
}

declare dso_local i64 @IPropertyStore_GetValue(i32*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i64, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @trace(i8*, i8*) #1

declare dso_local i32 @PropVariantClear(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
