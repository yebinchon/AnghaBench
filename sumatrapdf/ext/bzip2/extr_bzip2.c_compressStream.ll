; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/bzip2/extr_bzip2.c_compressStream.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/bzip2/extr_bzip2.c_compressStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@blockSize100k = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@workFactor = common dso_local global i32 0, align 4
@BZ_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@True = common dso_local global i64 0, align 8
@EOF = common dso_local global i64 0, align 8
@stdout = common dso_local global i32* null, align 8
@outputHandleJustInCase = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c" no data compressed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"%6.3f:1, %6.3f bits/byte, %5.2f%% saved, %s in, %s out.\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"compress:unexpected error\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"compress:end\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @compressStream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compressStream(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [5000 x i32], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [32 x i8], align 16
  %17 = alloca [32 x i8], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @SET_BINARY_MODE(i32* %22)
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @SET_BINARY_MODE(i32* %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i64 @ferror(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %186

30:                                               ; preds = %2
  %31 = load i32*, i32** %4, align 8
  %32 = call i64 @ferror(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %186

35:                                               ; preds = %30
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* @blockSize100k, align 4
  %38 = load i32, i32* @verbosity, align 4
  %39 = load i32, i32* @workFactor, align 4
  %40 = call i32* @BZ2_bzWriteOpen(i64* %12, i32* %36, i32 %37, i32 %38, i32 %39)
  store i32* %40, i32** %5, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* @BZ_OK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %177

45:                                               ; preds = %35
  %46 = load i32, i32* @verbosity, align 4
  %47 = icmp sge i32 %46, 2
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @stderr, align 4
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %45
  br label %52

52:                                               ; preds = %82, %51
  %53 = load i64, i64* @True, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %52
  %56 = load i32*, i32** %3, align 8
  %57 = call i64 @myfeof(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %83

60:                                               ; preds = %55
  %61 = getelementptr inbounds [5000 x i32], [5000 x i32]* %6, i64 0, i64 0
  %62 = load i32*, i32** %3, align 8
  %63 = call i64 @fread(i32* %61, i32 4, i32 5000, i32* %62)
  store i64 %63, i64* %7, align 8
  %64 = load i32*, i32** %3, align 8
  %65 = call i64 @ferror(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %186

68:                                               ; preds = %60
  %69 = load i64, i64* %7, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i32*, i32** %5, align 8
  %73 = getelementptr inbounds [5000 x i32], [5000 x i32]* %6, i64 0, i64 0
  %74 = bitcast i32* %73 to i8*
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @BZ2_bzWrite(i64* %12, i32* %72, i8* %74, i64 %75)
  br label %77

77:                                               ; preds = %71, %68
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* @BZ_OK, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %177

82:                                               ; preds = %77
  br label %52

83:                                               ; preds = %59, %52
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @BZ2_bzWriteClose64(i64* %12, i32* %84, i32 0, i64* %8, i64* %9, i64* %10, i64* %11)
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* @BZ_OK, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %177

90:                                               ; preds = %83
  %91 = load i32*, i32** %4, align 8
  %92 = call i64 @ferror(i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %186

95:                                               ; preds = %90
  %96 = load i32*, i32** %4, align 8
  %97 = call i64 @fflush(i32* %96)
  store i64 %97, i64* %14, align 8
  %98 = load i64, i64* %14, align 8
  %99 = load i64, i64* @EOF, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %186

102:                                              ; preds = %95
  %103 = load i32*, i32** %4, align 8
  %104 = load i32*, i32** @stdout, align 8
  %105 = icmp ne i32* %103, %104
  br i1 %105, label %106, label %122

106:                                              ; preds = %102
  %107 = load i32*, i32** %4, align 8
  %108 = call i64 @fileno(i32* %107)
  store i64 %108, i64* %15, align 8
  %109 = load i64, i64* %15, align 8
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %186

112:                                              ; preds = %106
  %113 = load i64, i64* %15, align 8
  %114 = call i32 @applySavedFileAttrToOutputFile(i64 %113)
  %115 = load i32*, i32** %4, align 8
  %116 = call i64 @fclose(i32* %115)
  store i64 %116, i64* %14, align 8
  store i32* null, i32** @outputHandleJustInCase, align 8
  %117 = load i64, i64* %14, align 8
  %118 = load i64, i64* @EOF, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  br label %186

121:                                              ; preds = %112
  br label %122

122:                                              ; preds = %121, %102
  store i32* null, i32** @outputHandleJustInCase, align 8
  %123 = load i32*, i32** %3, align 8
  %124 = call i64 @ferror(i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  br label %186

127:                                              ; preds = %122
  %128 = load i32*, i32** %3, align 8
  %129 = call i64 @fclose(i32* %128)
  store i64 %129, i64* %14, align 8
  %130 = load i64, i64* %14, align 8
  %131 = load i64, i64* @EOF, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  br label %186

134:                                              ; preds = %127
  %135 = load i32, i32* @verbosity, align 4
  %136 = icmp sge i32 %135, 1
  br i1 %136, label %137, label %176

137:                                              ; preds = %134
  %138 = load i64, i64* %8, align 8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %137
  %141 = load i64, i64* %9, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i32, i32* @stderr, align 4
  %145 = call i32 (i32, i8*, ...) @fprintf(i32 %144, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %175

146:                                              ; preds = %140, %137
  %147 = load i64, i64* %8, align 8
  %148 = load i64, i64* %9, align 8
  %149 = call i32 @uInt64_from_UInt32s(i32* %18, i64 %147, i64 %148)
  %150 = load i64, i64* %10, align 8
  %151 = load i64, i64* %11, align 8
  %152 = call i32 @uInt64_from_UInt32s(i32* %19, i64 %150, i64 %151)
  %153 = call double @uInt64_to_double(i32* %18)
  store double %153, double* %20, align 8
  %154 = call double @uInt64_to_double(i32* %19)
  store double %154, double* %21, align 8
  %155 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %156 = call i32 @uInt64_toAscii(i8* %155, i32* %18)
  %157 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %158 = call i32 @uInt64_toAscii(i8* %157, i32* %19)
  %159 = load i32, i32* @stderr, align 4
  %160 = load double, double* %20, align 8
  %161 = load double, double* %21, align 8
  %162 = fdiv double %160, %161
  %163 = load double, double* %21, align 8
  %164 = fmul double 8.000000e+00, %163
  %165 = load double, double* %20, align 8
  %166 = fdiv double %164, %165
  %167 = load double, double* %21, align 8
  %168 = load double, double* %20, align 8
  %169 = fdiv double %167, %168
  %170 = fsub double 1.000000e+00, %169
  %171 = fmul double 1.000000e+02, %170
  %172 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %173 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %174 = call i32 (i32, i8*, ...) @fprintf(i32 %159, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), double %162, double %166, double %171, i8* %172, i8* %173)
  br label %175

175:                                              ; preds = %146, %143
  br label %176

176:                                              ; preds = %175, %134
  br label %192

177:                                              ; preds = %89, %81, %44
  %178 = load i32*, i32** %5, align 8
  %179 = call i32 @BZ2_bzWriteClose64(i64* %13, i32* %178, i32 1, i64* %8, i64* %9, i64* %10, i64* %11)
  %180 = load i64, i64* %12, align 8
  switch i64 %180, label %188 [
    i64 130, label %181
    i64 128, label %183
    i64 129, label %185
  ]

181:                                              ; preds = %177
  %182 = call i32 (...) @configError()
  br label %190

183:                                              ; preds = %177
  %184 = call i32 (...) @outOfMemory()
  br label %190

185:                                              ; preds = %177
  br label %186

186:                                              ; preds = %185, %133, %126, %120, %111, %101, %94, %67, %34, %29
  %187 = call i32 (...) @ioError()
  br label %190

188:                                              ; preds = %177
  %189 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %190

190:                                              ; preds = %188, %186, %183, %181
  %191 = call i32 @panic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %192

192:                                              ; preds = %190, %176
  ret void
}

declare dso_local i32 @SET_BINARY_MODE(i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32* @BZ2_bzWriteOpen(i64*, i32*, i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @myfeof(i32*) #1

declare dso_local i64 @fread(i32*, i32, i32, i32*) #1

declare dso_local i32 @BZ2_bzWrite(i64*, i32*, i8*, i64) #1

declare dso_local i32 @BZ2_bzWriteClose64(i64*, i32*, i32, i64*, i64*, i64*, i64*) #1

declare dso_local i64 @fflush(i32*) #1

declare dso_local i64 @fileno(i32*) #1

declare dso_local i32 @applySavedFileAttrToOutputFile(i64) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @uInt64_from_UInt32s(i32*, i64, i64) #1

declare dso_local double @uInt64_to_double(i32*) #1

declare dso_local i32 @uInt64_toAscii(i8*, i32*) #1

declare dso_local i32 @configError(...) #1

declare dso_local i32 @outOfMemory(...) #1

declare dso_local i32 @ioError(...) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
