; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_image.c_ImageReadUrl.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_image.c_ImageReadUrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"could not open %s for reading\00", align 1
@SSIZE_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"could not read %s\00", align 1
@VIDEO_ES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i8*, i32*)* @ImageReadUrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ImageReadUrl(%struct.TYPE_4__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %10, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = call i32* @vlc_stream_NewURL(i32 %17, i8* %18)
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @msg_Dbg(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %26)
  store i32* null, i32** %4, align 8
  br label %80

28:                                               ; preds = %3
  %29 = load i32*, i32** %10, align 8
  %30 = call i64 @vlc_stream_GetSize(i32* %29, i64* %11)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* @SSIZE_MAX, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32, %28
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @msg_Dbg(i32 %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  br label %77

42:                                               ; preds = %32
  %43 = load i32*, i32** %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i32* @vlc_stream_Block(i32* %43, i64 %44)
  store i32* %45, i32** %8, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %77

49:                                               ; preds = %42
  store i64 0, i64* %12, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = call i8* @stream_MimeType(i32* %50)
  store i8* %51, i8** %13, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i8*, i8** %13, align 8
  %56 = call i64 @image_Mime2Fourcc(i8* %55)
  store i64 %56, i64* %12, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = call i32 @free(i8* %57)
  br label %59

59:                                               ; preds = %54, %49
  %60 = load i64, i64* %12, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i8*, i8** %6, align 8
  %64 = call i64 @image_Ext2Fourcc(i8* %63)
  store i64 %64, i64* %12, align 8
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @vlc_stream_Delete(i32* %66)
  %68 = load i32, i32* @VIDEO_ES, align 4
  %69 = load i64, i64* %12, align 8
  %70 = call i32 @es_format_Init(i32* %14, i32 %68, i64 %69)
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = call i32* @ImageRead(%struct.TYPE_4__* %71, i32* %72, i32* %14, i32* %73)
  store i32* %74, i32** %9, align 8
  %75 = call i32 @es_format_Clean(i32* %14)
  %76 = load i32*, i32** %9, align 8
  store i32* %76, i32** %4, align 8
  br label %80

77:                                               ; preds = %48, %36
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @vlc_stream_Delete(i32* %78)
  store i32* null, i32** %4, align 8
  br label %80

80:                                               ; preds = %77, %65, %22
  %81 = load i32*, i32** %4, align 8
  ret i32* %81
}

declare dso_local i32* @vlc_stream_NewURL(i32, i8*) #1

declare dso_local i32 @msg_Dbg(i32, i8*, i8*) #1

declare dso_local i64 @vlc_stream_GetSize(i32*, i64*) #1

declare dso_local i32* @vlc_stream_Block(i32*, i64) #1

declare dso_local i8* @stream_MimeType(i32*) #1

declare dso_local i64 @image_Mime2Fourcc(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @image_Ext2Fourcc(i8*) #1

declare dso_local i32 @vlc_stream_Delete(i32*) #1

declare dso_local i32 @es_format_Init(i32*, i32, i64) #1

declare dso_local i32* @ImageRead(%struct.TYPE_4__*, i32*, i32*, i32*) #1

declare dso_local i32 @es_format_Clean(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
