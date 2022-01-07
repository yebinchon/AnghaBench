; ModuleID = '/home/carl/AnghaBench/vlc/modules/control/globalhotkeys/extr_xcb.c_Mapping.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/control/globalhotkeys/extr_xcb.c_Mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_11__ = type { i32*, i32, i32 }

@Mapping.p_x11_modifier_ignored = internal constant [4 x i32] [i32 0, i32 129, i32 128, i32 130], align 16
@KEY_MODIFIER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @Mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Mapping(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %3, align 8
  store i32 0, i32* %4, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %22, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %24 = call i8** @vlc_actions_get_key_names(%struct.TYPE_9__* %23)
  store i8** %24, i8*** %5, align 8
  br label %25

25:                                               ; preds = %140, %1
  %26 = load i8**, i8*** %5, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %143

29:                                               ; preds = %25
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = load i8**, i8*** %5, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @vlc_actions_get_keycodes(%struct.TYPE_9__* %30, i8* %32, i32 1, i32** %6)
  store i64 %33, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %34

34:                                               ; preds = %134, %29
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %137

38:                                               ; preds = %34
  %39 = load i32*, i32** %6, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @KEY_MODIFIER, align 4
  %51 = and i32 %49, %50
  %52 = call i32 @GetX11Modifier(i32 %45, i32 %48, i32 %51)
  store i32 %52, i32* %10, align 4
  store i64 4, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %53

53:                                               ; preds = %130, %38
  %54 = load i32, i32* %12, align 4
  %55 = zext i32 %54 to i64
  %56 = icmp ult i64 %55, 4
  br i1 %56, label %57, label %133

57:                                               ; preds = %53
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* @Mapping.p_x11_modifier_ignored, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @GetModifier(i32 %60, i32 %63, i32 %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %57
  %72 = load i32, i32* %13, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %130

75:                                               ; preds = %71, %57
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @KEY_MODIFIER, align 4
  %81 = xor i32 %80, -1
  %82 = and i32 %79, %81
  %83 = call i32 @GetX11Key(i32 %82)
  %84 = call i32* @xcb_key_symbols_get_keycode(i32 %78, i32 %83)
  store i32* %84, i32** %14, align 8
  %85 = load i32*, i32** %14, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %75
  br label %133

88:                                               ; preds = %75
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = mul i64 16, %96
  %98 = trunc i64 %97 to i32
  %99 = call %struct.TYPE_11__* @realloc(%struct.TYPE_11__* %91, i32 %98)
  store %struct.TYPE_11__* %99, %struct.TYPE_11__** %15, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %101 = icmp ne %struct.TYPE_11__* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %88
  %103 = load i32*, i32** %14, align 8
  %104 = call i32 @free(i32* %103)
  br label %133

105:                                              ; preds = %88
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  store %struct.TYPE_11__* %106, %struct.TYPE_11__** %108, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i64 %113
  store %struct.TYPE_11__* %114, %struct.TYPE_11__** %15, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 8
  %119 = load i32*, i32** %14, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  store i32* %119, i32** %121, align 8
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %13, align 4
  %124 = or i32 %122, %123
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 4
  store i32 1, i32* %4, align 4
  br label %130

130:                                              ; preds = %105, %74
  %131 = load i32, i32* %12, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %12, align 4
  br label %53

133:                                              ; preds = %102, %87, %53
  br label %134

134:                                              ; preds = %133
  %135 = load i64, i64* %8, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %8, align 8
  br label %34

137:                                              ; preds = %34
  %138 = load i32*, i32** %6, align 8
  %139 = call i32 @free(i32* %138)
  br label %140

140:                                              ; preds = %137
  %141 = load i8**, i8*** %5, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i32 1
  store i8** %142, i8*** %5, align 8
  br label %25

143:                                              ; preds = %25
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i8** @vlc_actions_get_key_names(%struct.TYPE_9__*) #1

declare dso_local i64 @vlc_actions_get_keycodes(%struct.TYPE_9__*, i8*, i32, i32**) #1

declare dso_local i32 @GetX11Modifier(i32, i32, i32) #1

declare dso_local i32 @GetModifier(i32, i32, i32) #1

declare dso_local i32* @xcb_key_symbols_get_keycode(i32, i32) #1

declare dso_local i32 @GetX11Key(i32) #1

declare dso_local %struct.TYPE_11__* @realloc(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
