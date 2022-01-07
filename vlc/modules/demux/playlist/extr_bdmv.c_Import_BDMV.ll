; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_bdmv.c_Import_BDMV.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_bdmv.c_Import_BDMV.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c".BDMV\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"INDEX\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"INDX0200\00", align 1
@ReadBR = common dso_local global i32 0, align 4
@access_vaDirectoryControlHelper = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Import_BDMV(i32* %0) #0 {
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
  %16 = call i32 @stream_HasExtension(%struct.TYPE_5__* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %19, i32* %2, align 4
  br label %67

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
  br label %67

27:                                               ; preds = %20
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @strlen(i8* %28)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ult i64 %30, 15
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %33, i32* %2, align 4
  br label %67

34:                                               ; preds = %27
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = sub i64 %36, 10
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @strncasecmp(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %34
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  %43 = load i32, i32* @ReadBR, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  br label %48

46:                                               ; preds = %34
  %47 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %47, i32* %2, align 4
  br label %67

48:                                               ; preds = %42
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @vlc_stream_Peek(i32 %51, i32** %9, i32 8)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 8
  br i1 %54, label %60, label %55

55:                                               ; preds = %48
  %56 = load i32*, i32** %9, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = call i64 @memcmp(i32* %56, i8* %57, i32 8)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55, %48
  %61 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %61, i32* %2, align 4
  br label %67

62:                                               ; preds = %55
  %63 = load i32, i32* @access_vaDirectoryControlHelper, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %62, %60, %46, %32, %25, %18
  %68 = load i32, i32* %2, align 4
  ret i32 %68
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
