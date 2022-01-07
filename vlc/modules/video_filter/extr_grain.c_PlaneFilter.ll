; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_grain.c_PlaneFilter.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_grain.c_PlaneFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (...)*, i32 (i32*, i32, i32*, i32, i32*)* }
%struct.TYPE_7__ = type { i32, i32, i32, i32* }

@BANK_SIZE = common dso_local global i32 0, align 4
@BLEND_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_7__*, i32*, i32*)* @PlaneFilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PlaneFilter(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, %struct.TYPE_7__* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %11, align 8
  store i32 0, i32* %12, align 4
  br label %24

24:                                               ; preds = %138, %5
  %25 = load i32, i32* %12, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %142

30:                                               ; preds = %24
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %133, %30
  %32 = load i32, i32* %13, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %137

37:                                               ; preds = %31
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @urand(i32* %38)
  %40 = load i32, i32* @BANK_SIZE, align 4
  %41 = load i32, i32* @BLEND_SIZE, align 4
  %42 = sub nsw i32 %40, %41
  %43 = add nsw i32 %42, 1
  %44 = srem i32 %39, %43
  store i32 %44, i32* %14, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @urand(i32* %45)
  %47 = load i32, i32* @BANK_SIZE, align 4
  %48 = load i32, i32* @BLEND_SIZE, align 4
  %49 = sub nsw i32 %47, %48
  %50 = add nsw i32 %49, 1
  %51 = srem i32 %46, %50
  store i32 %51, i32* %15, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* @BANK_SIZE, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %52, i64 %58
  store i32* %59, i32** %16, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %13, align 4
  %64 = sub nsw i32 %62, %63
  store i32 %64, i32* %17, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sub nsw i32 %67, %68
  store i32 %69, i32* %18, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = mul nsw i32 %73, %76
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %72, i64 %80
  store i32* %81, i32** %19, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 %85, %88
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %84, i64 %92
  store i32* %93, i32** %20, align 8
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* @BLEND_SIZE, align 4
  %96 = icmp sge i32 %94, %95
  br i1 %96, label %97, label %115

97:                                               ; preds = %37
  %98 = load i32, i32* %18, align 4
  %99 = load i32, i32* @BLEND_SIZE, align 4
  %100 = icmp sge i32 %98, %99
  br i1 %100, label %101, label %115

101:                                              ; preds = %97
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i32 (i32*, i32, i32*, i32, i32*)*, i32 (i32*, i32, i32*, i32, i32*)** %103, align 8
  %105 = load i32*, i32** %20, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32*, i32** %19, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32*, i32** %16, align 8
  %114 = call i32 %104(i32* %105, i32 %108, i32* %109, i32 %112, i32* %113)
  br label %132

115:                                              ; preds = %97, %37
  %116 = load i32*, i32** %20, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32*, i32** %19, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32*, i32** %16, align 8
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* @BLEND_SIZE, align 4
  %127 = call i32 @__MIN(i32 %125, i32 %126)
  %128 = load i32, i32* %18, align 4
  %129 = load i32, i32* @BLEND_SIZE, align 4
  %130 = call i32 @__MIN(i32 %128, i32 %129)
  %131 = call i32 @BlockBlend(i32* %116, i32 %119, i32* %120, i32 %123, i32* %124, i32 %127, i32 %130)
  br label %132

132:                                              ; preds = %115, %101
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* @BLEND_SIZE, align 4
  %135 = load i32, i32* %13, align 4
  %136 = add nsw i32 %135, %134
  store i32 %136, i32* %13, align 4
  br label %31

137:                                              ; preds = %31
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* @BLEND_SIZE, align 4
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %12, align 4
  br label %24

142:                                              ; preds = %24
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i32 (...)*, i32 (...)** %144, align 8
  %146 = icmp ne i32 (...)* %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = load i32 (...)*, i32 (...)** %149, align 8
  %151 = call i32 (...) %150()
  br label %152

152:                                              ; preds = %147, %142
  ret void
}

declare dso_local i32 @urand(i32*) #1

declare dso_local i32 @BlockBlend(i32*, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @__MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
