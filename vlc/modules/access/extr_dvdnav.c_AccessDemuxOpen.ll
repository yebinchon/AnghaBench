; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_dvdnav.c_AccessDemuxOpen.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_dvdnav.c_AccessDemuxOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"dvd\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@DVDNAV_STATUS_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"cannot open DVD (%s)\00", align 1
@DVD_READ_CACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @AccessDemuxOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AccessDemuxOpen(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = bitcast i32* %10 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %4, align 8
  store i32* null, i32** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %12 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %12, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %18, i32* %2, align 4
  br label %104

19:                                               ; preds = %1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @strncasecmp(i32 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  store i32 1, i32* %9, align 4
  br label %26

26:                                               ; preds = %25, %19
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %31, %26
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %41, i32* %2, align 4
  br label %104

42:                                               ; preds = %37
  %43 = load i32*, i32** %3, align 8
  %44 = call i8* @var_InheritString(i32* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %44, i8** %6, align 8
  br label %50

45:                                               ; preds = %31
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @strdup(i8* %48)
  store i8* %49, i8** %6, align 8
  br label %50

50:                                               ; preds = %45, %42
  %51 = load i8*, i8** %6, align 8
  %52 = icmp eq i8* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %57, i32* %2, align 4
  br label %104

58:                                               ; preds = %50
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @ProbeDVD(i8* %62)
  %64 = load i32, i32* @VLC_SUCCESS, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %94

67:                                               ; preds = %61, %58
  %68 = load i8*, i8** %6, align 8
  %69 = call i8* @ToLocale(i8* %68)
  store i8* %69, i8** %7, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = call i64 @dvdnav_open(i32** %5, i8* %70)
  %72 = load i64, i64* @DVDNAV_STATUS_OK, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @msg_Warn(%struct.TYPE_3__* %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %76)
  br label %94

78:                                               ; preds = %67
  %79 = load i32*, i32** %3, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* @DVD_READ_CACHE, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i32 @CommonOpen(i32* %79, i32* %80, i32 %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @VLC_SUCCESS, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %78
  %91 = load i32*, i32** %5, align 8
  %92 = call i32 @dvdnav_close(i32* %91)
  br label %93

93:                                               ; preds = %90, %78
  br label %94

94:                                               ; preds = %93, %74, %66
  %95 = load i8*, i8** %6, align 8
  %96 = call i32 @free(i8* %95)
  %97 = load i8*, i8** %7, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i8*, i8** %7, align 8
  %101 = call i32 @LocaleFree(i8* %100)
  br label %102

102:                                              ; preds = %99, %94
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %102, %56, %40, %17
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @strncasecmp(i32, i8*, i32) #1

declare dso_local i8* @var_InheritString(i32*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ProbeDVD(i8*) #1

declare dso_local i8* @ToLocale(i8*) #1

declare dso_local i64 @dvdnav_open(i32**, i8*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_3__*, i8*, i8*) #1

declare dso_local i32 @CommonOpen(i32*, i32*, i32) #1

declare dso_local i32 @dvdnav_close(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @LocaleFree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
