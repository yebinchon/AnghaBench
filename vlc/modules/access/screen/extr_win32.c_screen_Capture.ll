; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/screen/extr_win32.c_screen_Capture.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/screen/extr_win32.c_screen_Capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64, %struct.TYPE_22__, i32, i32, i64, %struct.TYPE_23__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_26__*, i32, i32 }
%struct.TYPE_27__ = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"cannot get block\00", align 1
@SRCCOPY = common dso_local global i32 0, align 4
@CAPTUREBLT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"error during BitBlt()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_26__* @screen_Capture(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_26__*, align 8
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_27__, align 8
  %7 = alloca %struct.TYPE_27__, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_27__, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  %10 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  store %struct.TYPE_25__* %12, %struct.TYPE_25__** %4, align 8
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 5
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  store %struct.TYPE_23__* %15, %struct.TYPE_23__** %5, align 8
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %1
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %22 = call %struct.TYPE_26__* @CaptureBlockNew(%struct.TYPE_24__* %21)
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 2
  store %struct.TYPE_26__* %22, %struct.TYPE_26__** %24, align 8
  %25 = icmp ne %struct.TYPE_26__* %22, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %28 = call i32 @msg_Warn(%struct.TYPE_24__* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %2, align 8
  br label %148

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = call i32 @GetCursorPos(%struct.TYPE_27__* %6)
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %38 = call i32 @FromScreenCoordinates(%struct.TYPE_24__* %37, %struct.TYPE_27__* %6)
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %6, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %6, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @FollowMouse(%struct.TYPE_25__* %39, i32 %41, i64 %43)
  br label %45

45:                                               ; preds = %35, %30
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 0
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %46, align 8
  %51 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 1
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %51, align 8
  %55 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 2
  store i32 0, i32* %55, align 4
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 3
  store i32 0, i32* %56, align 8
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %58 = call i32 @ToScreenCoordinates(%struct.TYPE_24__* %57, %struct.TYPE_27__* %7)
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %64, %67
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %86, %89
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %83, %91
  %93 = load i32, i32* @SRCCOPY, align 4
  %94 = load i32, i32* @CAPTUREBLT, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @BitBlt(i32 %61, i32 0, i32 %68, i32 %73, i32 %76, i32 %79, i32 %81, i64 %92, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %45
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %100 = call i32 @msg_Err(%struct.TYPE_24__* %99, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %2, align 8
  br label %148

101:                                              ; preds = %45
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 8
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sdiv i32 %113, %116
  %118 = srem i32 %108, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %147, label %120

120:                                              ; preds = %101
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %122, align 8
  store %struct.TYPE_26__* %123, %struct.TYPE_26__** %8, align 8
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 0
  store i32 0, i32* %125, align 8
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 2
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %127, align 8
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %120
  %133 = call i32 @GetCursorPos(%struct.TYPE_27__* %9)
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %135 = call i32 @FromScreenCoordinates(%struct.TYPE_24__* %134, %struct.TYPE_27__* %9)
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @RenderCursor(%struct.TYPE_24__* %136, i32 %138, i64 %140, i32 %143)
  br label %145

145:                                              ; preds = %132, %120
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  store %struct.TYPE_26__* %146, %struct.TYPE_26__** %2, align 8
  br label %148

147:                                              ; preds = %101
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %2, align 8
  br label %148

148:                                              ; preds = %147, %145, %98, %26
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  ret %struct.TYPE_26__* %149
}

declare dso_local %struct.TYPE_26__* @CaptureBlockNew(%struct.TYPE_24__*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_24__*, i8*) #1

declare dso_local i32 @GetCursorPos(%struct.TYPE_27__*) #1

declare dso_local i32 @FromScreenCoordinates(%struct.TYPE_24__*, %struct.TYPE_27__*) #1

declare dso_local i32 @FollowMouse(%struct.TYPE_25__*, i32, i64) #1

declare dso_local i32 @ToScreenCoordinates(%struct.TYPE_24__*, %struct.TYPE_27__*) #1

declare dso_local i32 @BitBlt(i32, i32, i32, i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_24__*, i8*) #1

declare dso_local i32 @RenderCursor(%struct.TYPE_24__*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
