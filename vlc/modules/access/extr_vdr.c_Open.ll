; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_vdr.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_vdr.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i64 }
%struct.stat = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"vdr\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"%*u-%*u-%*u.%*u.%*u.%*u%*[-.]%*u.%3s%n\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"rec\00", align 1
@DIR_SEP_CHAR = common dso_local global i8 0, align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"vdr-fps\00", align 1
@Read = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@Seek = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stat, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %4, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %18, i32* %2, align 4
  br label %116

19:                                               ; preds = %1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strcmp(i32 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i8* @BaseName(i32 %29)
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %33 = call i32 @sscanf(i8* %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %32, i32* %7)
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %57, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %37 = call i64 @strcasecmp(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %35
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = load i8, i8* @DIR_SEP_CHAR, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %39
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49, %35, %26
  %58 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %58, i32* %2, align 4
  br label %116

59:                                               ; preds = %49, %39
  br label %60

60:                                               ; preds = %59, %19
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @vlc_stat(i32 %63, %struct.stat* %9)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @S_ISDIR(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %66, %60
  %72 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %72, i32* %2, align 4
  br label %116

73:                                               ; preds = %66
  %74 = load i32*, i32** %3, align 8
  %75 = call %struct.TYPE_8__* @vlc_obj_calloc(i32* %74, i32 1, i32 24)
  store %struct.TYPE_8__* %75, %struct.TYPE_8__** %10, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %77 = icmp eq %struct.TYPE_8__* %76, null
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %82, i32* %2, align 4
  br label %116

83:                                               ; preds = %73
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  store %struct.TYPE_8__* %84, %struct.TYPE_8__** %86, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store i32 -1, i32* %88, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 3
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %92 = call i32 @var_InheritFloat(%struct.TYPE_7__* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ARRAY_INIT(i32 %97)
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %100 = call i32 @ScanDirectory(%struct.TYPE_7__* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %83
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %104 = call i32 @SwitchFile(%struct.TYPE_7__* %103, i32 0)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %102, %83
  %107 = load i32*, i32** %3, align 8
  %108 = call i32 @Close(i32* %107)
  %109 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %109, i32* %2, align 4
  br label %116

110:                                              ; preds = %102
  %111 = load i32, i32* @Read, align 4
  %112 = load i32, i32* @Control, align 4
  %113 = load i32, i32* @Seek, align 4
  %114 = call i32 @ACCESS_SET_CALLBACKS(i32 %111, i32* null, i32 %112, i32 %113)
  %115 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %110, %106, %81, %71, %57, %17
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i8* @BaseName(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i32*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @vlc_stat(i32, %struct.stat*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local %struct.TYPE_8__* @vlc_obj_calloc(i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @var_InheritFloat(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @ARRAY_INIT(i32) #1

declare dso_local i32 @ScanDirectory(%struct.TYPE_7__*) #1

declare dso_local i32 @SwitchFile(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @Close(i32*) #1

declare dso_local i32 @ACCESS_SET_CALLBACKS(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
