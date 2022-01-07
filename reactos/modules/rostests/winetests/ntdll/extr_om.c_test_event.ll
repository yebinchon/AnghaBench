; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_om.c_test_event.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_om.c_test_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@test_event.eventName = internal constant [28 x i8] c"\\BaseNamedObjects\\testEvent\00", align 16
@GENERIC_ALL = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"NtCreateEvent failed %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"NtPulseEvent failed %08x\0A\00", align 1
@EventBasicInformation = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"NtQueryEvent failed %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"NtQueryEvent failed, expected 1 0, got %d %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"NtOpenEvent failed %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_event() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = call i32 @pRtlInitUnicodeString(i32* %4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @test_event.eventName, i64 0, i64 0))
  %8 = call i32 @InitializeObjectAttributes(i32* %5, i32* %4, i32 0, i32 0, i32* null)
  %9 = load i32, i32* @GENERIC_ALL, align 4
  %10 = call i32 @pNtCreateEvent(i32* %1, i32 %9, i32* %5, i32 1, i32 0)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @STATUS_SUCCESS, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %3, align 4
  %16 = call i32 (i32, i8*, i32, ...) @ok(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @pNtPulseEvent(i32 %17, i32* null)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @STATUS_SUCCESS, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %3, align 4
  %24 = call i32 (i32, i8*, i32, ...) @ok(i32 %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @EventBasicInformation, align 4
  %27 = call i32 @pNtQueryEvent(i32 %25, i32 %26, %struct.TYPE_3__* %6, i32 16, i32* null)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @STATUS_SUCCESS, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %3, align 4
  %33 = call i32 (i32, i8*, i32, ...) @ok(i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %41

37:                                               ; preds = %0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br label %41

41:                                               ; preds = %37, %0
  %42 = phi i1 [ false, %0 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i32, i8*, i32, ...) @ok(i32 %43, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %45, i64 %47)
  %49 = load i32, i32* @GENERIC_ALL, align 4
  %50 = call i32 @pNtOpenEvent(i32* %2, i32 %49, i32* %5)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @STATUS_SUCCESS, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* %3, align 4
  %56 = call i32 (i32, i8*, i32, ...) @ok(i32 %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %1, align 4
  %58 = call i32 @pNtClose(i32 %57)
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* @EventBasicInformation, align 4
  %61 = call i32 @pNtQueryEvent(i32 %59, i32 %60, %struct.TYPE_3__* %6, i32 16, i32* null)
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @STATUS_SUCCESS, align 4
  %64 = icmp eq i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i32, i32* %3, align 4
  %67 = call i32 (i32, i8*, i32, ...) @ok(i32 %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %75

71:                                               ; preds = %41
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br label %75

75:                                               ; preds = %71, %41
  %76 = phi i1 [ false, %41 ], [ %74, %71 ]
  %77 = zext i1 %76 to i32
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 (i32, i8*, i32, ...) @ok(i32 %77, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %79, i64 %81)
  %83 = load i32, i32* %2, align 4
  %84 = call i32 @pNtClose(i32 %83)
  ret void
}

declare dso_local i32 @pRtlInitUnicodeString(i32*, i8*) #1

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @pNtCreateEvent(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @pNtPulseEvent(i32, i32*) #1

declare dso_local i32 @pNtQueryEvent(i32, i32, %struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @pNtOpenEvent(i32*, i32, i32*) #1

declare dso_local i32 @pNtClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
