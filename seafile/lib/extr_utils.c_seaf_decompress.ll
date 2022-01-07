; ModuleID = '/home/carl/AnghaBench/seafile/lib/extr_utils.c_seaf_decompress.c'
source_filename = "/home/carl/AnghaBench/seafile/lib/extr_utils.c_seaf_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i8*, i32*, i8*, i8*, i8* }
%struct.TYPE_10__ = type { i32 }

@ZLIB_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Empty input for zlib, invalid.\0A\00", align 1
@Z_NULL = common dso_local global i8* null, align 8
@Z_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"inflateInit failed.\0A\00", align 1
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Failed to inflate.\0A\00", align 1
@Z_STREAM_END = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seaf_decompress(i32* %0, i32 %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i32, i32* @ZLIB_BUF_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = call i32 @g_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %89

25:                                               ; preds = %4
  %26 = load i8*, i8** @Z_NULL, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 6
  store i8* %26, i8** %27, align 8
  %28 = load i8*, i8** @Z_NULL, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 5
  store i8* %28, i8** %29, align 8
  %30 = load i8*, i8** @Z_NULL, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 4
  store i8* %30, i8** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load i8*, i8** @Z_NULL, align 8
  %34 = bitcast i8* %33 to i32*
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  store i32* %34, i32** %35, align 8
  %36 = call i32 @inflateInit(%struct.TYPE_9__* %12)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @Z_OK, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %25
  %41 = call i32 @g_warning(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %89

42:                                               ; preds = %25
  %43 = load i32, i32* %7, align 4
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  store i32* %45, i32** %46, align 8
  %47 = call %struct.TYPE_10__* (...) @g_byte_array_new()
  store %struct.TYPE_10__* %47, %struct.TYPE_10__** %15, align 8
  br label %48

48:                                               ; preds = %66, %42
  %49 = load i32, i32* @ZLIB_BUF_SIZE, align 4
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  store i8* %20, i8** %51, align 8
  %52 = load i32, i32* @Z_NO_FLUSH, align 4
  %53 = call i32 @inflate(%struct.TYPE_9__* %12, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = call i32 @g_warning(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %71

58:                                               ; preds = %48
  %59 = load i32, i32* @ZLIB_BUF_SIZE, align 4
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %59, %61
  store i32 %62, i32* %11, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @g_byte_array_append(%struct.TYPE_10__* %63, i8* %20, i32 %64)
  br label %66

66:                                               ; preds = %58
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @Z_STREAM_END, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %48, label %70

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70, %56
  %72 = call i32 @inflateEnd(%struct.TYPE_9__* %12)
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @Z_STREAM_END, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %9, align 8
  store i32 %79, i32* %80, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %82 = load i32, i32* @FALSE, align 4
  %83 = call i32* @g_byte_array_free(%struct.TYPE_10__* %81, i32 %82)
  %84 = load i32**, i32*** %8, align 8
  store i32* %83, i32** %84, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %89

85:                                               ; preds = %71
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %87 = load i32, i32* @TRUE, align 4
  %88 = call i32* @g_byte_array_free(%struct.TYPE_10__* %86, i32 %87)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %89

89:                                               ; preds = %85, %76, %40, %23
  %90 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %90)
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @g_warning(i8*) #2

declare dso_local i32 @inflateInit(%struct.TYPE_9__*) #2

declare dso_local %struct.TYPE_10__* @g_byte_array_new(...) #2

declare dso_local i32 @inflate(%struct.TYPE_9__*, i32) #2

declare dso_local i32 @g_byte_array_append(%struct.TYPE_10__*, i8*, i32) #2

declare dso_local i32 @inflateEnd(%struct.TYPE_9__*) #2

declare dso_local i32* @g_byte_array_free(%struct.TYPE_10__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
