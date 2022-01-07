; ModuleID = '/home/carl/AnghaBench/vlc/modules/control/globalhotkeys/extr_xcb.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/control/globalhotkeys/extr_xcb.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i64, %struct.TYPE_15__*, %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@Thread = common dso_local global i32 0, align 4
@VLC_THREAD_PRIORITY_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %4, align 8
  %13 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %13, i32* %6, align 4
  %14 = call %struct.TYPE_15__* @calloc(i32 1, i32 40)
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %5, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %16, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %18 = icmp ne %struct.TYPE_15__* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %20, i32* %2, align 4
  br label %139

21:                                               ; preds = %1
  %22 = call i32 @xcb_connect(i32* null, i32* %7)
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @xcb_connection_has_error(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %121

31:                                               ; preds = %21
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32* @xcb_get_setup(i32 %34)
  store i32* %35, i32** %8, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %121

39:                                               ; preds = %31
  %40 = load i32*, i32** %8, align 8
  %41 = call { %struct.TYPE_12__*, i32 } @xcb_setup_roots_iterator(i32* %40)
  %42 = bitcast %struct.TYPE_13__* %9 to { %struct.TYPE_12__*, i32 }*
  %43 = getelementptr inbounds { %struct.TYPE_12__*, i32 }, { %struct.TYPE_12__*, i32 }* %42, i32 0, i32 0
  %44 = extractvalue { %struct.TYPE_12__*, i32 } %41, 0
  store %struct.TYPE_12__* %44, %struct.TYPE_12__** %43, align 8
  %45 = getelementptr inbounds { %struct.TYPE_12__*, i32 }, { %struct.TYPE_12__*, i32 }* %42, i32 0, i32 1
  %46 = extractvalue { %struct.TYPE_12__*, i32 } %41, 1
  store i32 %46, i32* %45, align 8
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %58, %39
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  br label %61

56:                                               ; preds = %51
  %57 = call i32 @xcb_screen_next(%struct.TYPE_13__* %9)
  br label %58

58:                                               ; preds = %56
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %47

61:                                               ; preds = %55, %47
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  br label %121

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @xcb_key_symbols_alloc(i32 %75)
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %66
  br label %121

84:                                               ; preds = %66
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %86 = call i32 @Mapping(%struct.TYPE_14__* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %89, i32* %6, align 4
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %91, align 8
  br label %121

92:                                               ; preds = %84
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %94 = call i32 @Register(%struct.TYPE_14__* %93)
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 4
  %97 = load i32, i32* @Thread, align 4
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %99 = load i32, i32* @VLC_THREAD_PRIORITY_LOW, align 4
  %100 = call i64 @vlc_clone(i32* %96, i32 %97, %struct.TYPE_14__* %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %92
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %104, align 8
  %106 = icmp ne %struct.TYPE_15__* %105, null
  br i1 %106, label %107, label %118

107:                                              ; preds = %102
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  %113 = call i32 @free(%struct.TYPE_15__* %112)
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %115, align 8
  %117 = call i32 @free(%struct.TYPE_15__* %116)
  br label %118

118:                                              ; preds = %107, %102
  br label %121

119:                                              ; preds = %92
  %120 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %120, i32* %2, align 4
  br label %139

121:                                              ; preds = %118, %88, %83, %65, %38, %30
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @xcb_key_symbols_free(i64 %129)
  br label %131

131:                                              ; preds = %126, %121
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @xcb_disconnect(i32 %134)
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %137 = call i32 @free(%struct.TYPE_15__* %136)
  %138 = load i32, i32* %6, align 4
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %131, %119, %19
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local %struct.TYPE_15__* @calloc(i32, i32) #1

declare dso_local i32 @xcb_connect(i32*, i32*) #1

declare dso_local i64 @xcb_connection_has_error(i32) #1

declare dso_local i32* @xcb_get_setup(i32) #1

declare dso_local { %struct.TYPE_12__*, i32 } @xcb_setup_roots_iterator(i32*) #1

declare dso_local i32 @xcb_screen_next(%struct.TYPE_13__*) #1

declare dso_local i64 @xcb_key_symbols_alloc(i32) #1

declare dso_local i32 @Mapping(%struct.TYPE_14__*) #1

declare dso_local i32 @Register(%struct.TYPE_14__*) #1

declare dso_local i64 @vlc_clone(i32*, i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_15__*) #1

declare dso_local i32 @xcb_key_symbols_free(i64) #1

declare dso_local i32 @xcb_disconnect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
