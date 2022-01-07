; ModuleID = '/home/carl/AnghaBench/redis/src/extr_util.c_getRandomBytes.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_util.c_getRandomBytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@getRandomBytes.seed_initialized = internal global i32 0, align 4
@getRandomBytes.seed = internal global [20 x i8] zeroinitializer, align 16
@getRandomBytes.counter = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getRandomBytes(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.timeval, align 8
  %8 = alloca i64, align 8
  %9 = alloca [20 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load i32, i32* @getRandomBytes.seed_initialized, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %56, label %14

14:                                               ; preds = %2
  %15 = call i32* @fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @fread(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @getRandomBytes.seed, i64 0, i64 0), i32 20, i32 1, i32* %19)
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %48

22:                                               ; preds = %18, %14
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %44, %22
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = icmp ult i64 %25, 20
  br i1 %26, label %27, label %47

27:                                               ; preds = %23
  %28 = call i32 @gettimeofday(%struct.timeval* %7, i32* null)
  %29 = call i64 (...) @getpid()
  store i64 %29, i64* %8, align 8
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = xor i64 %31, %33
  %35 = load i64, i64* %8, align 8
  %36 = xor i64 %34, %35
  %37 = load i32*, i32** %5, align 8
  %38 = ptrtoint i32* %37 to i64
  %39 = xor i64 %36, %38
  %40 = trunc i64 %39 to i8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [20 x i8], [20 x i8]* @getRandomBytes.seed, i64 0, i64 %42
  store i8 %40, i8* %43, align 1
  br label %44

44:                                               ; preds = %27
  %45 = load i32, i32* %6, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %23

47:                                               ; preds = %23
  br label %49

48:                                               ; preds = %18
  store i32 1, i32* @getRandomBytes.seed_initialized, align 4
  br label %49

49:                                               ; preds = %48, %47
  %50 = load i32*, i32** %5, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @fclose(i32* %53)
  br label %55

55:                                               ; preds = %52, %49
  br label %56

56:                                               ; preds = %55, %2
  br label %57

57:                                               ; preds = %66, %56
  %58 = load i64, i64* %4, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %88

60:                                               ; preds = %57
  %61 = load i64, i64* %4, align 8
  %62 = icmp ugt i64 %61, 20
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %66

64:                                               ; preds = %60
  %65 = load i64, i64* %4, align 8
  br label %66

66:                                               ; preds = %64, %63
  %67 = phi i64 [ 20, %63 ], [ %65, %64 ]
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %11, align 4
  %69 = call i32 @SHA1Init(i32* %10)
  %70 = call i32 @SHA1Update(i32* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @getRandomBytes.seed, i64 0, i64 0), i32 20)
  %71 = call i32 @SHA1Update(i32* %10, i8* bitcast (i64* @getRandomBytes.counter to i8*), i32 8)
  %72 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %73 = call i32 @SHA1Final(i8* %72, i32* %10)
  %74 = load i64, i64* @getRandomBytes.counter, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* @getRandomBytes.counter, align 8
  %76 = load i8*, i8** %3, align 8
  %77 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @memcpy(i8* %76, i8* %77, i32 %78)
  %80 = load i32, i32* %11, align 4
  %81 = zext i32 %80 to i64
  %82 = load i64, i64* %4, align 8
  %83 = sub i64 %82, %81
  store i64 %83, i64* %4, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load i8*, i8** %3, align 8
  %86 = zext i32 %84 to i64
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8* %87, i8** %3, align 8
  br label %57

88:                                               ; preds = %57
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @SHA1Init(i32*) #1

declare dso_local i32 @SHA1Update(i32*, i8*, i32) #1

declare dso_local i32 @SHA1Final(i8*, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
