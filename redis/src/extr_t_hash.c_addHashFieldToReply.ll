; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_hash.c_addHashFieldToReply.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_hash.c_addHashFieldToReply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@OBJ_ENCODING_ZIPLIST = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i32 0, align 4
@LLONG_MAX = common dso_local global i64 0, align 8
@OBJ_ENCODING_HT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Unknown hash encoding\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i8*)* @addHashFieldToReply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addHashFieldToReply(i32* %0, %struct.TYPE_5__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = icmp eq %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @addReplyNull(i32* %15)
  br label %73

17:                                               ; preds = %3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @OBJ_ENCODING_ZIPLIST, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %48

23:                                               ; preds = %17
  store i8* null, i8** %8, align 8
  %24 = load i32, i32* @UINT_MAX, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i64, i64* @LLONG_MAX, align 8
  store i64 %25, i64* %10, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @hashTypeGetFromZiplist(%struct.TYPE_5__* %26, i8* %27, i8** %8, i32* %9, i64* %10)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @addReplyNull(i32* %32)
  br label %47

34:                                               ; preds = %23
  %35 = load i8*, i8** %8, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32*, i32** %4, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @addReplyBulkCBuffer(i32* %38, i8* %39, i32 %40)
  br label %46

42:                                               ; preds = %34
  %43 = load i32*, i32** %4, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @addReplyBulkLongLong(i32* %43, i64 %44)
  br label %46

46:                                               ; preds = %42, %37
  br label %47

47:                                               ; preds = %46, %31
  br label %73

48:                                               ; preds = %17
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @OBJ_ENCODING_HT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %48
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = call i8* @hashTypeGetFromHashTable(%struct.TYPE_5__* %55, i8* %56)
  store i8* %57, i8** %11, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @addReplyNull(i32* %61)
  br label %69

63:                                               ; preds = %54
  %64 = load i32*, i32** %4, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = call i32 @sdslen(i8* %66)
  %68 = call i32 @addReplyBulkCBuffer(i32* %64, i8* %65, i32 %67)
  br label %69

69:                                               ; preds = %63, %60
  br label %72

70:                                               ; preds = %48
  %71 = call i32 @serverPanic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %69
  br label %73

73:                                               ; preds = %14, %72, %47
  ret void
}

declare dso_local i32 @addReplyNull(i32*) #1

declare dso_local i32 @hashTypeGetFromZiplist(%struct.TYPE_5__*, i8*, i8**, i32*, i64*) #1

declare dso_local i32 @addReplyBulkCBuffer(i32*, i8*, i32) #1

declare dso_local i32 @addReplyBulkLongLong(i32*, i64) #1

declare dso_local i8* @hashTypeGetFromHashTable(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @sdslen(i8*) #1

declare dso_local i32 @serverPanic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
