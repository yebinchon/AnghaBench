; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/webservices/extr_musicbrainz.c_musicbrainz_fill_track.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/webservices/extr_musicbrainz.c_musicbrainz_fill_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_13__**, i64 }
%struct.TYPE_12__ = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"artist-credit\00", align 1
@json_array = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"position\00", align 1
@json_integer = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)* @musicbrainz_fill_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @musicbrainz_fill_track(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %7 = call i8* @json_dupstring(%struct.TYPE_13__* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  store i8* %7, i8** %9, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = call %struct.TYPE_13__* @json_getbyname(%struct.TYPE_13__* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %5, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %13 = icmp ne %struct.TYPE_13__* %12, null
  br i1 %13, label %14, label %38

14:                                               ; preds = %2
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @json_array, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %14
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %20
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %32, i64 0
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = call i8* @json_dupstring(%struct.TYPE_13__* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  br label %38

38:                                               ; preds = %27, %20, %14, %2
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %40 = call %struct.TYPE_13__* @json_getbyname(%struct.TYPE_13__* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %5, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %42 = icmp ne %struct.TYPE_13__* %41, null
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @json_integer, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %49, %43, %38
  ret i32 1
}

declare dso_local i8* @json_dupstring(%struct.TYPE_13__*, i8*) #1

declare dso_local %struct.TYPE_13__* @json_getbyname(%struct.TYPE_13__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
