; ModuleID = '/home/carl/AnghaBench/redis/src/extr_blocked.c_blockForKeys.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_blocked.c_blockForKeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32*, i32 }

@BLOCKED_STREAM = common dso_local global i32 0, align 4
@DICT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blockForKeys(%struct.TYPE_10__* %0, i32 %1, i32** %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32** %2, i32*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %20 = load i32, i32* %12, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  store i32* %24, i32** %27, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %7
  %31 = load i32*, i32** %13, align 8
  %32 = call i32 @incrRefCount(i32* %31)
  br label %33

33:                                               ; preds = %30, %7
  store i32 0, i32* %17, align 4
  br label %34

34:                                               ; preds = %125, %33
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %128

38:                                               ; preds = %34
  store i8* null, i8** %18, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @BLOCKED_STREAM, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = call i8* @zmalloc(i32 4)
  store i8* %43, i8** %18, align 8
  %44 = load i8*, i8** %18, align 8
  %45 = load i32*, i32** %14, align 8
  %46 = load i32, i32* %17, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = call i32 @memcpy(i8* %44, i32* %48, i32 4)
  br label %50

50:                                               ; preds = %42, %38
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32**, i32*** %10, align 8
  %56 = load i32, i32* %17, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = load i8*, i8** %18, align 8
  %61 = call i32 @dictAdd(i32 %54, i32* %59, i8* %60)
  %62 = load i32, i32* @DICT_OK, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %50
  %65 = load i8*, i8** %18, align 8
  %66 = call i32 @zfree(i8* %65)
  br label %125

67:                                               ; preds = %50
  %68 = load i32**, i32*** %10, align 8
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @incrRefCount(i32* %72)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32**, i32*** %10, align 8
  %80 = load i32, i32* %17, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32*, i32** %79, i64 %81
  %83 = load i32*, i32** %82, align 8
  %84 = call i32* @dictFind(i32 %78, i32* %83)
  store i32* %84, i32** %15, align 8
  %85 = load i32*, i32** %15, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %118

87:                                               ; preds = %67
  %88 = call i8* (...) @listCreate()
  store i8* %88, i8** %16, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32**, i32*** %10, align 8
  %95 = load i32, i32* %17, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32*, i32** %94, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = load i8*, i8** %16, align 8
  %100 = call i32 @dictAdd(i32 %93, i32* %98, i8* %99)
  store i32 %100, i32* %19, align 4
  %101 = load i32**, i32*** %10, align 8
  %102 = load i32, i32* %17, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32*, i32** %101, i64 %103
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @incrRefCount(i32* %105)
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %108 = load i32**, i32*** %10, align 8
  %109 = load i32, i32* %17, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %108, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %19, align 4
  %114 = load i32, i32* @DICT_OK, align 4
  %115 = icmp eq i32 %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @serverAssertWithInfo(%struct.TYPE_10__* %107, i32* %112, i32 %116)
  br label %121

118:                                              ; preds = %67
  %119 = load i32*, i32** %15, align 8
  %120 = call i8* @dictGetVal(i32* %119)
  store i8* %120, i8** %16, align 8
  br label %121

121:                                              ; preds = %118, %87
  %122 = load i8*, i8** %16, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %124 = call i32 @listAddNodeTail(i8* %122, %struct.TYPE_10__* %123)
  br label %125

125:                                              ; preds = %121, %64
  %126 = load i32, i32* %17, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %17, align 4
  br label %34

128:                                              ; preds = %34
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @blockClient(%struct.TYPE_10__* %129, i32 %130)
  ret void
}

declare dso_local i32 @incrRefCount(i32*) #1

declare dso_local i8* @zmalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @dictAdd(i32, i32*, i8*) #1

declare dso_local i32 @zfree(i8*) #1

declare dso_local i32* @dictFind(i32, i32*) #1

declare dso_local i8* @listCreate(...) #1

declare dso_local i32 @serverAssertWithInfo(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i8* @dictGetVal(i32*) #1

declare dso_local i32 @listAddNodeTail(i8*, %struct.TYPE_10__*) #1

declare dso_local i32 @blockClient(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
