; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_ps_getlist.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_ps_getlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32** }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i8** }

@STB_BUCKET_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @stb_ps_getlist(i32* %0, i32* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  store i8** null, i8*** %8, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = ptrtoint i32* %12 to i64
  %14 = trunc i64 %13 to i32
  %15 = and i32 3, %14
  switch i32 %15, label %144 [
    i32 129, label %16
    i32 130, label %30
    i32 131, label %71
    i32 128, label %98
  ]

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32*, i32** %5, align 8
  store i32 0, i32* %20, align 4
  store i8** null, i8*** %3, align 8
  br label %148

21:                                               ; preds = %16
  %22 = call i64 @malloc(i32 8)
  %23 = inttoptr i64 %22 to i8**
  store i8** %23, i8*** %8, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = bitcast i32* %24 to i8*
  %26 = load i8**, i8*** %8, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  store i8* %25, i8** %27, align 8
  %28 = load i32*, i32** %5, align 8
  store i32 1, i32* %28, align 4
  %29 = load i8**, i8*** %8, align 8
  store i8** %29, i8*** %3, align 8
  br label %148

30:                                               ; preds = %2
  %31 = load i32*, i32** %4, align 8
  %32 = call %struct.TYPE_8__* @GetBucket(i32* %31)
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %9, align 8
  %33 = load i32, i32* @STB_BUCKET_SIZE, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 8, %34
  %36 = trunc i64 %35 to i32
  %37 = call i64 @malloc(i32 %36)
  %38 = inttoptr i64 %37 to i8**
  store i8** %38, i8*** %8, align 8
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %67, %30
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @STB_BUCKET_SIZE, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %70

43:                                               ; preds = %39
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %66

52:                                               ; preds = %43
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = bitcast i32* %59 to i8*
  %61 = load i8**, i8*** %8, align 8
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i8*, i8** %61, i64 %64
  store i8* %60, i8** %65, align 8
  br label %66

66:                                               ; preds = %52, %43
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %39

70:                                               ; preds = %39
  br label %144

71:                                               ; preds = %2
  %72 = load i32*, i32** %4, align 8
  %73 = call %struct.TYPE_9__* @GetArray(i32* %72)
  store %struct.TYPE_9__* %73, %struct.TYPE_9__** %10, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 8, %77
  %79 = trunc i64 %78 to i32
  %80 = call i64 @malloc(i32 %79)
  %81 = inttoptr i64 %80 to i8**
  store i8** %81, i8*** %8, align 8
  %82 = load i8**, i8*** %8, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 8, %89
  %91 = trunc i64 %90 to i32
  %92 = call i32 @memcpy(i8** %82, i32 %85, i32 %91)
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %5, align 8
  store i32 %95, i32* %96, align 4
  %97 = load i8**, i8*** %8, align 8
  store i8** %97, i8*** %3, align 8
  br label %148

98:                                               ; preds = %2
  %99 = load i32*, i32** %4, align 8
  %100 = call %struct.TYPE_7__* @GetHash(i32* %99)
  store %struct.TYPE_7__* %100, %struct.TYPE_7__** %11, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = mul i64 8, %104
  %106 = trunc i64 %105 to i32
  %107 = call i64 @malloc(i32 %106)
  %108 = inttoptr i64 %107 to i8**
  store i8** %108, i8*** %8, align 8
  store i32 0, i32* %6, align 4
  br label %109

109:                                              ; preds = %140, %98
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %143

115:                                              ; preds = %109
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  %118 = load i8**, i8*** %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %118, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = ptrtoint i8* %122 to i64
  %124 = call i32 @stb_ps_empty(i64 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %139, label %126

126:                                              ; preds = %115
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 2
  %129 = load i8**, i8*** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %129, i64 %131
  %133 = load i8*, i8** %132, align 8
  %134 = load i8**, i8*** %8, align 8
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %7, align 4
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8*, i8** %134, i64 %137
  store i8* %133, i8** %138, align 8
  br label %139

139:                                              ; preds = %126, %115
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %6, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %6, align 4
  br label %109

143:                                              ; preds = %109
  br label %144

144:                                              ; preds = %2, %143, %70
  %145 = load i32, i32* %7, align 4
  %146 = load i32*, i32** %5, align 8
  store i32 %145, i32* %146, align 4
  %147 = load i8**, i8*** %8, align 8
  store i8** %147, i8*** %3, align 8
  br label %148

148:                                              ; preds = %144, %71, %21, %19
  %149 = load i8**, i8*** %3, align 8
  ret i8** %149
}

declare dso_local i64 @malloc(i32) #1

declare dso_local %struct.TYPE_8__* @GetBucket(i32*) #1

declare dso_local %struct.TYPE_9__* @GetArray(i32*) #1

declare dso_local i32 @memcpy(i8**, i32, i32) #1

declare dso_local %struct.TYPE_7__* @GetHash(i32*) #1

declare dso_local i32 @stb_ps_empty(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
