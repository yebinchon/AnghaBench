; ModuleID = '/home/carl/AnghaBench/seafile/lib/extr_utils.c_seaf_compress.c'
source_filename = "/home/carl/AnghaBench/seafile/lib/extr_utils.c_seaf_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32*, i32*, i8*, i8*, i8* }
%struct.TYPE_10__ = type { i32 }

@ZLIB_BUF_SIZE = common dso_local global i32 0, align 4
@Z_NULL = common dso_local global i8* null, align 8
@Z_DEFAULT_COMPRESSION = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"deflateInit failed.\0A\00", align 1
@Z_FINISH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seaf_compress(i32* %0, i32 %1, i32** %2, i32* %3) #0 {
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
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %71

24:                                               ; preds = %4
  %25 = load i8*, i8** @Z_NULL, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 6
  store i8* %25, i8** %26, align 8
  %27 = load i8*, i8** @Z_NULL, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 5
  store i8* %27, i8** %28, align 8
  %29 = load i8*, i8** @Z_NULL, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 4
  store i8* %29, i8** %30, align 8
  %31 = load i32, i32* @Z_DEFAULT_COMPRESSION, align 4
  %32 = call i32 @deflateInit(%struct.TYPE_9__* %12, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @Z_OK, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = call i32 @g_warning(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %71

38:                                               ; preds = %24
  %39 = load i32, i32* %7, align 4
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i32 %39, i32* %40, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  store i32* %41, i32** %42, align 8
  %43 = call %struct.TYPE_10__* (...) @g_byte_array_new()
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %15, align 8
  br label %44

44:                                               ; preds = %57, %38
  %45 = load i32, i32* @ZLIB_BUF_SIZE, align 4
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  store i32* %20, i32** %47, align 8
  %48 = load i32, i32* @Z_FINISH, align 4
  %49 = call i32 @deflate(%struct.TYPE_9__* %12, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* @ZLIB_BUF_SIZE, align 4
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %50, %52
  store i32 %53, i32* %11, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @g_byte_array_append(%struct.TYPE_10__* %54, i32* %20, i32 %55)
  br label %57

57:                                               ; preds = %44
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @Z_STREAM_END, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %44, label %61

61:                                               ; preds = %57
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %9, align 8
  store i32 %64, i32* %65, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %67 = load i32, i32* @FALSE, align 4
  %68 = call i32* @g_byte_array_free(%struct.TYPE_10__* %66, i32 %67)
  %69 = load i32**, i32*** %8, align 8
  store i32* %68, i32** %69, align 8
  %70 = call i32 @deflateEnd(%struct.TYPE_9__* %12)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %71

71:                                               ; preds = %61, %36, %23
  %72 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @deflateInit(%struct.TYPE_9__*, i32) #2

declare dso_local i32 @g_warning(i8*) #2

declare dso_local %struct.TYPE_10__* @g_byte_array_new(...) #2

declare dso_local i32 @deflate(%struct.TYPE_9__*, i32) #2

declare dso_local i32 @g_byte_array_append(%struct.TYPE_10__*, i32*, i32) #2

declare dso_local i32* @g_byte_array_free(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @deflateEnd(%struct.TYPE_9__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
