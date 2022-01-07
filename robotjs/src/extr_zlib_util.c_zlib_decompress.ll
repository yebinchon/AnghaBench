; ModuleID = '/home/carl/AnghaBench/robotjs/src/extr_zlib_util.c_zlib_decompress.c'
source_filename = "/home/carl/AnghaBench/robotjs/src/extr_zlib_util.c_zlib_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8*, i64, i32*, i32*, i8*, i8*, i8* }

@ZLIB_CHUNK = common dso_local global i8* null, align 8
@Z_NULL = common dso_local global i8* null, align 8
@Z_OK = common dso_local global i32 0, align 4
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not decompress data: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @zlib_decompress(i32* %0, i64* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__, align 8
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load i8*, i8** @ZLIB_CHUNK, align 8
  %11 = ptrtoint i8* %10 to i64
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32* @malloc(i64 %12)
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %105

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = icmp ne i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i8*, i8** @Z_NULL, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 7
  store i8* %22, i8** %23, align 8
  %24 = load i8*, i8** @Z_NULL, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 6
  store i8* %24, i8** %25, align 8
  %26 = load i8*, i8** @Z_NULL, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 5
  store i8* %26, i8** %27, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  store i32* %28, i32** %29, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  store i32* %30, i32** %31, align 8
  %32 = load i8*, i8** @ZLIB_CHUNK, align 8
  %33 = ptrtoint i8* %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i64 %33, i64* %34, align 8
  %35 = call i32 @inflateInit(%struct.TYPE_5__* %9)
  %36 = load i32, i32* @Z_OK, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %17
  br label %98

39:                                               ; preds = %17
  br label %40

40:                                               ; preds = %80, %39
  %41 = load i32, i32* @Z_NO_FLUSH, align 4
  %42 = call i32 @inflate(%struct.TYPE_5__* %9, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* @Z_OK, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %40
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i64 %46, i64* %47, align 8
  %48 = load i64, i64* %6, align 8
  %49 = shl i64 %48, 1
  store i64 %49, i64* %6, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i64, i64* %6, align 8
  %52 = add i64 %51, 1
  %53 = call i32* @realloc(i32* %50, i64 %52)
  store i32* %53, i32** %7, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  store i32* null, i32** %3, align 8
  br label %105

57:                                               ; preds = %45
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  store i32* %61, i32** %62, align 8
  br label %79

63:                                               ; preds = %40
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @Z_STREAM_END, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i32, i32* @stderr, align 4
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @fprintf(i32 %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %71, %67
  %77 = call i32 @inflateEnd(%struct.TYPE_5__* %9)
  br label %98

78:                                               ; preds = %63
  br label %79

79:                                               ; preds = %78, %57
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @Z_STREAM_END, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %40, label %84

84:                                               ; preds = %80
  %85 = load i64*, i64** %5, align 8
  %86 = icmp ne i64* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64*, i64** %5, align 8
  store i64 %89, i64* %90, align 8
  br label %91

91:                                               ; preds = %87, %84
  %92 = call i32 @inflateEnd(%struct.TYPE_5__* %9)
  %93 = load i32, i32* @Z_OK, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %98

96:                                               ; preds = %91
  %97 = load i32*, i32** %7, align 8
  store i32* %97, i32** %3, align 8
  br label %105

98:                                               ; preds = %95, %76, %38
  %99 = load i32*, i32** %7, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32*, i32** %7, align 8
  %103 = call i32 @free(i32* %102)
  br label %104

104:                                              ; preds = %101, %98
  store i32* null, i32** %3, align 8
  br label %105

105:                                              ; preds = %104, %96, %56, %16
  %106 = load i32*, i32** %3, align 8
  ret i32* %106
}

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @inflateInit(%struct.TYPE_5__*) #1

declare dso_local i32 @inflate(%struct.TYPE_5__*, i32) #1

declare dso_local i32* @realloc(i32*, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @inflateEnd(%struct.TYPE_5__*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
