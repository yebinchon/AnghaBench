; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_stb.c_do_compressor.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_stb.c_do_compressor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"data/dummy.bin\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"FAILED %d -> %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%d -> %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"FAILED.\0A\00", align 1
@.str.5 = private unnamed_addr constant [99 x i8] c"Usage: stb <hashsize> <output> <filetocompress>\0A   or  stb            <output> <filetodecompress>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_compressor(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %55

16:                                               ; preds = %2
  %17 = load i8**, i8*** %4, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i8* @stb_file(i8* %19, i64* %6)
  store i8* %20, i8** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %7, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %54

25:                                               ; preds = %16
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @stb_compress_tofile(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = call i8* @stb_decompress_fromfile(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %9)
  store i8* %29, i8** %11, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %35)
  br label %53

37:                                               ; preds = %25
  %38 = load i8*, i8** %11, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @memcmp(i8* %38, i8* %39, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46)
  br label %52

48:                                               ; preds = %37
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %44
  br label %53

53:                                               ; preds = %52, %33
  br label %54

54:                                               ; preds = %53, %16
  br label %113

55:                                               ; preds = %2
  %56 = load i8**, i8*** %4, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @atoi(i8* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %84

62:                                               ; preds = %55
  %63 = load i32, i32* %3, align 4
  %64 = icmp eq i32 %63, 4
  br i1 %64, label %65, label %84

65:                                               ; preds = %62
  %66 = load i8**, i8*** %4, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 3
  %68 = load i8*, i8** %67, align 8
  %69 = call i8* @stb_file(i8* %68, i64* %6)
  store i8* %69, i8** %5, align 8
  %70 = load i64, i64* %6, align 8
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %7, align 4
  %72 = load i8*, i8** %5, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %65
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @stb_compress_hashsize(i32 %75)
  %77 = load i8**, i8*** %4, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 2
  %79 = load i8*, i8** %78, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @stb_compress_tofile(i8* %79, i8* %80, i32 %81)
  br label %83

83:                                               ; preds = %74, %65
  br label %113

84:                                               ; preds = %62, %55
  %85 = load i32, i32* %3, align 4
  %86 = icmp eq i32 %85, 3
  br i1 %86, label %87, label %109

87:                                               ; preds = %84
  %88 = load i8**, i8*** %4, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 2
  %90 = load i8*, i8** %89, align 8
  %91 = call i8* @stb_decompress_fromfile(i8* %90, i32* %7)
  store i8* %91, i8** %5, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %105

94:                                               ; preds = %87
  %95 = load i8**, i8*** %4, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i32* @fopen(i8* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %98, i32** %13, align 8
  %99 = load i8*, i8** %5, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32*, i32** %13, align 8
  %102 = call i32 @fwrite(i8* %99, i32 1, i32 %100, i32* %101)
  %103 = load i32*, i32** %13, align 8
  %104 = call i32 @fclose(i32* %103)
  br label %108

105:                                              ; preds = %87
  %106 = load i32, i32* @stderr, align 4
  %107 = call i32 @fprintf(i32 %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %94
  br label %112

109:                                              ; preds = %84
  %110 = load i32, i32* @stderr, align 4
  %111 = call i32 @fprintf(i32 %110, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.5, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109, %108
  br label %113

113:                                              ; preds = %54, %112, %83
  ret void
}

declare dso_local i8* @stb_file(i8*, i64*) #1

declare dso_local i32 @stb_compress_tofile(i8*, i8*, i32) #1

declare dso_local i8* @stb_decompress_fromfile(i8*, i32*) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @stb_compress_hashsize(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
