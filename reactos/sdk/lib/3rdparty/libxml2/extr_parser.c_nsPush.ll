; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_nsPush.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_nsPush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32** }

@XML_PARSE_NSCLEAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32*)* @nsPush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsPush(%struct.TYPE_4__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @XML_PARSE_NSCLEAN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %52

16:                                               ; preds = %3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %19, 2
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %48, %16
  %22 = load i32, i32* %8, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %21
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  %27 = load i32**, i32*** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = icmp eq i32* %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %24
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  %37 = load i32**, i32*** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %37, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = icmp eq i32* %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  store i32 -2, i32* %4, align 4
  br label %150

46:                                               ; preds = %34
  br label %51

47:                                               ; preds = %24
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %8, align 4
  %50 = sub nsw i32 %49, 2
  store i32 %50, i32* %8, align 4
  br label %21

51:                                               ; preds = %46, %21
  br label %52

52:                                               ; preds = %51, %3
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 3
  %60 = load i32**, i32*** %59, align 8
  %61 = icmp eq i32** %60, null
  br i1 %61, label %62, label %87

62:                                               ; preds = %57, %52
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  store i32 10, i32* %64, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32 0, i32* %66, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 8
  %72 = trunc i64 %71 to i32
  %73 = call i64 @xmlMalloc(i32 %72)
  %74 = inttoptr i64 %73 to i32**
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  store i32** %74, i32*** %76, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  %79 = load i32**, i32*** %78, align 8
  %80 = icmp eq i32** %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %62
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %83 = call i32 @xmlErrMemory(%struct.TYPE_4__* %82, i32* null)
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  store i32 0, i32* %85, align 8
  store i32 -1, i32* %4, align 4
  br label %150

86:                                               ; preds = %62
  br label %126

87:                                               ; preds = %57
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp sge i32 %90, %93
  br i1 %94, label %95, label %125

95:                                               ; preds = %87
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = mul nsw i32 %98, 2
  store i32 %99, i32* %97, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 3
  %102 = load i32**, i32*** %101, align 8
  %103 = bitcast i32** %102 to i8*
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 8
  %109 = trunc i64 %108 to i32
  %110 = call i64 @xmlRealloc(i8* %103, i32 %109)
  %111 = inttoptr i64 %110 to i32**
  store i32** %111, i32*** %9, align 8
  %112 = load i32**, i32*** %9, align 8
  %113 = icmp eq i32** %112, null
  br i1 %113, label %114, label %121

114:                                              ; preds = %95
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %116 = call i32 @xmlErrMemory(%struct.TYPE_4__* %115, i32* null)
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = sdiv i32 %119, 2
  store i32 %120, i32* %118, align 8
  store i32 -1, i32* %4, align 4
  br label %150

121:                                              ; preds = %95
  %122 = load i32**, i32*** %9, align 8
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 3
  store i32** %122, i32*** %124, align 8
  br label %125

125:                                              ; preds = %121, %87
  br label %126

126:                                              ; preds = %125, %86
  %127 = load i32*, i32** %6, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 3
  %130 = load i32**, i32*** %129, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i32*, i32** %130, i64 %135
  store i32* %127, i32** %136, align 8
  %137 = load i32*, i32** %7, align 8
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 3
  %140 = load i32**, i32*** %139, align 8
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 4
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i32*, i32** %140, i64 %145
  store i32* %137, i32** %146, align 8
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %126, %114, %81, %45
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i64 @xmlMalloc(i32) #1

declare dso_local i32 @xmlErrMemory(%struct.TYPE_4__*, i32*) #1

declare dso_local i64 @xmlRealloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
