; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_hash.c_hashTypeExists.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_hash.c_hashTypeExists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@OBJ_ENCODING_ZIPLIST = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i32 0, align 4
@LLONG_MAX = common dso_local global i64 0, align 8
@OBJ_ENCODING_HT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Unknown hash encoding\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hashTypeExists(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @OBJ_ENCODING_ZIPLIST, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  store i8* null, i8** %6, align 8
  %15 = load i32, i32* @UINT_MAX, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i64, i64* @LLONG_MAX, align 8
  store i64 %16, i64* %8, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @hashTypeGetFromZiplist(%struct.TYPE_5__* %17, i32 %18, i8** %6, i32* %7, i64* %8)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %40

22:                                               ; preds = %14
  br label %39

23:                                               ; preds = %2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @OBJ_ENCODING_HT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32* @hashTypeGetFromHashTable(%struct.TYPE_5__* %30, i32 %31)
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %40

35:                                               ; preds = %29
  br label %38

36:                                               ; preds = %23
  %37 = call i32 @serverPanic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %35
  br label %39

39:                                               ; preds = %38, %22
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %34, %21
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @hashTypeGetFromZiplist(%struct.TYPE_5__*, i32, i8**, i32*, i64*) #1

declare dso_local i32* @hashTypeGetFromHashTable(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @serverPanic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
