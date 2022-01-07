; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_sip.c_test_AddRemoveProvider.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_sip.c_test_AddRemoveProvider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_9__* }

@__const.test_AddRemoveProvider.actionid = private unnamed_addr constant %struct.TYPE_9__ { i32 14593470, i32 61406, i32 44478, %struct.TYPE_7__ { i32 239, i32 222, i32 173, i32 190, i32 239, i32 222, i32 173, i32 190 } }, align 4
@test_AddRemoveProvider.dummydll = internal global [13 x i8] c"deadbeef.dll\00", align 1
@test_AddRemoveProvider.dummyfunction = internal global [14 x i8] c"dummyfunction\00", align 1
@.str = private unnamed_addr constant [42 x i8] c"Expected CryptSIPRemoveProvider to fail.\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Expected ERROR_INVALID_PARAMETER, got %d.\0A\00", align 1
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"Need admin rights\0A\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"Expected ERROR_FILE_NOT_FOUND, got %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"CryptSIPAddProvider should have succeeded, last error %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"CryptSIPRemoveProvider should have succeeded, last error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_AddRemoveProvider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_AddRemoveProvider() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_8__, align 8
  %3 = alloca %struct.TYPE_9__, align 4
  %4 = bitcast %struct.TYPE_9__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_9__* @__const.test_AddRemoveProvider.actionid to i8*), i64 44, i1 false)
  %5 = call i32 @SetLastError(i32 -559038737)
  %6 = call i32 @CryptSIPRemoveProvider(%struct.TYPE_9__* null)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %12 = call i64 (...) @GetLastError()
  %13 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 (...) @GetLastError()
  %17 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %16)
  %18 = call i32 @SetLastError(i32 -559038737)
  %19 = call i32 @CryptSIPRemoveProvider(%struct.TYPE_9__* %3)
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %0
  %23 = call i64 (...) @GetLastError()
  %24 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 @skip(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %39

28:                                               ; preds = %22, %0
  %29 = load i32, i32* %1, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  %32 = call i64 (...) @GetLastError()
  %33 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 (...) @GetLastError()
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64 %36)
  br label %38

38:                                               ; preds = %31, %28
  br label %39

39:                                               ; preds = %38, %26
  %40 = call i32 @memset(%struct.TYPE_8__* %2, i32 0, i32 88)
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  store i32 88, i32* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 10
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_AddRemoveProvider.dummydll, i64 0, i64 0), i8** %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 2
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_AddRemoveProvider.dummyfunction, i64 0, i64 0), i8** %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 3
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_AddRemoveProvider.dummyfunction, i64 0, i64 0), i8** %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 4
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_AddRemoveProvider.dummyfunction, i64 0, i64 0), i8** %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 5
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_AddRemoveProvider.dummyfunction, i64 0, i64 0), i8** %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 6
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_AddRemoveProvider.dummyfunction, i64 0, i64 0), i8** %48, align 8
  %49 = call i32 @SetLastError(i32 -559038737)
  %50 = call i32 @CryptSIPAddProvider(%struct.TYPE_8__* %2)
  store i32 %50, i32* %1, align 4
  %51 = load i32, i32* %1, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %39
  %54 = call i64 (...) @GetLastError()
  %55 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = call i32 @skip(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %97

59:                                               ; preds = %53, %39
  %60 = load i32, i32* %1, align 4
  %61 = call i64 (...) @GetLastError()
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i64 %61)
  %63 = call i32 @SetLastError(i32 -559038737)
  %64 = call i32 @CryptSIPRemoveProvider(%struct.TYPE_9__* %3)
  store i32 %64, i32* %1, align 4
  %65 = load i32, i32* %1, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %59
  %68 = call i64 (...) @GetLastError()
  %69 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i64 (...) @GetLastError()
  %73 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64 %72)
  br label %74

74:                                               ; preds = %67, %59
  %75 = call i32 @memset(%struct.TYPE_8__* %2, i32 0, i32 88)
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  store i32 88, i32* %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 10
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_AddRemoveProvider.dummydll, i64 0, i64 0), i8** %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 2
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_AddRemoveProvider.dummyfunction, i64 0, i64 0), i8** %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 3
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_AddRemoveProvider.dummyfunction, i64 0, i64 0), i8** %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 4
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_AddRemoveProvider.dummyfunction, i64 0, i64 0), i8** %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 5
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_AddRemoveProvider.dummyfunction, i64 0, i64 0), i8** %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 6
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_AddRemoveProvider.dummyfunction, i64 0, i64 0), i8** %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 7
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_AddRemoveProvider.dummyfunction, i64 0, i64 0), i8** %84, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_AddRemoveProvider.dummyfunction, i64 0, i64 0), i8** %85, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 9
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_AddRemoveProvider.dummyfunction, i64 0, i64 0), i8** %86, align 8
  %87 = call i32 @SetLastError(i32 -559038737)
  %88 = call i32 @CryptSIPAddProvider(%struct.TYPE_8__* %2)
  store i32 %88, i32* %1, align 4
  %89 = load i32, i32* %1, align 4
  %90 = call i64 (...) @GetLastError()
  %91 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i64 %90)
  %92 = call i32 @SetLastError(i32 -559038737)
  %93 = call i32 @CryptSIPRemoveProvider(%struct.TYPE_9__* %3)
  store i32 %93, i32* %1, align 4
  %94 = load i32, i32* %1, align 4
  %95 = call i64 (...) @GetLastError()
  %96 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i64 %95)
  br label %97

97:                                               ; preds = %74, %57
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @CryptSIPRemoveProvider(%struct.TYPE_9__*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #2

declare dso_local i32 @CryptSIPAddProvider(%struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
