; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_security.c_test_CheckTokenMembership.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_security.c_test_CheckTokenMembership.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@TOKEN_DUPLICATE = common dso_local global i32 0, align 4
@TOKEN_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"OpenProcessToken failed with error %d\0A\00", align 1
@SecurityImpersonation = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"DuplicateToken failed with error %d\0A\00", align 1
@TokenGroups = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"GetTokenInformation(TokenGroups) %s with error %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"succeeded\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"GetTokenInformation(TokenGroups) failed with error %d\0A\00", align 1
@SE_GROUP_ENABLED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"user not a member of any group\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"CheckTokenMembership failed with error %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"CheckTokenMembership should have detected sid as member\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@ERROR_NO_IMPERSONATION_TOKEN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [58 x i8] c"CheckTokenMembership with process token %s with error %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"CheckTokenMembership should have cleared is_member\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CheckTokenMembership to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CheckTokenMembership() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = call i32 (...) @GetCurrentProcess()
  %9 = load i32, i32* @TOKEN_DUPLICATE, align 4
  %10 = load i32, i32* @TOKEN_QUERY, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @OpenProcessToken(i32 %8, i32 %11, i32** %3)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 (...) @GetLastError()
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @SecurityImpersonation, align 4
  %18 = call i32 @DuplicateToken(i32* %16, i32 %17, i32** %4)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 (...) @GetLastError()
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @TokenGroups, align 4
  %24 = call i32 @GetTokenInformation(i32* %22, i32 %23, %struct.TYPE_7__* null, i64 0, i64* %2)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %0
  %28 = call i32 (...) @GetLastError()
  %29 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %30 = icmp eq i32 %28, %29
  br label %31

31:                                               ; preds = %27, %0
  %32 = phi i1 [ false, %0 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %38 = call i32 (...) @GetLastError()
  %39 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* %37, i32 %38)
  %40 = call i32 (...) @GetProcessHeap()
  %41 = load i64, i64* %2, align 8
  %42 = call %struct.TYPE_7__* @HeapAlloc(i32 %40, i32 0, i64 %41)
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %1, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* @TokenGroups, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %46 = load i64, i64* %2, align 8
  %47 = call i32 @GetTokenInformation(i32* %43, i32 %44, %struct.TYPE_7__* %45, i64 %46, i64* %2)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 (...) @GetLastError()
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i32 %49)
  store i64 0, i64* %7, align 8
  br label %51

51:                                               ; preds = %70, %31
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %52, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %51
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SE_GROUP_ENABLED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  br label %73

69:                                               ; preds = %57
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %7, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %7, align 8
  br label %51

73:                                               ; preds = %68, %51
  %74 = load i64, i64* %7, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %74, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = call i32 (...) @GetProcessHeap()
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %82 = call i32 @HeapFree(i32 %80, i32 0, %struct.TYPE_7__* %81)
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @CloseHandle(i32* %83)
  %85 = call i32 @skip(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %154

86:                                               ; preds = %73
  %87 = load i32, i32* @FALSE, align 4
  store i32 %87, i32* %5, align 4
  %88 = load i32*, i32** %4, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load i64, i64* %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @pCheckTokenMembership(i32* %88, i32 %95, i32* %5)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 (...) @GetLastError()
  %99 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %5, align 4
  %101 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0))
  %102 = load i32, i32* @FALSE, align 4
  store i32 %102, i32* %5, align 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = load i64, i64* %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @pCheckTokenMembership(i32* null, i32 %109, i32* %5)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = call i32 (...) @GetLastError()
  %113 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %5, align 4
  %115 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0))
  %116 = load i32, i32* @TRUE, align 4
  store i32 %116, i32* %5, align 4
  %117 = call i32 @SetLastError(i32 -559038737)
  %118 = load i32*, i32** %3, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = load i64, i64* %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @pCheckTokenMembership(i32* %118, i32 %125, i32* %5)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %86
  %130 = call i32 (...) @GetLastError()
  %131 = load i32, i32* @ERROR_NO_IMPERSONATION_TOKEN, align 4
  %132 = icmp eq i32 %130, %131
  br label %133

133:                                              ; preds = %129, %86
  %134 = phi i1 [ false, %86 ], [ %132, %129 ]
  %135 = zext i1 %134 to i32
  %136 = load i32, i32* %6, align 4
  %137 = icmp ne i32 %136, 0
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %140 = call i32 (...) @GetLastError()
  %141 = call i32 (i32, i8*, ...) @ok(i32 %135, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.9, i64 0, i64 0), i8* %139, i32 %140)
  %142 = load i32, i32* %5, align 4
  %143 = icmp ne i32 %142, 0
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0))
  %147 = call i32 (...) @GetProcessHeap()
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %149 = call i32 @HeapFree(i32 %147, i32 0, %struct.TYPE_7__* %148)
  %150 = load i32*, i32** %4, align 8
  %151 = call i32 @CloseHandle(i32* %150)
  %152 = load i32*, i32** %3, align 8
  %153 = call i32 @CloseHandle(i32* %152)
  br label %154

154:                                              ; preds = %133, %79
  ret void
}

declare dso_local i32 @OpenProcessToken(i32, i32, i32**) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @DuplicateToken(i32*, i32, i32**) #1

declare dso_local i32 @GetTokenInformation(i32*, i32, %struct.TYPE_7__*, i64, i64*) #1

declare dso_local %struct.TYPE_7__* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @CloseHandle(i32*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @pCheckTokenMembership(i32*, i32, i32*) #1

declare dso_local i32 @SetLastError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
