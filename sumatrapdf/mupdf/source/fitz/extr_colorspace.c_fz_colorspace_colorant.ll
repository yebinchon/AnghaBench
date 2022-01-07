; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_colorspace.c_fz_colorspace_colorant.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_colorspace.c_fz_colorspace_colorant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8** }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Colorant out of range\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Gray\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Red\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Green\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Blue\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Cyan\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Magenta\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Yellow\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Black\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"L*\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"a*\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"b*\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"Index\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fz_colorspace_colorant(i32* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %9 = icmp ne %struct.TYPE_7__* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sge i32 %14, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13, %10, %3
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %22 = call i32 @fz_throw(i32* %20, i32 %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %19, %13
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %96 [
    i32 130, label %27
    i32 133, label %28
    i32 129, label %29
    i32 135, label %42
    i32 134, label %55
    i32 131, label %72
    i32 132, label %85
    i32 128, label %86
  ]

27:                                               ; preds = %23
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %97

28:                                               ; preds = %23
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %97

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %97

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %97

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  br label %97

41:                                               ; preds = %37
  br label %96

42:                                               ; preds = %23
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  br label %97

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %97

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %97

54:                                               ; preds = %50
  br label %96

55:                                               ; preds = %23
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  br label %97

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %4, align 8
  br label %97

63:                                               ; preds = %59
  %64 = load i32, i32* %7, align 4
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %4, align 8
  br label %97

67:                                               ; preds = %63
  %68 = load i32, i32* %7, align 4
  %69 = icmp eq i32 %68, 3
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8** %4, align 8
  br label %97

71:                                               ; preds = %67
  br label %96

72:                                               ; preds = %23
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8** %4, align 8
  br label %97

76:                                               ; preds = %72
  %77 = load i32, i32* %7, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8** %4, align 8
  br label %97

80:                                               ; preds = %76
  %81 = load i32, i32* %7, align 4
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8** %4, align 8
  br label %97

84:                                               ; preds = %80
  br label %96

85:                                               ; preds = %23
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8** %4, align 8
  br label %97

86:                                               ; preds = %23
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i8**, i8*** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %4, align 8
  br label %97

96:                                               ; preds = %23, %84, %71, %54, %41
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %97

97:                                               ; preds = %96, %86, %85, %83, %79, %75, %70, %66, %62, %58, %53, %49, %45, %40, %36, %32, %28, %27
  %98 = load i8*, i8** %4, align 8
  ret i8* %98
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
