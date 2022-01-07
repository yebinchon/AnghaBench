; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_security.c_test_EqualSid.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_security.c_test_EqualSid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@SECURITY_WORLD_SID_AUTHORITY = common dso_local global i32 0, align 4
@SECURITY_NT_AUTHORITY = common dso_local global i32 0, align 4
@SECURITY_BUILTIN_DOMAIN_RID = common dso_local global i32 0, align 4
@DOMAIN_ALIAS_RID_ADMINS = common dso_local global i32 0, align 4
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"AllocateAndInitializeSid is not implemented\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"AllocateAndInitializeSid failed with error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"AllocateAndInitializeSid shouldn't have set last error to %d\0A\00", align 1
@SECURITY_WORLD_RID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"World and domain admins sids shouldn't have been equal\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [68 x i8] c"EqualSid should have set last error to ERROR_SUCCESS instead of %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"FreeSid should have returned NULL instead of %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"FreeSid shouldn't have set last error to %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Same sids should have been equal %s != %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"EqualSid with invalid sid should have returned FALSE\0A\00", align 1
@SID_REVISION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_EqualSid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_EqualSid() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__, align 4
  %5 = alloca %struct.TYPE_4__, align 4
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %7 = load i32, i32* @SECURITY_WORLD_SID_AUTHORITY, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %9 = load i32, i32* @SECURITY_NT_AUTHORITY, align 4
  store i32 %9, i32* %8, align 4
  %10 = call i32 @SetLastError(i32 -559038737)
  %11 = load i32, i32* @SECURITY_BUILTIN_DOMAIN_RID, align 4
  %12 = load i32, i32* @DOMAIN_ALIAS_RID_ADMINS, align 4
  %13 = call i32 @AllocateAndInitializeSid(%struct.TYPE_4__* %5, i32 2, i32 %11, i32 %12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32* %1)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %0
  %17 = call i32 (...) @GetLastError()
  %18 = load i32, i32* @ERROR_CALL_NOT_IMPLEMENTED, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 @win_skip(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %139

22:                                               ; preds = %16, %0
  %23 = load i32, i32* %3, align 4
  %24 = call i32 (...) @GetLastError()
  %25 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = call i32 (...) @GetLastError()
  %27 = icmp eq i32 %26, -559038737
  %28 = zext i1 %27 to i32
  %29 = call i32 (...) @GetLastError()
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @SECURITY_WORLD_RID, align 4
  %32 = call i32 @AllocateAndInitializeSid(%struct.TYPE_4__* %4, i32 1, i32 %31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32* %2)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 (...) @GetLastError()
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = call i32 @SetLastError(i32 -559038737)
  %37 = load i32, i32* %1, align 4
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @EqualSid(i32 %37, i32 %38)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %45 = call i32 (...) @GetLastError()
  %46 = load i32, i32* @ERROR_SUCCESS, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %22
  %49 = call i32 (...) @GetLastError()
  %50 = icmp eq i32 %49, -559038737
  %51 = zext i1 %50 to i32
  %52 = call i64 @broken(i32 %51)
  %53 = icmp ne i64 %52, 0
  br label %54

54:                                               ; preds = %48, %22
  %55 = phi i1 [ true, %22 ], [ %53, %48 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 (...) @GetLastError()
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i32 %57)
  %59 = call i32 @SetLastError(i32 -559038737)
  %60 = load i32, i32* %2, align 4
  %61 = call i32 @FreeSid(i32 %60)
  store i32 %61, i32* %2, align 4
  %62 = load i32, i32* %2, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = load i32, i32* %2, align 4
  %67 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %66)
  %68 = call i32 (...) @GetLastError()
  %69 = icmp eq i32 %68, -559038737
  %70 = zext i1 %69 to i32
  %71 = call i32 (...) @GetLastError()
  %72 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @SECURITY_BUILTIN_DOMAIN_RID, align 4
  %74 = load i32, i32* @DOMAIN_ALIAS_RID_ADMINS, align 4
  %75 = call i32 @AllocateAndInitializeSid(%struct.TYPE_4__* %5, i32 2, i32 %73, i32 %74, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32* %2)
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* %3, align 4
  %77 = call i32 (...) @GetLastError()
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = call i32 @SetLastError(i32 -559038737)
  %80 = load i32, i32* %1, align 4
  %81 = load i32, i32* %2, align 4
  %82 = call i32 @EqualSid(i32 %80, i32 %81)
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* %1, align 4
  %85 = call i32 @debugstr_sid(i32 %84)
  %86 = load i32, i32* %2, align 4
  %87 = call i32 @debugstr_sid(i32 %86)
  %88 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %85, i32 %87)
  %89 = call i32 (...) @GetLastError()
  %90 = load i32, i32* @ERROR_SUCCESS, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %98, label %92

92:                                               ; preds = %54
  %93 = call i32 (...) @GetLastError()
  %94 = icmp eq i32 %93, -559038737
  %95 = zext i1 %94 to i32
  %96 = call i64 @broken(i32 %95)
  %97 = icmp ne i64 %96, 0
  br label %98

98:                                               ; preds = %92, %54
  %99 = phi i1 [ true, %54 ], [ %97, %92 ]
  %100 = zext i1 %99 to i32
  %101 = call i32 (...) @GetLastError()
  %102 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %2, align 4
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to %struct.TYPE_5__*
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  store i32 2, i32* %106, align 4
  %107 = call i32 @SetLastError(i32 -559038737)
  %108 = load i32, i32* %1, align 4
  %109 = load i32, i32* %2, align 4
  %110 = call i32 @EqualSid(i32 %108, i32 %109)
  store i32 %110, i32* %3, align 4
  %111 = load i32, i32* %3, align 4
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0))
  %116 = call i32 (...) @GetLastError()
  %117 = load i32, i32* @ERROR_SUCCESS, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %125, label %119

119:                                              ; preds = %98
  %120 = call i32 (...) @GetLastError()
  %121 = icmp eq i32 %120, -559038737
  %122 = zext i1 %121 to i32
  %123 = call i64 @broken(i32 %122)
  %124 = icmp ne i64 %123, 0
  br label %125

125:                                              ; preds = %119, %98
  %126 = phi i1 [ true, %98 ], [ %124, %119 ]
  %127 = zext i1 %126 to i32
  %128 = call i32 (...) @GetLastError()
  %129 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* @SID_REVISION, align 4
  %131 = load i32, i32* %2, align 4
  %132 = sext i32 %131 to i64
  %133 = inttoptr i64 %132 to %struct.TYPE_5__*
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  store i32 %130, i32* %134, align 4
  %135 = load i32, i32* %1, align 4
  %136 = call i32 @FreeSid(i32 %135)
  %137 = load i32, i32* %2, align 4
  %138 = call i32 @FreeSid(i32 %137)
  br label %139

139:                                              ; preds = %125, %20
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @AllocateAndInitializeSid(%struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @EqualSid(i32, i32) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @FreeSid(i32) #1

declare dso_local i32 @debugstr_sid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
