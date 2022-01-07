; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_compobj.c_test_IIDFromString.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_compobj.c_test_IIDFromString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@test_IIDFromString.cfW = internal constant [39 x i8] c"{00000001-0000-0000-c000-000000000046}\00", align 16
@test_IIDFromString.brokenW = internal constant [39 x i8] c"{00000001-0000-0000-g000-000000000046}\00", align 16
@test_IIDFromString.broken2W = internal constant [39 x i8] c"{00000001=0000-0000-g000-000000000046}\00", align 16
@test_IIDFromString.broken3W = internal constant [39 x i8] c"broken001=0000-0000-g000-000000000046}\00", align 16
@wszCLSID_StdFont = common dso_local global i8* null, align 8
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@CLSID_StdFont = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"got iid %s\0A\00", align 1
@CLSID_NULL = common dso_local global i32 0, align 4
@IID_IClassFactory = common dso_local global i32 0, align 4
@cf_brokenW = common dso_local global i8* null, align 8
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"Got %08x\0A\00", align 1
@CO_E_IIDSTRING = common dso_local global i32 0, align 4
@wszNonExistent = common dso_local global i8* null, align 8
@stdfont = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_IIDFromString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_IIDFromString() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__, align 4
  %3 = load i8*, i8** @wszCLSID_StdFont, align 8
  %4 = call i32 @IIDFromString(i8* %3, %struct.TYPE_6__* %2)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @S_OK, align 4
  %7 = icmp eq i32 %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = call i32 @IsEqualIID(%struct.TYPE_6__* %2, i32* @CLSID_StdFont)
  %12 = call i32 @wine_dbgstr_guid(%struct.TYPE_6__* %2)
  %13 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = call i32 @memset(%struct.TYPE_6__* %2, i32 171, i32 4)
  %15 = call i32 @IIDFromString(i8* null, %struct.TYPE_6__* %2)
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @S_OK, align 4
  %18 = icmp eq i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = call i32 @IsEqualIID(%struct.TYPE_6__* %2, i32* @CLSID_NULL)
  %23 = call i32 @wine_dbgstr_guid(%struct.TYPE_6__* %2)
  %24 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = call i32 @IIDFromString(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @test_IIDFromString.cfW, i64 0, i64 0), %struct.TYPE_6__* %2)
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* @S_OK, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = call i32 @IsEqualIID(%struct.TYPE_6__* %2, i32* @IID_IClassFactory)
  %33 = call i32 @wine_dbgstr_guid(%struct.TYPE_6__* %2)
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = call i32 @memset(%struct.TYPE_6__* %2, i32 171, i32 4)
  %36 = load i8*, i8** @cf_brokenW, align 8
  %37 = call i32 @IIDFromString(i8* %36, %struct.TYPE_6__* %2)
  store i32 %37, i32* %1, align 4
  %38 = load i32, i32* %1, align 4
  %39 = load i32, i32* @E_INVALIDARG, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %1, align 4
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, -1414812757
  %47 = zext i1 %46 to i32
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = call i32 @memset(%struct.TYPE_6__* %2, i32 171, i32 4)
  %52 = call i32 @IIDFromString(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @test_IIDFromString.brokenW, i64 0, i64 0), %struct.TYPE_6__* %2)
  store i32 %52, i32* %1, align 4
  %53 = load i32, i32* %1, align 4
  %54 = load i32, i32* @CO_E_IIDSTRING, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %1, align 4
  %58 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 1
  %62 = zext i1 %61 to i32
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ok(i32 %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = call i32 @memset(%struct.TYPE_6__* %2, i32 171, i32 4)
  %67 = call i32 @IIDFromString(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @test_IIDFromString.broken2W, i64 0, i64 0), %struct.TYPE_6__* %2)
  store i32 %67, i32* %1, align 4
  %68 = load i32, i32* %1, align 4
  %69 = load i32, i32* @CO_E_IIDSTRING, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %1, align 4
  %73 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 1
  %77 = zext i1 %76 to i32
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ok(i32 %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = call i32 @memset(%struct.TYPE_6__* %2, i32 171, i32 4)
  %82 = call i32 @IIDFromString(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @test_IIDFromString.broken3W, i64 0, i64 0), %struct.TYPE_6__* %2)
  store i32 %82, i32* %1, align 4
  %83 = load i32, i32* %1, align 4
  %84 = load i32, i32* @CO_E_IIDSTRING, align 4
  %85 = icmp eq i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = load i32, i32* %1, align 4
  %88 = call i32 @ok(i32 %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, -1414812757
  %92 = zext i1 %91 to i32
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ok(i32 %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = call i32 @memset(%struct.TYPE_6__* %2, i32 171, i32 4)
  %97 = load i8*, i8** @wszNonExistent, align 8
  %98 = call i32 @IIDFromString(i8* %97, %struct.TYPE_6__* %2)
  store i32 %98, i32* %1, align 4
  %99 = load i32, i32* %1, align 4
  %100 = load i32, i32* @E_INVALIDARG, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %1, align 4
  %104 = call i32 @ok(i32 %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %103)
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, -1414812757
  %108 = zext i1 %107 to i32
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ok(i32 %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  %112 = call i32 @memset(%struct.TYPE_6__* %2, i32 171, i32 4)
  %113 = load i8*, i8** @stdfont, align 8
  %114 = call i32 @IIDFromString(i8* %113, %struct.TYPE_6__* %2)
  store i32 %114, i32* %1, align 4
  %115 = load i32, i32* %1, align 4
  %116 = load i32, i32* @E_INVALIDARG, align 4
  %117 = icmp eq i32 %115, %116
  %118 = zext i1 %117 to i32
  %119 = load i32, i32* %1, align 4
  %120 = call i32 @ok(i32 %118, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %119)
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, -1414812757
  %124 = zext i1 %123 to i32
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @ok(i32 %124, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %126)
  ret void
}

declare dso_local i32 @IIDFromString(i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @IsEqualIID(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @wine_dbgstr_guid(%struct.TYPE_6__*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
