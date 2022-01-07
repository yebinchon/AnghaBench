; ModuleID = '/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/fonts/extr_darwin.c_CoreText_GetFallbacks.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/fonts/extr_darwin.c_CoreText_GetFallbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }

@kCFAllocatorDefault = common dso_local global i32 0, align 4
@kCFStringEncodingUTF8 = common dso_local global i32 0, align 4
@kCFStringEncodingUTF32LE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Failed to convert font family name CFString to C string\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Will deploy fallback font '%s'\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @CoreText_GetFallbacks(%struct.TYPE_8__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %8, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp eq i8* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %138

30:                                               ; preds = %3
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %31 = load i32, i32* @kCFAllocatorDefault, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @kCFStringEncodingUTF8, align 4
  %34 = call i32* @CFStringCreateWithCString(i32 %31, i8* %32, i32 %33)
  store i32* %34, i32** %14, align 8
  %35 = load i32*, i32** %14, align 8
  %36 = call i32* @CTFontCreateWithName(i32* %35, i32 0, i32* null)
  store i32* %36, i32** %15, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @OSSwapHostToLittleInt32(i32 %37)
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* @kCFAllocatorDefault, align 4
  %40 = load i32, i32* @kCFStringEncodingUTF32LE, align 4
  %41 = call i32* @CFStringCreateWithBytes(i32 %39, i32* %16, i32 4, i32 %40, i32 0)
  store i32* %41, i32** %17, align 8
  %42 = load i32*, i32** %15, align 8
  %43 = load i32*, i32** %17, align 8
  %44 = call i32 @CFRangeMake(i32 0, i32 1)
  %45 = call i32* @CTFontCreateForString(i32* %42, i32* %43, i32 %44)
  store i32* %45, i32** %18, align 8
  %46 = load i32*, i32** %18, align 8
  %47 = call i32* @CTFontCopyFamilyName(i32* %46)
  store i32* %47, i32** %19, align 8
  %48 = load i32*, i32** %19, align 8
  %49 = load i32, i32* @kCFStringEncodingUTF8, align 4
  %50 = call i8* @FromCFString(i32* %48, i32 %49)
  store i8* %50, i8** %20, align 8
  %51 = load i8*, i8** %20, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %30
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = call i32 @msg_Warn(%struct.TYPE_8__* %54, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %108

56:                                               ; preds = %30
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = load i8*, i8** %20, align 8
  %59 = call i32 @msg_Dbg(%struct.TYPE_8__* %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  %60 = load i8*, i8** %20, align 8
  %61 = call i8* @ToLower(i8* %60)
  store i8* %61, i8** %12, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i8*, i8** %12, align 8
  %65 = call i32* @vlc_dictionary_value_for_key(i32* %63, i8* %64)
  store i32* %65, i32** %9, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  br label %108

69:                                               ; preds = %56
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i8*, i8** %12, align 8
  %77 = call i32* @NewFamily(%struct.TYPE_8__* %70, i8* %71, i32* %73, i32* %75, i8* %76)
  store i32* %77, i32** %9, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = icmp ne i32* %78, null
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %69
  br label %108

85:                                               ; preds = %69
  %86 = load i32*, i32** %18, align 8
  %87 = call i32* @CTFontCopyPostScriptName(i32* %86)
  store i32* %87, i32** %10, align 8
  %88 = load i32*, i32** %10, align 8
  %89 = call i32* @CTFontDescriptorCreateWithNameAndSize(i32* %88, i32 0)
  store i32* %89, i32** %11, align 8
  %90 = load i32*, i32** %11, align 8
  %91 = call i8* @getPathForFontDescription(i32* %90)
  store i8* %91, i8** %13, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %85
  %95 = load i8*, i8** %13, align 8
  %96 = call i64 @strcmp(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* %95)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %108

99:                                               ; preds = %94
  br label %101

100:                                              ; preds = %85
  br label %108

101:                                              ; preds = %99
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = load i8*, i8** %13, align 8
  %105 = call i32 @strdup(i8* %104)
  %106 = load i32*, i32** %9, align 8
  %107 = call i32 @addNewFontToFamily(%struct.TYPE_8__* %102, i32* %103, i32 %105, i32* %106)
  br label %108

108:                                              ; preds = %101, %100, %98, %84, %68, %53
  %109 = load i32*, i32** %14, align 8
  %110 = call i32 @CFRelease(i32* %109)
  %111 = load i32*, i32** %15, align 8
  %112 = call i32 @CFRelease(i32* %111)
  %113 = load i32*, i32** %17, align 8
  %114 = call i32 @CFRelease(i32* %113)
  %115 = load i32*, i32** %18, align 8
  %116 = call i32 @CFRelease(i32* %115)
  %117 = load i32*, i32** %19, align 8
  %118 = call i32 @CFRelease(i32* %117)
  %119 = load i8*, i8** %20, align 8
  %120 = call i32 @free(i8* %119)
  %121 = load i8*, i8** %12, align 8
  %122 = call i32 @free(i8* %121)
  %123 = load i8*, i8** %13, align 8
  %124 = call i32 @free(i8* %123)
  %125 = load i32*, i32** %10, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %108
  %128 = load i32*, i32** %10, align 8
  %129 = call i32 @CFRelease(i32* %128)
  br label %130

130:                                              ; preds = %127, %108
  %131 = load i32*, i32** %11, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i32*, i32** %11, align 8
  %135 = call i32 @CFRelease(i32* %134)
  br label %136

136:                                              ; preds = %133, %130
  %137 = load i32*, i32** %9, align 8
  store i32* %137, i32** %4, align 8
  br label %138

138:                                              ; preds = %136, %29
  %139 = load i32*, i32** %4, align 8
  ret i32* %139
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @CFStringCreateWithCString(i32, i8*, i32) #1

declare dso_local i32* @CTFontCreateWithName(i32*, i32, i32*) #1

declare dso_local i32 @OSSwapHostToLittleInt32(i32) #1

declare dso_local i32* @CFStringCreateWithBytes(i32, i32*, i32, i32, i32) #1

declare dso_local i32* @CTFontCreateForString(i32*, i32*, i32) #1

declare dso_local i32 @CFRangeMake(i32, i32) #1

declare dso_local i32* @CTFontCopyFamilyName(i32*) #1

declare dso_local i8* @FromCFString(i32*, i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_8__*, i8*, i8*) #1

declare dso_local i8* @ToLower(i8*) #1

declare dso_local i32* @vlc_dictionary_value_for_key(i32*, i8*) #1

declare dso_local i32* @NewFamily(%struct.TYPE_8__*, i8*, i32*, i32*, i8*) #1

declare dso_local i32* @CTFontCopyPostScriptName(i32*) #1

declare dso_local i32* @CTFontDescriptorCreateWithNameAndSize(i32*, i32) #1

declare dso_local i8* @getPathForFontDescription(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @addNewFontToFamily(%struct.TYPE_8__*, i32*, i32, i32*) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @CFRelease(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
