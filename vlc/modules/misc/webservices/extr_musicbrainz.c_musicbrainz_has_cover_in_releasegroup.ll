; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/webservices/extr_musicbrainz.c_musicbrainz_has_cover_in_releasegroup.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/webservices/extr_musicbrainz.c_musicbrainz_has_cover_in_releasegroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"release-group\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"cover-art-archive\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"front\00", align 1
@json_boolean = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__**, i64, i8*)* @musicbrainz_has_cover_in_releasegroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @musicbrainz_has_cover_in_releasegroup(%struct.TYPE_8__** %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %8, align 8
  br label %12

12:                                               ; preds = %64, %3
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %67

16:                                               ; preds = %12
  %17 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %17, i64 %18
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = call %struct.TYPE_8__* @json_getbyname(%struct.TYPE_8__* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %9, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %23 = icmp ne %struct.TYPE_8__* %22, null
  br i1 %23, label %24, label %63

24:                                               ; preds = %16
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %26 = call i8* @jsongetstring(%struct.TYPE_8__* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %26, i8** %10, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i8*, i8** %10, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i64 @strcmp(i8* %30, i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %24
  br label %64

35:                                               ; preds = %29
  %36 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %36, i64 %37
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = call %struct.TYPE_8__* @json_getbyname(%struct.TYPE_8__* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %11, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %42 = icmp ne %struct.TYPE_8__* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  br label %64

44:                                               ; preds = %35
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %46 = call %struct.TYPE_8__* @json_getbyname(%struct.TYPE_8__* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %11, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %48 = icmp ne %struct.TYPE_8__* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @json_boolean, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %55, %49, %44
  br label %64

62:                                               ; preds = %55
  store i32 1, i32* %4, align 4
  br label %68

63:                                               ; preds = %16
  br label %64

64:                                               ; preds = %63, %61, %43, %34
  %65 = load i64, i64* %8, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %8, align 8
  br label %12

67:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %62
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.TYPE_8__* @json_getbyname(%struct.TYPE_8__*, i8*) #1

declare dso_local i8* @jsongetstring(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
