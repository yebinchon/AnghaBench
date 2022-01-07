; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_safearray.c_test_safearray_layout.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_safearray.c_test_safearray_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i64 }

@VT_UNKNOWN = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@IID_IUnknown = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"got %s\0A\00", align 1
@IID_IDispatch = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@VT_UI1 = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@VT_RECORD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"failed to create array\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_safearray_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_safearray_layout() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i32 10, i32* %10, align 8
  %11 = load i32*, i32** @VT_UNKNOWN, align 8
  %12 = call i32* @SafeArrayCreate(i32* %11, i32 1, %struct.TYPE_6__* %5)
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %16)
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 -1
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @IsEqualIID(i32* %20, i32* @IID_IUnknown)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32* @wine_dbgstr_guid(i32* %22)
  %24 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %23)
  %25 = load i32*, i32** %6, align 8
  %26 = call i32* @SafeArraySetIID(i32* %25, i32* @IID_IDispatch)
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32*, i32** @S_OK, align 8
  %29 = icmp eq i32* %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %31)
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @IsEqualIID(i32* %33, i32* @IID_IDispatch)
  %35 = load i32*, i32** %4, align 8
  %36 = call i32* @wine_dbgstr_guid(i32* %35)
  %37 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %36)
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @memcpy(i32* %38, i32* @IID_IUnknown, i32 4)
  %40 = load i32*, i32** %6, align 8
  %41 = call i32* @SafeArrayGetIID(i32* %40, i32* %3)
  store i32* %41, i32** %8, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load i32*, i32** @S_OK, align 8
  %44 = icmp eq i32* %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %46)
  %48 = call i32 @IsEqualIID(i32* %3, i32* @IID_IUnknown)
  %49 = call i32* @wine_dbgstr_guid(i32* %3)
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %49)
  %51 = load i32*, i32** %6, align 8
  %52 = call i32* @SafeArrayDestroy(i32* %51)
  store i32* %52, i32** %8, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i32*, i32** @S_OK, align 8
  %55 = icmp eq i32* %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %57)
  %59 = load i32*, i32** @VT_UI1, align 8
  %60 = call i32* @SafeArrayCreate(i32* %59, i32 1, %struct.TYPE_6__* %5)
  store i32* %60, i32** %6, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = icmp ne i32* %61, null
  %63 = zext i1 %62 to i32
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %64)
  %66 = load i32*, i32** %6, align 8
  %67 = bitcast i32* %66 to i32**
  %68 = getelementptr inbounds i32*, i32** %67, i64 -1
  store i32** %68, i32*** %7, align 8
  %69 = load i32**, i32*** %7, align 8
  %70 = load i32*, i32** %69, align 8
  %71 = load i32*, i32** @VT_UI1, align 8
  %72 = icmp eq i32* %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i32**, i32*** %7, align 8
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* %75)
  %77 = load i32*, i32** %6, align 8
  %78 = call i32* @SafeArrayDestroy(i32* %77)
  store i32* %78, i32** %8, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = load i32*, i32** @S_OK, align 8
  %81 = icmp eq i32* %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %83)
  %85 = call %struct.TYPE_7__* (...) @IRecordInfoImpl_Construct()
  store %struct.TYPE_7__* %85, %struct.TYPE_7__** %1, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  store i32 1, i32* %87, align 4
  %88 = load i32, i32* @VT_RECORD, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = call i32* @pSafeArrayCreateEx(i32 %88, i32 1, %struct.TYPE_6__* %5, i32* %90)
  store i32* %91, i32** %6, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = icmp ne i32* %92, null
  %94 = zext i1 %93 to i32
  %95 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %96 = load i32*, i32** %6, align 8
  %97 = bitcast i32* %96 to i32**
  %98 = getelementptr inbounds i32*, i32** %97, i64 -1
  %99 = load i32*, i32** %98, align 8
  store i32* %99, i32** %2, align 8
  %100 = load i32*, i32** %2, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = icmp eq i32* %100, %102
  %104 = zext i1 %103 to i32
  %105 = load i32*, i32** %2, align 8
  %106 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %105)
  %107 = load i32*, i32** %6, align 8
  %108 = call i32* @SafeArrayDestroy(i32* %107)
  store i32* %108, i32** %8, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = load i32*, i32** @S_OK, align 8
  %111 = icmp eq i32* %109, %110
  %112 = zext i1 %111 to i32
  %113 = load i32*, i32** %8, align 8
  %114 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %113)
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = call i32 @IRecordInfo_Release(i32* %116)
  ret void
}

declare dso_local i32* @SafeArrayCreate(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @IsEqualIID(i32*, i32*) #1

declare dso_local i32* @wine_dbgstr_guid(i32*) #1

declare dso_local i32* @SafeArraySetIID(i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32* @SafeArrayGetIID(i32*, i32*) #1

declare dso_local i32* @SafeArrayDestroy(i32*) #1

declare dso_local %struct.TYPE_7__* @IRecordInfoImpl_Construct(...) #1

declare dso_local i32* @pSafeArrayCreateEx(i32, i32, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @IRecordInfo_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
