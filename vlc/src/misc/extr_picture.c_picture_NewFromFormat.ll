; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_picture.c_picture_NewFromFormat.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_picture.c_picture_NewFromFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_10__*, %struct.TYPE_13__* }
%struct.TYPE_10__ = type { i8*, i32, i32 }
%struct.TYPE_13__ = type { i8*, i64, i64, i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@picture_DestroyFromFormat = common dso_local global i32 0, align 4
@PICTURE_PLANE_MAX = common dso_local global i32 0, align 4
@PICTURE_SW_SIZE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @picture_NewFromFormat(i32* noalias %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call %struct.TYPE_12__* @picture_NewPrivate(i32* %15, i32 32)
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %4, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = icmp eq %struct.TYPE_12__* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %151

23:                                               ; preds = %1
  %24 = load i32, i32* @picture_DestroyFromFormat, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %5, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %23
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 2
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %36, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %37, %struct.TYPE_11__** %2, align 8
  br label %151

38:                                               ; preds = %23
  %39 = load i32, i32* @PICTURE_PLANE_MAX, align 4
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %6, align 8
  %42 = alloca i64, i64 %40, align 16
  store i64 %40, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %80, %38
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %45, %48
  br i1 %49, label %50, label %83

50:                                               ; preds = %43
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i64 %55
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** %10, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %42, i64 %64
  %66 = call i32 @mul_overflow(i32 %59, i32 %62, i64* %65)
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %50
  %70 = load i64, i64* %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %42, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @add_overflow(i64 %70, i64 %74, i64* %8)
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69, %50
  br label %146

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %43

83:                                               ; preds = %43
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* @PICTURE_SW_SIZE_MAX, align 8
  %86 = icmp uge i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i64 @unlikely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %146

91:                                               ; preds = %83
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to i8*
  %96 = bitcast i8* %95 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %96, %struct.TYPE_13__** %11, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 3
  %99 = load i64, i64* %8, align 8
  %100 = call i8* @picture_Allocate(i32* %98, i64 %99)
  store i8* %100, i8** %12, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = icmp eq i8* %101, null
  %103 = zext i1 %102 to i32
  %104 = call i64 @unlikely(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %91
  br label %146

107:                                              ; preds = %91
  %108 = load i8*, i8** %12, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  %111 = load i64, i64* %8, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 2
  store i64 0, i64* %115, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 2
  store %struct.TYPE_13__* %116, %struct.TYPE_13__** %118, align 8
  store i32 0, i32* %13, align 4
  br label %119

119:                                              ; preds = %141, %107
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp slt i64 %121, %124
  br i1 %125, label %126, label %144

126:                                              ; preds = %119
  %127 = load i8*, i8** %12, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  store i8* %127, i8** %134, align 8
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %42, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = load i8*, i8** %12, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 %138
  store i8* %140, i8** %12, align 8
  br label %141

141:                                              ; preds = %126
  %142 = load i32, i32* %13, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %13, align 4
  br label %119

144:                                              ; preds = %119
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %145, %struct.TYPE_11__** %2, align 8
  store i32 1, i32* %14, align 4
  br label %149

146:                                              ; preds = %106, %90, %78
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %148 = call i32 @free(%struct.TYPE_11__* %147)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  store i32 1, i32* %14, align 4
  br label %149

149:                                              ; preds = %146, %144
  %150 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %150)
  br label %151

151:                                              ; preds = %149, %34, %22
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  ret %struct.TYPE_11__* %152
}

declare dso_local %struct.TYPE_12__* @picture_NewPrivate(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mul_overflow(i32, i32, i64*) #1

declare dso_local i32 @add_overflow(i64, i64, i64*) #1

declare dso_local i8* @picture_Allocate(i32*, i64) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
