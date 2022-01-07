; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/webservices/extr_musicbrainz.c_musicbrainz_lookup_recording_by_apiurl.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/webservices/extr_musicbrainz.c_musicbrainz_lookup_recording_by_apiurl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i8*, i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_20__** }

@.str = private unnamed_addr constant [9 x i8] c"releases\00", align 1
@json_array = common dso_local global i64 0, align 8
@json_object = common dso_local global i64 0, align 8
@COVERARTARCHIVE_DEFAULT_SERVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* (i32*, i8*)* @musicbrainz_lookup_recording_by_apiurl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @musicbrainz_lookup_recording_by_apiurl(i32* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = call i8* @calloc(i32 1, i32 16)
  %14 = bitcast i8* %13 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %14, %struct.TYPE_18__** %6, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %16 = icmp ne %struct.TYPE_18__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %3, align 8
  br label %154

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call %struct.TYPE_19__* @musicbrainz_lookup(i32* %19, i8* %20)
  store %struct.TYPE_19__* %21, %struct.TYPE_19__** %7, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %23 = icmp ne %struct.TYPE_19__* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %26 = call i32 @free(%struct.TYPE_18__* %25)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %3, align 8
  br label %154

27:                                               ; preds = %18
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.TYPE_20__* @json_getbyname(i32 %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_20__* %31, %struct.TYPE_20__** %8, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %33 = icmp ne %struct.TYPE_20__* %32, null
  br i1 %33, label %34, label %150

34:                                               ; preds = %27
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @json_array, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %150

40:                                               ; preds = %34
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %150

47:                                               ; preds = %40
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i8* @calloc(i32 %52, i32 16)
  %54 = bitcast i8* %53 to %struct.TYPE_17__*
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 1
  store %struct.TYPE_17__* %54, %struct.TYPE_17__** %56, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %58, align 8
  %60 = icmp ne %struct.TYPE_17__* %59, null
  br i1 %60, label %61, label %149

61:                                               ; preds = %47
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %145, %61
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ult i32 %63, %68
  br i1 %69, label %70, label %148

70:                                               ; preds = %62
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %75, i64 %77
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %78, align 8
  store %struct.TYPE_20__* %79, %struct.TYPE_20__** %10, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %81, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i64 %85
  store %struct.TYPE_17__* %86, %struct.TYPE_17__** %11, align 8
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %88 = icmp ne %struct.TYPE_20__* %87, null
  br i1 %88, label %89, label %100

89:                                               ; preds = %70
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @json_object, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %100, label %95

95:                                               ; preds = %89
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %98 = call i32 @musicbrainz_fill_release(%struct.TYPE_20__* %96, %struct.TYPE_17__* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %95, %89, %70
  br label %145

101:                                              ; preds = %95
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %140

106:                                              ; preds = %101
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %140, label %111

111:                                              ; preds = %106
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %115, align 8
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = call i64 @musicbrainz_has_cover_in_releasegroup(%struct.TYPE_20__** %116, i32 %121, i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %111
  %128 = load i32, i32* @COVERARTARCHIVE_DEFAULT_SERVER, align 4
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call i8* @coverartarchive_make_releasegroup_arturl(i32 %128, i64 %131)
  store i8* %132, i8** %12, align 8
  %133 = load i8*, i8** %12, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %139

135:                                              ; preds = %127
  %136 = load i8*, i8** %12, align 8
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  store i8* %136, i8** %138, align 8
  br label %139

139:                                              ; preds = %135, %127
  br label %140

140:                                              ; preds = %139, %111, %106, %101
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %142, align 8
  br label %145

145:                                              ; preds = %140, %100
  %146 = load i32, i32* %9, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %9, align 4
  br label %62

148:                                              ; preds = %62
  br label %149

149:                                              ; preds = %148, %47
  br label %150

150:                                              ; preds = %149, %40, %34, %27
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %152 = call i32 @musicbrainz_lookup_release(%struct.TYPE_19__* %151)
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_18__* %153, %struct.TYPE_18__** %3, align 8
  br label %154

154:                                              ; preds = %150, %24, %17
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  ret %struct.TYPE_18__* %155
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local %struct.TYPE_19__* @musicbrainz_lookup(i32*, i8*) #1

declare dso_local i32 @free(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_20__* @json_getbyname(i32, i8*) #1

declare dso_local i32 @musicbrainz_fill_release(%struct.TYPE_20__*, %struct.TYPE_17__*) #1

declare dso_local i64 @musicbrainz_has_cover_in_releasegroup(%struct.TYPE_20__**, i32, i64) #1

declare dso_local i8* @coverartarchive_make_releasegroup_arturl(i32, i64) #1

declare dso_local i32 @musicbrainz_lookup_release(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
