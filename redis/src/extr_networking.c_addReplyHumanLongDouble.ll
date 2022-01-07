; ModuleID = '/home/carl/AnghaBench/redis/src/extr_networking.c_addReplyHumanLongDouble.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_networking.c_addReplyHumanLongDouble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@MAX_LONG_DOUBLE_CHARS = common dso_local global i32 0, align 4
@LD_STR_HUMAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addReplyHumanLongDouble(%struct.TYPE_5__* %0, x86_fp80 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca x86_fp80, align 16
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store x86_fp80 %1, x86_fp80* %4, align 16
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load x86_fp80, x86_fp80* %4, align 16
  %15 = call i32* @createStringObjectFromLongDouble(x86_fp80 %14, i32 1)
  store i32* %15, i32** %5, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @addReplyBulk(%struct.TYPE_5__* %16, i32* %17)
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @decrRefCount(i32* %19)
  br label %38

21:                                               ; preds = %2
  %22 = load i32, i32* @MAX_LONG_DOUBLE_CHARS, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %6, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %7, align 8
  %26 = trunc i64 %23 to i32
  %27 = load x86_fp80, x86_fp80* %4, align 16
  %28 = load i32, i32* @LD_STR_HUMAN, align 4
  %29 = call i32 @ld2string(i8* %25, i32 %26, x86_fp80 %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = call i32 @addReplyProto(%struct.TYPE_5__* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @addReplyProto(%struct.TYPE_5__* %32, i8* %25, i32 %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = call i32 @addReplyProto(%struct.TYPE_5__* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %37 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %37)
  br label %38

38:                                               ; preds = %21, %13
  ret void
}

declare dso_local i32* @createStringObjectFromLongDouble(x86_fp80, i32) #1

declare dso_local i32 @addReplyBulk(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @decrRefCount(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ld2string(i8*, i32, x86_fp80, i32) #1

declare dso_local i32 @addReplyProto(%struct.TYPE_5__*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
