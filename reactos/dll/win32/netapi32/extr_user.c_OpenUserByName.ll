; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_user.c_OpenUserByName.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_user.c_OpenUserByName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NERR_Success = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"SamLookupNamesInDomain failed (Status %08lx)\0A\00", align 1
@SidTypeUser = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Object is not a user!\0A\00", align 1
@NERR_GroupNotFound = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"SamOpenUser failed (Status %08lx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @OpenUserByName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenUserByName(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64* null, i64** %10, align 8
  store i64* null, i64** %11, align 8
  %14 = load i32, i32* @NERR_Success, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @SamLookupNamesInDomain(i32 %16, i32 1, i32 %17, i64** %10, i64** %11)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = call i32 @NT_SUCCESS(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* %13, align 4
  %24 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %13, align 4
  %26 = call i32 @NetpNtStatusToApiStatus(i32 %25)
  store i32 %26, i32* %5, align 4
  br label %67

27:                                               ; preds = %4
  %28 = load i64*, i64** %11, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SidTypeUser, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @NERR_GroupNotFound, align 4
  store i32 %35, i32* %12, align 4
  br label %53

36:                                               ; preds = %27
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i64*, i64** %10, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @SamOpenUser(i32 %37, i32 %38, i64 %41, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @NT_SUCCESS(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %36
  %48 = load i32, i32* %13, align 4
  %49 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @NetpNtStatusToApiStatus(i32 %50)
  store i32 %51, i32* %12, align 4
  br label %53

52:                                               ; preds = %36
  br label %53

53:                                               ; preds = %52, %47, %33
  %54 = load i64*, i64** %10, align 8
  %55 = icmp ne i64* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i64*, i64** %10, align 8
  %58 = call i32 @SamFreeMemory(i64* %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i64*, i64** %11, align 8
  %61 = icmp ne i64* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i64*, i64** %11, align 8
  %64 = call i32 @SamFreeMemory(i64* %63)
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %65, %22
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @SamLookupNamesInDomain(i32, i32, i32, i64**, i64**) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @NetpNtStatusToApiStatus(i32) #1

declare dso_local i32 @SamOpenUser(i32, i32, i64, i32) #1

declare dso_local i32 @SamFreeMemory(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
