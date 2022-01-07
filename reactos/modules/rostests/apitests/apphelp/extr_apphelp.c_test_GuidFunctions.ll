; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/apphelp/extr_apphelp.c_test_GuidFunctions.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/apphelp/extr_apphelp.c_test_GuidFunctions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GUID_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"expected GUID_NULL to be recognized as NULL GUID\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"expected NULL to be recognized as NULL GUID\0A\00", align 1
@test_UserAssist = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"expected a set GUID not to be recognized as NULL GUID\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Expected SdbGetStandardDatabaseGUID to fail\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Expected guid not to be changed\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Expected SdbGetStandardDatabaseGUID to succeed\0A\00", align 1
@GUID_DATABASE_MSI = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [51 x i8] c"Expected guid to equal GUID_DATABASE_MSI, was: %s\0A\00", align 1
@GUID_DATABASE_SHIM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [52 x i8] c"Expected guid to equal GUID_DATABASE_SHIM, was: %s\0A\00", align 1
@GUID_DATABASE_DRIVERS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [55 x i8] c"Expected guid to equal GUID_DATABASE_DRIVERS, was: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GuidFunctions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GuidFunctions() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 @pSdbIsNullGUID(i32* @GUID_NULL)
  %3 = call i32 (i64, i8*, ...) @ok(i64 %2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %4 = call i64 @pSdbIsNullGUID(i32* null)
  %5 = call i32 (i64, i8*, ...) @ok(i64 %4, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i64 @pSdbIsNullGUID(i32* @test_UserAssist)
  %7 = icmp eq i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = sext i32 %8 to i64
  %10 = call i32 (i64, i8*, ...) @ok(i64 %9, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %11 = call i32 @memset(i32* %1, i32 0, i32 4)
  %12 = call i32 @pSdbGetStandardDatabaseGUID(i32 0, i32* %1)
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = sext i32 %14 to i64
  %16 = call i32 (i64, i8*, ...) @ok(i64 %15, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %17 = call i32 @IsEqualGUID(i32* @GUID_NULL, i32* %1)
  %18 = sext i32 %17 to i64
  %19 = call i32 (i64, i8*, ...) @ok(i64 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %20 = call i32 @pSdbGetStandardDatabaseGUID(i32 -2147352576, i32* null)
  %21 = sext i32 %20 to i64
  %22 = call i32 (i64, i8*, ...) @ok(i64 %21, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %23 = call i32 @memset(i32* %1, i32 0, i32 4)
  %24 = call i32 @pSdbGetStandardDatabaseGUID(i32 -2147352576, i32* %1)
  %25 = sext i32 %24 to i64
  %26 = call i32 (i64, i8*, ...) @ok(i64 %25, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %27 = call i32 @IsEqualGUID(i32* @GUID_DATABASE_MSI, i32* %1)
  %28 = sext i32 %27 to i64
  %29 = call i32 @wine_dbgstr_guid(i32* %1)
  %30 = call i32 (i64, i8*, ...) @ok(i64 %28, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %29)
  %31 = call i32 @memset(i32* %1, i32 0, i32 4)
  %32 = call i32 @pSdbGetStandardDatabaseGUID(i32 -2147287040, i32* %1)
  %33 = sext i32 %32 to i64
  %34 = call i32 (i64, i8*, ...) @ok(i64 %33, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %35 = call i32 @IsEqualGUID(i32* @GUID_DATABASE_SHIM, i32* %1)
  %36 = sext i32 %35 to i64
  %37 = call i32 @wine_dbgstr_guid(i32* %1)
  %38 = call i32 (i64, i8*, ...) @ok(i64 %36, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i32 %37)
  %39 = call i32 @memset(i32* %1, i32 0, i32 4)
  %40 = call i32 @pSdbGetStandardDatabaseGUID(i32 -2147221504, i32* %1)
  %41 = sext i32 %40 to i64
  %42 = call i32 (i64, i8*, ...) @ok(i64 %41, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %43 = call i32 @IsEqualGUID(i32* @GUID_DATABASE_DRIVERS, i32* %1)
  %44 = sext i32 %43 to i64
  %45 = call i32 @wine_dbgstr_guid(i32* %1)
  %46 = call i32 (i64, i8*, ...) @ok(i64 %44, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0), i32 %45)
  ret void
}

declare dso_local i32 @ok(i64, i8*, ...) #1

declare dso_local i64 @pSdbIsNullGUID(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @pSdbGetStandardDatabaseGUID(i32, i32*) #1

declare dso_local i32 @IsEqualGUID(i32*, i32*) #1

declare dso_local i32 @wine_dbgstr_guid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
