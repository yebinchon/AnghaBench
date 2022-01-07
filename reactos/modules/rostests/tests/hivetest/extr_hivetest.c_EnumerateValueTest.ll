; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/hivetest/extr_hivetest.c_EnumerateValueTest.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/hivetest/extr_hivetest.c_EnumerateValueTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8**, i8*, i32 }

@.str = private unnamed_addr constant [35 x i32] [i32 92, i32 82, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 92, i32 77, i32 97, i32 99, i32 104, i32 105, i32 110, i32 101, i32 92, i32 83, i32 111, i32 102, i32 116, i32 119, i32 97, i32 114, i32 101, i32 92, i32 116, i32 101, i32 115, i32 116, i32 107, i32 101, i32 121, i32 0], align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Open key '\\Registry\\Machine\\Software\\testkey':\0A\00", align 1
@OBJ_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@MAXIMUM_ALLOWED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"  Status = %lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Enumerate values:\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i8* null, align 8
@KeyValueFullInformation = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"    Value:DO=%d, DL=%d, NL=%d, Name = \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%C\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c", Type = %d\0A\00", align 1
@REG_SZ = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [16 x i8] c"    Value = %S\0A\00", align 1
@REG_DWORD = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"    Value = %X\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"NtClose:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EnumerateValueTest() #0 {
  %1 = alloca [5 x %struct.TYPE_3__], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = call i32 @RTL_CONSTANT_STRING(i8* bitcast ([35 x i32]* @.str to i8*))
  store i32 %9, i32* %3, align 4
  store i32* null, i32** %7, align 8
  %10 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %12 = call i32 @InitializeObjectAttributes(i32* %2, i32* %3, i32 %11, i32* null, i32* null)
  %13 = load i32, i32* @MAXIMUM_ALLOWED, align 4
  %14 = call i8* @NtOpenKey(i32** %7, i32 %13, i32* %2)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %15)
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @NT_SUCCESS(i8* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %0
  br label %113

21:                                               ; preds = %0
  %22 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %106, %21
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** @STATUS_SUCCESS, align 8
  %26 = icmp eq i8* %24, %25
  br i1 %26, label %27, label %107

27:                                               ; preds = %23
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @KeyValueFullInformation, align 4
  %32 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %1, i64 0, i64 0
  %33 = call i8* @NtEnumerateValueKey(i32* %28, i32 %29, i32 %31, %struct.TYPE_3__* %32, i32 160, i32* %5)
  store i8* %33, i8** %8, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** @STATUS_SUCCESS, align 8
  %36 = icmp eq i8* %34, %35
  br i1 %36, label %37, label %106

37:                                               ; preds = %27
  %38 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %1, i64 0, i64 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 16
  %41 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %1, i64 0, i64 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %1, i64 0, i64 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %40, i32 %43, i32 %46)
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %64, %37
  %49 = load i32, i32* %6, align 4
  %50 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %1, i64 0, i64 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sdiv i32 %52, 2
  %54 = icmp slt i32 %49, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %48
  %56 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %1, i64 0, i64 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i8**, i8*** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %55
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %48

67:                                               ; preds = %48
  %68 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %1, i64 0, i64 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = load i8*, i8** %69, align 16
  %71 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %70)
  %72 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %1, i64 0, i64 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 3
  %74 = load i8*, i8** %73, align 16
  %75 = load i64, i64* @REG_SZ, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = icmp eq i8* %74, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %67
  %79 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %1, i64 0, i64 0
  %80 = bitcast %struct.TYPE_3__* %79 to i8*
  %81 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %1, i64 0, i64 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 16
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %80, i64 %84
  %86 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %85)
  br label %87

87:                                               ; preds = %78, %67
  %88 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %1, i64 0, i64 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 3
  %90 = load i8*, i8** %89, align 16
  %91 = load i64, i64* @REG_DWORD, align 8
  %92 = inttoptr i64 %91 to i8*
  %93 = icmp eq i8* %90, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %87
  %95 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %1, i64 0, i64 0
  %96 = bitcast %struct.TYPE_3__* %95 to i8*
  %97 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %1, i64 0, i64 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 16
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %96, i64 %100
  %102 = bitcast i8* %101 to i8**
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %103)
  br label %105

105:                                              ; preds = %94, %87
  br label %106

106:                                              ; preds = %105, %27
  br label %23

107:                                              ; preds = %23
  %108 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %109 = load i32*, i32** %7, align 8
  %110 = call i8* @NtClose(i32* %109)
  store i8* %110, i8** %8, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %111)
  br label %113

113:                                              ; preds = %107, %20
  ret void
}

declare dso_local i32 @RTL_CONSTANT_STRING(i8*) #1

declare dso_local i32 @dprintf(i8*, ...) #1

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i8* @NtOpenKey(i32**, i32, i32*) #1

declare dso_local i32 @NT_SUCCESS(i8*) #1

declare dso_local i8* @NtEnumerateValueKey(i32*, i32, i32, %struct.TYPE_3__*, i32, i32*) #1

declare dso_local i8* @NtClose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
