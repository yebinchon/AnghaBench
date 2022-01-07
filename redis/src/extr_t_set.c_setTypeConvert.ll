; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_set.c_setTypeConvert.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_set.c_setTypeConvert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32* }

@OBJ_SET = common dso_local global i64 0, align 8
@OBJ_ENCODING_INTSET = common dso_local global i32 0, align 4
@OBJ_ENCODING_HT = common dso_local global i32 0, align 4
@setDictType = common dso_local global i32 0, align 4
@DICT_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Unsupported set conversion\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setTypeConvert(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @OBJ_SET, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @OBJ_ENCODING_INTSET, align 4
  %20 = icmp eq i32 %18, %19
  br label %21

21:                                               ; preds = %15, %2
  %22 = phi i1 [ false, %2 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @serverAssertWithInfo(i32* null, %struct.TYPE_5__* %9, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @OBJ_ENCODING_HT, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %65

28:                                               ; preds = %21
  %29 = call i32* @dictCreate(i32* @setDictType, i32* null)
  store i32* %29, i32** %7, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @intsetLen(i32* %33)
  %35 = call i32 @dictExpand(i32* %30, i32 %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = call i32* @setTypeInitIterator(%struct.TYPE_5__* %36)
  store i32* %37, i32** %5, align 8
  br label %38

38:                                               ; preds = %42, %28
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @setTypeNext(i32* %39, i32* %8, i32* %6)
  %41 = icmp ne i32 %40, -1
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @sdsfromlonglong(i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @dictAdd(i32* %45, i32 %46, i32* null)
  %48 = load i64, i64* @DICT_OK, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @serverAssert(i32 %50)
  br label %38

52:                                               ; preds = %38
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @setTypeReleaseIterator(i32* %53)
  %55 = load i32, i32* @OBJ_ENCODING_HT, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @zfree(i32* %60)
  %62 = load i32*, i32** %7, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  store i32* %62, i32** %64, align 8
  br label %67

65:                                               ; preds = %21
  %66 = call i32 @serverPanic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %52
  ret void
}

declare dso_local i32 @serverAssertWithInfo(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32* @dictCreate(i32*, i32*) #1

declare dso_local i32 @dictExpand(i32*, i32) #1

declare dso_local i32 @intsetLen(i32*) #1

declare dso_local i32* @setTypeInitIterator(%struct.TYPE_5__*) #1

declare dso_local i32 @setTypeNext(i32*, i32*, i32*) #1

declare dso_local i32 @sdsfromlonglong(i32) #1

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i64 @dictAdd(i32*, i32, i32*) #1

declare dso_local i32 @setTypeReleaseIterator(i32*) #1

declare dso_local i32 @zfree(i32*) #1

declare dso_local i32 @serverPanic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
