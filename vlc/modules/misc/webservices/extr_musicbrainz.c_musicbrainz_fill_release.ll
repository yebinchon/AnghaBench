; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/webservices/extr_musicbrainz.c_musicbrainz_fill_release.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/webservices/extr_musicbrainz.c_musicbrainz_fill_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, %struct.TYPE_15__** }
%struct.TYPE_14__ = type { i64, i8*, i8*, i8*, i8*, i8*, i32* }

@.str = private unnamed_addr constant [6 x i8] c"media\00", align 1
@json_array = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"tracks\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"release-group\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"first-release-date\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"artist-credit\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"release-events\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)* @musicbrainz_fill_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @musicbrainz_fill_release(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %13 = call %struct.TYPE_15__* @json_getbyname(%struct.TYPE_15__* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %6, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %15 = icmp ne %struct.TYPE_15__* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @json_array, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %16
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22, %16, %2
  store i32 0, i32* %3, align 4
  br label %179

30:                                               ; preds = %22
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %35, i64 0
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  store %struct.TYPE_15__* %37, %struct.TYPE_15__** %6, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %39 = call %struct.TYPE_15__* @json_getbyname(%struct.TYPE_15__* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_15__* %39, %struct.TYPE_15__** %7, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %41 = icmp ne %struct.TYPE_15__* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %30
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @json_array, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %55, label %48

48:                                               ; preds = %42
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48, %42, %30
  store i32 0, i32* %3, align 4
  br label %179

56:                                               ; preds = %48
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32* @calloc(i64 %61, i32 4)
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 6
  store i32* %62, i32** %64, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 6
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %179

70:                                               ; preds = %56
  store i64 0, i64* %8, align 8
  br label %71

71:                                               ; preds = %103, %70
  %72 = load i64, i64* %8, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ult i64 %72, %77
  br i1 %78, label %79, label %106

79:                                               ; preds = %71
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %83, align 8
  %85 = load i64, i64* %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %84, i64 %85
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %86, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 6
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = call i64 @musicbrainz_fill_track(%struct.TYPE_15__* %87, i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %79
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %99, align 8
  br label %102

102:                                              ; preds = %97, %79
  br label %103

103:                                              ; preds = %102
  %104 = load i64, i64* %8, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %8, align 8
  br label %71

106:                                              ; preds = %71
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %108 = call i8* @json_dupstring(%struct.TYPE_15__* %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 5
  store i8* %108, i8** %110, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %112 = call i8* @json_dupstring(%struct.TYPE_15__* %111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 4
  store i8* %112, i8** %114, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %116 = call %struct.TYPE_15__* @json_getbyname(%struct.TYPE_15__* %115, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_15__* %116, %struct.TYPE_15__** %9, align 8
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %118 = icmp ne %struct.TYPE_15__* %117, null
  br i1 %118, label %119, label %138

119:                                              ; preds = %106
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %121 = call i8* @json_dupstring(%struct.TYPE_15__* %120, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 1
  store i8* %121, i8** %123, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %125 = call i8* @json_dupstring(%struct.TYPE_15__* %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 3
  store i8* %125, i8** %127, align 8
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %129 = call %struct.TYPE_15__* @json_getbyname(%struct.TYPE_15__* %128, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store %struct.TYPE_15__* %129, %struct.TYPE_15__** %10, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %131 = icmp ne %struct.TYPE_15__* %130, null
  br i1 %131, label %132, label %137

132:                                              ; preds = %119
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %134 = call i8* @musicbrainz_fill_artists(%struct.TYPE_15__* %133)
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 2
  store i8* %134, i8** %136, align 8
  br label %137

137:                                              ; preds = %132, %119
  br label %178

138:                                              ; preds = %106
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %140 = call %struct.TYPE_15__* @json_getbyname(%struct.TYPE_15__* %139, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store %struct.TYPE_15__* %140, %struct.TYPE_15__** %11, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %142 = icmp ne %struct.TYPE_15__* %141, null
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %145 = call i8* @musicbrainz_fill_artists(%struct.TYPE_15__* %144)
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 2
  store i8* %145, i8** %147, align 8
  br label %148

148:                                              ; preds = %143, %138
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %150 = call %struct.TYPE_15__* @json_getbyname(%struct.TYPE_15__* %149, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  store %struct.TYPE_15__* %150, %struct.TYPE_15__** %11, align 8
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %152 = icmp ne %struct.TYPE_15__* %151, null
  br i1 %152, label %153, label %177

153:                                              ; preds = %148
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @json_array, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %177

159:                                              ; preds = %153
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %159
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %171, i64 0
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %172, align 8
  %174 = call i8* @json_dupstring(%struct.TYPE_15__* %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 1
  store i8* %174, i8** %176, align 8
  br label %177

177:                                              ; preds = %166, %159, %153, %148
  br label %178

178:                                              ; preds = %177, %137
  store i32 1, i32* %3, align 4
  br label %179

179:                                              ; preds = %178, %69, %55, %29
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local %struct.TYPE_15__* @json_getbyname(%struct.TYPE_15__*, i8*) #1

declare dso_local i32* @calloc(i64, i32) #1

declare dso_local i64 @musicbrainz_fill_track(%struct.TYPE_15__*, i32*) #1

declare dso_local i8* @json_dupstring(%struct.TYPE_15__*, i8*) #1

declare dso_local i8* @musicbrainz_fill_artists(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
