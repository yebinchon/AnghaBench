; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_meta_out.c_xml_out_frame_rgn.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_meta_out.c_xml_out_frame_rgn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@__const.xml_out_frame_rgn.spaces = private unnamed_addr constant [13 x i8] c"            \00", align 1
@j2k_default_tcp = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"%s<RegionOfInterest Marker=\22RGN\22>\0A\00", align 1
@notes = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [60 x i8] c"%s<!-- See Crgn below for zero-based component number. -->\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%s  <Srgn>0</Srgn>\0A\00", align 1
@.str.3 = private unnamed_addr constant [82 x i8] c"%s  <!-- Srgn is ROI style.  Only style=0 defined: Implicit ROI (max. shift) -->\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"%s  <Crgn>%d</Crgn>\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"%s  <SPrgn>%d</SPrgn>\0A\00", align 1
@.str.6 = private unnamed_addr constant [103 x i8] c"%s  <!-- SPrgn is implicit ROI shift, i.e., binary shifting of ROI coefficients above background. -->\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"</RegionOfInterest\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xml_out_frame_rgn(i32* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [13 x i8], align 1
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = bitcast [13 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([13 x i8], [13 x i8]* @__const.xml_out_frame_rgn.spaces, i32 0, i32 0), i64 13, i1 false)
  %12 = getelementptr inbounds [13 x i8], [13 x i8]* %9, i64 0, i64 0
  store i8* %12, i8** %10, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @j2k_default_tcp, align 8
  %15 = icmp eq %struct.TYPE_6__* %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i8*, i8** %10, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %10, align 8
  br label %21

21:                                               ; preds = %16, %3
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %77, %21
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %80

26:                                               ; preds = %22
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %77

38:                                               ; preds = %26
  %39 = load i32*, i32** %4, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %40)
  %42 = load i64, i64* @notes, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32*, i32** %4, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %45, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %44, %38
  %49 = load i32*, i32** %4, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  %52 = load i64, i64* @notes, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32*, i32** %4, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %55, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %54, %48
  %59 = load i32*, i32** %4, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %60, i32 %61)
  %63 = load i32*, i32** %4, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %64, i32 %65)
  %67 = load i64, i64* @notes, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %58
  %70 = load i32*, i32** %4, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %70, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.6, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %69, %58
  %74 = load i32*, i32** %4, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %75)
  br label %77

77:                                               ; preds = %73, %37
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %22

80:                                               ; preds = %22
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
