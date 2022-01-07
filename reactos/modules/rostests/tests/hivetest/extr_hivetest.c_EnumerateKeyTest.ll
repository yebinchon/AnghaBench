; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/hivetest/extr_hivetest.c_EnumerateKeyTest.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/hivetest/extr_hivetest.c_EnumerateKeyTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@.str = private unnamed_addr constant [27 x i32] [i32 92, i32 82, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 92, i32 77, i32 97, i32 99, i32 104, i32 105, i32 110, i32 101, i32 92, i32 83, i32 111, i32 102, i32 116, i32 119, i32 97, i32 114, i32 101, i32 0], align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Enumerate key '\\Registry\\Machine\\Software':\0A\00", align 1
@OBJ_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"NtOpenKey:\0A\00", align 1
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"  Status = %lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"NtQueryKey:\0A\00", align 1
@KeyBasicInformation = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"\09Key Name = \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%C\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"NtEnumerateKey:\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"\09SubKey Name = \00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"NtClose:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EnumerateKeyTest() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [5 x %struct.TYPE_4__], align 16
  store i32* null, i32** %1, align 8
  %9 = call i32 @RTL_CONSTANT_STRING(i8* bitcast ([27 x i32]* @.str to i8*))
  store i32 %9, i32* %4, align 4
  %10 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %12 = call i32 @InitializeObjectAttributes(i32* %2, i32* %4, i32 %11, i32* null, i32* null)
  %13 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %14 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %15 = call i32 @NtOpenKey(i32** %1, i32 %14, i32* %2)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @NT_SUCCESS(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %0
  br label %103

22:                                               ; preds = %0
  %23 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %24 = load i32*, i32** %1, align 8
  %25 = load i32, i32* @KeyBasicInformation, align 4
  %26 = getelementptr inbounds [5 x %struct.TYPE_4__], [5 x %struct.TYPE_4__]* %8, i64 0, i64 0
  %27 = call i32 @NtQueryKey(i32* %24, i32 %25, %struct.TYPE_4__* %26, i32 80, i32* %6)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @NT_SUCCESS(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %22
  %34 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %51, %33
  %36 = load i32, i32* %7, align 4
  %37 = getelementptr inbounds [5 x %struct.TYPE_4__], [5 x %struct.TYPE_4__]* %8, i64 0, i64 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 16
  %40 = sdiv i32 %39, 2
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %35
  %43 = getelementptr inbounds [5 x %struct.TYPE_4__], [5 x %struct.TYPE_4__]* %8, i64 0, i64 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %35

54:                                               ; preds = %35
  %55 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %22
  %57 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %94, %56
  %59 = load i32, i32* %3, align 4
  %60 = call i64 @NT_SUCCESS(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %97

62:                                               ; preds = %58
  %63 = load i32*, i32** %1, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @KeyBasicInformation, align 4
  %66 = getelementptr inbounds [5 x %struct.TYPE_4__], [5 x %struct.TYPE_4__]* %8, i64 0, i64 0
  %67 = call i32 @NtEnumerateKey(i32* %63, i32 %64, i32 %65, %struct.TYPE_4__* %66, i32 80, i32* %6)
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %3, align 4
  %69 = call i64 @NT_SUCCESS(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %94

71:                                               ; preds = %62
  %72 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %89, %71
  %74 = load i32, i32* %7, align 4
  %75 = getelementptr inbounds [5 x %struct.TYPE_4__], [5 x %struct.TYPE_4__]* %8, i64 0, i64 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 16
  %78 = sdiv i32 %77, 2
  %79 = icmp slt i32 %74, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %73
  %81 = getelementptr inbounds [5 x %struct.TYPE_4__], [5 x %struct.TYPE_4__]* %8, i64 0, i64 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %80
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %73

92:                                               ; preds = %73
  %93 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %62
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %58

97:                                               ; preds = %58
  %98 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %99 = load i32*, i32** %1, align 8
  %100 = call i32 @NtClose(i32* %99)
  store i32 %100, i32* %3, align 4
  %101 = load i32, i32* %3, align 4
  %102 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %97, %21
  ret void
}

declare dso_local i32 @RTL_CONSTANT_STRING(i8*) #1

declare dso_local i32 @dprintf(i8*, ...) #1

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @NtOpenKey(i32**, i32, i32*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @NtQueryKey(i32*, i32, %struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @NtEnumerateKey(i32*, i32, i32, %struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @NtClose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
