; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_load_OT_feature.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_load_OT_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Feature %s located at %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32*, %struct.TYPE_5__*, i8, i8*)* @load_OT_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @load_OT_feature(i32 %0, i32* %1, %struct.TYPE_5__* %2, i8 signext %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store i8 %3, i8* %9, align 1
  store i8* %4, i8** %10, align 8
  store i32* null, i32** %11, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %5
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %106

26:                                               ; preds = %21, %5
  store i32 2, i32* %12, align 4
  store i32 0, i32* %15, align 4
  br label %27

27:                                               ; preds = %75, %26
  %28 = load i32, i32* %6, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = load i32, i32* %12, align 4
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i32
  %34 = call i32 @get_opentype_script(i32 %28, i32* %29, %struct.TYPE_5__* %30, i32 %33)
  store i32 %34, i32* %15, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %27
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %14, align 4
  br label %46

44:                                               ; preds = %27
  %45 = call i32 @MS_MAKE_TAG(i8 signext 100, i8 signext 102, i8 signext 108, i8 signext 116)
  store i32 %45, i32* %14, align 4
  br label %46

46:                                               ; preds = %44, %39
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %12, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* @FALSE, align 4
  %53 = load i8*, i8** %10, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = load i8*, i8** %10, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = load i8*, i8** %10, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  %61 = load i8, i8* %60, align 1
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 3
  %64 = load i8, i8* %63, align 1
  %65 = call i32 @MS_MAKE_TAG(i8 signext %55, i8 signext %58, i8 signext %61, i8 signext %64)
  %66 = load i8, i8* %9, align 1
  %67 = call i32 @OpenType_GetFontFeatureTags(%struct.TYPE_5__* %49, i32 %50, i32 %51, i32 %52, i32 %65, i8 signext %66, i32 1, i32* %13, i32* %16, i32** %11)
  br label %68

68:                                               ; preds = %46
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32*, i32** %11, align 8
  %73 = icmp ne i32* %72, null
  %74 = xor i1 %73, true
  br label %75

75:                                               ; preds = %71, %68
  %76 = phi i1 [ false, %68 ], [ %74, %71 ]
  br i1 %76, label %27, label %77

77:                                               ; preds = %75
  %78 = load i32*, i32** %11, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %105, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %15, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = call i32 @MS_MAKE_TAG(i8 signext 108, i8 signext 97, i8 signext 116, i8 signext 110)
  store i32 %84, i32* %15, align 4
  br label %85

85:                                               ; preds = %83, %80
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @MS_MAKE_TAG(i8 signext 100, i8 signext 102, i8 signext 108, i8 signext 116)
  %89 = load i32, i32* @FALSE, align 4
  %90 = load i8*, i8** %10, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  %92 = load i8, i8* %91, align 1
  %93 = load i8*, i8** %10, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i8, i8* %94, align 1
  %96 = load i8*, i8** %10, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 2
  %98 = load i8, i8* %97, align 1
  %99 = load i8*, i8** %10, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 3
  %101 = load i8, i8* %100, align 1
  %102 = call i32 @MS_MAKE_TAG(i8 signext %92, i8 signext %95, i8 signext %98, i8 signext %101)
  %103 = load i8, i8* %9, align 1
  %104 = call i32 @OpenType_GetFontFeatureTags(%struct.TYPE_5__* %86, i32 %87, i32 %88, i32 %89, i32 %102, i8 signext %103, i32 1, i32* %13, i32* %16, i32** %11)
  br label %105

105:                                              ; preds = %85, %77
  br label %106

106:                                              ; preds = %105, %21
  %107 = load i8*, i8** %10, align 8
  %108 = call i32 @debugstr_an(i8* %107, i32 4)
  %109 = load i32*, i32** %11, align 8
  %110 = call i32 @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %108, i32* %109)
  %111 = load i32*, i32** %11, align 8
  ret i32* %111
}

declare dso_local i32 @get_opentype_script(i32, i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @MS_MAKE_TAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @OpenType_GetFontFeatureTags(%struct.TYPE_5__*, i32, i32, i32, i32, i8 signext, i32, i32*, i32*, i32**) #1

declare dso_local i32 @TRACE(i8*, i32, i32*) #1

declare dso_local i32 @debugstr_an(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
