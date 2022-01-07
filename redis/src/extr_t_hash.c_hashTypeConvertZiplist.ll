; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_hash.c_hashTypeConvertZiplist.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_hash.c_hashTypeConvertZiplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@OBJ_ENCODING_ZIPLIST = common dso_local global i32 0, align 4
@OBJ_ENCODING_HT = common dso_local global i32 0, align 4
@dict = common dso_local global i32 0, align 4
@hashDictType = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i64 0, align 8
@OBJ_HASH_KEY = common dso_local global i32 0, align 4
@OBJ_HASH_VALUE = common dso_local global i32 0, align 4
@DICT_OK = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ziplist with dup elements dump\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Ziplist corruption detected\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Unknown hash encoding\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hashTypeConvertZiplist(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @OBJ_ENCODING_ZIPLIST, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @serverAssert(i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @OBJ_ENCODING_ZIPLIST, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %78

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @OBJ_ENCODING_HT, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %75

24:                                               ; preds = %20
  %25 = load i32, i32* @dict, align 4
  %26 = load i32, i32* @dict, align 4
  %27 = mul nsw i32 %25, %26
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = call i32* @hashTypeInitIterator(%struct.TYPE_4__* %28)
  store i32* %29, i32** %5, align 8
  %30 = call i32 @dictCreate(i32* @hashDictType, i32* null)
  store i32 %30, i32* @dict, align 4
  br label %31

31:                                               ; preds = %61, %24
  %32 = load i32*, i32** %5, align 8
  %33 = call i64 @hashTypeNext(i32* %32)
  %34 = load i64, i64* @C_ERR, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %31
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @OBJ_HASH_KEY, align 4
  %39 = call i32 @hashTypeCurrentObjectNewSds(i32* %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* @OBJ_HASH_VALUE, align 4
  %42 = call i32 @hashTypeCurrentObjectNewSds(i32* %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* @dict, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @dictAdd(i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @DICT_OK, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %36
  %51 = load i32, i32* @LL_WARNING, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ziplistBlobLen(i32 %57)
  %59 = call i32 @serverLogHexDump(i32 %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %58)
  %60 = call i32 @serverPanic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %50, %36
  br label %31

62:                                               ; preds = %31
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @hashTypeReleaseIterator(i32* %63)
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @zfree(i32 %67)
  %69 = load i32, i32* @OBJ_ENCODING_HT, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @dict, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %77

75:                                               ; preds = %20
  %76 = call i32 @serverPanic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %62
  br label %78

78:                                               ; preds = %77, %19
  ret void
}

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i32* @hashTypeInitIterator(%struct.TYPE_4__*) #1

declare dso_local i32 @dictCreate(i32*, i32*) #1

declare dso_local i64 @hashTypeNext(i32*) #1

declare dso_local i32 @hashTypeCurrentObjectNewSds(i32*, i32) #1

declare dso_local i32 @dictAdd(i32, i32, i32) #1

declare dso_local i32 @serverLogHexDump(i32, i8*, i32, i32) #1

declare dso_local i32 @ziplistBlobLen(i32) #1

declare dso_local i32 @serverPanic(i8*) #1

declare dso_local i32 @hashTypeReleaseIterator(i32*) #1

declare dso_local i32 @zfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
