; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_hash.c_genericHgetallCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_hash.c_genericHgetallCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i64, i32* }

@shared = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@OBJ_HASH = common dso_local global i32 0, align 4
@OBJ_HASH_KEY = common dso_local global i32 0, align 4
@OBJ_HASH_VALUE = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @genericHgetallCommand(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @shared, i32 0, i32 0), align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32* @lookupKeyReadOrReply(%struct.TYPE_9__* %9, i32 %14, i32 %20)
  store i32* %21, i32** %5, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @OBJ_HASH, align 4
  %27 = call i64 @checkType(%struct.TYPE_9__* %24, i32* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %2
  br label %104

30:                                               ; preds = %23
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @hashTypeLength(i32* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @OBJ_HASH_KEY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @OBJ_HASH_VALUE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @addReplyMapLen(%struct.TYPE_9__* %43, i32 %44)
  br label %50

46:                                               ; preds = %37, %30
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @addReplyArrayLen(%struct.TYPE_9__* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i32*, i32** %5, align 8
  %52 = call i32* @hashTypeInitIterator(i32* %51)
  store i32* %52, i32** %6, align 8
  br label %53

53:                                               ; preds = %82, %50
  %54 = load i32*, i32** %6, align 8
  %55 = call i64 @hashTypeNext(i32* %54)
  %56 = load i64, i64* @C_ERR, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %83

58:                                               ; preds = %53
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @OBJ_HASH_KEY, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* @OBJ_HASH_KEY, align 4
  %67 = call i32 @addHashIteratorCursorToReply(%struct.TYPE_9__* %64, i32* %65, i32 %66)
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %63, %58
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @OBJ_HASH_VALUE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* @OBJ_HASH_VALUE, align 4
  %79 = call i32 @addHashIteratorCursorToReply(%struct.TYPE_9__* %76, i32* %77, i32 %78)
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %75, %70
  br label %53

83:                                               ; preds = %53
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @hashTypeReleaseIterator(i32* %84)
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @OBJ_HASH_KEY, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %83
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @OBJ_HASH_VALUE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32, i32* %8, align 4
  %97 = sdiv i32 %96, 2
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %95, %90, %83
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @serverAssert(i32 %102)
  br label %104

104:                                              ; preds = %98, %29
  ret void
}

declare dso_local i32* @lookupKeyReadOrReply(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @checkType(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @hashTypeLength(i32*) #1

declare dso_local i32 @addReplyMapLen(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @addReplyArrayLen(%struct.TYPE_9__*, i32) #1

declare dso_local i32* @hashTypeInitIterator(i32*) #1

declare dso_local i64 @hashTypeNext(i32*) #1

declare dso_local i32 @addHashIteratorCursorToReply(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @hashTypeReleaseIterator(i32*) #1

declare dso_local i32 @serverAssert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
