; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_lsa.c_test_LsaLookupPrivilegeName.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_lsa.c_test_LsaLookupPrivilegeName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i8* }

@POLICY_LOOKUP_NAMES = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Failed to open policy, %#x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Unexpected status %#x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Unexpected name pointer.\0A\00", align 1
@SE_CREATE_TOKEN_PRIVILEGE = common dso_local global i8* null, align 8
@STATUS_NO_SUCH_PRIVILEGE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"got %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_LsaLookupPrivilegeName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_LsaLookupPrivilegeName() #0 {
  %1 = alloca %struct.TYPE_7__, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = call i32 @memset(%struct.TYPE_7__* %1, i32 0, i32 4)
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  store i32 4, i32* %7, align 4
  %8 = load i32, i32* @POLICY_LOOKUP_NAMES, align 4
  %9 = call i64 @LsaOpenPolicy(i32* null, %struct.TYPE_7__* %1, i32 %8, i32* %3)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @STATUS_SUCCESS, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i64, i64* %4, align 8
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %14)
  store i8* inttoptr (i64 3735928559 to i8*), i8** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @LsaLookupPrivilegeName(i32 %16, %struct.TYPE_6__* null, i8** %2)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @STATUS_SUCCESS, align 8
  %20 = icmp ne i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %4, align 8
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  %24 = load i8*, i8** %2, align 8
  %25 = icmp eq i8* %24, inttoptr (i64 3735928559 to i8*)
  %26 = zext i1 %25 to i32
  %27 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i8* inttoptr (i64 3735928559 to i8*), i8** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load i8*, i8** @SE_CREATE_TOKEN_PRIVILEGE, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  store i8* %29, i8** %30, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i64 @LsaLookupPrivilegeName(i32 %31, %struct.TYPE_6__* %5, i8** %2)
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @STATUS_NO_SUCH_PRIVILEGE, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %4, align 8
  %38 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = load i8*, i8** %2, align 8
  %40 = icmp eq i8* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load i8*, i8** @SE_CREATE_TOKEN_PRIVILEGE, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  store i8* %44, i8** %45, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i64 @LsaLookupPrivilegeName(i32 %46, %struct.TYPE_6__* %5, i8** %2)
  store i64 %47, i64* %4, align 8
  %48 = load i64, i64* %4, align 8
  %49 = icmp eq i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = load i64, i64* %4, align 8
  %52 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i64 %51)
  %53 = load i8*, i8** %2, align 8
  %54 = call i32 @LsaFreeMemory(i8* %53)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @LsaOpenPolicy(i32*, %struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @LsaLookupPrivilegeName(i32, %struct.TYPE_6__*, i8**) #1

declare dso_local i32 @LsaFreeMemory(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
