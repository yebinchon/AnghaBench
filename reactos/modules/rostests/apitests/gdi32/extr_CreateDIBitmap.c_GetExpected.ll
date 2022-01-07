; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_CreateDIBitmap.c_GetExpected.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_CreateDIBitmap.c_GetExpected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@CBM_INIT = common dso_local global i32 0, align 4
@INVALID_POINTER = common dso_local global %struct.TYPE_10__* null, align 8
@CBM_CREATDIB = common dso_local global i32 0, align 4
@DIB_PAL_COLORS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetExpected(i32* %0, i64 %1, %struct.TYPE_10__* %2, i32 %3, %struct.TYPE_10__* %4, %struct.TYPE_10__* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %14, align 8
  store i32 %6, i32* %15, align 4
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 2
  br i1 %17, label %18, label %22

18:                                               ; preds = %7
  %19 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %20 = load i32*, i32** %9, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %8, align 4
  br label %164

22:                                               ; preds = %7
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* @DIB_RGB_COLORS, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i64, i64* %10, align 8
  %28 = icmp eq i64 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %8, align 4
  br label %164

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %22
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @CBM_INIT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %84

37:                                               ; preds = %32
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %39 = icmp ne %struct.TYPE_10__* %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %37
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %42 = icmp ne %struct.TYPE_10__* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** @INVALID_POINTER, align 8
  %46 = icmp eq %struct.TYPE_10__* %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43, %40
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %8, align 4
  br label %164

49:                                               ; preds = %43
  br label %83

50:                                               ; preds = %37
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %52 = icmp ne %struct.TYPE_10__* %51, null
  br i1 %52, label %53, label %82

53:                                               ; preds = %50
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** @INVALID_POINTER, align 8
  %56 = icmp eq %struct.TYPE_10__* %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %8, align 4
  br label %164

59:                                               ; preds = %53
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %61 = icmp ne %struct.TYPE_10__* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** @INVALID_POINTER, align 8
  %65 = icmp eq %struct.TYPE_10__* %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62, %59
  %67 = load i32, i32* @FALSE, align 4
  store i32 %67, i32* %8, align 4
  br label %164

68:                                               ; preds = %62
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @FALSE, align 4
  store i32 %75, i32* %8, align 4
  br label %164

76:                                               ; preds = %68
  %77 = load i32, i32* %15, align 4
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i32, i32* @FALSE, align 4
  store i32 %80, i32* %8, align 4
  br label %164

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81, %50
  br label %83

83:                                               ; preds = %82, %49
  br label %84

84:                                               ; preds = %83, %32
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @CBM_CREATDIB, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %134

89:                                               ; preds = %84
  %90 = load i32, i32* %15, align 4
  %91 = icmp eq i32 %90, 2
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* @FALSE, align 4
  store i32 %93, i32* %8, align 4
  br label %164

94:                                               ; preds = %89
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* @DIB_PAL_COLORS, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load i64, i64* %10, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* @FALSE, align 4
  store i32 %102, i32* %8, align 4
  br label %164

103:                                              ; preds = %98, %94
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* @CBM_INIT, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %103
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %110 = icmp ne %struct.TYPE_10__* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** @INVALID_POINTER, align 8
  %114 = icmp eq %struct.TYPE_10__* %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %111, %108
  %116 = load i32, i32* @FALSE, align 4
  store i32 %116, i32* %8, align 4
  br label %164

117:                                              ; preds = %111
  br label %118

118:                                              ; preds = %117, %103
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %120 = icmp ne %struct.TYPE_10__* %119, null
  br i1 %120, label %121, label %131

121:                                              ; preds = %118
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** @INVALID_POINTER, align 8
  %124 = icmp eq %struct.TYPE_10__* %122, %123
  br i1 %124, label %131, label %125

125:                                              ; preds = %121
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %125, %121, %118
  %132 = load i32, i32* @FALSE, align 4
  store i32 %132, i32* %8, align 4
  br label %164

133:                                              ; preds = %125
  br label %162

134:                                              ; preds = %84
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %136 = icmp eq %struct.TYPE_10__* %135, null
  br i1 %136, label %146, label %137

137:                                              ; preds = %134
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** @INVALID_POINTER, align 8
  %140 = icmp eq %struct.TYPE_10__* %138, %139
  br i1 %140, label %146, label %141

141:                                              ; preds = %137
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %141, %137, %134
  %147 = load i32, i32* @FALSE, align 4
  store i32 %147, i32* %8, align 4
  br label %164

148:                                              ; preds = %141
  %149 = load i64, i64* %10, align 8
  %150 = icmp eq i64 %149, -1
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %153 = load i32*, i32** %9, align 8
  store i32 %152, i32* %153, align 4
  %154 = load i32, i32* @FALSE, align 4
  store i32 %154, i32* %8, align 4
  br label %164

155:                                              ; preds = %148
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** @INVALID_POINTER, align 8
  %158 = icmp eq %struct.TYPE_10__* %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %155
  %160 = load i32, i32* @FALSE, align 4
  store i32 %160, i32* %8, align 4
  br label %164

161:                                              ; preds = %155
  br label %162

162:                                              ; preds = %161, %133
  %163 = load i32, i32* @TRUE, align 4
  store i32 %163, i32* %8, align 4
  br label %164

164:                                              ; preds = %162, %159, %151, %146, %131, %115, %101, %92, %79, %74, %66, %57, %47, %29, %18
  %165 = load i32, i32* %8, align 4
  ret i32 %165
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
