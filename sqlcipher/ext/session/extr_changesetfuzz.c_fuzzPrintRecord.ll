; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/session/extr_changesetfuzz.c_fuzzPrintRecord.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/session/extr_changesetfuzz.c_fuzzPrintRecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64* }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%sn/a\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s%lld\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%f\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"X'\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@__const.fuzzPrintRecord.aHex = private unnamed_addr constant [16 x i8] c"0123456789ABCDEF", align 16
@.str.8 = private unnamed_addr constant [7 x i8] c"%sNULL\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32**, i32)* @fuzzPrintRecord to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuzzPrintRecord(%struct.TYPE_3__* %0, i32** %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca [16 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load i32, i32* @SQLITE_OK, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32**, i32*** %5, align 8
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %8, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %129, %3
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %132

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %128

38:                                               ; preds = %29, %26
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  switch i32 %43, label %127 [
    i32 0, label %44
    i32 1, label %47
    i32 2, label %55
    i32 3, label %64
    i32 4, label %64
    i32 5, label %124
  ]

44:                                               ; preds = %38
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  br label %127

47:                                               ; preds = %38
  store i32 0, i32* %12, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @fuzzGetI64(i32* %48)
  store i32 %49, i32* %12, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %50, i32 %51)
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 8
  store i32* %54, i32** %8, align 8
  br label %127

55:                                               ; preds = %38
  store i32 0, i32* %13, align 4
  store double 0.000000e+00, double* %14, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @fuzzGetI64(i32* %56)
  store i32 %57, i32* %13, align 4
  %58 = call i32 @memcpy(double* %14, i32* %13, i32 8)
  %59 = load i8*, i8** %10, align 8
  %60 = load double, double* %14, align 8
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %59, double %60)
  %62 = load i32*, i32** %8, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 8
  store i32* %63, i32** %8, align 8
  br label %127

64:                                               ; preds = %38, %38
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @fuzzGetVarint(i32* %65, i32* %15)
  %67 = load i32*, i32** %8, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32* %69, i32** %8, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = load i32, i32* %11, align 4
  %72 = icmp eq i32 %71, 3
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %70, i8* %74)
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %115, %64
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %15, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %118

80:                                               ; preds = %76
  %81 = load i32, i32* %11, align 4
  %82 = icmp eq i32 %81, 3
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %88)
  br label %114

90:                                               ; preds = %80
  %91 = bitcast [16 x i8]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %91, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.fuzzPrintRecord.aHex, i32 0, i32 0), i64 16, i1 false)
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = ashr i32 %96, 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %101)
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, 15
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %90, %83
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %76

118:                                              ; preds = %76
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %120 = load i32, i32* %15, align 4
  %121 = load i32*, i32** %8, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32* %123, i32** %8, align 8
  br label %127

124:                                              ; preds = %38
  %125 = load i8*, i8** %10, align 8
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %125)
  br label %127

127:                                              ; preds = %38, %124, %118, %55, %47, %44
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8** %10, align 8
  br label %128

128:                                              ; preds = %127, %29
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  br label %20

132:                                              ; preds = %20
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %134 = load i32*, i32** %8, align 8
  %135 = load i32**, i32*** %5, align 8
  store i32* %134, i32** %135, align 8
  %136 = load i32, i32* %7, align 4
  ret i32 %136
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fuzzGetI64(i32*) #1

declare dso_local i32 @memcpy(double*, i32*, i32) #1

declare dso_local i32 @fuzzGetVarint(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
