; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_security.c_test_default_dacl_owner_sid.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_security.c_test_default_dacl_owner_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i8* }
%struct.TYPE_5__ = type { i32 }

@SECURITY_DESCRIPTOR_MIN_LENGTH = common dso_local global i64 0, align 8
@SECURITY_DESCRIPTOR_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"error %u\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"test_event\00", align 1
@OWNER_SECURITY_INFORMATION = common dso_local global i32 0, align 4
@DACL_SECURITY_INFORMATION = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"owner not set\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"owner defaulted\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"dacl not present\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"dacl not set\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"dacl defaulted\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"owner sid not found in dacl\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_default_dacl_owner_sid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_default_dacl_owner_sid() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = call i32 (...) @GetProcessHeap()
  %14 = load i64, i64* @SECURITY_DESCRIPTOR_MIN_LENGTH, align 8
  %15 = call i32* @HeapAlloc(i32 %13, i32 0, i64 %14)
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* @SECURITY_DESCRIPTOR_REVISION, align 4
  %18 = call i32 @InitializeSecurityDescriptor(i32* %16, i32 %17)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i64 (...) @GetLastError()
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 24, i32* %22, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i32* %23, i32** %24, align 8
  %25 = load i8*, i8** @FALSE, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  store i8* %25, i8** %26, align 8
  %27 = load i32, i32* @TRUE, align 4
  %28 = load i32, i32* @TRUE, align 4
  %29 = call i32* @CreateEventA(%struct.TYPE_4__* %9, i32 %27, i32 %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32* %29, i32** %1, align 8
  %30 = load i32*, i32** %1, align 8
  %31 = icmp ne i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i64 (...) @GetLastError()
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %33)
  store i64 0, i64* %6, align 8
  %35 = load i32*, i32** %1, align 8
  %36 = load i32, i32* @OWNER_SECURITY_INFORMATION, align 4
  %37 = load i32, i32* @DACL_SECURITY_INFORMATION, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @GetKernelObjectSecurity(i32* %35, i32 %38, i32* null, i64 0, i64* %6)
  store i32 %39, i32* %2, align 4
  %40 = load i32, i32* %2, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %0
  %43 = call i64 (...) @GetLastError()
  %44 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %45 = icmp eq i64 %43, %44
  br label %46

46:                                               ; preds = %42, %0
  %47 = phi i1 [ false, %0 ], [ %45, %42 ]
  %48 = zext i1 %47 to i32
  %49 = call i64 (...) @GetLastError()
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %49)
  %51 = call i32 (...) @GetProcessHeap()
  %52 = load i64, i64* %6, align 8
  %53 = call i32* @HeapAlloc(i32 %51, i32 0, i64 %52)
  store i32* %53, i32** %8, align 8
  %54 = load i32*, i32** %1, align 8
  %55 = load i32, i32* @OWNER_SECURITY_INFORMATION, align 4
  %56 = load i32, i32* @DACL_SECURITY_INFORMATION, align 4
  %57 = or i32 %55, %56
  %58 = load i32*, i32** %8, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @GetKernelObjectSecurity(i32* %54, i32 %57, i32* %58, i64 %59, i64* %6)
  store i32 %60, i32* %2, align 4
  %61 = load i32, i32* %2, align 4
  %62 = call i64 (...) @GetLastError()
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %62)
  store i8* inttoptr (i64 3735928559 to i8*), i8** %10, align 8
  %64 = load i32, i32* @TRUE, align 4
  store i32 %64, i32* %3, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @GetSecurityDescriptorOwner(i32* %65, i8** %10, i32* %3)
  store i32 %66, i32* %2, align 4
  %67 = load i32, i32* %2, align 4
  %68 = call i64 (...) @GetLastError()
  %69 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %68)
  %70 = load i8*, i8** %10, align 8
  %71 = icmp ne i8* %70, inttoptr (i64 3735928559 to i8*)
  %72 = zext i1 %71 to i32
  %73 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* %3, align 4
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i8* inttoptr (i64 3735928559 to i8*), i8** %11, align 8
  %79 = load i8*, i8** @FALSE, align 8
  %80 = ptrtoint i8* %79 to i32
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* @TRUE, align 4
  store i32 %81, i32* %3, align 4
  %82 = load i32*, i32** %8, align 8
  %83 = call i32 @GetSecurityDescriptorDacl(i32* %82, i32* %4, i8** %11, i32* %3)
  store i32 %83, i32* %2, align 4
  %84 = load i32, i32* %2, align 4
  %85 = call i64 (...) @GetLastError()
  %86 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %85)
  %87 = load i32, i32* %4, align 4
  %88 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %89 = load i8*, i8** %11, align 8
  %90 = icmp ne i8* %89, inttoptr (i64 3735928559 to i8*)
  %91 = zext i1 %90 to i32
  %92 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %93 = load i32, i32* %3, align 4
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  store i64 0, i64* %7, align 8
  %98 = load i8*, i8** @FALSE, align 8
  %99 = ptrtoint i8* %98 to i32
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %116, %46
  %101 = load i8*, i8** %11, align 8
  %102 = load i64, i64* %7, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %7, align 8
  %104 = trunc i64 %102 to i32
  %105 = bitcast %struct.TYPE_5__** %12 to i8**
  %106 = call i64 @pGetAce(i8* %101, i32 %104, i8** %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %100
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i8*, i8** %10, align 8
  %112 = call i64 @EqualSid(i32* %110, i8* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %108
  %115 = load i32, i32* @TRUE, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %114, %108
  br label %100

117:                                              ; preds = %100
  %118 = load i32, i32* %5, align 4
  %119 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %120 = call i32 (...) @GetProcessHeap()
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @HeapFree(i32 %120, i32 0, i32* %122)
  %124 = call i32 (...) @GetProcessHeap()
  %125 = load i32*, i32** %8, align 8
  %126 = call i32 @HeapFree(i32 %124, i32 0, i32* %125)
  %127 = load i32*, i32** %1, align 8
  %128 = call i32 @CloseHandle(i32* %127)
  ret void
}

declare dso_local i32* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @InitializeSecurityDescriptor(i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32* @CreateEventA(%struct.TYPE_4__*, i32, i32, i8*) #1

declare dso_local i32 @GetKernelObjectSecurity(i32*, i32, i32*, i64, i64*) #1

declare dso_local i32 @GetSecurityDescriptorOwner(i32*, i8**, i32*) #1

declare dso_local i32 @GetSecurityDescriptorDacl(i32*, i32*, i8**, i32*) #1

declare dso_local i64 @pGetAce(i8*, i32, i8**) #1

declare dso_local i64 @EqualSid(i32*, i8*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @CloseHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
