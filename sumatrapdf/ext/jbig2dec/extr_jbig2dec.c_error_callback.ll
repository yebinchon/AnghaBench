; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2dec.c_error_callback.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2dec.c_error_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i32, i8*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"DEBUG\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"WARNING\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"FATAL ERROR\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"unknown message\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"(segment 0x%02x)\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"jbig2dec %s %s %s\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [45 x i8] c"jbig2dec %s last message repeated %ld times\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"jbig2dec %s last message repeated %ld times so far\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32)* @error_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_callback(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [22 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %9, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %39 [
    i32 131, label %17
    i32 129, label %24
    i32 128, label %31
    i32 130, label %38
  ]

17:                                               ; preds = %4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %20, 3
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %171

23:                                               ; preds = %17
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %40

24:                                               ; preds = %4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %171

30:                                               ; preds = %24
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %40

31:                                               ; preds = %4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %171

37:                                               ; preds = %31
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %40

38:                                               ; preds = %4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %40

39:                                               ; preds = %4
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  br label %40

40:                                               ; preds = %39, %38, %37, %30, %23
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %44, align 16
  br label %49

45:                                               ; preds = %40
  %46 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 0
  %47 = load i32, i32* %8, align 4
  %48 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %46, i32 22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %45, %43
  %50 = load i8*, i8** %10, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 0
  %53 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* null, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %50, i8* %51, i8* %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %171

57:                                               ; preds = %49
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  %60 = call i8* @malloc(i32 %59)
  store i8* %60, i8** %13, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %171

64:                                               ; preds = %57
  %65 = load i8*, i8** %13, align 8
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 1
  %68 = load i8*, i8** %10, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 0
  %71 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %65, i32 %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %68, i8* %69, i8* %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = load i8*, i8** %13, align 8
  %76 = call i32 @free(i8* %75)
  br label %171

77:                                               ; preds = %64
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %122

82:                                               ; preds = %77
  %83 = load i8*, i8** %13, align 8
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @strcmp(i8* %83, i8* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %122

89:                                               ; preds = %82
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp sgt i32 %92, 1
  br i1 %93, label %94, label %103

94:                                               ; preds = %89
  %95 = load i32, i32* @stderr, align 4
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 3
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %95, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i8* %98, i32 %101)
  br label %103

103:                                              ; preds = %94, %89
  %104 = load i32, i32* @stderr, align 4
  %105 = load i8*, i8** %13, align 8
  %106 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %105)
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @free(i8* %109)
  %111 = load i8*, i8** %13, align 8
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 4
  store i32 %114, i32* %116, align 8
  %117 = load i8*, i8** %10, align 8
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 3
  store i8* %117, i8** %119, align 8
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  store i32 0, i32* %121, align 8
  br label %171

122:                                              ; preds = %82, %77
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %149

127:                                              ; preds = %122
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 8
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = srem i32 %134, 1000000
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %127
  %138 = load i32, i32* @stderr, align 4
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 3
  %141 = load i8*, i8** %140, align 8
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %138, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0), i8* %141, i32 %144)
  br label %146

146:                                              ; preds = %137, %127
  %147 = load i8*, i8** %13, align 8
  %148 = call i32 @free(i8* %147)
  br label %170

149:                                              ; preds = %122
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = icmp eq i8* %152, null
  br i1 %153, label %154, label %169

154:                                              ; preds = %149
  %155 = load i32, i32* @stderr, align 4
  %156 = load i8*, i8** %13, align 8
  %157 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %155, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %156)
  %158 = load i8*, i8** %13, align 8
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  store i8* %158, i8** %160, align 8
  %161 = load i32, i32* %7, align 4
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 4
  store i32 %161, i32* %163, align 8
  %164 = load i8*, i8** %10, align 8
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 3
  store i8* %164, i8** %166, align 8
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 2
  store i32 0, i32* %168, align 8
  br label %169

169:                                              ; preds = %154, %149
  br label %170

170:                                              ; preds = %169, %146
  br label %171

171:                                              ; preds = %22, %29, %36, %56, %63, %74, %170, %103
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
