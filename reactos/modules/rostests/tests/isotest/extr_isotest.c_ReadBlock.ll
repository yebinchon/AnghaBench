; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/isotest/extr_isotest.c_ReadBlock.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/isotest/extr_isotest.c_ReadBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@EVENT_ALL_ACCESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"NtCreateEvent() failed\0A\00", align 1
@STATUS_PENDING = common dso_local global i64 0, align 8
@STATUS_END_OF_FILE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"ReadBlock() failed (Status: %lx)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ReadBlock(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_3__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = call i32 @InitializeObjectAttributes(i32* %13, i32* null, i32 0, i32* null, i32* null)
  %17 = load i32, i32* @EVENT_ALL_ACCESS, align 4
  %18 = load i32, i32* @TRUE, align 4
  %19 = load i32, i32* @FALSE, align 4
  %20 = call i64 @NtCreateEvent(i32* %15, i32 %17, i32* %13, i32 %18, i32 %19)
  store i64 %20, i64* %14, align 8
  %21 = load i64, i64* %14, align 8
  %22 = call i32 @NT_SUCCESS(i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %5
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %6, align 4
  br label %70

27:                                               ; preds = %5
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i64 @NtReadFile(i32 %28, i32 %29, i32* null, i32* null, %struct.TYPE_3__* %12, i32 %30, i32 %31, i32 %32, i32* null)
  store i64 %33, i64* %14, align 8
  %34 = load i64, i64* %14, align 8
  %35 = load i64, i64* @STATUS_PENDING, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %27
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @FALSE, align 4
  %40 = call i32 @NtWaitForSingleObject(i32 %38, i32 %39, i32* null)
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %14, align 8
  br label %43

43:                                               ; preds = %37, %27
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @NtClose(i32 %44)
  %46 = load i64, i64* %14, align 8
  %47 = load i64, i64* @STATUS_PENDING, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load i32*, i32** %11, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32*, i32** %11, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %49, %43
  %57 = load i64, i64* %14, align 8
  %58 = call i32 @NT_SUCCESS(i64 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* %14, align 8
  %62 = load i64, i64* @STATUS_END_OF_FILE, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i64, i64* %14, align 8
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %65)
  %67 = load i32, i32* @FALSE, align 4
  store i32 %67, i32* %6, align 4
  br label %70

68:                                               ; preds = %60, %56
  %69 = load i32, i32* @TRUE, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %68, %64, %24
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i64 @NtCreateEvent(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @NtReadFile(i32, i32, i32*, i32*, %struct.TYPE_3__*, i32, i32, i32, i32*) #1

declare dso_local i32 @NtWaitForSingleObject(i32, i32, i32*) #1

declare dso_local i32 @NtClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
