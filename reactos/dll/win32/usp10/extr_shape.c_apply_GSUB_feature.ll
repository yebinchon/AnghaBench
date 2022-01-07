; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_apply_GSUB_feature.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_apply_GSUB_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32* }

@FEATURE_GSUB_TABLE = common dso_local global i32 0, align 4
@GSUB_E_NOFEATURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"applying feature %s: %i lookups\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"applying lookup (%i/%i)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.TYPE_6__*, i32*, i32, i32*, i32, i8*, i32*)* @apply_GSUB_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_GSUB_feature(i32 %0, i32* %1, %struct.TYPE_6__* %2, i32* %3, i32 %4, i32* %5, i32 %6, i8* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_7__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32* %1, i32** %12, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i32* %8, i32** %19, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %122

29:                                               ; preds = %9
  %30 = load i32, i32* %11, align 4
  %31 = load i32*, i32** %12, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %33 = load i32, i32* @FEATURE_GSUB_TABLE, align 4
  %34 = load i8*, i8** %18, align 8
  %35 = call %struct.TYPE_7__* @load_OT_feature(i32 %30, i32* %31, %struct.TYPE_6__* %32, i32 %33, i8* %34)
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %20, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %37 = icmp ne %struct.TYPE_7__* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* @GSUB_E_NOFEATURE, align 4
  store i32 %39, i32* %10, align 4
  br label %124

40:                                               ; preds = %29
  %41 = load i8*, i8** %18, align 8
  %42 = call i32 @debugstr_an(i8* %41, i32 4)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45)
  store i32 0, i32* %21, align 4
  br label %47

47:                                               ; preds = %116, %40
  %48 = load i32, i32* %21, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %119

53:                                               ; preds = %47
  %54 = load i32, i32* %15, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 0, i32* %22, align 4
  br label %61

57:                                               ; preds = %53
  %58 = load i32*, i32** %16, align 8
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %22, align 4
  br label %61

61:                                               ; preds = %57, %56
  %62 = load i32, i32* %21, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %114, %61
  %68 = load i32, i32* %22, align 4
  %69 = load i32*, i32** %16, align 8
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* %22, align 4
  %74 = icmp sge i32 %73, 0
  br label %75

75:                                               ; preds = %72, %67
  %76 = phi i1 [ false, %67 ], [ %74, %72 ]
  br i1 %76, label %77, label %115

77:                                               ; preds = %75
  %78 = load i32*, i32** %16, align 8
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %24, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %21, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %14, align 8
  %91 = load i32, i32* %22, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32*, i32** %16, align 8
  %94 = call i32 @OpenType_apply_GSUB_lookup(i64 %82, i32 %89, i32* %90, i32 %91, i32 %92, i32* %93)
  store i32 %94, i32* %23, align 4
  %95 = load i32*, i32** %16, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %24, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %77
  %100 = load i32, i32* %23, align 4
  %101 = load i32*, i32** %16, align 8
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %24, align 4
  %104 = sub nsw i32 %102, %103
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %17, align 4
  %107 = load i32*, i32** %19, align 8
  %108 = call i32 @UpdateClusters(i32 %100, i32 %104, i32 %105, i32 %106, i32* %107)
  %109 = load i32, i32* %23, align 4
  store i32 %109, i32* %22, align 4
  br label %114

110:                                              ; preds = %77
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %22, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %22, align 4
  br label %114

114:                                              ; preds = %110, %99
  br label %67

115:                                              ; preds = %75
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %21, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %21, align 4
  br label %47

119:                                              ; preds = %47
  %120 = load i32*, i32** %16, align 8
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %10, align 4
  br label %124

122:                                              ; preds = %9
  %123 = load i32, i32* @GSUB_E_NOFEATURE, align 4
  store i32 %123, i32* %10, align 4
  br label %124

124:                                              ; preds = %122, %119, %38
  %125 = load i32, i32* %10, align 4
  ret i32 %125
}

declare dso_local %struct.TYPE_7__* @load_OT_feature(i32, i32*, %struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @debugstr_an(i8*, i32) #1

declare dso_local i32 @OpenType_apply_GSUB_lookup(i64, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @UpdateClusters(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
