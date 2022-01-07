; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/tokentest/extr_tokentest.c_DisplayDacl.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/tokentest/extr_tokentest.c_DisplayDacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"\0ANo Default Dacl.\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"\0ADacl:\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"RtlGetAce(): status = 0x%08x\0A\00", align 1
@ACCESS_ALLOWED_ACE_TYPE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i32] [i32 97, i32 108, i32 108, i32 111, i32 119, i32 0], align 4
@ACCESS_DENIED_ACE_TYPE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i32] [i32 100, i32 101, i32 110, i32 121, i32 32, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"RtlConvertSidToUnicodeString(): status = 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"%d.) %S %wZ 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DisplayDacl(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %10 = icmp ne %struct.TYPE_12__* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %73

13:                                               ; preds = %1
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %15

15:                                               ; preds = %70, %13
  %16 = load i64, i64* %3, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %73

21:                                               ; preds = %15
  store i8* null, i8** %7, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @RtlGetAce(%struct.TYPE_12__* %22, i64 %23, %struct.TYPE_11__** %6)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @NT_SUCCESS(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  br label %73

31:                                               ; preds = %21
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i64 1
  %34 = ptrtoint %struct.TYPE_11__* %33 to i64
  store i64 %34, i64* %8, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ACCESS_ALLOWED_ACE_TYPE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i8* bitcast ([6 x i32]* @.str.3 to i8*), i8** %7, align 8
  br label %42

42:                                               ; preds = %41, %31
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ACCESS_DENIED_ACE_TYPE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i8* bitcast ([6 x i32]* @.str.4 to i8*), i8** %7, align 8
  br label %50

50:                                               ; preds = %49, %42
  %51 = load i64, i64* %8, align 8
  %52 = load i32, i32* @TRUE, align 4
  %53 = call i32 @RtlConvertSidToUnicodeString(%struct.TYPE_10__* %5, i64 %51, i32 %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @NT_SUCCESS(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* %4, align 4
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %58)
  br label %73

60:                                               ; preds = %50
  %61 = load i64, i64* %3, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i64 %61, i8* %62, %struct.TYPE_10__* %5, i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @LocalFree(i32 %68)
  br label %70

70:                                               ; preds = %60
  %71 = load i64, i64* %3, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %3, align 8
  br label %15

73:                                               ; preds = %11, %57, %28, %15
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @RtlGetAce(%struct.TYPE_12__*, i64, %struct.TYPE_11__**) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @RtlConvertSidToUnicodeString(%struct.TYPE_10__*, i64, i32) #1

declare dso_local i32 @LocalFree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
