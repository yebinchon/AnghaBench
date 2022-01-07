; ModuleID = '/home/carl/AnghaBench/vlc/modules/control/extr_hotkeys.c_vout_CycleVariable.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/control/extr_hotkeys.c_vout_CycleVariable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_8__* }

@VLC_VAR_GETCHOICES = common dso_local global i32 0, align 4
@VLC_VAR_FLOAT = common dso_local global i32 0, align 4
@VLC_VAR_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32, i32)* @vout_CycleVariable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vout_CycleVariable(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @var_Get(i32* %15, i8* %16, %struct.TYPE_8__* %9)
  %18 = load i32*, i32** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* @VLC_VAR_GETCHOICES, align 4
  %21 = call i32 @var_Change(i32* %18, i8* %19, i32 %20, i64* %10, %struct.TYPE_8__** %11, i32* null)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %12, align 8
  store i64 0, i64* %13, align 8
  br label %23

23:                                               ; preds = %80, %4
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %85

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @VLC_VAR_FLOAT, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %50, label %38

38:                                               ; preds = %31, %27
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @VLC_VAR_STRING, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %79

42:                                               ; preds = %38
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = call i32 @strcmp(%struct.TYPE_8__* %45, %struct.TYPE_8__* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %79, label %50

50:                                               ; preds = %42, %31
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 1, i32 -1
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %13, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %13, align 8
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %50
  %61 = load i64, i64* %13, align 8
  %62 = load i64, i64* %10, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i64 0, i64* %13, align 8
  br label %75

65:                                               ; preds = %60, %50
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = load i64, i64* %13, align 8
  %70 = icmp eq i64 %69, -1
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i64, i64* %10, align 8
  %73 = sub i64 %72, 1
  store i64 %73, i64* %13, align 8
  br label %74

74:                                               ; preds = %71, %68, %65
  br label %75

75:                                               ; preds = %74, %64
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %77 = load i64, i64* %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i64 %77
  store %struct.TYPE_8__* %78, %struct.TYPE_8__** %12, align 8
  br label %85

79:                                               ; preds = %42, %38
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %13, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %13, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 1
  store %struct.TYPE_8__* %84, %struct.TYPE_8__** %12, align 8
  br label %23

85:                                               ; preds = %75, %23
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %88 = load i64, i64* %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i64 %88
  %90 = icmp eq %struct.TYPE_8__* %86, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %92, %struct.TYPE_8__** %12, align 8
  br label %93

93:                                               ; preds = %91, %85
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @VLC_VAR_FLOAT, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %93
  %98 = load i32*, i32** %5, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @var_SetFloat(i32* %98, i8* %99, i64 %102)
  br label %116

104:                                              ; preds = %93
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @VLC_VAR_STRING, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = load i32*, i32** %5, align 8
  %110 = load i8*, i8** %6, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = call i32 @var_SetString(i32* %109, i8* %110, %struct.TYPE_8__* %113)
  br label %115

115:                                              ; preds = %108, %104
  br label %116

116:                                              ; preds = %115, %97
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @VLC_VAR_STRING, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %139

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = call i32 @free(%struct.TYPE_8__* %122)
  store i64 0, i64* %14, align 8
  br label %124

124:                                              ; preds = %135, %120
  %125 = load i64, i64* %14, align 8
  %126 = load i64, i64* %10, align 8
  %127 = icmp ult i64 %125, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %124
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %130 = load i64, i64* %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = call i32 @free(%struct.TYPE_8__* %133)
  br label %135

135:                                              ; preds = %128
  %136 = load i64, i64* %14, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %14, align 8
  br label %124

138:                                              ; preds = %124
  br label %139

139:                                              ; preds = %138, %116
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %141 = call i32 @free(%struct.TYPE_8__* %140)
  ret void
}

declare dso_local i32 @var_Get(i32*, i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @var_Change(i32*, i8*, i32, i64*, %struct.TYPE_8__**, i32*) #1

declare dso_local i32 @strcmp(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @var_SetFloat(i32*, i8*, i64) #1

declare dso_local i32 @var_SetString(i32*, i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
