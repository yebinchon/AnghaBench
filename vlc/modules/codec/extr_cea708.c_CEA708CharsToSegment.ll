; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_cea708.c_CEA708CharsToSegment.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_cea708.c_CEA708CharsToSegment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64*, i64 }
%struct.TYPE_8__ = type { i64*, i32* }

@STYLE_NO_DEFAULTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.TYPE_8__*, i64, i64, i32)* @CEA708CharsToSegment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @CEA708CharsToSegment(%struct.TYPE_8__* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = call %struct.TYPE_7__* @text_segment_New(i32* null)
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %10, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %136

18:                                               ; preds = %4
  %19 = load i32, i32* @STYLE_NO_DEFAULTS, align 4
  %20 = call i64 @text_style_Create(i32 %19)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %18
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @CEA708PenStyleToSegment(i32* %32, i64 %35)
  br label %37

37:                                               ; preds = %27, %18
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = add i32 1, %42
  %44 = zext i32 %43 to i64
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %7, align 8
  %47 = sub i64 %45, %46
  %48 = add i64 %47, 1
  %49 = mul i64 %48, 4
  %50 = add i64 %44, %49
  %51 = trunc i64 %50 to i32
  %52 = call i64* @malloc(i32 %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i64* %52, i64** %54, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = icmp ne i64* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %37
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %61 = call i32 @text_segment_Delete(%struct.TYPE_7__* %60)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %136

62:                                               ; preds = %37
  store i64 0, i64* %11, align 8
  %63 = load i64, i64* %7, align 8
  store i64 %63, i64* %12, align 8
  br label %64

64:                                               ; preds = %116, %62
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* %8, align 8
  %67 = icmp ule i64 %65, %66
  br i1 %67, label %68, label %119

68:                                               ; preds = %64
  store i64 0, i64* %13, align 8
  br label %69

69:                                               ; preds = %112, %68
  %70 = load i64, i64* %13, align 8
  %71 = icmp ult i64 %70, 4
  br i1 %71, label %72, label %115

72:                                               ; preds = %69
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* %12, align 8
  %77 = mul i64 %76, 4
  %78 = load i64, i64* %13, align 8
  %79 = add i64 %77, %78
  %80 = getelementptr inbounds i64, i64* %75, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %72
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = load i64, i64* %12, align 8
  %88 = mul i64 %87, 4
  %89 = load i64, i64* %13, align 8
  %90 = add i64 %88, %89
  %91 = getelementptr inbounds i64, i64* %86, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = load i64, i64* %11, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %11, align 8
  %98 = getelementptr inbounds i64, i64* %95, i64 %96
  store i64 %92, i64* %98, align 8
  br label %111

99:                                               ; preds = %72
  %100 = load i64, i64* %13, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = load i64, i64* %11, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %11, align 8
  %108 = getelementptr inbounds i64, i64* %105, i64 %106
  store i64 32, i64* %108, align 8
  br label %110

109:                                              ; preds = %99
  br label %115

110:                                              ; preds = %102
  br label %111

111:                                              ; preds = %110, %83
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %13, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %13, align 8
  br label %69

115:                                              ; preds = %109, %69
  br label %116

116:                                              ; preds = %115
  %117 = load i64, i64* %12, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %12, align 8
  br label %64

119:                                              ; preds = %64
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %119
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = load i64, i64* %11, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %11, align 8
  %128 = getelementptr inbounds i64, i64* %125, i64 %126
  store i64 10, i64* %128, align 8
  br label %129

129:                                              ; preds = %122, %119
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  %133 = load i64, i64* %11, align 8
  %134 = getelementptr inbounds i64, i64* %132, i64 %133
  store i64 0, i64* %134, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %135, %struct.TYPE_7__** %5, align 8
  br label %136

136:                                              ; preds = %129, %59, %17
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  ret %struct.TYPE_7__* %137
}

declare dso_local %struct.TYPE_7__* @text_segment_New(i32*) #1

declare dso_local i64 @text_style_Create(i32) #1

declare dso_local i32 @CEA708PenStyleToSegment(i32*, i64) #1

declare dso_local i64* @malloc(i32) #1

declare dso_local i32 @text_segment_Delete(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
