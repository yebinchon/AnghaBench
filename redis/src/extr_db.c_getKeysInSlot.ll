; ModuleID = '/home/carl/AnghaBench/redis/src/extr_db.c_getKeysInSlot.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_db.c_getKeysInSlot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i8*, i64 }

@server = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c">=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getKeysInSlot(i32 %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x i8], align 1
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = lshr i32 %10, 8
  %12 = and i32 %11, 255
  %13 = trunc i32 %12 to i8
  %14 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  store i8 %13, i8* %14, align 1
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 255
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 1
  store i8 %17, i8* %18, align 1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 0), align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @raxStart(%struct.TYPE_9__* %7, i32 %21)
  %23 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %24 = call i32 @raxSeek(%struct.TYPE_9__* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %23, i32 2)
  br label %25

25:                                               ; preds = %55, %3
  %26 = load i32, i32* %6, align 4
  %27 = add i32 %26, -1
  store i32 %27, i32* %6, align 4
  %28 = icmp ne i32 %26, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = call i64 @raxNext(%struct.TYPE_9__* %7)
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi i1 [ false, %25 ], [ %31, %29 ]
  br i1 %33, label %34, label %68

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %54, label %44

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp ne i32 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %44, %34
  br label %68

55:                                               ; preds = %44
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %60, 2
  %62 = call i32* @createStringObject(i8* %58, i64 %61)
  %63 = load i32**, i32*** %5, align 8
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32*, i32** %63, i64 %66
  store i32* %62, i32** %67, align 8
  br label %25

68:                                               ; preds = %54, %32
  %69 = call i32 @raxStop(%struct.TYPE_9__* %7)
  %70 = load i32, i32* %8, align 4
  ret i32 %70
}

declare dso_local i32 @raxStart(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @raxSeek(%struct.TYPE_9__*, i8*, i8*, i32) #1

declare dso_local i64 @raxNext(%struct.TYPE_9__*) #1

declare dso_local i32* @createStringObject(i8*, i64) #1

declare dso_local i32 @raxStop(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
