; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_t140.c_Encode.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_t140.c_Encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i64, i64, i64* }
%struct.TYPE_11__ = type { i64, i64, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i64 }

@VLC_CODEC_TEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (i32*, %struct.TYPE_11__*)* @Encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @Encode(i32* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @VLC_UNUSED(i32* %11)
  store i64 0, i64* %8, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = icmp eq %struct.TYPE_11__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %153

16:                                               ; preds = %2
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %6, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = icmp eq %struct.TYPE_12__* %20, null
  br i1 %21, label %41, label %22

22:                                               ; preds = %16
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VLC_CODEC_TEXT, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %41, label %29

29:                                               ; preds = %22
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = icmp eq %struct.TYPE_10__* %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %34, %29, %22, %16
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %153

42:                                               ; preds = %34
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  store %struct.TYPE_10__* %45, %struct.TYPE_10__** %9, align 8
  br label %46

46:                                               ; preds = %62, %42
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %48 = icmp ne %struct.TYPE_10__* %47, null
  br i1 %48, label %49, label %66

49:                                               ; preds = %46
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %62

55:                                               ; preds = %49
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i64 @strlen(i32* %58)
  %60 = load i64, i64* %8, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %8, align 8
  br label %62

62:                                               ; preds = %55, %54
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  store %struct.TYPE_10__* %65, %struct.TYPE_10__** %9, align 8
  br label %46

66:                                               ; preds = %46
  %67 = load i64, i64* %8, align 8
  %68 = add i64 %67, 1
  %69 = call %struct.TYPE_13__* @block_Alloc(i64 %68)
  store %struct.TYPE_13__* %69, %struct.TYPE_13__** %7, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %71 = icmp ne %struct.TYPE_13__* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %153

73:                                               ; preds = %66
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  store %struct.TYPE_10__* %78, %struct.TYPE_10__** %10, align 8
  br label %79

79:                                               ; preds = %110, %73
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %81 = icmp ne %struct.TYPE_10__* %80, null
  br i1 %81, label %82, label %114

82:                                               ; preds = %79
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %110

88:                                               ; preds = %82
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = call i64 @strlen(i32* %91)
  store i64 %92, i64* %8, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 4
  %95 = load i64*, i64** %94, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i64, i64* %95, i64 %98
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* %8, align 8
  %104 = call i32 @memcpy(i64* %99, i32* %102, i64 %103)
  %105 = load i64, i64* %8, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add i64 %108, %105
  store i64 %109, i64* %107, align 8
  br label %110

110:                                              ; preds = %88, %87
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  store %struct.TYPE_10__* %113, %struct.TYPE_10__** %10, align 8
  br label %79

114:                                              ; preds = %79
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 4
  %117 = load i64*, i64** %116, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds i64, i64* %117, i64 %120
  store i64 0, i64* %121, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 2
  store i64 %124, i64* %126, align 8
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 1
  store i64 %124, i64* %128, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %151, label %133

133:                                              ; preds = %114
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp sgt i64 %136, %139
  br i1 %140, label %141, label %151

141:                                              ; preds = %133
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = sub nsw i64 %144, %147
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 3
  store i64 %148, i64* %150, align 8
  br label %151

151:                                              ; preds = %141, %133, %114
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %152, %struct.TYPE_13__** %3, align 8
  br label %153

153:                                              ; preds = %151, %72, %41, %15
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  ret %struct.TYPE_13__* %154
}

declare dso_local i32 @VLC_UNUSED(i32*) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local %struct.TYPE_13__* @block_Alloc(i64) #1

declare dso_local i32 @memcpy(i64*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
