; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/hivetest/extr_hivetest.c_test1.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/hivetest/extr_hivetest.c_test1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64* }

@.str = private unnamed_addr constant [27 x i32] [i32 92, i32 82, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 92, i32 77, i32 97, i32 99, i32 104, i32 105, i32 110, i32 101, i32 92, i32 83, i32 111, i32 102, i32 116, i32 119, i32 97, i32 114, i32 101, i32 0], align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"NtOpenKey \\Registry\\Machine\\Software : \00", align 1
@OBJ_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@MAXIMUM_ALLOWED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"\09\09\09\09Status =%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"NtQueryKey : \00", align 1
@KeyBasicInformation = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"\09\09\09\09\09Status =%x\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"\09Key Name = \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%C\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"NtEnumerateKey : \0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"\09SubKey Name = \00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"NtClose : \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test1() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [5 x %struct.TYPE_4__], align 16
  store i32* null, i32** %1, align 8
  %10 = call i32 @RTL_CONSTANT_STRING(i8* bitcast ([27 x i32]* @.str to i8*))
  store i32 %10, i32* %5, align 4
  %11 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %13 = call i32 @InitializeObjectAttributes(i32* %3, i32* %5, i32 %12, i32* null, i32* null)
  %14 = load i32, i32* @MAXIMUM_ALLOWED, align 4
  %15 = call i64 @NtOpenKey(i32** %2, i32 %14, i32* %3)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %16)
  %18 = load i64, i64* %4, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %100

20:                                               ; preds = %0
  %21 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* @KeyBasicInformation, align 4
  %24 = getelementptr inbounds [5 x %struct.TYPE_4__], [5 x %struct.TYPE_4__]* %9, i64 0, i64 0
  %25 = call i64 @NtQueryKey(i32* %22, i32 %23, %struct.TYPE_4__* %24, i32 80, i32* %7)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64 %26)
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @STATUS_SUCCESS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %20
  %32 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %49, %31
  %34 = load i32, i32* %8, align 4
  %35 = getelementptr inbounds [5 x %struct.TYPE_4__], [5 x %struct.TYPE_4__]* %9, i64 0, i64 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 16
  %38 = sdiv i32 %37, 2
  %39 = icmp slt i32 %34, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %33
  %41 = getelementptr inbounds [5 x %struct.TYPE_4__], [5 x %struct.TYPE_4__]* %9, i64 0, i64 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i64 %47)
  br label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %33

52:                                               ; preds = %33
  %53 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %20
  %55 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %93, %54
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* @STATUS_SUCCESS, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %94

60:                                               ; preds = %56
  %61 = load i32*, i32** %2, align 8
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* @KeyBasicInformation, align 4
  %65 = getelementptr inbounds [5 x %struct.TYPE_4__], [5 x %struct.TYPE_4__]* %9, i64 0, i64 0
  %66 = call i64 @NtEnumerateKey(i32* %61, i32 %62, i32 %64, %struct.TYPE_4__* %65, i32 80, i32* %7)
  store i64 %66, i64* %4, align 8
  %67 = load i64, i64* %4, align 8
  %68 = load i64, i64* @STATUS_SUCCESS, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %93

70:                                               ; preds = %60
  %71 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %88, %70
  %73 = load i32, i32* %8, align 4
  %74 = getelementptr inbounds [5 x %struct.TYPE_4__], [5 x %struct.TYPE_4__]* %9, i64 0, i64 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 16
  %77 = sdiv i32 %76, 2
  %78 = icmp slt i32 %73, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %72
  %80 = getelementptr inbounds [5 x %struct.TYPE_4__], [5 x %struct.TYPE_4__]* %9, i64 0, i64 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i64 %86)
  br label %88

88:                                               ; preds = %79
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %72

91:                                               ; preds = %72
  %92 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %60
  br label %56

94:                                               ; preds = %56
  %95 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %96 = load i32*, i32** %2, align 8
  %97 = call i64 @NtClose(i32* %96)
  store i64 %97, i64* %4, align 8
  %98 = load i64, i64* %4, align 8
  %99 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64 %98)
  br label %100

100:                                              ; preds = %94, %0
  %101 = load i32*, i32** %1, align 8
  %102 = call i64 @NtClose(i32* %101)
  ret void
}

declare dso_local i32 @RTL_CONSTANT_STRING(i8*) #1

declare dso_local i32 @dprintf(i8*, ...) #1

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i64 @NtOpenKey(i32**, i32, i32*) #1

declare dso_local i64 @NtQueryKey(i32*, i32, %struct.TYPE_4__*, i32, i32*) #1

declare dso_local i64 @NtEnumerateKey(i32*, i32, i32, %struct.TYPE_4__*, i32, i32*) #1

declare dso_local i64 @NtClose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
