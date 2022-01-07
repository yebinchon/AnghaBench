; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/atl100/extr_atl.c_is_token_admin.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/atl100/extr_atl.c_is_token_admin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@SECURITY_NT_AUTHORITY = common dso_local global i32 0, align 4
@SECURITY_BUILTIN_DOMAIN_RID = common dso_local global i32 0, align 4
@DOMAIN_ALIAS_RID_ADMINS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TokenGroups = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @is_token_admin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_token_admin(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %10 = load i32, i32* @SECURITY_NT_AUTHORITY, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* @SECURITY_BUILTIN_DOMAIN_RID, align 4
  %12 = load i32, i32* @DOMAIN_ALIAS_RID_ADMINS, align 4
  %13 = call i32 @AllocateAndInitializeSid(%struct.TYPE_9__* %5, i32 2, i32 %11, i32 %12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32** %4)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %2, align 4
  br label %80

17:                                               ; preds = %1
  store i64 0, i64* %6, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @TokenGroups, align 4
  %20 = call i32 @GetTokenInformation(i32 %18, i32 %19, %struct.TYPE_10__* null, i64 0, i64* %6)
  %21 = call i32 (...) @GetProcessHeap()
  %22 = load i64, i64* %6, align 8
  %23 = call %struct.TYPE_10__* @HeapAlloc(i32 %21, i32 0, i64 %22)
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %7, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %25 = icmp eq %struct.TYPE_10__* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @FreeSid(i32* %27)
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %2, align 4
  br label %80

30:                                               ; preds = %17
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @TokenGroups, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @GetTokenInformation(i32 %31, i32 %32, %struct.TYPE_10__* %33, i64 %34, i64* %6)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %30
  %38 = call i32 (...) @GetProcessHeap()
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %40 = call i32 @HeapFree(i32 %38, i32 0, %struct.TYPE_10__* %39)
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @FreeSid(i32* %41)
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %2, align 4
  br label %80

44:                                               ; preds = %30
  store i64 0, i64* %8, align 8
  br label %45

45:                                               ; preds = %70, %44
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %46, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %45
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = call i64 @EqualSid(i32 %58, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %51
  %63 = call i32 (...) @GetProcessHeap()
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %65 = call i32 @HeapFree(i32 %63, i32 0, %struct.TYPE_10__* %64)
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @FreeSid(i32* %66)
  %68 = load i32, i32* @TRUE, align 4
  store i32 %68, i32* %2, align 4
  br label %80

69:                                               ; preds = %51
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %8, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %8, align 8
  br label %45

73:                                               ; preds = %45
  %74 = call i32 (...) @GetProcessHeap()
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %76 = call i32 @HeapFree(i32 %74, i32 0, %struct.TYPE_10__* %75)
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @FreeSid(i32* %77)
  %79 = load i32, i32* @FALSE, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %73, %62, %37, %26, %15
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @AllocateAndInitializeSid(%struct.TYPE_9__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32**) #1

declare dso_local i32 @GetTokenInformation(i32, i32, %struct.TYPE_10__*, i64, i64*) #1

declare dso_local %struct.TYPE_10__* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @FreeSid(i32*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i64 @EqualSid(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
