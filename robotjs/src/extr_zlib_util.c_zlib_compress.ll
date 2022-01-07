; ModuleID = '/home/carl/AnghaBench/robotjs/src/extr_zlib_util.c_zlib_compress.c'
source_filename = "/home/carl/AnghaBench/robotjs/src/extr_zlib_util.c_zlib_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64, i8*, i32*, i32*, i8*, i8*, i8* }

@Z_NULL = common dso_local global i8* null, align 8
@Z_OK = common dso_local global i64 0, align 8
@Z_FINISH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Could not compress data: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @zlib_compress(i32* %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i32* null, i32** %11, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i64*, i64** %9, align 8
  %17 = icmp ne i64* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = icmp sle i32 %20, 9
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = icmp sge i32 %23, 0
  br label %25

25:                                               ; preds = %22, %4
  %26 = phi i1 [ false, %4 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = udiv i64 %30, 10
  %32 = add i64 %29, %31
  %33 = add i64 %32, 12
  %34 = inttoptr i64 %33 to i8*
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 7
  store i8* %34, i8** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 7
  %37 = load i8*, i8** %36, align 8
  %38 = call i32* @malloc(i8* %37)
  store i32* %38, i32** %11, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %25
  store i32* null, i32** %5, align 8
  br label %96

42:                                               ; preds = %25
  %43 = load i8*, i8** @Z_NULL, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 6
  store i8* %43, i8** %44, align 8
  %45 = load i8*, i8** @Z_NULL, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 5
  store i8* %45, i8** %46, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  store i32* %47, i32** %48, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  store i32* %49, i32** %50, align 8
  %51 = load i64, i64* %7, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  store i8* %52, i8** %53, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @deflateInit(%struct.TYPE_5__* %10, i32 %54)
  %56 = load i64, i64* @Z_OK, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %42
  br label %89

59:                                               ; preds = %42
  %60 = load i32, i32* @Z_FINISH, align 4
  %61 = call i64 @deflate(%struct.TYPE_5__* %10, i32 %60)
  %62 = load i64, i64* @Z_STREAM_END, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i32, i32* @stderr, align 4
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @fprintf(i32 %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %68, %64
  %74 = call i64 @deflateEnd(%struct.TYPE_5__* %10)
  br label %89

75:                                               ; preds = %59
  %76 = load i64*, i64** %9, align 8
  %77 = icmp ne i64* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64*, i64** %9, align 8
  store i64 %80, i64* %81, align 8
  br label %82

82:                                               ; preds = %78, %75
  %83 = call i64 @deflateEnd(%struct.TYPE_5__* %10)
  %84 = load i64, i64* @Z_OK, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %89

87:                                               ; preds = %82
  %88 = load i32*, i32** %11, align 8
  store i32* %88, i32** %5, align 8
  br label %96

89:                                               ; preds = %86, %73, %58
  %90 = load i32*, i32** %11, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32*, i32** %11, align 8
  %94 = call i32 @free(i32* %93)
  br label %95

95:                                               ; preds = %92, %89
  store i32* null, i32** %5, align 8
  br label %96

96:                                               ; preds = %95, %87, %41
  %97 = load i32*, i32** %5, align 8
  ret i32* %97
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @malloc(i8*) #1

declare dso_local i64 @deflateInit(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @deflate(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i64 @deflateEnd(%struct.TYPE_5__*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
