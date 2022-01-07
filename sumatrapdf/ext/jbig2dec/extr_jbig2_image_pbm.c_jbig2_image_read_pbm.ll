; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_image_pbm.c_jbig2_image_read_pbm.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_image_pbm.c_jbig2_image_read_pbm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"not a binary pbm file.\0A\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"end-of-file parsing pbm header\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"pbm parsing error\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"failed to read pbm image dimensions\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"failed to allocate %dx%d image for pbm file\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"unexpected end of pbm file.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @jbig2_image_read_pbm(i32* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [32 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  br label %12

12:                                               ; preds = %21, %2
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @fgetc(i32* %13)
  store i32 %14, i32* %10, align 4
  %15 = icmp ne i32 %14, 80
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load i32*, i32** %5, align 8
  %18 = call i64 @feof(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %151

21:                                               ; preds = %16
  br label %12

22:                                               ; preds = %12
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @fgetc(i32* %23)
  store i32 %24, i32* %10, align 4
  %25 = icmp ne i32 %24, 52
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %151

29:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %110, %57, %47, %29
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %111

33:                                               ; preds = %30
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @fgetc(i32* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, 32
  br i1 %37, label %47, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %39, 9
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %42, 13
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %45, 10
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %41, %38, %33
  br label %30

48:                                               ; preds = %44
  %49 = load i32, i32* %10, align 4
  %50 = icmp eq i32 %49, 35
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  br label %52

52:                                               ; preds = %56, %51
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @fgetc(i32* %53)
  store i32 %54, i32* %10, align 4
  %55 = icmp ne i32 %54, 10
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %52

57:                                               ; preds = %52
  br label %30

58:                                               ; preds = %48
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @EOF, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* @stderr, align 4
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %151

65:                                               ; preds = %58
  %66 = load i32, i32* %10, align 4
  %67 = call i64 @isdigit(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %110

69:                                               ; preds = %65
  %70 = load i32, i32* %10, align 4
  %71 = trunc i32 %70 to i8
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 %74
  store i8 %71, i8* %75, align 1
  br label %76

76:                                               ; preds = %87, %69
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @fgetc(i32* %77)
  store i32 %78, i32* %10, align 4
  %79 = call i64 @isdigit(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %76
  %82 = load i32, i32* %6, align 4
  %83 = icmp sge i32 %82, 32
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* @stderr, align 4
  %86 = call i32 (i32, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %151

87:                                               ; preds = %81
  %88 = load i32, i32* %10, align 4
  %89 = trunc i32 %88 to i8
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 %92
  store i8 %89, i8* %93, align 1
  br label %76

94:                                               ; preds = %76
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 %96
  store i8 0, i8* %97, align 1
  %98 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %100
  %102 = call i32 @sscanf(i8* %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %101)
  %103 = icmp ne i32 %102, 1
  br i1 %103, label %104, label %107

104:                                              ; preds = %94
  %105 = load i32, i32* @stderr, align 4
  %106 = call i32 (i32, i8*, ...) @fprintf(i32 %105, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %151

107:                                              ; preds = %94
  store i32 0, i32* %6, align 4
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %107, %65
  br label %30

111:                                              ; preds = %30
  %112 = load i32*, i32** %4, align 8
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = call %struct.TYPE_5__* @jbig2_image_new(i32* %112, i32 %114, i32 %116)
  store %struct.TYPE_5__* %117, %struct.TYPE_5__** %9, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %119 = icmp eq %struct.TYPE_5__* %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %111
  %121 = load i32, i32* @stderr, align 4
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i32, i8*, ...) @fprintf(i32 %121, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %123, i32 %125)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %151

127:                                              ; preds = %111
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = mul nsw i32 %133, %136
  %138 = load i32*, i32** %5, align 8
  %139 = call i32 @fread(i32 %130, i32 1, i32 %137, i32* %138)
  %140 = load i32*, i32** %5, align 8
  %141 = call i64 @feof(i32* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %127
  %144 = load i32, i32* @stderr, align 4
  %145 = call i32 (i32, i8*, ...) @fprintf(i32 %144, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %146 = load i32*, i32** %4, align 8
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %148 = call i32 @jbig2_image_release(i32* %146, %struct.TYPE_5__* %147)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %151

149:                                              ; preds = %127
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %150, %struct.TYPE_5__** %3, align 8
  br label %151

151:                                              ; preds = %149, %143, %120, %104, %84, %62, %26, %20
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %152
}

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i64 @feof(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @isdigit(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local %struct.TYPE_5__* @jbig2_image_new(i32*, i32, i32) #1

declare dso_local i32 @fread(i32, i32, i32, i32*) #1

declare dso_local i32 @jbig2_image_release(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
