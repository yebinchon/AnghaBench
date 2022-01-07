; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_ordinal.c_test_IUnknown_GetClassID.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_ordinal.c_test_IUnknown_GetClassID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@CLSID_NULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"got wrong clsid %s\0A\00", align 1
@testpersist = common dso_local global i32 0, align 4
@testpersist2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_IUnknown_GetClassID to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_IUnknown_GetClassID() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @memset(i32* %1, i32 204, i32 4)
  %6 = call i32 @memset(i32* %3, i32 204, i32 4)
  %7 = call i32 @pIUnknown_GetClassID(i32* null, i32* %1)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @E_FAIL, align 4
  %10 = icmp eq i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = call i64 @IsEqualCLSID(i32* %1, i32* @CLSID_NULL)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %0
  %17 = call i64 @IsEqualCLSID(i32* %1, i32* %3)
  %18 = call i64 @broken(i64 %17)
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %16, %0
  %21 = phi i1 [ true, %0 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @wine_dbgstr_guid(i32* %1)
  %24 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = call i32 @memset(i32* %1, i32 204, i32 4)
  %26 = call i32 @memset(i32* %2, i32 171, i32 4)
  %27 = call i32 @pIUnknown_GetClassID(i32* @testpersist, i32* %1)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, -1879104990
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @ok(i32 %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = call i64 @IsEqualCLSID(i32* %1, i32* %2)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %20
  %36 = call i64 @IsEqualCLSID(i32* %1, i32* %3)
  %37 = call i64 @broken(i64 %36)
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %35, %20
  %40 = phi i1 [ true, %20 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @wine_dbgstr_guid(i32* %1)
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = call i32 @memset(i32* %1, i32 204, i32 4)
  %45 = call i32 @memset(i32* %2, i32 171, i32 4)
  %46 = call i32 @memset(i32* %3, i32 204, i32 4)
  %47 = call i32 @pIUnknown_GetClassID(i32* @testpersist2, i32* %1)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %48, -1879104990
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = call i64 @IsEqualCLSID(i32* %1, i32* %2)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %39
  %56 = call i64 @IsEqualCLSID(i32* %1, i32* %3)
  %57 = call i64 @broken(i64 %56)
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %55, %39
  %60 = phi i1 [ true, %39 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @wine_dbgstr_guid(i32* %1)
  %63 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @pIUnknown_GetClassID(i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i64 @IsEqualCLSID(i32*, i32*) #1

declare dso_local i64 @broken(i64) #1

declare dso_local i32 @wine_dbgstr_guid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
