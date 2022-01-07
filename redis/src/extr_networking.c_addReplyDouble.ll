; ModuleID = '/home/carl/AnghaBench/redis/src/extr_networking.c_addReplyDouble.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_networking.c_addReplyDouble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"-inf\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c",inf\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c",-inf\0D\0A\00", align 1
@MAX_LONG_DOUBLE_CHARS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%.17g\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"$%d\0D\0A%s\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c",%.17g\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addReplyDouble(%struct.TYPE_5__* %0, double %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca double, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store double %1, double* %4, align 8
  %10 = load double, double* %4, align 8
  %11 = call i64 @isinf(double %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = load double, double* %4, align 8
  %21 = fcmp ogt double %20, 0.000000e+00
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  %24 = call i32 @addReplyBulkCString(%struct.TYPE_5__* %19, i8* %23)
  br label %36

25:                                               ; preds = %13
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = load double, double* %4, align 8
  %28 = fcmp ogt double %27, 0.000000e+00
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %31 = load double, double* %4, align 8
  %32 = fcmp ogt double %31, 0.000000e+00
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 6, i32 7
  %35 = call i32 @addReplyProto(%struct.TYPE_5__* %26, i8* %30, i32 %34)
  br label %36

36:                                               ; preds = %25, %18
  br label %71

37:                                               ; preds = %2
  %38 = load i32, i32* @MAX_LONG_DOUBLE_CHARS, align 4
  %39 = add nsw i32 %38, 3
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %5, align 8
  %42 = alloca i8, i64 %40, align 16
  store i64 %40, i64* %6, align 8
  %43 = load i32, i32* @MAX_LONG_DOUBLE_CHARS, align 4
  %44 = add nsw i32 %43, 32
  %45 = zext i32 %44 to i64
  %46 = alloca i8, i64 %45, align 16
  store i64 %45, i64* %7, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %62

51:                                               ; preds = %37
  %52 = trunc i64 %40 to i32
  %53 = load double, double* %4, align 8
  %54 = call i32 (i8*, i32, i8*, double, ...) @snprintf(i8* %42, i32 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), double %53)
  store i32 %54, i32* %8, align 4
  %55 = trunc i64 %45 to i32
  %56 = load i32, i32* %8, align 4
  %57 = sitofp i32 %56 to double
  %58 = call i32 (i8*, i32, i8*, double, ...) @snprintf(i8* %46, i32 %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), double %57, i8* %42)
  store i32 %58, i32* %9, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @addReplyProto(%struct.TYPE_5__* %59, i8* %46, i32 %60)
  br label %69

62:                                               ; preds = %37
  %63 = trunc i64 %40 to i32
  %64 = load double, double* %4, align 8
  %65 = call i32 (i8*, i32, i8*, double, ...) @snprintf(i8* %42, i32 %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), double %64)
  store i32 %65, i32* %8, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @addReplyProto(%struct.TYPE_5__* %66, i8* %42, i32 %67)
  br label %69

69:                                               ; preds = %62, %51
  %70 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %70)
  br label %71

71:                                               ; preds = %69, %36
  ret void
}

declare dso_local i64 @isinf(double) #1

declare dso_local i32 @addReplyBulkCString(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @addReplyProto(%struct.TYPE_5__*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, double, ...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
