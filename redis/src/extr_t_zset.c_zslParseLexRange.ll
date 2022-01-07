; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_zset.c_zslParseLexRange.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_zset.c_zslParseLexRange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32*, i32, i32* }

@OBJ_ENCODING_INT = common dso_local global i64 0, align 8
@C_ERR = common dso_local global i32 0, align 4
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zslParseLexRange(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @OBJ_ENCODING_INT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @OBJ_ENCODING_INT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13, %3
  %20 = load i32, i32* @C_ERR, align 4
  store i32 %20, i32* %4, align 4
  br label %49

21:                                               ; preds = %13
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 3
  store i32* null, i32** %25, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = call i32 @zslParseLexRangeItem(%struct.TYPE_9__* %26, i32** %28, i32* %30)
  %32 = load i32, i32* @C_ERR, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %43, label %34

34:                                               ; preds = %21
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = call i32 @zslParseLexRangeItem(%struct.TYPE_9__* %35, i32** %37, i32* %39)
  %41 = load i32, i32* @C_ERR, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %34, %21
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %45 = call i32 @zslFreeLexRange(%struct.TYPE_8__* %44)
  %46 = load i32, i32* @C_ERR, align 4
  store i32 %46, i32* %4, align 4
  br label %49

47:                                               ; preds = %34
  %48 = load i32, i32* @C_OK, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %43, %19
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @zslParseLexRangeItem(%struct.TYPE_9__*, i32**, i32*) #1

declare dso_local i32 @zslFreeLexRange(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
