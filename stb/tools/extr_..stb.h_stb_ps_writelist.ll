; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_ps_writelist.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_ps_writelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32** }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i8** }

@STB_BUCKET_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stb_ps_writelist(i32* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = ptrtoint i32* %13 to i64
  %15 = trunc i64 %14 to i32
  %16 = and i32 3, %15
  switch i32 %16, label %135 [
    i32 129, label %17
    i32 130, label %29
    i32 131, label %69
    i32 128, label %87
  ]

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %17
  store i32 0, i32* %4, align 4
  br label %136

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = bitcast i32* %25 to i8*
  %27 = load i8**, i8*** %6, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  store i8* %26, i8** %28, align 8
  store i32 1, i32* %4, align 4
  br label %136

29:                                               ; preds = %3
  %30 = load i32*, i32** %5, align 8
  %31 = call %struct.TYPE_8__* @GetBucket(i32* %30)
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %10, align 8
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %64, %29
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @STB_BUCKET_SIZE, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %67

36:                                               ; preds = %32
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32**, i32*** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %63

45:                                               ; preds = %36
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32**, i32*** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = bitcast i32* %56 to i8*
  %58 = load i8**, i8*** %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8*, i8** %58, i64 %61
  store i8* %57, i8** %62, align 8
  br label %63

63:                                               ; preds = %49, %45, %36
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %32

67:                                               ; preds = %32
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %4, align 4
  br label %136

69:                                               ; preds = %3
  %70 = load i32*, i32** %5, align 8
  %71 = call %struct.TYPE_9__* @GetArray(i32* %70)
  store %struct.TYPE_9__* %71, %struct.TYPE_9__** %11, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @stb_min(i32 %72, i32 %75)
  store i32 %76, i32* %9, align 4
  %77 = load i8**, i8*** %6, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 8, %82
  %84 = trunc i64 %83 to i32
  %85 = call i32 @memcpy(i8** %77, i32 %80, i32 %84)
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %4, align 4
  br label %136

87:                                               ; preds = %3
  %88 = load i32*, i32** %5, align 8
  %89 = call %struct.TYPE_7__* @GetHash(i32* %88)
  store %struct.TYPE_7__* %89, %struct.TYPE_7__** %12, align 8
  %90 = load i32, i32* %7, align 4
  %91 = icmp sle i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i32 0, i32* %4, align 4
  br label %136

93:                                               ; preds = %87
  store i32 0, i32* %8, align 4
  br label %94

94:                                               ; preds = %130, %93
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %133

100:                                              ; preds = %94
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i8**, i8*** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = ptrtoint i8* %107 to i64
  %109 = call i32 @stb_ps_empty(i64 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %129, label %111

111:                                              ; preds = %100
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i8**, i8*** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %114, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = load i8**, i8*** %6, align 8
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %9, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i8*, i8** %119, i64 %122
  store i8* %118, i8** %123, align 8
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %111
  br label %133

128:                                              ; preds = %111
  br label %129

129:                                              ; preds = %128, %100
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %94

133:                                              ; preds = %127, %94
  %134 = load i32, i32* %9, align 4
  store i32 %134, i32* %4, align 4
  br label %136

135:                                              ; preds = %3
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %135, %133, %92, %69, %67, %24, %23
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local %struct.TYPE_8__* @GetBucket(i32*) #1

declare dso_local %struct.TYPE_9__* @GetArray(i32*) #1

declare dso_local i32 @stb_min(i32, i32) #1

declare dso_local i32 @memcpy(i8**, i32, i32) #1

declare dso_local %struct.TYPE_7__* @GetHash(i32*) #1

declare dso_local i32 @stb_ps_empty(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
