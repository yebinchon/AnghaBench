; ModuleID = '/home/carl/AnghaBench/redis/src/extr_aof.c_rewriteHashObject.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_aof.c_rewriteHashObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C_ERR = common dso_local global i64 0, align 8
@AOF_REWRITE_ITEMS_PER_CMD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"HMSET\00", align 1
@OBJ_HASH_KEY = common dso_local global i32 0, align 4
@OBJ_HASH_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rewriteHashObject(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %9, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i64 @hashTypeLength(i32* %12)
  store i64 %13, i64* %10, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32* @hashTypeInitIterator(i32* %14)
  store i32* %15, i32** %8, align 8
  br label %16

16:                                               ; preds = %74, %3
  %17 = load i32*, i32** %8, align 8
  %18 = call i64 @hashTypeNext(i32* %17)
  %19 = load i64, i64* @C_ERR, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %77

21:                                               ; preds = %16
  %22 = load i64, i64* %9, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %54

24:                                               ; preds = %21
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @AOF_REWRITE_ITEMS_PER_CMD, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i64, i64* @AOF_REWRITE_ITEMS_PER_CMD, align 8
  br label %32

30:                                               ; preds = %24
  %31 = load i64, i64* %10, align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i64 [ %29, %28 ], [ %31, %30 ]
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %11, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %11, align 4
  %37 = mul nsw i32 %36, 2
  %38 = add nsw i32 2, %37
  %39 = call i64 @rioWriteBulkCount(i32* %35, i8 signext 42, i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %80

42:                                               ; preds = %32
  %43 = load i32*, i32** %5, align 8
  %44 = call i64 @rioWriteBulkString(i32* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %80

47:                                               ; preds = %42
  %48 = load i32*, i32** %5, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call i64 @rioWriteBulkObject(i32* %48, i32* %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %80

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %21
  %55 = load i32*, i32** %5, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* @OBJ_HASH_KEY, align 4
  %58 = call i64 @rioWriteHashIteratorCursor(i32* %55, i32* %56, i32 %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %80

61:                                               ; preds = %54
  %62 = load i32*, i32** %5, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* @OBJ_HASH_VALUE, align 4
  %65 = call i64 @rioWriteHashIteratorCursor(i32* %62, i32* %63, i32 %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %80

68:                                               ; preds = %61
  %69 = load i64, i64* %9, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %9, align 8
  %71 = load i64, i64* @AOF_REWRITE_ITEMS_PER_CMD, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i64 0, i64* %9, align 8
  br label %74

74:                                               ; preds = %73, %68
  %75 = load i64, i64* %10, align 8
  %76 = add nsw i64 %75, -1
  store i64 %76, i64* %10, align 8
  br label %16

77:                                               ; preds = %16
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @hashTypeReleaseIterator(i32* %78)
  store i32 1, i32* %4, align 4
  br label %80

80:                                               ; preds = %77, %67, %60, %52, %46, %41
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i64 @hashTypeLength(i32*) #1

declare dso_local i32* @hashTypeInitIterator(i32*) #1

declare dso_local i64 @hashTypeNext(i32*) #1

declare dso_local i64 @rioWriteBulkCount(i32*, i8 signext, i32) #1

declare dso_local i64 @rioWriteBulkString(i32*, i8*, i32) #1

declare dso_local i64 @rioWriteBulkObject(i32*, i32*) #1

declare dso_local i64 @rioWriteHashIteratorCursor(i32*, i32*, i32) #1

declare dso_local i32 @hashTypeReleaseIterator(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
