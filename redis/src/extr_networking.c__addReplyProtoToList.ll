; ModuleID = '/home/carl/AnghaBench/redis/src/extr_networking.c__addReplyProtoToList.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_networking.c__addReplyProtoToList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i64, i64 }

@CLIENT_CLOSE_AFTER_REPLY = common dso_local global i32 0, align 4
@PROTO_REPLY_CHUNK_BYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_addReplyProtoToList(%struct.TYPE_10__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CLIENT_CLOSE_AFTER_REPLY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %120

19:                                               ; preds = %3
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32* @listLast(i32 %22)
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32*, i32** %7, align 8
  %28 = call %struct.TYPE_9__* @listNodeValue(i32* %27)
  br label %30

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi %struct.TYPE_9__* [ %28, %26 ], [ null, %29 ]
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %8, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %33 = icmp ne %struct.TYPE_9__* %32, null
  br i1 %33, label %34, label %72

34:                                               ; preds = %30
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 %37, %40
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp uge i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i64, i64* %6, align 8
  br label %49

47:                                               ; preds = %34
  %48 = load i64, i64* %9, align 8
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i64 [ %46, %45 ], [ %48, %47 ]
  store i64 %50, i64* %10, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %53, %56
  %58 = load i8*, i8** %5, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @memcpy(i64 %57, i8* %58, i64 %59)
  %61 = load i64, i64* %10, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, %61
  store i64 %65, i64* %63, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 %66
  store i8* %68, i8** %5, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* %6, align 8
  %71 = sub i64 %70, %69
  store i64 %71, i64* %6, align 8
  br label %72

72:                                               ; preds = %49, %30
  %73 = load i64, i64* %6, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %117

75:                                               ; preds = %72
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* @PROTO_REPLY_CHUNK_BYTES, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i64, i64* @PROTO_REPLY_CHUNK_BYTES, align 8
  br label %83

81:                                               ; preds = %75
  %82 = load i64, i64* %6, align 8
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i64 [ %80, %79 ], [ %82, %81 ]
  store i64 %84, i64* %11, align 8
  %85 = load i64, i64* %11, align 8
  %86 = add i64 %85, 24
  %87 = call %struct.TYPE_9__* @zmalloc(i64 %86)
  store %struct.TYPE_9__* %87, %struct.TYPE_9__** %8, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %89 = call i32 @zmalloc_usable(%struct.TYPE_9__* %88)
  %90 = sext i32 %89 to i64
  %91 = sub i64 %90, 24
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = load i64, i64* %6, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = load i64, i64* %6, align 8
  %102 = call i32 @memcpy(i64 %99, i8* %100, i64 %101)
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %107 = call i32 @listAddNodeTail(i32 %105, %struct.TYPE_9__* %106)
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = add i64 %114, %110
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %112, align 4
  br label %117

117:                                              ; preds = %83, %72
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %119 = call i32 @asyncCloseClientOnOutputBufferLimitReached(%struct.TYPE_10__* %118)
  br label %120

120:                                              ; preds = %117, %18
  ret void
}

declare dso_local i32* @listLast(i32) #1

declare dso_local %struct.TYPE_9__* @listNodeValue(i32*) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local %struct.TYPE_9__* @zmalloc(i64) #1

declare dso_local i32 @zmalloc_usable(%struct.TYPE_9__*) #1

declare dso_local i32 @listAddNodeTail(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @asyncCloseClientOnOutputBufferLimitReached(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
