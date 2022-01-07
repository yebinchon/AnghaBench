; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsproperty.c_jsV_newiterator.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsproperty.c_jsV_newiterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, %struct.TYPE_17__, i32* }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { %struct.TYPE_19__*, %struct.TYPE_18__* }
%struct.TYPE_19__ = type { %struct.TYPE_19__*, i32 }
%struct.TYPE_15__ = type { i32 }

@JS_CITERATOR = common dso_local global i32 0, align 4
@sentinel = common dso_local global i32 0, align 4
@JS_CSTRING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @jsV_newiterator(i32* %0, %struct.TYPE_18__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [32 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @JS_CITERATOR, align 4
  %14 = call %struct.TYPE_18__* @jsV_newobject(i32* %12, i32 %13, i32* null)
  store %struct.TYPE_18__* %14, %struct.TYPE_18__** %9, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %3
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %26, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, @sentinel
  br i1 %30, label %31, label %46

31:                                               ; preds = %22
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = call %struct.TYPE_19__* @itwalk(i32* %32, %struct.TYPE_19__* %37, i32* %40, i32* null)
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  store %struct.TYPE_19__* %41, %struct.TYPE_19__** %45, align 8
  br label %46

46:                                               ; preds = %31, %22
  br label %55

47:                                               ; preds = %3
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %50 = call %struct.TYPE_19__* @itflatten(i32* %48, %struct.TYPE_18__* %49)
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  store %struct.TYPE_19__* %50, %struct.TYPE_19__** %54, align 8
  br label %55

55:                                               ; preds = %47, %46
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @JS_CSTRING, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %129

61:                                               ; preds = %55
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %65, align 8
  store %struct.TYPE_19__* %66, %struct.TYPE_19__** %10, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %68 = icmp ne %struct.TYPE_19__* %67, null
  br i1 %68, label %69, label %80

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %75, %69
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %72, align 8
  %74 = icmp ne %struct.TYPE_19__* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %77, align 8
  store %struct.TYPE_19__* %78, %struct.TYPE_19__** %10, align 8
  br label %70

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79, %61
  store i32 0, i32* %8, align 4
  br label %81

81:                                               ; preds = %125, %80
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %82, %87
  br i1 %88, label %89, label %128

89:                                               ; preds = %81
  %90 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @js_itoa(i8* %90, i32 %91)
  %93 = load i32*, i32** %4, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %95 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %96 = call i32 @jsV_getenumproperty(i32* %93, %struct.TYPE_18__* %94, i8* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %124, label %98

98:                                               ; preds = %89
  %99 = load i32*, i32** %4, align 8
  %100 = call %struct.TYPE_19__* @js_malloc(i32* %99, i32 16)
  store %struct.TYPE_19__* %100, %struct.TYPE_19__** %11, align 8
  %101 = load i32*, i32** %4, align 8
  %102 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @js_itoa(i8* %102, i32 %103)
  %105 = call i32 @js_intern(i32* %101, i32 %104)
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 8
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %109, align 8
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %111 = icmp ne %struct.TYPE_19__* %110, null
  br i1 %111, label %118, label %112

112:                                              ; preds = %98
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  store %struct.TYPE_19__* %113, %struct.TYPE_19__** %10, align 8
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  store %struct.TYPE_19__* %113, %struct.TYPE_19__** %117, align 8
  br label %123

118:                                              ; preds = %98
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  store %struct.TYPE_19__* %119, %struct.TYPE_19__** %121, align 8
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  store %struct.TYPE_19__* %122, %struct.TYPE_19__** %10, align 8
  br label %123

123:                                              ; preds = %118, %112
  br label %124

124:                                              ; preds = %123, %89
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %8, align 4
  br label %81

128:                                              ; preds = %81
  br label %129

129:                                              ; preds = %128, %55
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  ret %struct.TYPE_18__* %130
}

declare dso_local %struct.TYPE_18__* @jsV_newobject(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_19__* @itwalk(i32*, %struct.TYPE_19__*, i32*, i32*) #1

declare dso_local %struct.TYPE_19__* @itflatten(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @js_itoa(i8*, i32) #1

declare dso_local i32 @jsV_getenumproperty(i32*, %struct.TYPE_18__*, i8*) #1

declare dso_local %struct.TYPE_19__* @js_malloc(i32*, i32) #1

declare dso_local i32 @js_intern(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
