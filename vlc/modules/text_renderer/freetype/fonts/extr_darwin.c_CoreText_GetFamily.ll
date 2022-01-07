; ModuleID = '/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/fonts/extr_darwin.c_CoreText_GetFamily.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/fonts/extr_darwin.c_CoreText_GetFamily.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }

@kCTFontFamilyNameAttribute = common dso_local global i32* null, align 8
@kCTFontDisplayNameAttribute = common dso_local global i32* null, align 8
@kCTFontNameAttribute = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Creating new family for '%s'\00", align 1
@kCFAllocatorDefault = common dso_local global i32 0, align 4
@kCFStringEncodingUTF8 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"CTFontCollectionCreateWithFontDescriptors (1) failed!\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"CTFontCollectionCreateMatchingFontDescriptors (2) failed!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @CoreText_GetFamily(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [3 x i32*], align 16
  %13 = alloca [3 x i32*], align 16
  %14 = alloca [3 x i32*], align 16
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %6, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = icmp eq i8* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %196

32:                                               ; preds = %2
  %33 = load i8*, i8** %5, align 8
  %34 = call i8* @ToLower(i8* %33)
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  store i32* null, i32** %3, align 8
  br label %196

42:                                               ; preds = %32
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i8*, i8** %7, align 8
  %46 = call i32* @vlc_dictionary_value_for_key(i32* %44, i8* %45)
  store i32* %46, i32** %8, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @free(i8* %50)
  %52 = load i32*, i32** %8, align 8
  store i32* %52, i32** %3, align 8
  br label %196

53:                                               ; preds = %42
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i64 3, i64* %11, align 8
  %54 = getelementptr inbounds [3 x i32*], [3 x i32*]* %14, i64 0, i64 0
  %55 = load i32*, i32** @kCTFontFamilyNameAttribute, align 8
  store i32* %55, i32** %54, align 8
  %56 = getelementptr inbounds i32*, i32** %54, i64 1
  %57 = load i32*, i32** @kCTFontDisplayNameAttribute, align 8
  store i32* %57, i32** %56, align 8
  %58 = getelementptr inbounds i32*, i32** %56, i64 1
  %59 = load i32*, i32** @kCTFontNameAttribute, align 8
  store i32* %59, i32** %58, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @msg_Dbg(%struct.TYPE_8__* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %61)
  %63 = load i32, i32* @kCFAllocatorDefault, align 4
  %64 = load i8*, i8** %5, align 8
  %65 = load i32, i32* @kCFStringEncodingUTF8, align 4
  %66 = call i32* @CFStringCreateWithCString(i32 %63, i8* %64, i32 %65)
  store i32* %66, i32** %15, align 8
  store i64 0, i64* %16, align 8
  br label %67

67:                                               ; preds = %89, %53
  %68 = load i64, i64* %16, align 8
  %69 = icmp ult i64 %68, 3
  br i1 %69, label %70, label %92

70:                                               ; preds = %67
  %71 = load i32, i32* @kCFAllocatorDefault, align 4
  %72 = call i32* @CFDictionaryCreateMutable(i32 %71, i32 0, i32* null, i32* null)
  %73 = load i64, i64* %16, align 8
  %74 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 %73
  store i32* %72, i32** %74, align 8
  %75 = load i64, i64* %16, align 8
  %76 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* %16, align 8
  %79 = getelementptr inbounds [3 x i32*], [3 x i32*]* %14, i64 0, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = load i32*, i32** %15, align 8
  %82 = call i32 @CFDictionaryAddValue(i32* %77, i32* %80, i32* %81)
  %83 = load i64, i64* %16, align 8
  %84 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = call i32* @CTFontDescriptorCreateWithAttributes(i32* %85)
  %87 = load i64, i64* %16, align 8
  %88 = getelementptr inbounds [3 x i32*], [3 x i32*]* %12, i64 0, i64 %87
  store i32* %86, i32** %88, align 8
  br label %89

89:                                               ; preds = %70
  %90 = load i64, i64* %16, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %16, align 8
  br label %67

92:                                               ; preds = %67
  %93 = load i32, i32* @kCFAllocatorDefault, align 4
  %94 = bitcast [3 x i32*]* %12 to i8**
  %95 = call i32* @CFArrayCreate(i32 %93, i8** %94, i64 3, i32* null)
  store i32* %95, i32** %17, align 8
  %96 = load i32*, i32** %17, align 8
  %97 = call i32* @CTFontCollectionCreateWithFontDescriptors(i32* %96, i32 0)
  store i32* %97, i32** %9, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %92
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %102 = call i32 @msg_Warn(%struct.TYPE_8__* %101, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  br label %160

103:                                              ; preds = %92
  %104 = load i32*, i32** %9, align 8
  %105 = call i32* @CTFontCollectionCreateMatchingFontDescriptors(i32* %104)
  store i32* %105, i32** %10, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %110 = call i32 @msg_Warn(%struct.TYPE_8__* %109, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  br label %160

111:                                              ; preds = %103
  %112 = load i32*, i32** %10, align 8
  %113 = call i64 @CFArrayGetCount(i32* %112)
  store i64 %113, i64* %18, align 8
  store i8* null, i8** %19, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i8*, i8** %7, align 8
  %121 = call i32* @NewFamily(%struct.TYPE_8__* %114, i8* %115, i32* %117, i32* %119, i8* %120)
  store i32* %121, i32** %8, align 8
  %122 = load i32*, i32** %8, align 8
  %123 = icmp ne i32* %122, null
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = call i64 @unlikely(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %111
  br label %160

129:                                              ; preds = %111
  store i64 0, i64* %20, align 8
  br label %130

130:                                              ; preds = %156, %129
  %131 = load i64, i64* %20, align 8
  %132 = load i64, i64* %18, align 8
  %133 = icmp slt i64 %131, %132
  br i1 %133, label %134, label %159

134:                                              ; preds = %130
  %135 = load i32*, i32** %10, align 8
  %136 = load i64, i64* %20, align 8
  %137 = call i32* @CFArrayGetValueAtIndex(i32* %135, i64 %136)
  store i32* %137, i32** %21, align 8
  %138 = load i32*, i32** %21, align 8
  %139 = call i8* @getPathForFontDescription(i32* %138)
  store i8* %139, i8** %19, align 8
  %140 = load i8*, i8** %19, align 8
  %141 = icmp eq i8* %140, null
  br i1 %141, label %147, label %142

142:                                              ; preds = %134
  %143 = load i8*, i8** %19, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %142, %134
  %148 = load i8*, i8** %19, align 8
  %149 = call i32 @FREENULL(i8* %148)
  br label %156

150:                                              ; preds = %142
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %152 = load i32*, i32** %21, align 8
  %153 = load i8*, i8** %19, align 8
  %154 = load i32*, i32** %8, align 8
  %155 = call i32 @addNewFontToFamily(%struct.TYPE_8__* %151, i32* %152, i8* %153, i32* %154)
  br label %156

156:                                              ; preds = %150, %147
  %157 = load i64, i64* %20, align 8
  %158 = add nsw i64 %157, 1
  store i64 %158, i64* %20, align 8
  br label %130

159:                                              ; preds = %130
  br label %160

160:                                              ; preds = %159, %128, %108, %100
  %161 = load i32*, i32** %10, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i32*, i32** %10, align 8
  %165 = call i32 @CFRelease(i32* %164)
  br label %166

166:                                              ; preds = %163, %160
  %167 = load i32*, i32** %9, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load i32*, i32** %9, align 8
  %171 = call i32 @CFRelease(i32* %170)
  br label %172

172:                                              ; preds = %169, %166
  store i64 0, i64* %22, align 8
  br label %173

173:                                              ; preds = %185, %172
  %174 = load i64, i64* %22, align 8
  %175 = icmp ult i64 %174, 3
  br i1 %175, label %176, label %188

176:                                              ; preds = %173
  %177 = load i64, i64* %22, align 8
  %178 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 %177
  %179 = load i32*, i32** %178, align 8
  %180 = call i32 @CFRelease(i32* %179)
  %181 = load i64, i64* %22, align 8
  %182 = getelementptr inbounds [3 x i32*], [3 x i32*]* %12, i64 0, i64 %181
  %183 = load i32*, i32** %182, align 8
  %184 = call i32 @CFRelease(i32* %183)
  br label %185

185:                                              ; preds = %176
  %186 = load i64, i64* %22, align 8
  %187 = add i64 %186, 1
  store i64 %187, i64* %22, align 8
  br label %173

188:                                              ; preds = %173
  %189 = load i32*, i32** %17, align 8
  %190 = call i32 @CFRelease(i32* %189)
  %191 = load i32*, i32** %15, align 8
  %192 = call i32 @CFRelease(i32* %191)
  %193 = load i8*, i8** %7, align 8
  %194 = call i32 @free(i8* %193)
  %195 = load i32*, i32** %8, align 8
  store i32* %195, i32** %3, align 8
  br label %196

196:                                              ; preds = %188, %49, %41, %31
  %197 = load i32*, i32** %3, align 8
  ret i32* %197
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @ToLower(i8*) #1

declare dso_local i32* @vlc_dictionary_value_for_key(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_8__*, i8*, i8*) #1

declare dso_local i32* @CFStringCreateWithCString(i32, i8*, i32) #1

declare dso_local i32* @CFDictionaryCreateMutable(i32, i32, i32*, i32*) #1

declare dso_local i32 @CFDictionaryAddValue(i32*, i32*, i32*) #1

declare dso_local i32* @CTFontDescriptorCreateWithAttributes(i32*) #1

declare dso_local i32* @CFArrayCreate(i32, i8**, i64, i32*) #1

declare dso_local i32* @CTFontCollectionCreateWithFontDescriptors(i32*, i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_8__*, i8*) #1

declare dso_local i32* @CTFontCollectionCreateMatchingFontDescriptors(i32*) #1

declare dso_local i64 @CFArrayGetCount(i32*) #1

declare dso_local i32* @NewFamily(%struct.TYPE_8__*, i8*, i32*, i32*, i8*) #1

declare dso_local i32* @CFArrayGetValueAtIndex(i32*, i64) #1

declare dso_local i8* @getPathForFontDescription(i32*) #1

declare dso_local i32 @FREENULL(i8*) #1

declare dso_local i32 @addNewFontToFamily(%struct.TYPE_8__*, i32*, i8*, i32*) #1

declare dso_local i32 @CFRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
