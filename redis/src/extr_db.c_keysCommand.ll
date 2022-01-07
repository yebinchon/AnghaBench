; ModuleID = '/home/carl/AnghaBench/redis/src/extr_db.c_keysCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_db.c_keysCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__*, %struct.TYPE_8__** }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @keysCommand(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %14, i64 1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @sdslen(i8* %19)
  store i32 %20, i32* %6, align 4
  store i64 0, i64* %8, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = call i8* @addReplyDeferredLen(%struct.TYPE_9__* %21)
  store i8* %22, i8** %9, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32* @dictGetSafeIterator(i32 %27)
  store i32* %28, i32** %3, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 42
  br i1 %33, label %34, label %40

34:                                               ; preds = %1
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br label %40

40:                                               ; preds = %34, %1
  %41 = phi i1 [ false, %1 ], [ %39, %34 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %80, %40
  %44 = load i32*, i32** %3, align 8
  %45 = call i32* @dictNext(i32* %44)
  store i32* %45, i32** %4, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %81

47:                                               ; preds = %43
  %48 = load i32*, i32** %4, align 8
  %49 = call i8* @dictGetKey(i32* %48)
  store i8* %49, i8** %10, align 8
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %47
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i8*, i8** %10, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 @sdslen(i8* %56)
  %58 = call i64 @stringmatchlen(i8* %53, i32 %54, i8* %55, i32 %57, i32 0)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %52, %47
  %61 = load i8*, i8** %10, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = call i32 @sdslen(i8* %62)
  %64 = call i32* @createStringObject(i8* %61, i32 %63)
  store i32* %64, i32** %11, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @keyIsExpired(%struct.TYPE_10__* %67, i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %60
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @addReplyBulk(%struct.TYPE_9__* %72, i32* %73)
  %75 = load i64, i64* %8, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %8, align 8
  br label %77

77:                                               ; preds = %71, %60
  %78 = load i32*, i32** %11, align 8
  %79 = call i32 @decrRefCount(i32* %78)
  br label %80

80:                                               ; preds = %77, %52
  br label %43

81:                                               ; preds = %43
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @dictReleaseIterator(i32* %82)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = load i64, i64* %8, align 8
  %87 = call i32 @setDeferredArrayLen(%struct.TYPE_9__* %84, i8* %85, i64 %86)
  ret void
}

declare dso_local i32 @sdslen(i8*) #1

declare dso_local i8* @addReplyDeferredLen(%struct.TYPE_9__*) #1

declare dso_local i32* @dictGetSafeIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local i8* @dictGetKey(i32*) #1

declare dso_local i64 @stringmatchlen(i8*, i32, i8*, i32, i32) #1

declare dso_local i32* @createStringObject(i8*, i32) #1

declare dso_local i32 @keyIsExpired(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @addReplyBulk(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @decrRefCount(i32*) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

declare dso_local i32 @setDeferredArrayLen(%struct.TYPE_9__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
