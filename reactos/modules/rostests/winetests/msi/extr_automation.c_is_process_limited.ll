; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_automation.c_is_process_limited.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_automation.c_is_process_limited.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SECURITY_NT_AUTHORITY = common dso_local global i32 0, align 4
@SECURITY_BUILTIN_DOMAIN_RID = common dso_local global i32 0, align 4
@DOMAIN_ALIAS_RID_ADMINS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Could not check if the current user is an administrator\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@TOKEN_QUERY = common dso_local global i32 0, align 4
@TokenElevationTypeDefault = common dso_local global i64 0, align 8
@TokenElevationType = common dso_local global i32 0, align 4
@TokenElevationTypeLimited = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @is_process_limited to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_process_limited() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %10 = load i32, i32* @SECURITY_NT_AUTHORITY, align 4
  store i32 %10, i32* %9, align 4
  store i32* null, i32** %3, align 8
  %11 = load i32, i32* @SECURITY_BUILTIN_DOMAIN_RID, align 4
  %12 = load i32, i32* @DOMAIN_ALIAS_RID_ADMINS, align 4
  %13 = call i32 @AllocateAndInitializeSid(%struct.TYPE_3__* %2, i32 2, i32 %11, i32 %12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32** %3)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %0
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @pCheckTokenMembership(i32* null, i32* %16, i32* %4)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15, %0
  %20 = call i32 @trace(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @FreeSid(i32* %21)
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %1, align 4
  br label %54

24:                                               ; preds = %15
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @FreeSid(i32* %25)
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @TRUE, align 4
  store i32 %30, i32* %1, align 4
  br label %54

31:                                               ; preds = %24
  %32 = call i32 (...) @GetCurrentProcess()
  %33 = load i32, i32* @TOKEN_QUERY, align 4
  %34 = call i64 @pOpenProcessToken(i32 %32, i32 %33, i32* %5)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %31
  %37 = load i64, i64* @TokenElevationTypeDefault, align 8
  store i64 %37, i64* %7, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @TokenElevationType, align 4
  %40 = call i32 @GetTokenInformation(i32 %38, i32 %39, i64* %7, i32 8, i32* %8)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @CloseHandle(i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @TokenElevationTypeLimited, align 8
  %48 = icmp eq i64 %46, %47
  br label %49

49:                                               ; preds = %45, %36
  %50 = phi i1 [ false, %36 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %1, align 4
  br label %54

52:                                               ; preds = %31
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %1, align 4
  br label %54

54:                                               ; preds = %52, %49, %29, %19
  %55 = load i32, i32* %1, align 4
  ret i32 %55
}

declare dso_local i32 @AllocateAndInitializeSid(%struct.TYPE_3__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32**) #1

declare dso_local i32 @pCheckTokenMembership(i32*, i32*, i32*) #1

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @FreeSid(i32*) #1

declare dso_local i64 @pOpenProcessToken(i32, i32, i32*) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i32 @GetTokenInformation(i32, i32, i64*, i32, i32*) #1

declare dso_local i32 @CloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
