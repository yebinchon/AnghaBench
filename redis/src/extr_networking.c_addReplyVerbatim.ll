; ModuleID = '/home/carl/AnghaBench/redis/src/extr_networking.c_addReplyVerbatim.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_networking.c_addReplyVerbatim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"=%zu\0D\0Axxx:\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addReplyVerbatim(%struct.TYPE_5__* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [32 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @addReplyBulkCBuffer(%struct.TYPE_5__* %18, i8* %19, i64 %20)
  br label %69

22:                                               ; preds = %4
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %24 = load i64, i64* %7, align 8
  %25 = add i64 %24, 4
  %26 = call i64 @snprintf(i8* %23, i32 32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %25)
  store i64 %26, i64* %10, align 8
  %27 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = getelementptr inbounds i8, i8* %29, i64 -4
  store i8* %30, i8** %11, align 8
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %53, %22
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %32, 3
  br i1 %33, label %34, label %56

34:                                               ; preds = %31
  %35 = load i8*, i8** %8, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i8*, i8** %11, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8 32, i8* %43, align 1
  br label %52

44:                                               ; preds = %34
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %8, align 8
  %47 = load i8, i8* %45, align 1
  %48 = load i8*, i8** %11, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8 %47, i8* %51, align 1
  br label %52

52:                                               ; preds = %44, %39
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %12, align 4
  br label %31

56:                                               ; preds = %31
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %59 = load i64, i64* %10, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @addReplyProto(%struct.TYPE_5__* %57, i8* %58, i32 %60)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i64, i64* %7, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 @addReplyProto(%struct.TYPE_5__* %62, i8* %63, i32 %65)
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = call i32 @addReplyProto(%struct.TYPE_5__* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  br label %69

69:                                               ; preds = %56, %17
  ret void
}

declare dso_local i32 @addReplyBulkCBuffer(%struct.TYPE_5__*, i8*, i64) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @addReplyProto(%struct.TYPE_5__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
