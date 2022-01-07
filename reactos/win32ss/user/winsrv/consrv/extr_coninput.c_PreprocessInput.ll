; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/extr_coninput.c_PreprocessInput.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/extr_coninput.c_PreprocessInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8, i32, i64 }

@KEY_EVENT = common dso_local global i64 0, align 8
@PAUSED_FROM_KEYBOARD = common dso_local global i32 0, align 4
@ENABLE_LINE_INPUT = common dso_local global i32 0, align 4
@VK_PAUSE = common dso_local global i8 0, align 1
@LEFT_CTRL_PRESSED = common dso_local global i32 0, align 4
@RIGHT_CTRL_PRESSED = common dso_local global i32 0, align 4
@LEFT_ALT_PRESSED = common dso_local global i32 0, align 4
@RIGHT_ALT_PRESSED = common dso_local global i32 0, align 4
@VK_SHIFT = common dso_local global i8 0, align 1
@VK_CAPITAL = common dso_local global i8 0, align 1
@VK_LWIN = common dso_local global i8 0, align 1
@VK_RWIN = common dso_local global i8 0, align 1
@VK_NUMLOCK = common dso_local global i8 0, align 1
@VK_SCROLL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*, i32)* @PreprocessInput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PreprocessInput(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  store i32 %10, i32* %7, align 4
  br label %11

11:                                               ; preds = %148, %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %151

14:                                               ; preds = %11
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @KEY_EVENT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %145

20:                                               ; preds = %14
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %145

27:                                               ; preds = %20
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i8, i8* %31, align 8
  store i8 %32, i8* %8, align 1
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PAUSED_FROM_KEYBOARD, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %92, label %39

39:                                               ; preds = %27
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %9, align 4
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ENABLE_LINE_INPUT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %91

52:                                               ; preds = %39
  %53 = load i8, i8* %8, align 1
  %54 = sext i8 %53 to i32
  %55 = load i8, i8* @VK_PAUSE, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %76, label %58

58:                                               ; preds = %52
  %59 = load i8, i8* %8, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 83
  br i1 %61, label %62, label %91

62:                                               ; preds = %58
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @LEFT_CTRL_PRESSED, align 4
  %65 = load i32, i32* @RIGHT_CTRL_PRESSED, align 4
  %66 = or i32 %64, %65
  %67 = and i32 %63, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %91

69:                                               ; preds = %62
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @LEFT_ALT_PRESSED, align 4
  %72 = load i32, i32* @RIGHT_ALT_PRESSED, align 4
  %73 = or i32 %71, %72
  %74 = and i32 %70, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %91, label %76

76:                                               ; preds = %69, %52
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %78 = load i32, i32* @PAUSED_FROM_KEYBOARD, align 4
  %79 = call i32 @ConioPause(%struct.TYPE_16__* %77, i32 %78)
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i64 1
  %83 = load i32, i32* %7, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 4
  %87 = trunc i64 %86 to i32
  %88 = call i32 @RtlMoveMemory(%struct.TYPE_15__* %80, %struct.TYPE_15__* %82, i32 %87)
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %6, align 4
  br label %148

91:                                               ; preds = %69, %62, %58, %39
  br label %144

92:                                               ; preds = %27
  %93 = load i8, i8* %8, align 1
  %94 = sext i8 %93 to i32
  %95 = load i8, i8* @VK_SHIFT, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp slt i32 %94, %96
  br i1 %97, label %104, label %98

98:                                               ; preds = %92
  %99 = load i8, i8* %8, align 1
  %100 = sext i8 %99 to i32
  %101 = load i8, i8* @VK_CAPITAL, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp sgt i32 %100, %102
  br i1 %103, label %104, label %143

104:                                              ; preds = %98, %92
  %105 = load i8, i8* %8, align 1
  %106 = sext i8 %105 to i32
  %107 = load i8, i8* @VK_LWIN, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %106, %108
  br i1 %109, label %110, label %143

110:                                              ; preds = %104
  %111 = load i8, i8* %8, align 1
  %112 = sext i8 %111 to i32
  %113 = load i8, i8* @VK_RWIN, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %112, %114
  br i1 %115, label %116, label %143

116:                                              ; preds = %110
  %117 = load i8, i8* %8, align 1
  %118 = sext i8 %117 to i32
  %119 = load i8, i8* @VK_NUMLOCK, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp ne i32 %118, %120
  br i1 %121, label %122, label %143

122:                                              ; preds = %116
  %123 = load i8, i8* %8, align 1
  %124 = sext i8 %123 to i32
  %125 = load i8, i8* @VK_SCROLL, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %124, %126
  br i1 %127, label %128, label %143

128:                                              ; preds = %122
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %130 = load i32, i32* @PAUSED_FROM_KEYBOARD, align 4
  %131 = call i32 @ConioUnpause(%struct.TYPE_16__* %129, i32 %130)
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i64 1
  %135 = load i32, i32* %7, align 4
  %136 = sub nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = mul i64 %137, 4
  %139 = trunc i64 %138 to i32
  %140 = call i32 @RtlMoveMemory(%struct.TYPE_15__* %132, %struct.TYPE_15__* %134, i32 %139)
  %141 = load i32, i32* %6, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %6, align 4
  br label %148

143:                                              ; preds = %122, %116, %110, %104, %98
  br label %144

144:                                              ; preds = %143, %91
  br label %145

145:                                              ; preds = %144, %20, %14
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 1
  store %struct.TYPE_15__* %147, %struct.TYPE_15__** %5, align 8
  br label %148

148:                                              ; preds = %145, %128, %76
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %7, align 4
  br label %11

151:                                              ; preds = %11
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

declare dso_local i32 @ConioPause(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @RtlMoveMemory(%struct.TYPE_15__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @ConioUnpause(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
