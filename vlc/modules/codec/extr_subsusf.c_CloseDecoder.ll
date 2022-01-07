; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_subsusf.c_CloseDecoder.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_subsusf.c_CloseDecoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_6__**, %struct.TYPE_6__*, i64, %struct.TYPE_6__**, i32, %struct.TYPE_6__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @CloseDecoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CloseDecoder(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = bitcast i32* %7 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %3, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %4, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 5
  %14 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %13, align 8
  %15 = icmp ne %struct.TYPE_6__** %14, null
  br i1 %15, label %16, label %73

16:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %62, %16
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %65

23:                                               ; preds = %17
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 5
  %26 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %26, i64 %28
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = icmp ne %struct.TYPE_6__* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  br label %62

33:                                               ; preds = %23
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 5
  %36 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %36, i64 %38
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 7
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = call i32 @free(%struct.TYPE_6__* %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 5
  %46 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %46, i64 %48
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @text_style_Delete(i32 %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 5
  %56 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %56, i64 %58
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = call i32 @free(%struct.TYPE_6__* %60)
  br label %62

62:                                               ; preds = %33, %32
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %17

65:                                               ; preds = %17
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 5
  %71 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %70, align 8
  %72 = call i32 @TAB_CLEAN(i32 %68, %struct.TYPE_6__** %71)
  br label %73

73:                                               ; preds = %65, %1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %75, align 8
  %77 = icmp ne %struct.TYPE_6__** %76, null
  br i1 %77, label %78, label %147

78:                                               ; preds = %73
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %136, %78
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %139

85:                                               ; preds = %79
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %88, i64 %90
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = icmp ne %struct.TYPE_6__* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %85
  br label %136

95:                                               ; preds = %85
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %98, i64 %100
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %95
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %109, i64 %111
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @picture_Release(i64 %115)
  br label %117

117:                                              ; preds = %106, %95
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %120, i64 %122
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = call i32 @free(%struct.TYPE_6__* %126)
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %130, i64 %132
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = call i32 @free(%struct.TYPE_6__* %134)
  br label %136

136:                                              ; preds = %117, %94
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %6, align 4
  br label %79

139:                                              ; preds = %79
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %144, align 8
  %146 = call i32 @TAB_CLEAN(i32 %142, %struct.TYPE_6__** %145)
  br label %147

147:                                              ; preds = %139, %73
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %149 = call i32 @free(%struct.TYPE_6__* %148)
  ret void
}

declare dso_local i32 @free(%struct.TYPE_6__*) #1

declare dso_local i32 @text_style_Delete(i32) #1

declare dso_local i32 @TAB_CLEAN(i32, %struct.TYPE_6__**) #1

declare dso_local i32 @picture_Release(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
