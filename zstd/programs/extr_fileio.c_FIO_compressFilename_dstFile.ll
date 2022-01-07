; ModuleID = '/home/carl/AnghaBench/zstd/programs/extr_fileio.c_FIO_compressFilename_dstFile.c'
source_filename = "/home/carl/AnghaBench/zstd/programs/extr_fileio.c_FIO_compressFilename_dstFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }

@.str = private unnamed_addr constant [46 x i8] c"FIO_compressFilename_dstFile: opening dst: %s\00", align 1
@stdinmark = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"zstd: %s: %s \0A\00", align 1
@errno = common dso_local global i32 0, align 4
@nulmark = common dso_local global i32 0, align 4
@stdoutmark = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i8*, i8*, i32)* @FIO_compressFilename_dstFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FIO_compressFilename_dstFile(i32* %0, i32* %1, i32* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = bitcast %struct.TYPE_4__* %8 to { i32*, i32* }*
  %19 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %18, i32 0, i32 0
  store i32* %1, i32** %19, align 8
  %20 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %18, i32 0, i32 1
  store i32* %2, i32** %20, align 8
  store i32* %0, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %54

29:                                               ; preds = %6
  store i32 1, i32* %13, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 (i32, i8*, i8*, ...) @DISPLAYLEVEL(i32 6, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = load i32*, i32** %9, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = call i32* @FIO_openDstFile(i32* %32, i8* %33, i8* %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32* %35, i32** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  store i32 1, i32* %7, align 4
  br label %116

41:                                               ; preds = %29
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @addHandler(i8* %42)
  %44 = load i8*, i8** %11, align 8
  %45 = load i32, i32* @stdinmark, align 4
  %46 = call i64 @strcmp(i8* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load i8*, i8** %11, align 8
  %50 = call i64 @UTIL_getFileStat(i8* %49, i32* %15)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 1, i32* %16, align 4
  br label %53

53:                                               ; preds = %52, %48, %41
  br label %54

54:                                               ; preds = %53, %6
  %55 = load i32*, i32** %9, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = load i32, i32* %12, align 4
  %59 = bitcast %struct.TYPE_4__* %8 to { i32*, i32* }*
  %60 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %59, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @FIO_compressFilename_internal(i32* %55, i32* %61, i32* %63, i8* %56, i8* %57, i32 %58)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %114

67:                                               ; preds = %54
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32* null, i32** %70, align 8
  %71 = call i32 (...) @clearHandler()
  %72 = load i32*, i32** %17, align 8
  %73 = call i64 @fclose(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %67
  %76 = load i8*, i8** %10, align 8
  %77 = load i32, i32* @errno, align 4
  %78 = call i32 @strerror(i32 %77)
  %79 = call i32 (i32, i8*, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %76, i32 %78)
  store i32 1, i32* %14, align 4
  br label %80

80:                                               ; preds = %75, %67
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %80
  %84 = load i8*, i8** %10, align 8
  %85 = load i32, i32* @nulmark, align 4
  %86 = call i64 @strcmp(i8* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  %89 = load i8*, i8** %10, align 8
  %90 = load i32, i32* @stdoutmark, align 4
  %91 = call i64 @strcmp(i8* %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i8*, i8** %10, align 8
  %95 = call i32 @FIO_remove(i8* %94)
  br label %113

96:                                               ; preds = %88, %83, %80
  %97 = load i8*, i8** %10, align 8
  %98 = load i32, i32* @stdoutmark, align 4
  %99 = call i64 @strcmp(i8* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %96
  %102 = load i8*, i8** %10, align 8
  %103 = load i32, i32* @nulmark, align 4
  %104 = call i64 @strcmp(i8* %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load i32, i32* %16, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i8*, i8** %10, align 8
  %111 = call i32 @UTIL_setFileStat(i8* %110, i32* %15)
  br label %112

112:                                              ; preds = %109, %106, %101, %96
  br label %113

113:                                              ; preds = %112, %93
  br label %114

114:                                              ; preds = %113, %54
  %115 = load i32, i32* %14, align 4
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %114, %40
  %117 = load i32, i32* %7, align 4
  ret i32 %117
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, i8*, ...) #1

declare dso_local i32* @FIO_openDstFile(i32*, i8*, i8*) #1

declare dso_local i32 @addHandler(i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i64 @UTIL_getFileStat(i8*, i32*) #1

declare dso_local i32 @FIO_compressFilename_internal(i32*, i32*, i32*, i8*, i8*, i32) #1

declare dso_local i32 @clearHandler(...) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @FIO_remove(i8*) #1

declare dso_local i32 @UTIL_setFileStat(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
