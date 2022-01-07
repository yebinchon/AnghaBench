; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_encoding.c_xmlInitCharEncodingHandlers.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_encoding.c_xmlInitCharEncodingHandlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@handlers = common dso_local global i32* null, align 8
@MAX_ENCODING_HANDLERS = common dso_local global i32 0, align 4
@xmlLittleEndian = common dso_local global i32 0, align 4
@XML_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Odd problem at endianness detection\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"xmlInitCharEncodingHandlers : out of memory !\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@UTF8ToUTF8 = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"UTF-16LE\00", align 1
@UTF16LEToUTF8 = common dso_local global i32* null, align 8
@xmlUTF16LEHandler = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"UTF-16BE\00", align 1
@UTF16BEToUTF8 = common dso_local global i32* null, align 8
@xmlUTF16BEHandler = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"UTF-16\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"ISO-8859-1\00", align 1
@isolat1ToUTF8 = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@asciiToUTF8 = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"US-ASCII\00", align 1
@UTF8ToHtml = common dso_local global i32* null, align 8
@UTF8ToUTF16 = common dso_local global i32* null, align 8
@UTF8ToUTF16BE = common dso_local global i32* null, align 8
@UTF8ToUTF16LE = common dso_local global i32* null, align 8
@UTF8Toascii = common dso_local global i32* null, align 8
@UTF8Toisolat1 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlInitCharEncodingHandlers() #0 {
  %1 = alloca i16, align 2
  %2 = alloca i8*, align 8
  store i16 4660, i16* %1, align 2
  %3 = bitcast i16* %1 to i8*
  store i8* %3, i8** %2, align 8
  %4 = load i32*, i32** @handlers, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %50

7:                                                ; preds = %0
  %8 = load i32, i32* @MAX_ENCODING_HANDLERS, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 4
  %11 = trunc i64 %10 to i32
  %12 = call i64 @xmlMalloc(i32 %11)
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** @handlers, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %16, 18
  br i1 %17, label %18, label %19

18:                                               ; preds = %7
  store i32 0, i32* @xmlLittleEndian, align 4
  br label %29

19:                                               ; preds = %7
  %20 = load i8*, i8** %2, align 8
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %22, 52
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 1, i32* @xmlLittleEndian, align 4
  br label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @XML_ERR_INTERNAL_ERROR, align 4
  %27 = call i32 @xmlEncodingErr(i32 %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %28

28:                                               ; preds = %25, %24
  br label %29

29:                                               ; preds = %28, %18
  %30 = load i32*, i32** @handlers, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 @xmlEncodingErrMemory(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %50

34:                                               ; preds = %29
  %35 = load i32*, i32** @UTF8ToUTF8, align 8
  %36 = load i32*, i32** @UTF8ToUTF8, align 8
  %37 = call i8* @xmlNewCharEncodingHandler(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %35, i32* %36)
  %38 = load i32*, i32** @UTF16LEToUTF8, align 8
  %39 = call i8* @xmlNewCharEncodingHandler(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* %38, i32* null)
  store i8* %39, i8** @xmlUTF16LEHandler, align 8
  %40 = load i32*, i32** @UTF16BEToUTF8, align 8
  %41 = call i8* @xmlNewCharEncodingHandler(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* %40, i32* null)
  store i8* %41, i8** @xmlUTF16BEHandler, align 8
  %42 = load i32*, i32** @UTF16LEToUTF8, align 8
  %43 = call i8* @xmlNewCharEncodingHandler(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32* %42, i32* null)
  %44 = load i32*, i32** @isolat1ToUTF8, align 8
  %45 = call i8* @xmlNewCharEncodingHandler(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32* %44, i32* null)
  %46 = load i32*, i32** @asciiToUTF8, align 8
  %47 = call i8* @xmlNewCharEncodingHandler(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32* %46, i32* null)
  %48 = load i32*, i32** @asciiToUTF8, align 8
  %49 = call i8* @xmlNewCharEncodingHandler(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32* %48, i32* null)
  br label %50

50:                                               ; preds = %34, %32, %6
  ret void
}

declare dso_local i64 @xmlMalloc(i32) #1

declare dso_local i32 @xmlEncodingErr(i32, i8*, i32*) #1

declare dso_local i32 @xmlEncodingErrMemory(i8*) #1

declare dso_local i8* @xmlNewCharEncodingHandler(i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
