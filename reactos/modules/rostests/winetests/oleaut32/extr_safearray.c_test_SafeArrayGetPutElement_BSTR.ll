; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_safearray.c_test_SafeArrayGetPutElement_BSTR.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_safearray.c_test_SafeArrayGetPutElement_BSTR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@__const.test_SafeArrayGetPutElement_BSTR.szTest = private unnamed_addr constant [5 x i8] c"Test\00", align 1
@VT_BSTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"BSTR test couldn't create array\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"BSTR size mismatch\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Expected non-NULL\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to put bstr element hres 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Failed to get bstr element at hres 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Got len %d instead of %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SafeArrayGetPutElement_BSTR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SafeArrayGetPutElement_BSTR() #0 {
  %1 = alloca %struct.TYPE_8__, align 4
  %2 = alloca [1 x i32], align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [5 x i8], align 1
  store i32* null, i32** %5, align 8
  %8 = bitcast [5 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test_SafeArrayGetPutElement_BSTR.szTest, i32 0, i32 0), i64 5, i1 false)
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  store i32 1, i32* %10, align 4
  %11 = load i32, i32* @VT_BSTR, align 4
  %12 = call %struct.TYPE_9__* @SafeArrayCreate(i32 %11, i32 1, %struct.TYPE_8__* %1)
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %3, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %0
  br label %84

20:                                               ; preds = %0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp eq i64 %24, 8
  %26 = zext i1 %25 to i32
  %27 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds [1 x i32], [1 x i32]* %2, i64 0, i64 0
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %32 = call i32* @SysAllocString(i8* %31)
  store i32* %32, i32** %5, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = icmp ne i32* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds [1 x i32], [1 x i32]* %2, i64 0, i64 0
  %39 = load i32*, i32** %5, align 8
  %40 = call i64 @SafeArrayPutElement(%struct.TYPE_9__* %37, i32* %38, i32* %39)
  store i64 %40, i64* %4, align 8
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* @S_OK, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %4, align 8
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %45)
  store i32* null, i32** %6, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = getelementptr inbounds [1 x i32], [1 x i32]* %2, i64 0, i64 0
  %49 = call i64 @SafeArrayGetElement(%struct.TYPE_9__* %47, i32* %48, i32** %6)
  store i64 %49, i64* %4, align 8
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @S_OK, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i64, i64* %4, align 8
  %55 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i64 %54)
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* @S_OK, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %20
  %60 = load i32*, i32** %5, align 8
  %61 = call i64 @SysStringLen(i32* %60)
  %62 = load i32*, i32** %6, align 8
  %63 = call i64 @SysStringLen(i32* %62)
  %64 = icmp eq i64 %61, %63
  %65 = zext i1 %64 to i32
  %66 = load i32*, i32** %6, align 8
  %67 = call i64 @SysStringLen(i32* %66)
  %68 = load i32*, i32** %5, align 8
  %69 = call i64 @SysStringLen(i32* %68)
  %70 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %67, i64 %69)
  br label %71

71:                                               ; preds = %59, %20
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %73 = call i64 @SafeArrayDestroy(%struct.TYPE_9__* %72)
  store i64 %73, i64* %4, align 8
  %74 = load i64, i64* %4, align 8
  %75 = load i64, i64* @S_OK, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i64, i64* %4, align 8
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i64 %78)
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @SysFreeString(i32* %80)
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @SysFreeString(i32* %82)
  br label %84

84:                                               ; preds = %71, %19
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_9__* @SafeArrayCreate(i32, i32, %struct.TYPE_8__*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32* @SysAllocString(i8*) #2

declare dso_local i64 @SafeArrayPutElement(%struct.TYPE_9__*, i32*, i32*) #2

declare dso_local i64 @SafeArrayGetElement(%struct.TYPE_9__*, i32*, i32**) #2

declare dso_local i64 @SysStringLen(i32*) #2

declare dso_local i64 @SafeArrayDestroy(%struct.TYPE_9__*) #2

declare dso_local i32 @SysFreeString(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
