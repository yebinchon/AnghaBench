; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_dict.c_xmlDictAddQString.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_dict.c_xmlDictAddQString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i32*, %struct.TYPE_5__*, i32*, i32* }

@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*, i32*, i32, i32*, i32)* @xmlDictAddQString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xmlDictAddQString(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %5
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call i32* @xmlDictAddString(%struct.TYPE_6__* %19, i32* %20, i32 %21)
  store i32* %22, i32** %6, align 8
  br label %183

23:                                               ; preds = %5
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %12, align 8
  br label %27

27:                                               ; preds = %58, %23
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %29 = icmp ne %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %67

30:                                               ; preds = %27
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 5
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = ptrtoint i32* %33 to i64
  %38 = ptrtoint i32* %36 to i64
  %39 = sub i64 %37, %38
  %40 = sdiv exact i64 %39, 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %9, align 4
  %43 = add i32 %41, %42
  %44 = add i32 %43, 1
  %45 = zext i32 %44 to i64
  %46 = icmp ugt i64 %40, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %30
  br label %142

48:                                               ; preds = %30
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %14, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %14, align 8
  br label %58

58:                                               ; preds = %54, %48
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %15, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %15, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  store %struct.TYPE_5__* %66, %struct.TYPE_5__** %12, align 8
  br label %27

67:                                               ; preds = %27
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %69 = icmp eq %struct.TYPE_5__* %68, null
  br i1 %69, label %70, label %141

70:                                               ; preds = %67
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ugt i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load i64, i64* %15, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ugt i64 %76, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  store i32* null, i32** %6, align 8
  br label %183

82:                                               ; preds = %75, %70
  %83 = load i64, i64* %14, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i64 1000, i64* %14, align 8
  br label %89

86:                                               ; preds = %82
  %87 = load i64, i64* %14, align 8
  %88 = mul i64 %87, 4
  store i64 %88, i64* %14, align 8
  br label %89

89:                                               ; preds = %86, %85
  %90 = load i64, i64* %14, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %9, align 4
  %93 = add i32 %91, %92
  %94 = add i32 %93, 1
  %95 = mul i32 4, %94
  %96 = zext i32 %95 to i64
  %97 = icmp ult i64 %90, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %89
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %9, align 4
  %101 = add i32 %99, %100
  %102 = add i32 %101, 1
  %103 = mul i32 4, %102
  %104 = zext i32 %103 to i64
  store i64 %104, i64* %14, align 8
  br label %105

105:                                              ; preds = %98, %89
  %106 = load i64, i64* %14, align 8
  %107 = add i64 4, %106
  %108 = trunc i64 %107 to i32
  %109 = call i64 @xmlMalloc(i32 %108)
  %110 = inttoptr i64 %109 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %110, %struct.TYPE_5__** %12, align 8
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %112 = icmp eq %struct.TYPE_5__* %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  store i32* null, i32** %6, align 8
  br label %183

114:                                              ; preds = %105
  %115 = load i64, i64* %14, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  store i64 0, i64* %119, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 4
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 2
  store i32* %123, i32** %125, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = load i64, i64* %14, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 5
  store i32* %130, i32** %132, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 3
  store %struct.TYPE_5__* %135, %struct.TYPE_5__** %137, align 8
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  store %struct.TYPE_5__* %138, %struct.TYPE_5__** %140, align 8
  br label %141

141:                                              ; preds = %114, %67
  br label %142

142:                                              ; preds = %141, %47
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  store i32* %145, i32** %13, align 8
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = load i32*, i32** %8, align 8
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @memcpy(i32* %148, i32* %149, i32 %150)
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = zext i32 %152 to i64
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  store i32* %157, i32** %154, align 8
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %159, align 8
  store i32 58, i32* %160, align 4
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = load i32*, i32** %10, align 8
  %166 = load i32, i32* %11, align 4
  %167 = call i32 @memcpy(i32* %164, i32* %165, i32 %166)
  %168 = load i32, i32* %11, align 4
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = zext i32 %168 to i64
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  store i32* %173, i32** %170, align 8
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i32 1
  store i32* %177, i32** %175, align 8
  store i32 0, i32* %176, align 4
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %180, 1
  store i64 %181, i64* %179, align 8
  %182 = load i32*, i32** %13, align 8
  store i32* %182, i32** %6, align 8
  br label %183

183:                                              ; preds = %142, %113, %81, %18
  %184 = load i32*, i32** %6, align 8
  ret i32* %184
}

declare dso_local i32* @xmlDictAddString(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i64 @xmlMalloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
