; ModuleID = '/home/carl/AnghaBench/redis/src/extr_hyperloglog.c_createHLLObject.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_hyperloglog.c_createHLLObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.hllhdr* }
%struct.hllhdr = type { i32, i32 }

@HLL_HDR_SIZE = common dso_local global i32 0, align 4
@HLL_REGISTERS = common dso_local global i32 0, align 4
@HLL_SPARSE_XZERO_MAX_LEN = common dso_local global i32 0, align 4
@OBJ_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HYLL\00", align 1
@HLL_SPARSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @createHLLObject() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca %struct.hllhdr*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @HLL_HDR_SIZE, align 4
  %9 = load i32, i32* @HLL_REGISTERS, align 4
  %10 = load i32, i32* @HLL_SPARSE_XZERO_MAX_LEN, align 4
  %11 = sub nsw i32 %10, 1
  %12 = add nsw i32 %9, %11
  %13 = load i32, i32* @HLL_SPARSE_XZERO_MAX_LEN, align 4
  %14 = sdiv i32 %12, %13
  %15 = mul nsw i32 %14, 2
  %16 = add nsw i32 %8, %15
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @HLL_REGISTERS, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @sdsnewlen(i32* null, i32 %18)
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* %3, align 8
  %21 = inttoptr i64 %20 to i32*
  %22 = load i32, i32* @HLL_HDR_SIZE, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32* %24, i32** %4, align 8
  br label %25

25:                                               ; preds = %35, %0
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %25
  %29 = load i32, i32* @HLL_SPARSE_XZERO_MAX_LEN, align 4
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %33, %28
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @HLL_SPARSE_XZERO_SET(i32* %36, i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  store i32* %40, i32** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %25

44:                                               ; preds = %25
  %45 = load i32*, i32** %4, align 8
  %46 = load i64, i64* %3, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = ptrtoint i32* %45 to i64
  %49 = ptrtoint i32* %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 4
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp eq i64 %51, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @serverAssert(i32 %55)
  %57 = load i32, i32* @OBJ_STRING, align 4
  %58 = load i64, i64* %3, align 8
  %59 = call %struct.TYPE_4__* @createObject(i32 %57, i64 %58)
  store %struct.TYPE_4__* %59, %struct.TYPE_4__** %1, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.hllhdr*, %struct.hllhdr** %61, align 8
  store %struct.hllhdr* %62, %struct.hllhdr** %2, align 8
  %63 = load %struct.hllhdr*, %struct.hllhdr** %2, align 8
  %64 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @memcpy(i32 %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %67 = load i32, i32* @HLL_SPARSE, align 4
  %68 = load %struct.hllhdr*, %struct.hllhdr** %2, align 8
  %69 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  ret %struct.TYPE_4__* %70
}

declare dso_local i64 @sdsnewlen(i32*, i32) #1

declare dso_local i32 @HLL_SPARSE_XZERO_SET(i32*, i32) #1

declare dso_local i32 @serverAssert(i32) #1

declare dso_local %struct.TYPE_4__* @createObject(i32, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
