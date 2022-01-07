; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_cred.c_test_CredReadDomainCredentialsA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_cred.c_test_CredReadDomainCredentialsA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32*, i32*, i32*, i32, i32, i32*, i32*, i32*, i32*, i32* }

@__const.test_CredReadDomainCredentialsA.target_name = private unnamed_addr constant [15 x i8] c"no_such_target\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [90 x i8] c"CredReadDomainCredentialsA should have failed with ERROR_INVALID_PARAMETER instead of %d\0A\00", align 1
@ERROR_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [82 x i8] c"CredReadDomainCredentialsA should have failed with ERROR_NOT_FOUND instead of %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"CredReadDomainCredentialsA must not return any result\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"CredReadDomainCredentialsA should have failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"Expected ERROR_NOT_FOUND or ERROR_INVALID_PARAMETER instead of %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CredReadDomainCredentialsA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CredReadDomainCredentialsA() #0 {
  %1 = alloca i64, align 8
  %2 = alloca [15 x i8], align 1
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = bitcast [15 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([15 x i8], [15 x i8]* @__const.test_CredReadDomainCredentialsA.target_name, i32 0, i32 0), i64 15, i1 false)
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %8 = getelementptr inbounds [15 x i8], [15 x i8]* %2, i64 0, i64 0
  store i8* %8, i8** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i8* null, i8** %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %11 = getelementptr inbounds [15 x i8], [15 x i8]* %2, i64 0, i64 0
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %10, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  store i32* null, i32** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 4
  store i32* null, i32** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 5
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 6
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 7
  store i32* null, i32** %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 8
  store i32* null, i32** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 9
  store i32* null, i32** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 10
  store i32* null, i32** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 11
  store i32* null, i32** %21, align 8
  %22 = call i32 @SetLastError(i32 -559038737)
  %23 = call i64 @pCredReadDomainCredentialsA(%struct.TYPE_3__* null, i32 0, i32* %4, i32** %5)
  store i64 %23, i64* %1, align 8
  %24 = load i64, i64* %1, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %0
  %27 = call i64 (...) @GetLastError()
  %28 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %26, %0
  %31 = phi i1 [ false, %0 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i64 (...) @GetLastError()
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = call i32 @SetLastError(i32 -559038737)
  store i32* inttoptr (i64 74565 to i32*), i32** %5, align 8
  store i32 2, i32* %4, align 4
  %36 = call i64 @pCredReadDomainCredentialsA(%struct.TYPE_3__* %3, i32 0, i32* %4, i32** %5)
  store i64 %36, i64* %1, align 8
  %37 = load i64, i64* %1, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %30
  %40 = call i64 (...) @GetLastError()
  %41 = load i64, i64* @ERROR_NOT_FOUND, align 8
  %42 = icmp eq i64 %40, %41
  br label %43

43:                                               ; preds = %39, %30
  %44 = phi i1 [ false, %30 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32
  %46 = call i64 (...) @GetLastError()
  %47 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32*, i32** %5, align 8
  %52 = icmp eq i32* %51, null
  br label %53

53:                                               ; preds = %50, %43
  %54 = phi i1 [ false, %43 ], [ %52, %50 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  store i32* null, i32** %57, align 8
  %58 = call i32 @SetLastError(i32 -559038737)
  %59 = call i64 @pCredReadDomainCredentialsA(%struct.TYPE_3__* %3, i32 0, i32* %4, i32** %5)
  store i64 %59, i64* %1, align 8
  %60 = load i64, i64* %1, align 8
  %61 = icmp ne i64 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %65 = call i64 (...) @GetLastError()
  %66 = load i64, i64* @ERROR_NOT_FOUND, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %53
  %69 = call i64 (...) @GetLastError()
  %70 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %71 = icmp eq i64 %69, %70
  br label %72

72:                                               ; preds = %68, %53
  %73 = phi i1 [ true, %53 ], [ %71, %68 ]
  %74 = zext i1 %73 to i32
  %75 = call i64 (...) @GetLastError()
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i64 %75)
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  store i32* null, i32** %77, align 8
  %78 = call i32 @SetLastError(i32 -559038737)
  %79 = call i64 @pCredReadDomainCredentialsA(%struct.TYPE_3__* %3, i32 0, i32* %4, i32** %5)
  store i64 %79, i64* %1, align 8
  %80 = load i64, i64* %1, align 8
  %81 = icmp ne i64 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %85 = call i64 (...) @GetLastError()
  %86 = load i64, i64* @ERROR_NOT_FOUND, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %72
  %89 = call i64 (...) @GetLastError()
  %90 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %91 = icmp eq i64 %89, %90
  br label %92

92:                                               ; preds = %88, %72
  %93 = phi i1 [ true, %72 ], [ %91, %88 ]
  %94 = zext i1 %93 to i32
  %95 = call i64 (...) @GetLastError()
  %96 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i64 %95)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i64 @pCredReadDomainCredentialsA(%struct.TYPE_3__*, i32, i32*, i32**) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @GetLastError(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
