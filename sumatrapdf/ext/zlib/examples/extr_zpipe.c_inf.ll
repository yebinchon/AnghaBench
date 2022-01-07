; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/zlib/examples/extr_zpipe.c_inf.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/zlib/examples/extr_zpipe.c_inf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8*, i64, i8*, i8*, i8*, i8* }

@CHUNK = common dso_local global i32 0, align 4
@Z_NULL = common dso_local global i8* null, align 8
@Z_OK = common dso_local global i32 0, align 4
@Z_ERRNO = common dso_local global i32 0, align 4
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@Z_STREAM_ERROR = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inf(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32, i32* @CHUNK, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load i32, i32* @CHUNK, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %20 = load i8*, i8** @Z_NULL, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 6
  store i8* %20, i8** %21, align 8
  %22 = load i8*, i8** @Z_NULL, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 5
  store i8* %22, i8** %23, align 8
  %24 = load i8*, i8** @Z_NULL, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 4
  store i8* %24, i8** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load i8*, i8** @Z_NULL, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i8* %27, i8** %28, align 8
  %29 = call i32 @inflateInit(%struct.TYPE_5__* %8)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @Z_OK, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %110

35:                                               ; preds = %2
  br label %36

36:                                               ; preds = %96, %35
  %37 = load i32, i32* @CHUNK, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = call i64 @fread(i8* %16, i32 1, i32 %37, i32* %38)
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call i64 @ferror(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = call i32 @inflateEnd(%struct.TYPE_5__* %8)
  %46 = load i32, i32* @Z_ERRNO, align 4
  store i32 %46, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %110

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %100

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i8* %16, i8** %53, align 8
  br label %54

54:                                               ; preds = %91, %52
  %55 = load i32, i32* @CHUNK, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  store i64 %56, i64* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  store i8* %19, i8** %58, align 8
  %59 = load i32, i32* @Z_NO_FLUSH, align 4
  %60 = call i32 @inflate(%struct.TYPE_5__* %8, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @Z_STREAM_ERROR, align 4
  %63 = icmp ne i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i32, i32* %6, align 4
  switch i32 %66, label %71 [
    i32 128, label %67
    i32 130, label %68
    i32 129, label %68
  ]

67:                                               ; preds = %54
  store i32 130, i32* %6, align 4
  br label %68

68:                                               ; preds = %54, %54, %67
  %69 = call i32 @inflateEnd(%struct.TYPE_5__* %8)
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %110

71:                                               ; preds = %54
  %72 = load i32, i32* @CHUNK, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %73, %75
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @fwrite(i8* %19, i32 1, i32 %78, i32* %79)
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %71
  %84 = load i32*, i32** %5, align 8
  %85 = call i64 @ferror(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83, %71
  %88 = call i32 @inflateEnd(%struct.TYPE_5__* %8)
  %89 = load i32, i32* @Z_ERRNO, align 4
  store i32 %89, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %110

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %54, label %95

95:                                               ; preds = %91
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @Z_STREAM_END, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %36, label %100

100:                                              ; preds = %96, %51
  %101 = call i32 @inflateEnd(%struct.TYPE_5__* %8)
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @Z_STREAM_END, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* @Z_OK, align 4
  br label %108

107:                                              ; preds = %100
  br label %108

108:                                              ; preds = %107, %105
  %109 = phi i32 [ %106, %105 ], [ 130, %107 ]
  store i32 %109, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %110

110:                                              ; preds = %108, %87, %68, %44, %33
  %111 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %111)
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @inflateInit(%struct.TYPE_5__*) #2

declare dso_local i64 @fread(i8*, i32, i32, i32*) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i32 @inflateEnd(%struct.TYPE_5__*) #2

declare dso_local i32 @inflate(%struct.TYPE_5__*, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
