; ModuleID = '/home/carl/AnghaBench/zstd/tests/extr_bigdict.c_compress.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/extr_bigdict.c_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i64, i64, i64, i32 }
%struct.TYPE_7__ = type { i8*, i64, i64, i32 }

@ZSTD_e_end = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Decompression error: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Frame not finished!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i64, i8*, i64, i8*, i32)* @compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compress(i32* %0, i32* %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_8__, align 8
  %19 = alloca %struct.TYPE_7__, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_8__, align 8
  %23 = alloca %struct.TYPE_7__, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %25 = load i8*, i8** %14, align 8
  store i8* %25, i8** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %27 = load i64, i64* %15, align 8
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 4
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %32 = load i8*, i8** %12, align 8
  store i8* %32, i8** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %34 = load i64, i64* %13, align 8
  store i64 %34, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  store i32 0, i32* %36, align 8
  store i32 0, i32* %20, align 4
  br label %37

37:                                               ; preds = %124, %8
  %38 = load i32, i32* %20, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %42, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br label %50

50:                                               ; preds = %46, %40
  %51 = phi i1 [ true, %40 ], [ %49, %46 ]
  br label %52

52:                                               ; preds = %50, %37
  %53 = phi i1 [ false, %37 ], [ %51, %50 ]
  br i1 %53, label %54, label %125

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %17, align 4
  %58 = call i64 @ZSTD_compressStream2(i32* %56, %struct.TYPE_7__* %19, %struct.TYPE_8__* %18, i32 %57)
  store i64 %58, i64* %21, align 8
  %59 = load i64, i64* %21, align 8
  %60 = call i64 @ZSTD_isError(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  store i32 1, i32* %9, align 4
  br label %126

63:                                               ; preds = %54
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* @ZSTD_e_end, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i64, i64* %21, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 1, i32* %20, align 4
  br label %71

71:                                               ; preds = %70, %67, %63
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %73 = load i8*, i8** %12, align 8
  store i8* %73, i8** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %74, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  store i64 0, i64* %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  store i64 0, i64* %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 4
  store i32 0, i32* %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %81 = load i8*, i8** %16, align 8
  store i8* %81, i8** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %83 = load i64, i64* %15, align 8
  store i64 %83, i64* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  store i64 0, i64* %84, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 3
  store i32 0, i32* %85, align 8
  store i64 1, i64* %21, align 8
  br label %86

86:                                               ; preds = %114, %71
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp slt i64 %88, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp sgt i64 %94, 0
  br label %96

96:                                               ; preds = %92, %86
  %97 = phi i1 [ true, %86 ], [ %95, %92 ]
  br i1 %97, label %98, label %115

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  store i64 0, i64* %99, align 8
  %100 = load i32*, i32** %11, align 8
  %101 = call i64 @ZSTD_decompressStream(i32* %100, %struct.TYPE_7__* %23, %struct.TYPE_8__* %22)
  store i64 %101, i64* %21, align 8
  %102 = load i64, i64* %21, align 8
  %103 = call i64 @ZSTD_isError(i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %98
  %106 = load i32, i32* @stderr, align 4
  %107 = load i64, i64* %21, align 8
  %108 = call i8* @ZSTD_getErrorName(i64 %107)
  %109 = call i32 (i32, i8*, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %108)
  store i32 1, i32* %9, align 4
  br label %126

110:                                              ; preds = %98
  %111 = load i64, i64* %21, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  br label %115

114:                                              ; preds = %110
  br label %86

115:                                              ; preds = %113, %96
  %116 = load i32, i32* %20, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load i64, i64* %21, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i32, i32* @stderr, align 4
  %123 = call i32 (i32, i8*, ...) @fprintf(i32 %122, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %126

124:                                              ; preds = %118, %115
  br label %37

125:                                              ; preds = %52
  store i32 0, i32* %9, align 4
  br label %126

126:                                              ; preds = %125, %121, %105, %62
  %127 = load i32, i32* %9, align 4
  ret i32 %127
}

declare dso_local i64 @ZSTD_compressStream2(i32*, %struct.TYPE_7__*, %struct.TYPE_8__*, i32) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i64 @ZSTD_decompressStream(i32*, %struct.TYPE_7__*, %struct.TYPE_8__*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @ZSTD_getErrorName(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
