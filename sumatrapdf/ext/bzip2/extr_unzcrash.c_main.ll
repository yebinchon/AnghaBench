; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/bzip2/extr_unzcrash.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/bzip2/extr_unzcrash.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"usage: unzcrash filename\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"unzcrash: can't open %s\0A\00", align 1
@inbuf = common dso_local global i64* null, align 8
@M_BLOCK = common dso_local global i32 0, align 4
@nIn = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"%d bytes read\0A\00", align 1
@nZ = common dso_local global i32 0, align 4
@zbuf = common dso_local global i32 0, align 4
@BZ_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"%d after compression\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"bit %d  \00", align 1
@M_BLOCK_OUT = common dso_local global i32 0, align 4
@nOut = common dso_local global i32 0, align 4
@outbuf = common dso_local global i64* null, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c" %d  %s \00", align 1
@bzerrorstrings = common dso_local global i8** null, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"nIn/nOut mismatch %d %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"mismatch at %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"really ok!\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"all ok\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 2
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %132

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i32* @fopen(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @stderr, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  store i32 1, i32* %3, align 4
  br label %132

28:                                               ; preds = %15
  %29 = load i64*, i64** @inbuf, align 8
  %30 = load i32, i32* @M_BLOCK, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @fread(i64* %29, i32 1, i32 %30, i32* %31)
  store i32 %32, i32* @nIn, align 4
  %33 = load i32, i32* @stderr, align 4
  %34 = load i32, i32* @nIn, align 4
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @M_BLOCK, align 4
  store i32 %36, i32* @nZ, align 4
  %37 = load i32, i32* @zbuf, align 4
  %38 = load i64*, i64** @inbuf, align 8
  %39 = load i32, i32* @nIn, align 4
  %40 = call i32 @BZ2_bzBuffToBuffCompress(i32 %37, i32* @nZ, i64* %38, i32 %39, i32 9, i32 0, i32 30)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @BZ_OK, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32, i32* @stderr, align 4
  %47 = load i32, i32* @nZ, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %47)
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %126, %28
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @nZ, align 4
  %52 = mul nsw i32 %51, 8
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %129

54:                                               ; preds = %49
  %55 = load i32, i32* @stderr, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @flip_bit(i32 %58)
  %60 = load i32, i32* @M_BLOCK_OUT, align 4
  store i32 %60, i32* @nOut, align 4
  %61 = load i64*, i64** @outbuf, align 8
  %62 = load i32, i32* @zbuf, align 4
  %63 = load i32, i32* @nZ, align 4
  %64 = call i32 @BZ2_bzBuffToBuffDecompress(i64* %61, i32* @nOut, i32 %62, i32 %63, i32 0, i32 0)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* @stderr, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i8**, i8*** @bzerrorstrings, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sub nsw i32 0, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %67, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %66, i8* %72)
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @BZ_OK, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %54
  %78 = load i32, i32* @stderr, align 4
  %79 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %123

80:                                               ; preds = %54
  %81 = load i32, i32* @nOut, align 4
  %82 = load i32, i32* @nIn, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load i32, i32* @stderr, align 4
  %86 = load i32, i32* @nIn, align 4
  %87 = load i32, i32* @nOut, align 4
  %88 = call i32 (i32, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %86, i32 %87)
  store i32 1, i32* %3, align 4
  br label %132

89:                                               ; preds = %80
  store i32 0, i32* %9, align 4
  br label %90

90:                                               ; preds = %111, %89
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @nOut, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %114

94:                                               ; preds = %90
  %95 = load i64*, i64** @inbuf, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = load i64*, i64** @outbuf, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %99, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %94
  %107 = load i32, i32* @stderr, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 (i32, i8*, ...) @fprintf(i32 %107, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %108)
  store i32 1, i32* %3, align 4
  br label %132

110:                                              ; preds = %94
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  br label %90

114:                                              ; preds = %90
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @nOut, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i32, i32* @stderr, align 4
  %120 = call i32 (i32, i8*, ...) @fprintf(i32 %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  br label %121

121:                                              ; preds = %118, %114
  br label %122

122:                                              ; preds = %121
  br label %123

123:                                              ; preds = %122, %77
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @flip_bit(i32 %124)
  br label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %8, align 4
  br label %49

129:                                              ; preds = %49
  %130 = load i32, i32* @stderr, align 4
  %131 = call i32 (i32, i8*, ...) @fprintf(i32 %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %129, %106, %84, %22, %12
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fread(i64*, i32, i32, i32*) #1

declare dso_local i32 @BZ2_bzBuffToBuffCompress(i32, i32*, i64*, i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @flip_bit(i32) #1

declare dso_local i32 @BZ2_bzBuffToBuffDecompress(i64*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
