; ModuleID = '/home/carl/AnghaBench/redis/src/extr_db.c_georadiusGetKeys.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_db.c_georadiusGetKeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.redisCommand = type { i32 }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"store\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"storedist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @georadiusGetKeys(%struct.redisCommand* %0, %struct.TYPE_3__** %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.redisCommand*, align 8
  %6 = alloca %struct.TYPE_3__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.redisCommand* %0, %struct.redisCommand** %5, align 8
  store %struct.TYPE_3__** %1, %struct.TYPE_3__*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %14 = load %struct.redisCommand*, %struct.redisCommand** %5, align 8
  %15 = call i32 @UNUSED(%struct.redisCommand* %14)
  store i32 -1, i32* %12, align 4
  store i32 5, i32* %9, align 4
  br label %16

16:                                               ; preds = %46, %4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %16
  %21 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %21, i64 %23
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %13, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = call i32 @strcasecmp(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load i8*, i8** %13, align 8
  %33 = call i32 @strcasecmp(i8* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %31, %20
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %40, %35, %31
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %16

49:                                               ; preds = %16
  %50 = load i32, i32* %12, align 4
  %51 = icmp eq i32 %50, -1
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 0, i32 1
  %54 = add nsw i32 1, %53
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 4, %56
  %58 = trunc i64 %57 to i32
  %59 = call i32* @zmalloc(i32 %58)
  store i32* %59, i32** %11, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 1, i32* %61, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp sgt i32 %62, 1
  br i1 %63, label %64, label %68

64:                                               ; preds = %49
  %65 = load i32, i32* %12, align 4
  %66 = load i32*, i32** %11, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %64, %49
  %69 = load i32, i32* %10, align 4
  %70 = load i32*, i32** %8, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32*, i32** %11, align 8
  ret i32* %71
}

declare dso_local i32 @UNUSED(%struct.redisCommand*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32* @zmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
