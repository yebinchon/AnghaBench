; ModuleID = '/home/carl/AnghaBench/zstd/programs/extr_fileio.c_FIO_decompressDstFile.c'
source_filename = "/home/carl/AnghaBench/zstd/programs/extr_fileio.c_FIO_decompressDstFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32* }

@stdinmark = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"zstd: %s: %s \0A\00", align 1
@errno = common dso_local global i32 0, align 4
@nulmark = common dso_local global i32 0, align 4
@stdoutmark = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i32*, i8*, i8*)* @FIO_decompressDstFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FIO_decompressDstFile(%struct.TYPE_9__* %0, i32* %1, i32* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i32* %1, i32** %17, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %49

21:                                               ; preds = %5
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %21
  store i32 1, i32* %15, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = call i32* @FIO_openDstFile(%struct.TYPE_9__* %27, i8* %28, i8* %29)
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i32* %30, i32** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 1, i32* %6, align 4
  br label %108

36:                                               ; preds = %26
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @addHandler(i8* %37)
  %39 = load i8*, i8** %11, align 8
  %40 = load i32, i32* @stdinmark, align 4
  %41 = call i64 @strcmp(i8* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load i8*, i8** %11, align 8
  %45 = call i64 @UTIL_getFileStat(i8* %44, i32* %13)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 1, i32* %14, align 4
  br label %48

48:                                               ; preds = %47, %43, %36
  br label %49

49:                                               ; preds = %48, %21, %5
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @FIO_decompressFrames(%struct.TYPE_9__* %50, i32* %55, i32* %51, i8* %52, i8* %53)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %106

59:                                               ; preds = %49
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %16, align 8
  %62 = call i32 (...) @clearHandler()
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i32* null, i32** %63, align 8
  %64 = load i32*, i32** %16, align 8
  %65 = call i64 @fclose(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load i8*, i8** %10, align 8
  %69 = load i32, i32* @errno, align 4
  %70 = call i32 @strerror(i32 %69)
  %71 = call i32 @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %68, i32 %70)
  store i32 1, i32* %12, align 4
  br label %72

72:                                               ; preds = %67, %59
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %72
  %76 = load i8*, i8** %10, align 8
  %77 = load i32, i32* @nulmark, align 4
  %78 = call i64 @strcmp(i8* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = load i8*, i8** %10, align 8
  %82 = load i32, i32* @stdoutmark, align 4
  %83 = call i64 @strcmp(i8* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i8*, i8** %10, align 8
  %87 = call i32 @FIO_remove(i8* %86)
  br label %105

88:                                               ; preds = %80, %75, %72
  %89 = load i8*, i8** %10, align 8
  %90 = load i32, i32* @stdoutmark, align 4
  %91 = call i64 @strcmp(i8* %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %88
  %94 = load i8*, i8** %10, align 8
  %95 = load i32, i32* @nulmark, align 4
  %96 = call i64 @strcmp(i8* %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i8*, i8** %10, align 8
  %103 = call i32 @UTIL_setFileStat(i8* %102, i32* %13)
  br label %104

104:                                              ; preds = %101, %98, %93, %88
  br label %105

105:                                              ; preds = %104, %85
  br label %106

106:                                              ; preds = %105, %49
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %106, %35
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i32* @FIO_openDstFile(%struct.TYPE_9__*, i8*, i8*) #1

declare dso_local i32 @addHandler(i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i64 @UTIL_getFileStat(i8*, i32*) #1

declare dso_local i32 @FIO_decompressFrames(%struct.TYPE_9__*, i32*, i32*, i8*, i8*) #1

declare dso_local i32 @clearHandler(...) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @FIO_remove(i8*) #1

declare dso_local i32 @UTIL_setFileStat(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
