; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_database.c_LsapGetObjectAttribute.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_database.c_LsapGetObjectAttribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@OBJ_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@STATUS_BUFFER_OVERFLOW = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @LsapGetObjectAttribute(%struct.TYPE_3__* %0, i32 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @RtlInitUnicodeString(i32* %11, i32 %15)
  %17 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @InitializeObjectAttributes(i32* %10, i32* %11, i32 %17, i32 %20, i32* null)
  %22 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %23 = call i64 @NtOpenKey(i32* %12, i32 %22, i32* %10)
  store i64 %23, i64* %14, align 8
  %24 = load i64, i64* %14, align 8
  %25 = call i64 @NT_SUCCESS(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %4
  %28 = load i64, i64* %14, align 8
  store i64 %28, i64* %5, align 8
  br label %78

29:                                               ; preds = %4
  %30 = load i64*, i64** %9, align 8
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %13, align 8
  %32 = load i32, i32* %12, align 4
  %33 = call i64 @RtlpNtQueryValueKey(i32 %32, i32* null, i32* null, i64* %13, i32 0)
  store i64 %33, i64* %14, align 8
  %34 = load i64, i64* %14, align 8
  %35 = call i64 @NT_SUCCESS(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %29
  %38 = load i64, i64* %14, align 8
  %39 = load i64, i64* @STATUS_BUFFER_OVERFLOW, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %74

42:                                               ; preds = %37, %29
  %43 = load i32*, i32** %8, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load i64*, i64** %9, align 8
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45, %42
  %50 = load i64, i64* %13, align 8
  %51 = load i64*, i64** %9, align 8
  store i64 %50, i64* %51, align 8
  %52 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %52, i64* %14, align 8
  br label %74

53:                                               ; preds = %45
  %54 = load i64*, i64** %9, align 8
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %13, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i64, i64* %13, align 8
  %60 = load i64*, i64** %9, align 8
  store i64 %59, i64* %60, align 8
  %61 = load i64, i64* @STATUS_BUFFER_OVERFLOW, align 8
  store i64 %61, i64* %14, align 8
  br label %74

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %12, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = call i64 @RtlpNtQueryValueKey(i32 %64, i32* null, i32* %65, i64* %13, i32 0)
  store i64 %66, i64* %14, align 8
  %67 = load i64, i64* %14, align 8
  %68 = call i64 @NT_SUCCESS(i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i64, i64* %13, align 8
  %72 = load i64*, i64** %9, align 8
  store i64 %71, i64* %72, align 8
  br label %73

73:                                               ; preds = %70, %63
  br label %74

74:                                               ; preds = %73, %58, %49, %41
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @NtClose(i32 %75)
  %77 = load i64, i64* %14, align 8
  store i64 %77, i64* %5, align 8
  br label %78

78:                                               ; preds = %74, %27
  %79 = load i64, i64* %5, align 8
  ret i64 %79
}

declare dso_local i32 @RtlInitUnicodeString(i32*, i32) #1

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32, i32*) #1

declare dso_local i64 @NtOpenKey(i32*, i32, i32*) #1

declare dso_local i64 @NT_SUCCESS(i64) #1

declare dso_local i64 @RtlpNtQueryValueKey(i32, i32*, i32*, i64*, i32) #1

declare dso_local i32 @NtClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
