; ModuleID = '/home/carl/AnghaBench/stb/tests/oversample/extr_stb_wingraph.h_stbwingraph__mouse.c'
source_filename = "/home/carl/AnghaBench/stb/tests/oversample/extr_stb_wingraph.h_stbwingraph__mouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i16, i16, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@stbwingraph__mouse.captured = internal global i32 0, align 4
@MK_SHIFT = common dso_local global i32 0, align 4
@MK_CONTROL = common dso_local global i32 0, align 4
@MK_ALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32, i32, i32, i8*, %struct.TYPE_6__*)* @stbwingraph__mouse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stbwingraph__mouse(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, %struct.TYPE_6__* %6) #0 {
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %14, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call i64 @LOWORD(i32 %18)
  %20 = trunc i64 %19 to i16
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  store i16 %20, i16* %22, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i64 @HIWORD(i32 %23)
  %25 = trunc i64 %24 to i16
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  store i16 %25, i16* %27, align 2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %29 = icmp ne %struct.TYPE_6__* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %7
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, -1073741824
  br i1 %34, label %35, label %40

35:                                               ; preds = %30, %7
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 4
  store i32 0, i32* %37, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 3
  store i32 0, i32* %39, align 4
  br label %61

40:                                               ; preds = %30
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i16, i16* %42, align 4
  %44 = sext i16 %43 to i32
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %44, %47
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i16, i16* %52, align 2
  %54 = sext i16 %53 to i32
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %54, %57
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %40, %35
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @MK_SHIFT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @MK_CONTROL, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @MK_ALT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 7
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %84 = icmp ne %struct.TYPE_6__* %83, null
  br i1 %84, label %85, label %98

85:                                               ; preds = %61
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i16, i16* %87, align 4
  %89 = sext i16 %88 to i32
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  %94 = load i16, i16* %93, align 2
  %95 = sext i16 %94 to i32
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %85, %61
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %126

101:                                              ; preds = %98
  %102 = load i32, i32* @stbwingraph__mouse.captured, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %12, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i8*, i8** %13, align 8
  %109 = call i32 @SetCapture(i8* %108)
  br label %110

110:                                              ; preds = %107, %104, %101
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* @stbwingraph__mouse.captured, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* @stbwingraph__mouse.captured, align 4
  %114 = load i32, i32* @stbwingraph__mouse.captured, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %110
  %117 = load i32, i32* %12, align 4
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = call i32 (...) @ReleaseCapture()
  br label %121

121:                                              ; preds = %119, %116, %110
  %122 = load i32, i32* @stbwingraph__mouse.captured, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i32 0, i32* @stbwingraph__mouse.captured, align 4
  br label %125

125:                                              ; preds = %124, %121
  br label %126

126:                                              ; preds = %125, %98
  ret void
}

declare dso_local i64 @LOWORD(i32) #1

declare dso_local i64 @HIWORD(i32) #1

declare dso_local i32 @SetCapture(i8*) #1

declare dso_local i32 @ReleaseCapture(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
