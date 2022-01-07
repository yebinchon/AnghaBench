; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_block.c_block_Alloc.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_block.c_block_Alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8* }

@ENOBUFS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@BLOCK_ALIGN = common dso_local global i32 0, align 4
@BLOCK_PADDING = common dso_local global i32 0, align 4
@block_generic_cbs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"BLOCK_PADDING must be a multiple of BLOCK_ALIGN\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @block_Alloc(i64 %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = lshr i64 %6, 27
  %8 = trunc i64 %7 to i32
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOBUFS, align 4
  store i32 %12, i32* @errno, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %77

13:                                               ; preds = %1
  %14 = load i32, i32* @BLOCK_ALIGN, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 16, %15
  %17 = load i32, i32* @BLOCK_PADDING, align 4
  %18 = mul nsw i32 2, %17
  %19 = sext i32 %18 to i64
  %20 = add i64 %16, %19
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %20, %21
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* %3, align 8
  %25 = icmp ule i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %13
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %77

30:                                               ; preds = %13
  %31 = load i64, i64* %4, align 8
  %32 = call %struct.TYPE_6__* @malloc(i64 %31)
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %5, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = icmp eq %struct.TYPE_6__* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %77

39:                                               ; preds = %30
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 1
  %43 = load i64, i64* %4, align 8
  %44 = sub i64 %43, 16
  %45 = call i32 @block_Init(%struct.TYPE_6__* %40, i32* @block_generic_cbs, %struct.TYPE_6__* %42, i64 %44)
  %46 = load i32, i32* @BLOCK_PADDING, align 4
  %47 = load i32, i32* @BLOCK_ALIGN, align 4
  %48 = srem i32 %46, %47
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @static_assert(i32 %50, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @BLOCK_PADDING, align 4
  %53 = load i32, i32* @BLOCK_ALIGN, align 4
  %54 = add nsw i32 %52, %53
  %55 = sub nsw i32 %54, 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = sext i32 %55 to i64
  %60 = getelementptr i8, i8* %58, i64 %59
  store i8* %60, i8** %57, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = ptrtoint i8* %63 to i64
  %65 = load i32, i32* @BLOCK_ALIGN, align 4
  %66 = sub nsw i32 %65, 1
  %67 = xor i32 %66, -1
  %68 = sext i32 %67 to i64
  %69 = and i64 %64, %68
  %70 = inttoptr i64 %69 to i8*
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load i64, i64* %3, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %76, %struct.TYPE_6__** %2, align 8
  br label %77

77:                                               ; preds = %39, %38, %29, %11
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %78
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_6__* @malloc(i64) #1

declare dso_local i32 @block_Init(%struct.TYPE_6__*, i32*, %struct.TYPE_6__*, i64) #1

declare dso_local i32 @static_assert(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
