; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_zset.c_zsetScore.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_zset.c_zsetScore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@C_ERR = common dso_local global i32 0, align 4
@OBJ_ENCODING_ZIPLIST = common dso_local global i64 0, align 8
@OBJ_ENCODING_SKIPLIST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Unknown sorted set encoding\00", align 1
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zsetScore(%struct.TYPE_6__* %0, i32 %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store double* %2, double** %7, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @C_ERR, align 4
  store i32 %16, i32* %4, align 4
  br label %64

17:                                               ; preds = %12
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @OBJ_ENCODING_ZIPLIST, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load double*, double** %7, align 8
  %29 = call i32* @zzlFind(%struct.TYPE_5__* %26, i32 %27, double* %28)
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @C_ERR, align 4
  store i32 %32, i32* %4, align 4
  br label %64

33:                                               ; preds = %23
  br label %62

34:                                               ; preds = %17
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @OBJ_ENCODING_SKIPLIST, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %34
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %8, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32* @dictFind(i32 %46, i32 %47)
  store i32* %48, i32** %9, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load i32, i32* @C_ERR, align 4
  store i32 %52, i32* %4, align 4
  br label %64

53:                                               ; preds = %40
  %54 = load i32*, i32** %9, align 8
  %55 = call i64 @dictGetVal(i32* %54)
  %56 = inttoptr i64 %55 to double*
  %57 = load double, double* %56, align 8
  %58 = load double*, double** %7, align 8
  store double %57, double* %58, align 8
  br label %61

59:                                               ; preds = %34
  %60 = call i32 @serverPanic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %53
  br label %62

62:                                               ; preds = %61, %33
  %63 = load i32, i32* @C_OK, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %51, %31, %15
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32* @zzlFind(%struct.TYPE_5__*, i32, double*) #1

declare dso_local i32* @dictFind(i32, i32) #1

declare dso_local i64 @dictGetVal(i32*) #1

declare dso_local i32 @serverPanic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
