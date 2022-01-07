; ModuleID = '/home/carl/AnghaBench/redis/src/extr_networking.c_addReplyLongLongWithPrefix.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_networking.c_addReplyLongLongWithPrefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32* }

@OBJ_SHARED_BULKHDR_LEN = common dso_local global i64 0, align 8
@shared = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addReplyLongLongWithPrefix(i32* %0, i64 %1, i8 signext %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca [128 x i8], align 16
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8 %2, i8* %6, align 1
  %9 = load i8, i8* %6, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 42
  br i1 %11, label %12, label %26

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @OBJ_SHARED_BULKHDR_LEN, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load i64, i64* %5, align 8
  %18 = icmp sge i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i32*, i32** %4, align 8
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @shared, i32 0, i32 1), align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @addReply(i32* %20, i32 %24)
  br label %65

26:                                               ; preds = %16, %12, %3
  %27 = load i8, i8* %6, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 36
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @OBJ_SHARED_BULKHDR_LEN, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load i64, i64* %5, align 8
  %36 = icmp sge i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i32*, i32** %4, align 8
  %39 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @shared, i32 0, i32 0), align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @addReply(i32* %38, i32 %42)
  br label %65

44:                                               ; preds = %34, %30, %26
  br label %45

45:                                               ; preds = %44
  %46 = load i8, i8* %6, align 1
  %47 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  store i8 %46, i8* %47, align 16
  %48 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @ll2string(i8* %49, i32 127, i64 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %54
  store i8 13, i8* %55, align 1
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 2
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %58
  store i8 10, i8* %59, align 1
  %60 = load i32*, i32** %4, align 8
  %61 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 3
  %64 = call i32 @addReplyProto(i32* %60, i8* %61, i32 %63)
  br label %65

65:                                               ; preds = %45, %37, %19
  ret void
}

declare dso_local i32 @addReply(i32*, i32) #1

declare dso_local i32 @ll2string(i8*, i32, i64) #1

declare dso_local i32 @addReplyProto(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
