; ModuleID = '/home/carl/AnghaBench/redis/src/extr_bitops.c_getBitOffsetFromArgument.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_bitops.c_getBitOffsetFromArgument.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [45 x i8] c"bit offset is not an integer or out of range\00", align 1
@C_ERR = common dso_local global i32 0, align 4
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getBitOffsetFromArgument(i32* %0, %struct.TYPE_3__* %1, i64* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %14, align 8
  %20 = load i8*, i8** %14, align 8
  %21 = call i64 @sdslen(i8* %20)
  store i64 %21, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %22 = load i8*, i8** %14, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 35
  br i1 %26, label %27, label %34

27:                                               ; preds = %5
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* %11, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 1, i32* %16, align 4
  br label %34

34:                                               ; preds = %33, %30, %27, %5
  %35 = load i8*, i8** %14, align 8
  %36 = load i32, i32* %16, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i64, i64* %15, align 8
  %40 = load i32, i32* %16, align 4
  %41 = sext i32 %40 to i64
  %42 = sub i64 %39, %41
  %43 = call i64 @string2ll(i8* %38, i64 %42, i64* %12)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %34
  %46 = load i32*, i32** %7, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = call i32 @addReplyError(i32* %46, i8* %47)
  %49 = load i32, i32* @C_ERR, align 4
  store i32 %49, i32* %6, align 4
  br label %74

50:                                               ; preds = %34
  %51 = load i32, i32* %16, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %12, align 8
  %57 = mul nsw i64 %56, %55
  store i64 %57, i64* %12, align 8
  br label %58

58:                                               ; preds = %53, %50
  %59 = load i64, i64* %12, align 8
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = load i64, i64* %12, align 8
  %63 = lshr i64 %62, 3
  %64 = icmp uge i64 %63, 536870912
  br i1 %64, label %65, label %70

65:                                               ; preds = %61, %58
  %66 = load i32*, i32** %7, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = call i32 @addReplyError(i32* %66, i8* %67)
  %69 = load i32, i32* @C_ERR, align 4
  store i32 %69, i32* %6, align 4
  br label %74

70:                                               ; preds = %61
  %71 = load i64, i64* %12, align 8
  %72 = load i64*, i64** %9, align 8
  store i64 %71, i64* %72, align 8
  %73 = load i32, i32* @C_OK, align 4
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %70, %65, %45
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i64 @sdslen(i8*) #1

declare dso_local i64 @string2ll(i8*, i64, i64*) #1

declare dso_local i32 @addReplyError(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
