; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_directx_va.c_directx_va_Setup.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_directx_va.c_directx_va_Setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@FF_THREAD_FRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"surface dimensions (%dx%d) differ from avcodec dimensions (%dx%d)\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"FindVideoServiceConversion failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @directx_va_Setup(i32* %0, i32* %1, %struct.TYPE_10__* %2, i32* %3, i32* %4, i32 %5, %struct.TYPE_9__* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32 16, i32* %18, align 4
  store i32 2, i32* %19, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %43 [
    i32 129, label %26
    i32 130, label %29
    i32 131, label %37
    i32 128, label %40
  ]

26:                                               ; preds = %8
  store i32 32, i32* %18, align 4
  %27 = load i32, i32* %19, align 4
  %28 = add i32 %27, 4
  store i32 %28, i32* %19, align 4
  br label %46

29:                                               ; preds = %8
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 16, i32* %18, align 4
  br label %34

33:                                               ; preds = %29
  store i32 128, i32* %18, align 4
  br label %34

34:                                               ; preds = %33, %32
  %35 = load i32, i32* %19, align 4
  %36 = add i32 %35, 16
  store i32 %36, i32* %19, align 4
  br label %46

37:                                               ; preds = %8
  %38 = load i32, i32* %19, align 4
  %39 = add i32 %38, 18
  store i32 %39, i32* %19, align 4
  br label %46

40:                                               ; preds = %8
  %41 = load i32, i32* %19, align 4
  %42 = add i32 %41, 9
  store i32 %42, i32* %19, align 4
  br label %46

43:                                               ; preds = %8
  %44 = load i32, i32* %19, align 4
  %45 = add i32 %44, 2
  store i32 %45, i32* %19, align 4
  br label %46

46:                                               ; preds = %43, %40, %37, %34, %26
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @FF_THREAD_FRAME, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %19, align 4
  %58 = zext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %19, align 4
  br label %61

61:                                               ; preds = %53, %46
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp sle i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = icmp sle i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66, %61
  store i32* null, i32** %9, align 8
  br label %157

72:                                               ; preds = %66
  %73 = load i32, i32* %18, align 4
  %74 = load i32, i32* %18, align 4
  %75 = sub nsw i32 %74, 1
  %76 = and i32 %73, %75
  %77 = icmp eq i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %18, align 4
  %84 = sub nsw i32 %83, 1
  %85 = add nsw i32 %82, %84
  %86 = load i32, i32* %18, align 4
  %87 = sub nsw i32 %86, 1
  %88 = xor i32 %87, -1
  %89 = and i32 %85, %88
  store i32 %89, i32* %20, align 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %18, align 4
  %94 = sub nsw i32 %93, 1
  %95 = add nsw i32 %92, %94
  %96 = load i32, i32* %18, align 4
  %97 = sub nsw i32 %96, 1
  %98 = xor i32 %97, -1
  %99 = and i32 %95, %98
  store i32 %99, i32* %21, align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %20, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %111, label %105

105:                                              ; preds = %72
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %21, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %105, %72
  %112 = load i32*, i32** %10, align 8
  %113 = load i32, i32* %20, align 4
  %114 = load i32, i32* %21, align 4
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @msg_Warn(i32* %112, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %113, i32 %114, i32 %117, i32 %120)
  br label %122

122:                                              ; preds = %111, %105
  %123 = load i32, i32* %20, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* %21, align 4
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 4
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 4
  %141 = load i32*, i32** %10, align 8
  %142 = load i32*, i32** %11, align 8
  %143 = load i32*, i32** %14, align 8
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %146 = load i32*, i32** %13, align 8
  %147 = call i32* @FindVideoServiceConversion(i32* %141, i32* %142, i32* %143, %struct.TYPE_9__* %144, %struct.TYPE_10__* %145, i32* %146)
  store i32* %147, i32** %22, align 8
  %148 = load i32*, i32** %22, align 8
  %149 = icmp eq i32* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %122
  %151 = load i32*, i32** %10, align 8
  %152 = call i32 @msg_Err(i32* %151, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %9, align 8
  br label %157

153:                                              ; preds = %122
  %154 = load i32, i32* %19, align 4
  %155 = load i32*, i32** %17, align 8
  store i32 %154, i32* %155, align 4
  %156 = load i32*, i32** %22, align 8
  store i32* %156, i32** %9, align 8
  br label %157

157:                                              ; preds = %153, %150, %71
  %158 = load i32*, i32** %9, align 8
  ret i32* %158
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @msg_Warn(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32* @FindVideoServiceConversion(i32*, i32*, i32*, %struct.TYPE_9__*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
