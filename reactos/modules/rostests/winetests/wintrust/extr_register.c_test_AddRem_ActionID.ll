; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wintrust/extr_register.c_test_AddRem_ActionID.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wintrust/extr_register.c_test_AddRem_ActionID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@test_AddRem_ActionID.DummyDllW = internal global [13 x i8] c"deadbeef.dll\00", align 1
@test_AddRem_ActionID.DummyFunctionW = internal global [14 x i8] c"dummyfunction\00", align 1
@__const.test_AddRem_ActionID.ActionID = private unnamed_addr constant %struct.TYPE_9__ { i32 -559038737, i32 57005, i32 48879, %struct.TYPE_8__ { i32 222, i32 173, i32 190, i32 239, i32 222, i32 173, i32 190, i32 239 } }, align 4
@.str = private unnamed_addr constant [39 x i8] c"Expected WintrustAddActionID to fail.\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [78 x i8] c"Expected ERROR_INVALID_PARAMETER(W2K3) or 0xdeadbeef(Win98/NT4/W2K), got %u.\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Expected WintrustAddActionID to succeed.\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Expected ERROR_INVALID_PARAMETER, got %u.\0A\00", align 1
@ERROR_ACCESS_DENIED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [66 x i8] c"Expected ERROR_INVALID_PARAMETER or ERROR_ACCESS_DENIED, got %u.\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"Expected 0xdeadbeef or ERROR_ACCESS_DENIED, got %u.\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"WintrustRemoveActionID failed : %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"Last error should not have been changed: %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"Expected WintrustRemoveActionID to succeed.\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Expected 0xdeadbeef, got %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_AddRem_ActionID to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_AddRem_ActionID() #0 {
  %1 = alloca %struct.TYPE_9__, align 4
  %2 = alloca %struct.TYPE_10__, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = bitcast %struct.TYPE_9__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_9__* @__const.test_AddRem_ActionID.ActionID to i8*), i64 44, i1 false)
  store i8* null, i8** %3, align 8
  store i8* inttoptr (i64 8 to i8*), i8** %4, align 8
  %7 = call i32 @SetLastError(i32 -559038737)
  %8 = call i32 @pWintrustAddActionID(%struct.TYPE_9__* null, i32 0, %struct.TYPE_10__* null)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 (...) @GetLastError()
  %15 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %0
  %18 = call i32 (...) @GetLastError()
  %19 = icmp eq i32 %18, -559038737
  br label %20

20:                                               ; preds = %17, %0
  %21 = phi i1 [ true, %0 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 (...) @GetLastError()
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = call i32 @SetLastError(i32 -559038737)
  %26 = call i32 @pWintrustAddActionID(%struct.TYPE_9__* %1, i32 0, %struct.TYPE_10__* null)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %32 = call i32 (...) @GetLastError()
  %33 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %20
  %36 = call i32 (...) @GetLastError()
  %37 = icmp eq i32 %36, -559038737
  br label %38

38:                                               ; preds = %35, %20
  %39 = phi i1 [ true, %20 ], [ %37, %35 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 (...) @GetLastError()
  %42 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = call i32 @SetLastError(i32 -559038737)
  %44 = call i32 @memset(%struct.TYPE_10__* %2, i32 0, i32 72)
  %45 = call i32 @pWintrustAddActionID(%struct.TYPE_9__* %1, i32 0, %struct.TYPE_10__* %2)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %51 = call i32 (...) @GetLastError()
  %52 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %57, label %54

54:                                               ; preds = %38
  %55 = call i32 (...) @GetLastError()
  %56 = icmp eq i32 %55, -559038737
  br label %57

57:                                               ; preds = %54, %38
  %58 = phi i1 [ true, %38 ], [ %56, %54 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 (...) @GetLastError()
  %61 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = call i32 @SetLastError(i32 -559038737)
  %63 = call i32 @memset(%struct.TYPE_10__* %2, i32 0, i32 72)
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  store i32 72, i32* %64, align 8
  %65 = call i32 @pWintrustAddActionID(%struct.TYPE_9__* %1, i32 0, %struct.TYPE_10__* %2)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %68 = call i32 (...) @GetLastError()
  %69 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 (...) @GetLastError()
  %73 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = call i32 @memset(%struct.TYPE_10__* %2, i32 0, i32 72)
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  store i32 72, i32* %75, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 8
  store i8* %76, i8** %77, align 8
  %78 = load i8*, i8** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 7
  store i8* %78, i8** %79, align 8
  %80 = load i8*, i8** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 6
  store i8* %80, i8** %81, align 8
  %82 = load i8*, i8** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 5
  store i8* %82, i8** %83, align 8
  %84 = load i8*, i8** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 4
  store i8* %84, i8** %85, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 3
  store i8* %86, i8** %87, align 8
  %88 = load i8*, i8** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 2
  store i8* %88, i8** %89, align 8
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  store i8* %90, i8** %91, align 8
  %92 = call i32 @SetLastError(i32 -559038737)
  %93 = call i32 @pWintrustAddActionID(%struct.TYPE_9__* %1, i32 0, %struct.TYPE_10__* %2)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %96 = call i32 (...) @GetLastError()
  %97 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %103, label %99

99:                                               ; preds = %57
  %100 = call i32 (...) @GetLastError()
  %101 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  %102 = icmp eq i32 %100, %101
  br label %103

103:                                              ; preds = %99, %57
  %104 = phi i1 [ true, %57 ], [ %102, %99 ]
  %105 = zext i1 %104 to i32
  %106 = call i32 (...) @GetLastError()
  %107 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  %108 = call i32 @memset(%struct.TYPE_10__* %2, i32 0, i32 72)
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  store i32 72, i32* %109, align 8
  %110 = load i8*, i8** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 8
  store i8* %110, i8** %111, align 8
  %112 = load i8*, i8** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 7
  store i8* %112, i8** %113, align 8
  %114 = load i8*, i8** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 6
  store i8* %114, i8** %115, align 8
  %116 = load i8*, i8** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 5
  store i8* %116, i8** %117, align 8
  %118 = load i8*, i8** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 4
  store i8* %118, i8** %119, align 8
  %120 = load i8*, i8** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 3
  store i8* %120, i8** %121, align 8
  %122 = load i8*, i8** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 2
  store i8* %122, i8** %123, align 8
  %124 = load i8*, i8** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  store i8* %124, i8** %125, align 8
  %126 = call i32 @SetLastError(i32 -559038737)
  %127 = call i32 @pWintrustAddActionID(%struct.TYPE_9__* %1, i32 0, %struct.TYPE_10__* %2)
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* %5, align 4
  %129 = call i32 (i32, i8*, ...) @ok(i32 %128, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %130 = call i32 (...) @GetLastError()
  %131 = icmp eq i32 %130, -559038737
  br i1 %131, label %136, label %132

132:                                              ; preds = %103
  %133 = call i32 (...) @GetLastError()
  %134 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  %135 = icmp eq i32 %133, %134
  br label %136

136:                                              ; preds = %132, %103
  %137 = phi i1 [ true, %103 ], [ %135, %132 ]
  %138 = zext i1 %137 to i32
  %139 = call i32 (...) @GetLastError()
  %140 = call i32 (i32, i8*, ...) @ok(i32 %138, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %139)
  %141 = call i32 @SetLastError(i32 -559038737)
  %142 = call i32 @pWintrustRemoveActionID(%struct.TYPE_9__* %1)
  store i32 %142, i32* %5, align 4
  %143 = load i32, i32* %5, align 4
  %144 = call i32 (...) @GetLastError()
  %145 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %144)
  %146 = call i32 (...) @GetLastError()
  %147 = icmp eq i32 %146, -559038737
  %148 = zext i1 %147 to i32
  %149 = call i32 (...) @GetLastError()
  %150 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %149)
  %151 = call i32 @SetLastError(i32 -559038737)
  %152 = call i32 @pWintrustRemoveActionID(%struct.TYPE_9__* null)
  store i32 %152, i32* %5, align 4
  %153 = load i32, i32* %5, align 4
  %154 = call i32 (i32, i8*, ...) @ok(i32 %153, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  %155 = call i32 (...) @GetLastError()
  %156 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %157 = icmp eq i32 %155, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 (...) @GetLastError()
  %160 = call i32 (i32, i8*, ...) @ok(i32 %158, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %159)
  %161 = call i32 @SetLastError(i32 -559038737)
  %162 = call i32 @pWintrustRemoveActionID(%struct.TYPE_9__* %1)
  store i32 %162, i32* %5, align 4
  %163 = load i32, i32* %5, align 4
  %164 = call i32 (i32, i8*, ...) @ok(i32 %163, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  %165 = call i32 (...) @GetLastError()
  %166 = icmp eq i32 %165, -559038737
  %167 = zext i1 %166 to i32
  %168 = call i32 (...) @GetLastError()
  %169 = call i32 (i32, i8*, ...) @ok(i32 %167, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %168)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @pWintrustAddActionID(%struct.TYPE_9__*, i32, %struct.TYPE_10__*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #2

declare dso_local i32 @pWintrustRemoveActionID(%struct.TYPE_9__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
