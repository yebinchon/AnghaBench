; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_reg.c_test_long_value_name.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_reg.c_test_long_value_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i8* }

@winetestpath = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"NtOpenKey Failed: 0x%08x\0A\00", align 1
@STATUS_OBJECT_NAME_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [67 x i8] c"NtDeleteValueKey with nonexistent long value name returned 0x%08x\0A\00", align 1
@REG_DWORD = common dso_local global i32 0, align 4
@STATUS_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"NtSetValueKey with long value name returned 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"NtDeleteValueKey with long value name returned 0x%08x\0A\00", align 1
@KeyValueBasicInformation = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [66 x i8] c"NtQueryValueKey with nonexistent long value name returned 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_long_value_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_long_value_name() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca i32, align 4
  %7 = call i32 @InitializeObjectAttributes(i32* %4, i32* @winetestpath, i32 0, i32 0, i32 0)
  %8 = load i32, i32* @KEY_WRITE, align 4
  %9 = load i32, i32* @KEY_READ, align 4
  %10 = or i32 %8, %9
  %11 = call i64 @pNtOpenKey(i32* %1, i32 %10, i32* %4)
  store i64 %11, i64* %2, align 8
  %12 = load i64, i64* %2, align 8
  %13 = load i64, i64* @STATUS_SUCCESS, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %2, align 8
  %17 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i32 65532, i32* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = sub i64 %21, 4
  %23 = trunc i64 %22 to i32
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = call i32 (...) @GetProcessHeap()
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @HeapAlloc(i32 %25, i32 0, i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  store i8* %28, i8** %29, align 8
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %44, %0
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = udiv i64 %35, 4
  %37 = icmp ult i64 %32, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8 97, i8* %43, align 1
  br label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %30

47:                                               ; preds = %30
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8 0, i8* %52, align 1
  %53 = load i32, i32* %1, align 4
  %54 = call i64 @pNtDeleteValueKey(i32 %53, %struct.TYPE_6__* %5)
  store i64 %54, i64* %2, align 8
  %55 = load i64, i64* %2, align 8
  %56 = load i64, i64* @STATUS_OBJECT_NAME_NOT_FOUND, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i64, i64* %2, align 8
  %60 = call i32 @ok(i32 %58, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i64 %59)
  %61 = load i32, i32* %1, align 4
  %62 = load i32, i32* @REG_DWORD, align 4
  %63 = call i64 @pNtSetValueKey(i32 %61, %struct.TYPE_6__* %5, i32 0, i32 %62, i32* %6, i32 4)
  store i64 %63, i64* %2, align 8
  %64 = load i64, i64* %2, align 8
  %65 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %74, label %67

67:                                               ; preds = %47
  %68 = load i64, i64* %2, align 8
  %69 = load i64, i64* @STATUS_SUCCESS, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i64 @broken(i32 %71)
  %73 = icmp ne i64 %72, 0
  br label %74

74:                                               ; preds = %67, %47
  %75 = phi i1 [ true, %47 ], [ %73, %67 ]
  %76 = zext i1 %75 to i32
  %77 = load i64, i64* %2, align 8
  %78 = call i32 @ok(i32 %76, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i64 %77)
  %79 = load i64, i64* %2, align 8
  %80 = load i64, i64* @STATUS_SUCCESS, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i64, i64* @STATUS_SUCCESS, align 8
  br label %86

84:                                               ; preds = %74
  %85 = load i64, i64* @STATUS_OBJECT_NAME_NOT_FOUND, align 8
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i64 [ %83, %82 ], [ %85, %84 ]
  store i64 %87, i64* %3, align 8
  %88 = load i32, i32* %1, align 4
  %89 = call i64 @pNtDeleteValueKey(i32 %88, %struct.TYPE_6__* %5)
  store i64 %89, i64* %2, align 8
  %90 = load i64, i64* %2, align 8
  %91 = load i64, i64* %3, align 8
  %92 = icmp eq i64 %90, %91
  %93 = zext i1 %92 to i32
  %94 = load i64, i64* %2, align 8
  %95 = call i32 @ok(i32 %93, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i64 %94)
  %96 = load i32, i32* %1, align 4
  %97 = load i32, i32* @KeyValueBasicInformation, align 4
  %98 = call i64 @pNtQueryValueKey(i32 %96, %struct.TYPE_6__* %5, i32 %97, i32* null, i32 0, i32* %6)
  store i64 %98, i64* %2, align 8
  %99 = load i64, i64* %2, align 8
  %100 = load i64, i64* @STATUS_OBJECT_NAME_NOT_FOUND, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = load i64, i64* %2, align 8
  %104 = call i32 @ok(i32 %102, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i64 %103)
  %105 = call i32 @pRtlFreeUnicodeString(%struct.TYPE_6__* %5)
  %106 = load i32, i32* %1, align 4
  %107 = call i32 @pNtClose(i32 %106)
  ret void
}

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32, i32) #1

declare dso_local i64 @pNtOpenKey(i32*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @pNtDeleteValueKey(i32, %struct.TYPE_6__*) #1

declare dso_local i64 @pNtSetValueKey(i32, %struct.TYPE_6__*, i32, i32, i32*, i32) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @pNtQueryValueKey(i32, %struct.TYPE_6__*, i32, i32*, i32, i32*) #1

declare dso_local i32 @pRtlFreeUnicodeString(%struct.TYPE_6__*) #1

declare dso_local i32 @pNtClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
