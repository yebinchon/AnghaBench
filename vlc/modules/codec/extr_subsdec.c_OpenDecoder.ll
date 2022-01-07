; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_subsdec.c_OpenDecoder.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_subsdec.c_OpenDecoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_12__, i32, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_16__ = type { i32, i64, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@DecodeBlock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"trying demuxer-specified character encoding: %s\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"subsdec-encoding\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"trying configured character encoding: %s\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"GetACP\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"CP1252\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"trying default character encoding: %s\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"subsdec-autodetect-utf8\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"using automatic UTF-8 detection\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"cannot convert from %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"subsdec-align\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @OpenDecoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenDecoder(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %9, %struct.TYPE_15__** %4, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %15 [
    i32 128, label %14
    i32 129, label %14
  ]

14:                                               ; preds = %1, %1
  br label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %16, i32* %2, align 4
  br label %134

17:                                               ; preds = %14
  %18 = call %struct.TYPE_16__* @calloc(i32 1, i32 24)
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %5, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 3
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %20, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %22 = icmp eq %struct.TYPE_16__* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %24, i32* %2, align 4
  br label %134

25:                                               ; preds = %17
  %26 = load i32, i32* @DecodeBlock, align 4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  store i32 -1, i32* %33, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  store i64 -1, i64* %35, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 2
  store i32 0, i32* %37, align 8
  store i8* null, i8** %7, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 129
  br i1 %42, label %43, label %44

43:                                               ; preds = %25
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %102

44:                                               ; preds = %25
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %69

51:                                               ; preds = %44
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %51
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %6, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 (%struct.TYPE_15__*, i8*, ...) @msg_Dbg(%struct.TYPE_15__* %66, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %67)
  br label %101

69:                                               ; preds = %51, %44
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %71 = call i8* @var_InheritString(%struct.TYPE_15__* %70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i8* %71, i8** %7, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %86

73:                                               ; preds = %69
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 (%struct.TYPE_15__*, i8*, ...) @msg_Dbg(%struct.TYPE_15__* %74, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %75)
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %73
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 @free(i8* %81)
  store i8* null, i8** %7, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %85

83:                                               ; preds = %73
  %84 = load i8*, i8** %7, align 8
  store i8* %84, i8** %6, align 8
  br label %85

85:                                               ; preds = %83, %80
  br label %91

86:                                               ; preds = %69
  %87 = call i8* @vlc_pgettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  store i8* %87, i8** %6, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 (%struct.TYPE_15__*, i8*, ...) @msg_Dbg(%struct.TYPE_15__* %88, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i8* %89)
  br label %91

91:                                               ; preds = %86, %85
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %93 = call i64 @var_InheritBool(%struct.TYPE_15__* %92, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %97 = call i32 (%struct.TYPE_15__*, i8*, ...) @msg_Dbg(%struct.TYPE_15__* %96, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 2
  store i32 1, i32* %99, align 8
  br label %100

100:                                              ; preds = %95, %91
  br label %101

101:                                              ; preds = %100, %60
  br label %102

102:                                              ; preds = %101, %43
  %103 = load i8*, i8** %6, align 8
  %104 = call i64 @strcasecmp(i8* %103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %126

106:                                              ; preds = %102
  %107 = load i8*, i8** %6, align 8
  %108 = call i64 @strcasecmp(i8* %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %126

110:                                              ; preds = %106
  %111 = load i8*, i8** %6, align 8
  %112 = call i64 @vlc_iconv_open(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %111)
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  store i64 %112, i64* %114, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %117, -1
  br i1 %118, label %119, label %125

119:                                              ; preds = %110
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = load i32, i32* @errno, align 4
  %123 = call i32 @vlc_strerror_c(i32 %122)
  %124 = call i32 @msg_Err(%struct.TYPE_15__* %120, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8* %121, i32 %123)
  br label %125

125:                                              ; preds = %119, %110
  br label %126

126:                                              ; preds = %125, %106, %102
  %127 = load i8*, i8** %7, align 8
  %128 = call i32 @free(i8* %127)
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %130 = call i32 @var_InheritInteger(%struct.TYPE_15__* %129, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %126, %23, %15
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local %struct.TYPE_16__* @calloc(i32, i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_15__*, i8*, ...) #1

declare dso_local i8* @var_InheritString(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @vlc_pgettext(i8*, i8*) #1

declare dso_local i64 @var_InheritBool(%struct.TYPE_15__*, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @vlc_iconv_open(i8*, i8*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_15__*, i8*, i8*, i32) #1

declare dso_local i32 @vlc_strerror_c(i32) #1

declare dso_local i32 @var_InheritInteger(%struct.TYPE_15__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
