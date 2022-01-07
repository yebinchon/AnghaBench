; ModuleID = '/home/carl/AnghaBench/zstd/contrib/experimental_dict_builders/fastCover/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/experimental_dict_builders/fastCover/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, double, %struct.TYPE_4__ }

@.str = private unnamed_addr constant [14 x i8] c"fastCoverDict\00", align 1
@g_defaultMaxDictSize = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"k=\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"d=\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"f=\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"steps=\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"split=\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"dictID=\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"maxdict=\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"in=\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"out=\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Incorrect parameters\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%u %s\0A\00", align 1
@DEFAULT_CLEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8**, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca %struct.TYPE_4__, align 4
  %29 = alloca %struct.TYPE_5__, align 8
  %30 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 2, i32* %6, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 23, i32* %11, align 4
  store i32 32, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 100, i32* %14, align 4
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  store i32 0, i32* %16, align 4
  %34 = load i32, i32* @g_defaultMaxDictSize, align 4
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 8
  %38 = trunc i64 %37 to i32
  %39 = call i64 @malloc(i32 %38)
  %40 = inttoptr i64 %39 to i8**
  store i8** %40, i8*** %18, align 8
  store i32 0, i32* %19, align 4
  store i8* null, i8** %20, align 8
  %41 = load i32, i32* %19, align 4
  store i32 %41, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i8** null, i8*** %23, align 8
  store i32 1, i32* %24, align 4
  br label %42

42:                                               ; preds = %105, %2
  %43 = load i32, i32* %24, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %108

46:                                               ; preds = %42
  %47 = load i8**, i8*** %5, align 8
  %48 = load i32, i32* %24, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %25, align 8
  %52 = call i64 @longCommandWArg(i8** %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = call i32 @readU32FromChar(i8** %25)
  store i32 %55, i32* %9, align 4
  br label %105

56:                                               ; preds = %46
  %57 = call i64 @longCommandWArg(i8** %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 @readU32FromChar(i8** %25)
  store i32 %60, i32* %10, align 4
  br label %105

61:                                               ; preds = %56
  %62 = call i64 @longCommandWArg(i8** %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 @readU32FromChar(i8** %25)
  store i32 %65, i32* %11, align 4
  br label %105

66:                                               ; preds = %61
  %67 = call i64 @longCommandWArg(i8** %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = call i32 @readU32FromChar(i8** %25)
  store i32 %70, i32* %12, align 4
  br label %105

71:                                               ; preds = %66
  %72 = call i64 @longCommandWArg(i8** %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = call i32 @readU32FromChar(i8** %25)
  store i32 %75, i32* %14, align 4
  br label %105

76:                                               ; preds = %71
  %77 = call i64 @longCommandWArg(i8** %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = call i32 @readU32FromChar(i8** %25)
  store i32 %80, i32* %16, align 4
  br label %105

81:                                               ; preds = %76
  %82 = call i64 @longCommandWArg(i8** %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = call i32 @readU32FromChar(i8** %25)
  store i32 %85, i32* %17, align 4
  br label %105

86:                                               ; preds = %81
  %87 = call i64 @longCommandWArg(i8** %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = load i8*, i8** %25, align 8
  %91 = load i8**, i8*** %18, align 8
  %92 = load i32, i32* %19, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  store i8* %90, i8** %94, align 8
  %95 = load i32, i32* %19, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %19, align 4
  br label %105

97:                                               ; preds = %86
  %98 = call i64 @longCommandWArg(i8** %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i8*, i8** %25, align 8
  store i8* %101, i8** %15, align 8
  br label %105

102:                                              ; preds = %97
  %103 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %3, align 4
  br label %178

105:                                              ; preds = %100, %89, %84, %79, %74, %69, %64, %59, %54
  %106 = load i32, i32* %24, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %24, align 4
  br label %42

108:                                              ; preds = %42
  %109 = load i8**, i8*** %18, align 8
  %110 = load i32, i32* %19, align 4
  %111 = load i32, i32* %22, align 4
  %112 = call i8** @UTIL_createFileList(i8** %109, i32 %110, i8** %20, i32* %21, i32 %111)
  store i8** %112, i8*** %23, align 8
  %113 = load i8**, i8*** %23, align 8
  %114 = icmp ne i8** %113, null
  br i1 %114, label %115, label %137

115:                                              ; preds = %108
  store i32 0, i32* %26, align 4
  br label %116

116:                                              ; preds = %128, %115
  %117 = load i32, i32* %26, align 4
  %118 = load i32, i32* %21, align 4
  %119 = icmp ult i32 %117, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %116
  %121 = load i32, i32* %26, align 4
  %122 = load i8**, i8*** %23, align 8
  %123 = load i32, i32* %26, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %122, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %121, i8* %126)
  br label %128

128:                                              ; preds = %120
  %129 = load i32, i32* %26, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %26, align 4
  br label %116

131:                                              ; preds = %116
  %132 = load i8**, i8*** %18, align 8
  %133 = bitcast i8** %132 to i8*
  %134 = call i32 @free(i8* %133)
  %135 = load i8**, i8*** %23, align 8
  store i8** %135, i8*** %18, align 8
  %136 = load i32, i32* %21, align 4
  store i32 %136, i32* %19, align 4
  br label %137

137:                                              ; preds = %131, %108
  store i64 0, i64* %27, align 8
  %138 = load i32, i32* @DEFAULT_CLEVEL, align 4
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  store i32 %138, i32* %139, align 4
  %140 = load i32, i32* %6, align 4
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %140, i32* %141, align 4
  %142 = load i32, i32* %16, align 4
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 %142, i32* %143, align 4
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 6
  %145 = bitcast %struct.TYPE_4__* %144 to i8*
  %146 = bitcast %struct.TYPE_4__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %145, i8* align 4 %146, i64 12, i1 false)
  %147 = load i32, i32* %9, align 4
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 %147, i32* %148, align 8
  %149 = load i32, i32* %10, align 4
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i32 %149, i32* %150, align 4
  %151 = load i32, i32* %11, align 4
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  store i32 %151, i32* %152, align 8
  %153 = load i32, i32* %12, align 4
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  store i32 %153, i32* %154, align 4
  %155 = load i32, i32* %13, align 4
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 4
  store i32 %155, i32* %156, align 8
  %157 = load i32, i32* %14, align 4
  %158 = uitofp i32 %157 to double
  %159 = fdiv double %158, 1.000000e+02
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 5
  store double %159, double* %160, align 8
  %161 = load i8**, i8*** %18, align 8
  %162 = load i32, i32* %19, align 4
  %163 = load i64, i64* %27, align 8
  %164 = load i32, i32* %17, align 4
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32* @getSampleInfo(i8** %161, i32 %162, i64 %163, i32 %164, i32 %166)
  store i32* %167, i32** %30, align 8
  %168 = load i8*, i8** %15, align 8
  %169 = load i32*, i32** %30, align 8
  %170 = load i32, i32* %17, align 4
  %171 = call i32 @FASTCOVER_trainFromFiles(i8* %168, i32* %169, i32 %170, %struct.TYPE_5__* %29)
  store i32 %171, i32* %8, align 4
  %172 = load i8**, i8*** %23, align 8
  %173 = load i8*, i8** %20, align 8
  %174 = call i32 @UTIL_freeFileList(i8** %172, i8* %173)
  %175 = load i32*, i32** %30, align 8
  %176 = call i32 @freeSampleInfo(i32* %175)
  %177 = load i32, i32* %8, align 4
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %137, %102
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @longCommandWArg(i8**, i8*) #1

declare dso_local i32 @readU32FromChar(i8**) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, ...) #1

declare dso_local i8** @UTIL_createFileList(i8**, i32, i8**, i32*, i32) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @getSampleInfo(i8**, i32, i64, i32, i32) #1

declare dso_local i32 @FASTCOVER_trainFromFiles(i8*, i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @UTIL_freeFileList(i8**, i8*) #1

declare dso_local i32 @freeSampleInfo(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
