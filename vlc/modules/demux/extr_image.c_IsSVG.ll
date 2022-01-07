; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_image.c_IsSVG.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_image.c_IsSVG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [5 x i8] c".svg\00", align 1
@__const.IsSVG.xml = private unnamed_addr constant [16 x i8] c"<?xml version=\22\00", align 16
@__const.IsSVG.endxml = private unnamed_addr constant [3 x i8] c">\00\00", align 1
@__const.IsSVG.svg = private unnamed_addr constant [5 x i8] c"<svg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @IsSVG to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IsSVG(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [16 x i8], align 16
  %9 = alloca [3 x i8], align 1
  %10 = alloca [5 x i8], align 1
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %67

16:                                               ; preds = %1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i8* @strstr(i32* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %20, i8** %4, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %67

24:                                               ; preds = %16
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = call i32 @vlc_stream_Peek(%struct.TYPE_4__* %25, i32** %5, i32 4096)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %67

30:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  %31 = bitcast [16 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %31, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.IsSVG.xml, i32 0, i32 0), i64 16, i1 false)
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %35 = call i32 @FindSVGmarker(i32* %7, i32* %32, i32 %33, i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %67

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %67

42:                                               ; preds = %38
  %43 = bitcast [3 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %43, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.IsSVG.endxml, i32 0, i32 0), i64 3, i1 false)
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %47 = call i32 @FindSVGmarker(i32* %7, i32* %44, i32 %45, i8* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %67

50:                                               ; preds = %42
  %51 = load i32, i32* %7, align 4
  %52 = icmp sle i32 %51, 15
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %67

54:                                               ; preds = %50
  %55 = bitcast [5 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %55, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.IsSVG.svg, i32 0, i32 0), i64 5, i1 false)
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %59 = call i32 @FindSVGmarker(i32* %7, i32* %56, i32 %57, i8* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %67

62:                                               ; preds = %54
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 19
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %67

66:                                               ; preds = %62
  store i32 1, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %65, %61, %53, %49, %41, %37, %29, %23, %15
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i8* @strstr(i32*, i8*) #1

declare dso_local i32 @vlc_stream_Peek(%struct.TYPE_4__*, i32**, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @FindSVGmarker(i32*, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
