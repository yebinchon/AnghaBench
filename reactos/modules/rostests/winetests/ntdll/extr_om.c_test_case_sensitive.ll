; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_om.c_test_case_sensitive.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_om.c_test_case_sensitive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@test_case_sensitive.buffer1 = internal constant [23 x i8] c"\\BaseNamedObjects\\test\00", align 16
@test_case_sensitive.buffer2 = internal constant [23 x i8] c"\\BaseNamedObjects\\Test\00", align 16
@test_case_sensitive.buffer3 = internal constant [23 x i8] c"\\BaseNamedObjects\\TEst\00", align 16
@test_case_sensitive.buffer4 = internal constant [23 x i8] c"\\BASENamedObjects\\test\00", align 16
@GENERIC_ALL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Failed to create Mutant(%08x)\0A\00", align 1
@STATUS_OBJECT_NAME_COLLISION = common dso_local global i64 0, align 8
@STATUS_OBJECT_TYPE_MISMATCH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [110 x i8] c"NtCreateEvent should have failed with STATUS_OBJECT_NAME_COLLISION or STATUS_OBJECT_TYPE_MISMATCH got (%08x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to create Event(%08x)\0A\00", align 1
@OBJ_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [76 x i8] c"NtOpenMutant should have failed with STATUS_OBJECT_TYPE_MISMATCH got(%08x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [111 x i8] c"NtCreateMutant should have failed with STATUS_OBJECT_NAME_COLLISION or STATUS_OBJECT_TYPE_MISMATCH got (%08x)\0A\00", align 1
@.str.5 = private unnamed_addr constant [78 x i8] c"NtCreateEvent should have failed with STATUS_OBJECT_NAME_COLLISION got(%08x)\0A\00", align 1
@STATUS_OBJECT_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [79 x i8] c"NtCreateMutant should have failed with STATUS_OBJECT_PATH_NOT_FOUND got(%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_case_sensitive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_case_sensitive() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_6__, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @pRtlInitUnicodeString(i32* %3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @test_case_sensitive.buffer1, i64 0, i64 0))
  %8 = call i32 @InitializeObjectAttributes(%struct.TYPE_6__* %2, i32* %3, i32 0, i32 0, i32* null)
  %9 = load i32, i32* @GENERIC_ALL, align 4
  %10 = load i32, i32* @FALSE, align 4
  %11 = call i64 @pNtCreateMutant(i32* %5, i32 %9, %struct.TYPE_6__* %2, i32 %10)
  store i64 %11, i64* %1, align 8
  %12 = load i64, i64* %1, align 8
  %13 = load i64, i64* @STATUS_SUCCESS, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %1, align 8
  %17 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i32, i32* @GENERIC_ALL, align 4
  %19 = load i32, i32* @FALSE, align 4
  %20 = load i32, i32* @FALSE, align 4
  %21 = call i64 @pNtCreateEvent(i32* %4, i32 %18, %struct.TYPE_6__* %2, i32 %19, i32 %20)
  store i64 %21, i64* %1, align 8
  %22 = load i64, i64* %1, align 8
  %23 = load i64, i64* @STATUS_OBJECT_NAME_COLLISION, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %0
  %26 = load i64, i64* %1, align 8
  %27 = load i64, i64* @STATUS_OBJECT_TYPE_MISMATCH, align 8
  %28 = icmp eq i64 %26, %27
  br label %29

29:                                               ; preds = %25, %0
  %30 = phi i1 [ true, %0 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %1, align 8
  %33 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = call i32 @pRtlInitUnicodeString(i32* %3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @test_case_sensitive.buffer2, i64 0, i64 0))
  %35 = call i32 @InitializeObjectAttributes(%struct.TYPE_6__* %2, i32* %3, i32 0, i32 0, i32* null)
  %36 = load i32, i32* @GENERIC_ALL, align 4
  %37 = load i32, i32* @FALSE, align 4
  %38 = load i32, i32* @FALSE, align 4
  %39 = call i64 @pNtCreateEvent(i32* %4, i32 %36, %struct.TYPE_6__* %2, i32 %37, i32 %38)
  store i64 %39, i64* %1, align 8
  %40 = load i64, i64* %1, align 8
  %41 = load i64, i64* @STATUS_SUCCESS, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %1, align 8
  %45 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %44)
  %46 = call i32 @pRtlInitUnicodeString(i32* %3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @test_case_sensitive.buffer3, i64 0, i64 0))
  %47 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %48 = call i32 @InitializeObjectAttributes(%struct.TYPE_6__* %2, i32* %3, i32 %47, i32 0, i32* null)
  %49 = load i32, i32* @GENERIC_ALL, align 4
  %50 = call i64 @pNtOpenMutant(i32* %6, i32 %49, %struct.TYPE_6__* %2)
  store i64 %50, i64* %1, align 8
  %51 = load i64, i64* %1, align 8
  %52 = load i64, i64* @STATUS_OBJECT_TYPE_MISMATCH, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* %1, align 8
  %56 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), i64 %55)
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @pNtClose(i32 %57)
  %59 = call i32 @pRtlInitUnicodeString(i32* %3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @test_case_sensitive.buffer4, i64 0, i64 0))
  %60 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %61 = call i32 @InitializeObjectAttributes(%struct.TYPE_6__* %2, i32* %3, i32 %60, i32 0, i32* null)
  %62 = load i32, i32* @GENERIC_ALL, align 4
  %63 = load i32, i32* @FALSE, align 4
  %64 = call i64 @pNtCreateMutant(i32* %5, i32 %62, %struct.TYPE_6__* %2, i32 %63)
  store i64 %64, i64* %1, align 8
  %65 = load i64, i64* %1, align 8
  %66 = load i64, i64* @STATUS_OBJECT_NAME_COLLISION, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %29
  %69 = load i64, i64* %1, align 8
  %70 = load i64, i64* @STATUS_OBJECT_TYPE_MISMATCH, align 8
  %71 = icmp eq i64 %69, %70
  br label %72

72:                                               ; preds = %68, %29
  %73 = phi i1 [ true, %29 ], [ %71, %68 ]
  %74 = zext i1 %73 to i32
  %75 = load i64, i64* %1, align 8
  %76 = call i32 @ok(i32 %74, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.4, i64 0, i64 0), i64 %75)
  %77 = load i32, i32* @GENERIC_ALL, align 4
  %78 = load i32, i32* @FALSE, align 4
  %79 = load i32, i32* @FALSE, align 4
  %80 = call i64 @pNtCreateEvent(i32* %6, i32 %77, %struct.TYPE_6__* %2, i32 %78, i32 %79)
  store i64 %80, i64* %1, align 8
  %81 = load i64, i64* %1, align 8
  %82 = load i64, i64* @STATUS_OBJECT_NAME_COLLISION, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i64, i64* %1, align 8
  %86 = call i32 @ok(i32 %84, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.5, i64 0, i64 0), i64 %85)
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  store i64 0, i64* %87, align 8
  %88 = load i32, i32* @GENERIC_ALL, align 4
  %89 = load i32, i32* @FALSE, align 4
  %90 = call i64 @pNtCreateMutant(i32* %5, i32 %88, %struct.TYPE_6__* %2, i32 %89)
  store i64 %90, i64* %1, align 8
  %91 = load i64, i64* %1, align 8
  %92 = load i64, i64* @STATUS_OBJECT_PATH_NOT_FOUND, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i64, i64* %1, align 8
  %96 = call i32 @ok(i32 %94, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.6, i64 0, i64 0), i64 %95)
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @pNtClose(i32 %97)
  ret void
}

declare dso_local i32 @pRtlInitUnicodeString(i32*, i8*) #1

declare dso_local i32 @InitializeObjectAttributes(%struct.TYPE_6__*, i32*, i32, i32, i32*) #1

declare dso_local i64 @pNtCreateMutant(i32*, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @pNtCreateEvent(i32*, i32, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @pNtOpenMutant(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @pNtClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
