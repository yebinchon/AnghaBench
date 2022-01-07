; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_anim_util.c_ReadAnimatedWebP.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_anim_util.c_ReadAnimatedWebP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i32, i64, i32* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Error parsing image: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Error getting global info about the animation\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Error decoding frame #%u\0A\00", align 1
@kNumChannels = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Error dumping frames to %s\0A\00", align 1
@ANIM_WEBP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.TYPE_10__*, i32, i8*)* @ReadAnimatedWebP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadAnimatedWebP(i8* %0, i32* %1, %struct.TYPE_10__* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_8__, align 4
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %23 = call i32 @memset(%struct.TYPE_10__* %22, i32 0, i32 32)
  %24 = load i32*, i32** %8, align 8
  %25 = call i32* @WebPAnimDecoderNew(i32* %24, i32* null)
  store i32* %25, i32** %16, align 8
  %26 = load i32*, i32** %16, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %5
  %29 = load i32, i32* @stderr, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = bitcast i8* %30 to i32*
  %32 = call i32 @WFPRINTF(i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %31)
  br label %156

33:                                               ; preds = %5
  %34 = load i32*, i32** %16, align 8
  %35 = call i32 @WebPAnimDecoderGetInfo(i32* %34, %struct.TYPE_8__* %17)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %156

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @AllocateFrames(%struct.TYPE_10__* %57, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %160

63:                                               ; preds = %40
  br label %64

64:                                               ; preds = %143, %63
  %65 = load i32*, i32** %16, align 8
  %66 = call i64 @WebPAnimDecoderHasMoreFrames(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %147

68:                                               ; preds = %64
  %69 = load i32*, i32** %16, align 8
  %70 = call i32 @WebPAnimDecoderGetNext(i32* %69, i32** %20, i32* %21)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* @stderr, align 4
  %74 = load i32, i32* %14, align 4
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  br label %156

76:                                               ; preds = %68
  %77 = load i32, i32* %14, align 4
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %77, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i64 %87
  store %struct.TYPE_9__* %88, %struct.TYPE_9__** %18, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  store i32* %91, i32** %19, align 8
  %92 = load i32, i32* %21, align 4
  %93 = load i32, i32* %15, align 4
  %94 = sub nsw i32 %92, %93
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  store i64 0, i64* %98, align 8
  %99 = load i32*, i32** %19, align 8
  %100 = load i32*, i32** %20, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @kNumChannels, align 4
  %105 = mul nsw i32 %103, %104
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %105, %108
  %110 = call i32 @memcpy(i32* %99, i32* %100, i32 %109)
  %111 = load i32*, i32** %19, align 8
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @CleanupTransparentPixels(i32* %111, i32 %114, i32 %117)
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %143

121:                                              ; preds = %76
  %122 = load i32, i32* %13, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %143

124:                                              ; preds = %121
  %125 = load i8*, i8** %7, align 8
  %126 = load i8*, i8** %11, align 8
  %127 = load i32, i32* %14, align 4
  %128 = load i32*, i32** %19, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @DumpFrame(i8* %125, i8* %126, i32 %127, i32* %128, i32 %131, i32 %134)
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %124
  %139 = load i32, i32* @stderr, align 4
  %140 = load i8*, i8** %11, align 8
  %141 = call i32 (i32, i8*, ...) @fprintf(i32 %139, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %140)
  br label %142

142:                                              ; preds = %138, %124
  br label %143

143:                                              ; preds = %142, %121, %76
  %144 = load i32, i32* %14, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %14, align 4
  %146 = load i32, i32* %21, align 4
  store i32 %146, i32* %15, align 4
  br label %64

147:                                              ; preds = %64
  %148 = load i32, i32* %13, align 4
  store i32 %148, i32* %12, align 4
  %149 = load i32, i32* %12, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %147
  %152 = load i32, i32* @ANIM_WEBP, align 4
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %151, %147
  br label %156

156:                                              ; preds = %155, %72, %37, %28
  %157 = load i32*, i32** %16, align 8
  %158 = call i32 @WebPAnimDecoderDelete(i32* %157)
  %159 = load i32, i32* %12, align 4
  store i32 %159, i32* %6, align 4
  br label %160

160:                                              ; preds = %156, %62
  %161 = load i32, i32* %6, align 4
  ret i32 %161
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32* @WebPAnimDecoderNew(i32*, i32*) #1

declare dso_local i32 @WFPRINTF(i32, i8*, i32*) #1

declare dso_local i32 @WebPAnimDecoderGetInfo(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @AllocateFrames(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @WebPAnimDecoderHasMoreFrames(i32*) #1

declare dso_local i32 @WebPAnimDecoderGetNext(i32*, i32**, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @CleanupTransparentPixels(i32*, i32, i32) #1

declare dso_local i32 @DumpFrame(i8*, i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @WebPAnimDecoderDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
