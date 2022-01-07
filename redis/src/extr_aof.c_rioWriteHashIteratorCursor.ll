; ModuleID = '/home/carl/AnghaBench/redis/src/extr_aof.c_rioWriteHashIteratorCursor.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_aof.c_rioWriteHashIteratorCursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@OBJ_ENCODING_ZIPLIST = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i32 0, align 4
@LLONG_MAX = common dso_local global i64 0, align 8
@OBJ_ENCODING_HT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Unknown hash encoding\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i32)* @rioWriteHashIteratorCursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rioWriteHashIteratorCursor(i32* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @OBJ_ENCODING_ZIPLIST, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %3
  store i8* null, i8** %8, align 8
  %18 = load i32, i32* @UINT_MAX, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i64, i64* @LLONG_MAX, align 8
  store i64 %19, i64* %10, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @hashTypeCurrentFromZiplist(%struct.TYPE_5__* %20, i32 %21, i8** %8, i32* %9, i64* %10)
  %23 = load i8*, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = load i32*, i32** %5, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @rioWriteBulkString(i32* %26, i8* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  br label %52

30:                                               ; preds = %17
  %31 = load i32*, i32** %5, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @rioWriteBulkLongLong(i32* %31, i64 %32)
  store i32 %33, i32* %4, align 4
  br label %52

34:                                               ; preds = %3
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @OBJ_ENCODING_HT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i8* @hashTypeCurrentFromHashTable(%struct.TYPE_5__* %41, i32 %42)
  store i8* %43, i8** %11, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 @sdslen(i8* %46)
  %48 = call i32 @rioWriteBulkString(i32* %44, i8* %45, i32 %47)
  store i32 %48, i32* %4, align 4
  br label %52

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %49
  %51 = call i32 @serverPanic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %40, %30, %25
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @hashTypeCurrentFromZiplist(%struct.TYPE_5__*, i32, i8**, i32*, i64*) #1

declare dso_local i32 @rioWriteBulkString(i32*, i8*, i32) #1

declare dso_local i32 @rioWriteBulkLongLong(i32*, i64) #1

declare dso_local i8* @hashTypeCurrentFromHashTable(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @sdslen(i8*) #1

declare dso_local i32 @serverPanic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
