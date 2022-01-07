; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_ifo.c_Import_IFO.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_ifo.c_Import_IFO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c".IFO\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"VIDEO_TS\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"VTS_\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"DVDVIDEO\00", align 1
@ReadDVD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"VR_MANGR\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"DVD_RTR_\00", align 1
@ReadDVD_VR = common dso_local global i32 0, align 4
@access_vaDirectoryControlHelper = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Import_IFO(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %4, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = call i32 @CHECK_FILE(%struct.TYPE_5__* %13)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = call i32 @stream_HasExtension(%struct.TYPE_5__* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %19, i32* %2, align 4
  br label %80

20:                                               ; preds = %1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = call i8* @StreamLocation(%struct.TYPE_5__* %21)
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %26, i32* %2, align 4
  br label %80

27:                                               ; preds = %20
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @strlen(i8* %28)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ult i64 %30, 12
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %33, i32* %2, align 4
  br label %80

34:                                               ; preds = %27
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = sub i64 %36, 12
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @strncasecmp(i8* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @strncasecmp(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42, %34
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  %47 = load i32, i32* @ReadDVD, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  br label %61

50:                                               ; preds = %42
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @strncasecmp(i8* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  %55 = load i32, i32* @ReadDVD_VR, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  br label %60

58:                                               ; preds = %50
  %59 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %59, i32* %2, align 4
  br label %80

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %46
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @vlc_stream_Peek(i32 %64, i32** %9, i32 8)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 8
  br i1 %67, label %73, label %68

68:                                               ; preds = %61
  %69 = load i32*, i32** %9, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = call i64 @memcmp(i32* %69, i8* %70, i32 8)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68, %61
  %74 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %74, i32* %2, align 4
  br label %80

75:                                               ; preds = %68
  %76 = load i32, i32* @access_vaDirectoryControlHelper, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %75, %73, %58, %32, %25, %18
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @CHECK_FILE(%struct.TYPE_5__*) #1

declare dso_local i32 @stream_HasExtension(%struct.TYPE_5__*, i8*) #1

declare dso_local i8* @StreamLocation(%struct.TYPE_5__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @vlc_stream_Peek(i32, i32**, i32) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
