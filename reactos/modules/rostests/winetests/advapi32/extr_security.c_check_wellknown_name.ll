; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_security.c_check_wellknown_name.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_security.c_check_wellknown_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SECURITY_NT_AUTHORITY = common dso_local global i32 0, align 4
@SECURITY_MAX_SID_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c" %s Should have failed to lookup account name\0A\00", align 1
@SECURITY_NT_NON_UNIQUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"SID %i is not available on the system\0A\00", align 1
@ERROR_NONE_MAPPED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [74 x i8] c"CreateWellKnownSid() succeeded but the account '%s' is not present (W2K)\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to lookup account name %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"sid_size was zero\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"%s Sid %s fails to match well known sid %s!\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Expected %s , got %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Expected %s, got %s\0A\00", align 1
@SidTypeWellKnownGroup = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [26 x i8] c"Expected Use (5), got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @check_wellknown_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_wellknown_name(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %22 = load i32, i32* @SECURITY_NT_AUTHORITY, align 4
  store i32 %22, i32* %21, align 4
  store i8* null, i8** %6, align 8
  %23 = load i32, i32* @SECURITY_MAX_SID_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %7, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %8, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @LookupAccountNameA(i32* null, i8* %27, i8* null, i64* %10, i8* null, i64* %11, i8** %12)
  store i32 %28, i32* %19, align 4
  %29 = load i32, i32* %19, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = call i32 (...) @GetProcessHeap()
  %36 = load i64, i64* %10, align 8
  %37 = call i8* @HeapAlloc(i32 %35, i32 0, i64 %36)
  store i8* %37, i8** %18, align 8
  %38 = call i32 (...) @GetProcessHeap()
  %39 = load i64, i64* %11, align 8
  %40 = call i8* @HeapAlloc(i32 %38, i32 0, i64 %39)
  store i8* %40, i8** %13, align 8
  %41 = load i8*, i8** %3, align 8
  %42 = load i8*, i8** %18, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = call i32 @LookupAccountNameA(i32* null, i8* %41, i8* %42, i64* %10, i8* %43, i64* %11, i8** %12)
  store i32 %44, i32* %19, align 4
  %45 = load i8*, i8** %4, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %2
  %48 = load i32, i32* %19, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %52)
  br label %116

54:                                               ; preds = %2
  %55 = load i32, i32* @SECURITY_NT_NON_UNIQUE, align 4
  %56 = call i32 @AllocateAndInitializeSid(%struct.TYPE_3__* %5, i32 6, i32 %55, i32 12, i32 23, i32 34, i32 45, i32 56, i32 0, i32 0, i8** %6)
  store i64 %24, i64* %9, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @pCreateWellKnownSid(i8* %57, i8* %58, i8* %26, i64* %9)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %54
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 @win_skip(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %62)
  br label %116

64:                                               ; preds = %54
  %65 = call i32 @get_sid_info(i8* %26, i8** %17, i8** %16)
  store i32 %65, i32* %20, align 4
  %66 = load i32, i32* %20, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %64
  %69 = call i64 (...) @GetLastError()
  %70 = load i64, i64* @ERROR_NONE_MAPPED, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i8*, i8** %3, align 8
  %74 = call i32 @win_skip(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i8* %73)
  br label %116

75:                                               ; preds = %68, %64
  %76 = load i8*, i8** %18, align 8
  %77 = call i32 @get_sid_info(i8* %76, i8** %14, i8** %15)
  %78 = load i32, i32* %19, align 4
  %79 = load i8*, i8** %3, align 8
  %80 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %79)
  %81 = load i64, i64* %10, align 8
  %82 = icmp ne i64 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %85 = load i8*, i8** %18, align 8
  %86 = call i32 @EqualSid(i8* %85, i8* %26)
  %87 = load i8*, i8** %3, align 8
  %88 = load i8*, i8** %18, align 8
  %89 = call i32 @debugstr_sid(i8* %88)
  %90 = call i32 @debugstr_sid(i8* %26)
  %91 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i8* %87, i32 %89, i32 %90)
  %92 = load i8*, i8** %14, align 8
  %93 = load i8*, i8** %17, align 8
  %94 = call i32 @lstrcmpA(i8* %92, i8* %93)
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = load i8*, i8** %14, align 8
  %99 = load i8*, i8** %17, align 8
  %100 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %98, i8* %99)
  %101 = load i8*, i8** %13, align 8
  %102 = load i8*, i8** %16, align 8
  %103 = call i32 @lstrcmpA(i8* %101, i8* %102)
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = load i8*, i8** %16, align 8
  %108 = load i8*, i8** %13, align 8
  %109 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %107, i8* %108)
  %110 = load i8*, i8** %12, align 8
  %111 = load i8*, i8** @SidTypeWellKnownGroup, align 8
  %112 = icmp eq i8* %110, %111
  %113 = zext i1 %112 to i32
  %114 = load i8*, i8** %12, align 8
  %115 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* %114)
  br label %116

116:                                              ; preds = %75, %72, %61, %47
  %117 = load i8*, i8** %6, align 8
  %118 = call i32 @FreeSid(i8* %117)
  %119 = call i32 (...) @GetProcessHeap()
  %120 = load i8*, i8** %18, align 8
  %121 = call i32 @HeapFree(i32 %119, i32 0, i8* %120)
  %122 = call i32 (...) @GetProcessHeap()
  %123 = load i8*, i8** %13, align 8
  %124 = call i32 @HeapFree(i32 %122, i32 0, i8* %123)
  %125 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %125)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LookupAccountNameA(i32*, i8*, i8*, i64*, i8*, i64*, i8**) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i8* @HeapAlloc(i32, i32, i64) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @AllocateAndInitializeSid(%struct.TYPE_3__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**) #2

declare dso_local i32 @pCreateWellKnownSid(i8*, i8*, i8*, i64*) #2

declare dso_local i32 @win_skip(i8*, i8*) #2

declare dso_local i32 @get_sid_info(i8*, i8**, i8**) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @EqualSid(i8*, i8*) #2

declare dso_local i32 @debugstr_sid(i8*) #2

declare dso_local i32 @lstrcmpA(i8*, i8*) #2

declare dso_local i32 @FreeSid(i8*) #2

declare dso_local i32 @HeapFree(i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
