; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_cdda.c_GetMusicbrainzInfo.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_cdda.c_GetMusicbrainzInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i8*, i32*, i32* }
%struct.vlc_memstream = type { i8* }

@.str = private unnamed_addr constant [19 x i8] c"musicbrainz-server\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"toc=%u+%u\00", align 1
@CD_ROM_XA_INTERVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"+%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_9__*, i32, i32, i32)* @GetMusicbrainzInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @GetMusicbrainzInfo(i32* %0, %struct.TYPE_9__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_10__, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.vlc_memstream, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* null, i32** %12, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i8* @var_InheritString(i32* %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i8* %20, i8** %13, align 8
  %21 = load i8*, i8** %13, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load i8*, i8** %13, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %5
  store i32* null, i32** %6, align 8
  br label %132

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %30 = load i8*, i8** %13, align 8
  store i8* %30, i8** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %33 = load i32*, i32** %7, align 8
  store i32* %33, i32** %32, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i8* @BuildMusicbrainzDiscID(%struct.TYPE_9__* %34, i32 %35, i32 %36, i32 %37)
  store i8* %38, i8** %15, align 8
  %39 = load i8*, i8** %15, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %28
  %42 = load i8*, i8** %15, align 8
  %43 = call i32* @musicbrainz_lookup_recording_by_discid(%struct.TYPE_10__* %14, i8* %42)
  store i32* %43, i32** %12, align 8
  br label %128

44:                                               ; preds = %28
  %45 = call i64 @vlc_memstream_open(%struct.vlc_memstream* %16)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i8*, i8** %13, align 8
  %49 = call i32 @free(i8* %48)
  store i32* null, i32** %6, align 8
  br label %132

50:                                               ; preds = %44
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 (%struct.vlc_memstream*, i8*, i32, ...) @vlc_memstream_printf(%struct.vlc_memstream* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %50
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @LBAPregap(i32 %67)
  %69 = load i32, i32* @CD_ROM_XA_INTERVAL, align 4
  %70 = sub nsw i32 %68, %69
  store i32 %70, i32* %17, align 4
  br label %83

71:                                               ; preds = %50
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @LBAPregap(i32 %81)
  store i32 %82, i32* %17, align 4
  br label %83

83:                                               ; preds = %71, %59
  %84 = load i32, i32* %17, align 4
  %85 = call i32 (%struct.vlc_memstream*, i8*, i32, ...) @vlc_memstream_printf(%struct.vlc_memstream* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  store i32 0, i32* %18, align 4
  br label %86

86:                                               ; preds = %101, %83
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %104

90:                                               ; preds = %86
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = load i32, i32* %18, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @LBAPregap(i32 %98)
  %100 = call i32 (%struct.vlc_memstream*, i8*, i32, ...) @vlc_memstream_printf(%struct.vlc_memstream* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %90
  %102 = load i32, i32* %18, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %18, align 4
  br label %86

104:                                              ; preds = %86
  %105 = call i64 @vlc_memstream_flush(%struct.vlc_memstream* %16)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %104
  %108 = call i64 @vlc_memstream_close(%struct.vlc_memstream* %16)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %16, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @free(i8* %112)
  br label %114

114:                                              ; preds = %110, %107
  %115 = load i8*, i8** %13, align 8
  %116 = call i32 @free(i8* %115)
  store i32* null, i32** %6, align 8
  br label %132

117:                                              ; preds = %104
  %118 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %16, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i32* @musicbrainz_lookup_recording_by_toc(%struct.TYPE_10__* %14, i8* %119)
  store i32* %120, i32** %12, align 8
  %121 = call i64 @vlc_memstream_close(%struct.vlc_memstream* %16)
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %16, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @free(i8* %125)
  br label %127

127:                                              ; preds = %123, %117
  br label %128

128:                                              ; preds = %127, %41
  %129 = load i8*, i8** %13, align 8
  %130 = call i32 @free(i8* %129)
  %131 = load i32*, i32** %12, align 8
  store i32* %131, i32** %6, align 8
  br label %132

132:                                              ; preds = %128, %114, %47, %27
  %133 = load i32*, i32** %6, align 8
  ret i32* %133
}

declare dso_local i8* @var_InheritString(i32*, i8*) #1

declare dso_local i8* @BuildMusicbrainzDiscID(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32* @musicbrainz_lookup_recording_by_discid(%struct.TYPE_10__*, i8*) #1

declare dso_local i64 @vlc_memstream_open(%struct.vlc_memstream*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vlc_memstream_printf(%struct.vlc_memstream*, i8*, i32, ...) #1

declare dso_local i32 @LBAPregap(i32) #1

declare dso_local i64 @vlc_memstream_flush(%struct.vlc_memstream*) #1

declare dso_local i64 @vlc_memstream_close(%struct.vlc_memstream*) #1

declare dso_local i32* @musicbrainz_lookup_recording_by_toc(%struct.TYPE_10__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
