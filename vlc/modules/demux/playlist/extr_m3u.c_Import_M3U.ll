; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_m3u.c_Import_M3U.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_m3u.c_Import_M3U.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* (i8*)*, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c".m3u8\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"RTSPtext\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\EF\BB\BF\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"application/vnd.apple.mpegurl\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"#EXTM3U\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"application/mpegurl\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"application/x-mpegurl\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"audio/mpegurl\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"vnd.apple.mpegURL\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"audio/x-mpegurl\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c".m3u\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c".vlc\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"found valid M3U playlist\00", align 1
@ReadDir = common dso_local global i32 0, align 4
@access_vaDirectoryControlHelper = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Import_M3U(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8* (i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %4, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = call i32 @CHECK_FILE(%struct.TYPE_7__* %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @vlc_stream_Peek(i32 %17, i32** %5, i32 1024)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 8
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %22, i32* %2, align 4
  br label %163

23:                                               ; preds = %1
  store i8* (i8*)* @GuessEncoding, i8* (i8*)** %8, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = call i64 @stream_HasExtension(%struct.TYPE_7__* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load i32*, i32** %5, align 8
  %29 = bitcast i32* %28 to i8*
  %30 = call i64 @strncasecmp(i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %23
  store i8* (i8*)* @CheckUnicode, i8* (i8*)** %8, align 8
  br label %51

33:                                               ; preds = %27
  %34 = load i32*, i32** %5, align 8
  %35 = call i64 @memcmp(i32* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 12
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %41, i32* %2, align 4
  br label %163

42:                                               ; preds = %37
  store i8* (i8*)* @CheckUnicode, i8* (i8*)** %8, align 8
  store i32 3, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32* %46, i32** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %42, %33
  br label %51

51:                                               ; preds = %50, %32
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i8* @stream_MimeType(i32 %54)
  store i8* %55, i8** %9, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  store i32 1, i32* %10, align 4
  br label %131

62:                                               ; preds = %51
  %63 = load i8*, i8** %9, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i8*, i8** %9, align 8
  %67 = call i64 @vlc_ascii_strcasecmp(i8* %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  store i32 0, i32* %10, align 4
  br label %130

70:                                               ; preds = %65, %62
  %71 = load i32*, i32** %5, align 8
  %72 = call i64 @memcmp(i32* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %105, label %74

74:                                               ; preds = %70
  %75 = load i8*, i8** %9, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %97

77:                                               ; preds = %74
  %78 = load i8*, i8** %9, align 8
  %79 = call i64 @vlc_ascii_strcasecmp(i8* %78, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %105, label %81

81:                                               ; preds = %77
  %82 = load i8*, i8** %9, align 8
  %83 = call i64 @vlc_ascii_strcasecmp(i8* %82, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %105, label %85

85:                                               ; preds = %81
  %86 = load i8*, i8** %9, align 8
  %87 = call i64 @vlc_ascii_strcasecmp(i8* %86, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %105, label %89

89:                                               ; preds = %85
  %90 = load i8*, i8** %9, align 8
  %91 = call i64 @vlc_ascii_strcasecmp(i8* %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %105, label %93

93:                                               ; preds = %89
  %94 = load i8*, i8** %9, align 8
  %95 = call i64 @vlc_ascii_strcasecmp(i8* %94, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %93, %74
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %99 = call i64 @stream_HasExtension(%struct.TYPE_7__* %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %103 = call i64 @stream_HasExtension(%struct.TYPE_7__* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %101, %97, %93, %89, %85, %81, %77, %70
  %106 = load i32*, i32** %5, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @IsHLS(i32* %106, i32 %107)
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  store i32 %111, i32* %10, align 4
  br label %129

112:                                              ; preds = %101
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %114 = call i64 @stream_HasExtension(%struct.TYPE_7__* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %126, label %116

116:                                              ; preds = %112
  %117 = load i32*, i32** %5, align 8
  %118 = bitcast i32* %117 to i8*
  %119 = call i64 @strncasecmp(i8* %118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = load i32*, i32** %5, align 8
  %123 = load i32, i32* %6, align 4
  %124 = call i64 @ContainsURL(i32* %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121, %116, %112
  store i32 1, i32* %10, align 4
  br label %128

127:                                              ; preds = %121
  store i32 0, i32* %10, align 4
  br label %128

128:                                              ; preds = %127, %126
  br label %129

129:                                              ; preds = %128, %105
  br label %130

130:                                              ; preds = %129, %69
  br label %131

131:                                              ; preds = %130, %61
  %132 = load i8*, i8** %9, align 8
  %133 = call i32 @free(i8* %132)
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %131
  %137 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %137, i32* %2, align 4
  br label %163

138:                                              ; preds = %131
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %138
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %7, align 4
  %146 = call i64 @vlc_stream_Seek(i32 %144, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %141
  %149 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %149, i32* %2, align 4
  br label %163

150:                                              ; preds = %141, %138
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %152 = call i32 @msg_Dbg(%struct.TYPE_7__* %151, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  %153 = load i8* (i8*)*, i8* (i8*)** %8, align 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  store i8* (i8*)* %153, i8* (i8*)** %155, align 8
  %156 = load i32, i32* @ReadDir, align 4
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* @access_vaDirectoryControlHelper, align 4
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %150, %148, %136, %40, %21
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local i32 @CHECK_FILE(%struct.TYPE_7__*) #1

declare dso_local i32 @vlc_stream_Peek(i32, i32**, i32) #1

declare dso_local i8* @GuessEncoding(i8*) #1

declare dso_local i64 @stream_HasExtension(%struct.TYPE_7__*, i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i8* @CheckUnicode(i8*) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i8* @stream_MimeType(i32) #1

declare dso_local i64 @vlc_ascii_strcasecmp(i8*, i8*) #1

declare dso_local i32 @IsHLS(i32*, i32) #1

declare dso_local i64 @ContainsURL(i32*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @vlc_stream_Seek(i32, i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
