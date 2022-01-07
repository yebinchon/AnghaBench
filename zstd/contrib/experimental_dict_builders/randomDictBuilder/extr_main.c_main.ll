; ModuleID = '/home/carl/AnghaBench/zstd/contrib/experimental_dict_builders/randomDictBuilder/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/experimental_dict_builders/randomDictBuilder/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@DEFAULT_k = common dso_local global i32 0, align 4
@DEFAULT_OUTPUTFILE = common dso_local global i8* null, align 8
@DEFAULT_DICTID = common dso_local global i32 0, align 4
@g_defaultMaxDictSize = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"k=\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"dictID=\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"maxdict=\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"in=\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"out=\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Incorrect parameters\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%u %s\0A\00", align 1
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
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8**, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_4__, align 4
  %24 = alloca %struct.TYPE_5__, align 4
  %25 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 2, i32* %6, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %29 = load i32, i32* @DEFAULT_k, align 4
  store i32 %29, i32* %9, align 4
  %30 = load i8*, i8** @DEFAULT_OUTPUTFILE, align 8
  store i8* %30, i8** %10, align 8
  %31 = load i32, i32* @DEFAULT_DICTID, align 4
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* @g_defaultMaxDictSize, align 4
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 8
  %36 = trunc i64 %35 to i32
  %37 = call i64 @malloc(i32 %36)
  %38 = inttoptr i64 %37 to i8**
  store i8** %38, i8*** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %39

39:                                               ; preds = %82, %2
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %85

43:                                               ; preds = %39
  %44 = load i8**, i8*** %5, align 8
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %16, align 8
  %49 = call i64 @longCommandWArg(i8** %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = call i32 @readU32FromChar(i8** %16)
  store i32 %52, i32* %9, align 4
  br label %82

53:                                               ; preds = %43
  %54 = call i64 @longCommandWArg(i8** %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 @readU32FromChar(i8** %16)
  store i32 %57, i32* %11, align 4
  br label %82

58:                                               ; preds = %53
  %59 = call i64 @longCommandWArg(i8** %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 @readU32FromChar(i8** %16)
  store i32 %62, i32* %12, align 4
  br label %82

63:                                               ; preds = %58
  %64 = call i64 @longCommandWArg(i8** %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load i8*, i8** %16, align 8
  %68 = load i8**, i8*** %13, align 8
  %69 = load i32, i32* %14, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  store i8* %67, i8** %71, align 8
  %72 = load i32, i32* %14, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %14, align 4
  br label %82

74:                                               ; preds = %63
  %75 = call i64 @longCommandWArg(i8** %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i8*, i8** %16, align 8
  store i8* %78, i8** %10, align 8
  br label %82

79:                                               ; preds = %74
  %80 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %3, align 4
  br label %144

82:                                               ; preds = %77, %66, %61, %56, %51
  %83 = load i32, i32* %15, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %15, align 4
  br label %39

85:                                               ; preds = %39
  store i8* null, i8** %17, align 8
  %86 = load i32, i32* %14, align 4
  store i32 %86, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i8** null, i8*** %20, align 8
  %87 = load i8**, i8*** %13, align 8
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %19, align 4
  %90 = call i8** @UTIL_createFileList(i8** %87, i32 %88, i8** %17, i32* %18, i32 %89)
  store i8** %90, i8*** %20, align 8
  %91 = load i8**, i8*** %20, align 8
  %92 = icmp ne i8** %91, null
  br i1 %92, label %93, label %115

93:                                               ; preds = %85
  store i32 0, i32* %21, align 4
  br label %94

94:                                               ; preds = %106, %93
  %95 = load i32, i32* %21, align 4
  %96 = load i32, i32* %18, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %94
  %99 = load i32, i32* %21, align 4
  %100 = load i8**, i8*** %20, align 8
  %101 = load i32, i32* %21, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %99, i8* %104)
  br label %106

106:                                              ; preds = %98
  %107 = load i32, i32* %21, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %21, align 4
  br label %94

109:                                              ; preds = %94
  %110 = load i8**, i8*** %13, align 8
  %111 = bitcast i8** %110 to i8*
  %112 = call i32 @free(i8* %111)
  %113 = load i8**, i8*** %20, align 8
  store i8** %113, i8*** %13, align 8
  %114 = load i32, i32* %18, align 4
  store i32 %114, i32* %14, align 4
  br label %115

115:                                              ; preds = %109, %85
  store i64 0, i64* %22, align 8
  %116 = load i32, i32* @DEFAULT_CLEVEL, align 4
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  store i32 %116, i32* %117, align 4
  %118 = load i32, i32* %6, align 4
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 %118, i32* %119, align 4
  %120 = load i32, i32* %11, align 4
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store i32 %120, i32* %121, align 4
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %123 = bitcast %struct.TYPE_5__* %122 to i8*
  %124 = bitcast %struct.TYPE_5__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %123, i8* align 4 %124, i64 12, i1 false)
  %125 = load i32, i32* %9, align 4
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %125, i32* %126, align 4
  %127 = load i8**, i8*** %13, align 8
  %128 = load i32, i32* %14, align 4
  %129 = load i64, i64* %22, align 8
  %130 = load i32, i32* %12, align 4
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32* @getSampleInfo(i8** %127, i32 %128, i64 %129, i32 %130, i32 %132)
  store i32* %133, i32** %25, align 8
  %134 = load i8*, i8** %10, align 8
  %135 = load i32*, i32** %25, align 8
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @RANDOM_trainFromFiles(i8* %134, i32* %135, i32 %136, %struct.TYPE_4__* %23)
  store i32 %137, i32* %8, align 4
  %138 = load i8**, i8*** %20, align 8
  %139 = load i8*, i8** %17, align 8
  %140 = call i32 @UTIL_freeFileList(i8** %138, i8* %139)
  %141 = load i32*, i32** %25, align 8
  %142 = call i32 @freeSampleInfo(i32* %141)
  %143 = load i32, i32* %8, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %115, %79
  %145 = load i32, i32* %3, align 4
  ret i32 %145
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

declare dso_local i32 @RANDOM_trainFromFiles(i8*, i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @UTIL_freeFileList(i8**, i8*) #1

declare dso_local i32 @freeSampleInfo(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
