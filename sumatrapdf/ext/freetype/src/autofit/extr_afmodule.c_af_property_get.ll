; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/autofit/extr_afmodule.c_af_property_get.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/autofit/extr_afmodule.c_af_property_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i64, i64, i32, i32*, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@FT_Err_Ok = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"glyph-to-script-map\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fallback-script\00", align 1
@af_style_classes = common dso_local global %struct.TYPE_11__** null, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"default-script\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"increase-x-height\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"darkening-parameters\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"no-stem-darkening\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"af_property_get: missing property `%s'\0A\00", align 1
@Missing_Property = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @af_property_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af_property_get(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca %struct.TYPE_13__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %23 = load i32, i32* @FT_Err_Ok, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %9, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %10, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %11, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @ft_strcmp(i8* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %3
  %37 = load i8*, i8** %7, align 8
  %38 = bitcast i8* %37 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %12, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %43 = call i32 @af_property_get_face_globals(i32 %41, %struct.TYPE_13__** %13, %struct.TYPE_12__* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %36
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %46, %36
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %176

54:                                               ; preds = %3
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @ft_strcmp(i8* %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %54
  %59 = load i8*, i8** %7, align 8
  %60 = bitcast i8* %59 to i64*
  store i64* %60, i64** %14, align 8
  %61 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @af_style_classes, align 8
  %62 = load i64, i64* %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %61, i64 %62
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  store %struct.TYPE_11__* %64, %struct.TYPE_11__** %15, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64*, i64** %14, align 8
  store i64 %67, i64* %68, align 8
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %4, align 4
  br label %176

70:                                               ; preds = %54
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @ft_strcmp(i8* %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %70
  %75 = load i8*, i8** %7, align 8
  %76 = bitcast i8* %75 to i64*
  store i64* %76, i64** %16, align 8
  %77 = load i64, i64* %11, align 8
  %78 = load i64*, i64** %16, align 8
  store i64 %77, i64* %78, align 8
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %4, align 4
  br label %176

80:                                               ; preds = %70
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @ft_strcmp(i8* %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %102, label %84

84:                                               ; preds = %80
  %85 = load i8*, i8** %7, align 8
  %86 = bitcast i8* %85 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %86, %struct.TYPE_9__** %17, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %91 = call i32 @af_property_get_face_globals(i32 %89, %struct.TYPE_13__** %18, %struct.TYPE_12__* %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %84
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %94, %84
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %4, align 4
  br label %176

102:                                              ; preds = %80
  %103 = load i8*, i8** %6, align 8
  %104 = call i32 @ft_strcmp(i8* %103, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %153, label %106

106:                                              ; preds = %102
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  store i32* %109, i32** %19, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = bitcast i8* %110 to i32*
  store i32* %111, i32** %20, align 8
  %112 = load i32*, i32** %19, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %20, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  store i32 %114, i32* %116, align 4
  %117 = load i32*, i32** %19, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %20, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  store i32 %119, i32* %121, align 4
  %122 = load i32*, i32** %19, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 2
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %20, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 2
  store i32 %124, i32* %126, align 4
  %127 = load i32*, i32** %19, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 3
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %20, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 3
  store i32 %129, i32* %131, align 4
  %132 = load i32*, i32** %19, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 4
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %20, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 4
  store i32 %134, i32* %136, align 4
  %137 = load i32*, i32** %19, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 5
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** %20, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 5
  store i32 %139, i32* %141, align 4
  %142 = load i32*, i32** %19, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 6
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %20, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 6
  store i32 %144, i32* %146, align 4
  %147 = load i32*, i32** %19, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 7
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %20, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 7
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* %8, align 4
  store i32 %152, i32* %4, align 4
  br label %176

153:                                              ; preds = %102
  %154 = load i8*, i8** %6, align 8
  %155 = call i32 @ft_strcmp(i8* %154, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %166, label %157

157:                                              ; preds = %153
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  store i32 %160, i32* %21, align 4
  %161 = load i8*, i8** %7, align 8
  %162 = bitcast i8* %161 to i32*
  store i32* %162, i32** %22, align 8
  %163 = load i32, i32* %21, align 4
  %164 = load i32*, i32** %22, align 8
  store i32 %163, i32* %164, align 4
  %165 = load i32, i32* %8, align 4
  store i32 %165, i32* %4, align 4
  br label %176

166:                                              ; preds = %153
  br label %167

167:                                              ; preds = %166
  br label %168

168:                                              ; preds = %167
  br label %169

169:                                              ; preds = %168
  br label %170

170:                                              ; preds = %169
  br label %171

171:                                              ; preds = %170
  %172 = load i8*, i8** %6, align 8
  %173 = call i32 @FT_TRACE0(i8* %172)
  %174 = load i32, i32* @Missing_Property, align 4
  %175 = call i32 @FT_THROW(i32 %174)
  store i32 %175, i32* %4, align 4
  br label %176

176:                                              ; preds = %171, %157, %106, %100, %74, %58, %52
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local i32 @ft_strcmp(i8*, i8*) #1

declare dso_local i32 @af_property_get_face_globals(i32, %struct.TYPE_13__**, %struct.TYPE_12__*) #1

declare dso_local i32 @FT_TRACE0(i8*) #1

declare dso_local i32 @FT_THROW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
