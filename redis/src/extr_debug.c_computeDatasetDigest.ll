; ModuleID = '/home/carl/AnghaBench/redis/src/extr_debug.c_computeDatasetDigest.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_debug.c_computeDatasetDigest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@server = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @computeDatasetDigest(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [20 x i8], align 16
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  store i32* null, i32** %4, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @memset(i8* %12, i32 0, i32 20)
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %71, %1
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 8
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %74

18:                                               ; preds = %14
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 1), align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %8, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @dictSize(i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %71

29:                                               ; preds = %18
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32* @dictGetSafeIterator(i32 %32)
  store i32* %33, i32** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @htonl(i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i8*, i8** %2, align 8
  %37 = call i32 @mixDigest(i8* %36, i32* %7, i32 4)
  br label %38

38:                                               ; preds = %42, %29
  %39 = load i32*, i32** %4, align 8
  %40 = call i32* @dictNext(i32* %39)
  store i32* %40, i32** %5, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %68

42:                                               ; preds = %38
  %43 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %44 = call i32 @memset(i8* %43, i32 0, i32 20)
  %45 = load i32*, i32** %5, align 8
  %46 = call i32* @dictGetKey(i32* %45)
  store i32* %46, i32** %9, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @sdslen(i32* %48)
  %50 = call i32* @createStringObject(i32* %47, i32 %49)
  store i32* %50, i32** %10, align 8
  %51 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %52 = load i32*, i32** %9, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @sdslen(i32* %53)
  %55 = call i32 @mixDigest(i8* %51, i32* %52, i32 %54)
  %56 = load i32*, i32** %5, align 8
  %57 = call i32* @dictGetVal(i32* %56)
  store i32* %57, i32** %11, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @xorObjectDigest(%struct.TYPE_4__* %58, i32* %59, i8* %60, i32* %61)
  %63 = load i8*, i8** %2, align 8
  %64 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %65 = call i32 @xorDigest(i8* %63, i8* %64, i32 20)
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @decrRefCount(i32* %66)
  br label %38

68:                                               ; preds = %38
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @dictReleaseIterator(i32* %69)
  br label %71

71:                                               ; preds = %68, %28
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %14

74:                                               ; preds = %14
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @dictSize(i32) #1

declare dso_local i32* @dictGetSafeIterator(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @mixDigest(i8*, i32*, i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local i32* @dictGetKey(i32*) #1

declare dso_local i32* @createStringObject(i32*, i32) #1

declare dso_local i32 @sdslen(i32*) #1

declare dso_local i32* @dictGetVal(i32*) #1

declare dso_local i32 @xorObjectDigest(%struct.TYPE_4__*, i32*, i8*, i32*) #1

declare dso_local i32 @xorDigest(i8*, i8*, i32) #1

declare dso_local i32 @decrRefCount(i32*) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
