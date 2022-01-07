; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_cycle.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_cycle.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i64, i32*, i32*, i32, i32*, i32*, i32* }
%struct.TYPE_9__ = type { i8*, i32, %struct.TYPE_9__* }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@get_dts = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dst\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"duration\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"unknown option \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"unknown or invalid cycle specification\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@Add = common dso_local global i32 0, align 4
@Del = common dso_local global i32 0, align 4
@Send = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %4, align 8
  %14 = call %struct.TYPE_8__* @malloc(i32 56)
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %5, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = icmp eq %struct.TYPE_8__* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %21, i32* %2, align 4
  br label %142

22:                                               ; preds = %1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 6
  store i32* null, i32** %24, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 5
  store i32* null, i32** %26, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 4
  store i32* null, i32** %28, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  %31 = load i32, i32* @get_dts, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  store i64 0, i64* %6, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  store i32** %35, i32*** %7, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** %9, align 8
  br label %39

39:                                               ; preds = %102, %22
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %41 = icmp ne %struct.TYPE_9__* %40, null
  br i1 %41, label %42, label %106

42:                                               ; preds = %39
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @strcmp(i32 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %8, align 8
  br label %101

52:                                               ; preds = %42
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @strcmp(i32 %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %73, label %58

58:                                               ; preds = %52
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @ParseTime(i8* %61)
  store i64 %62, i64* %10, align 8
  %63 = load i64, i64* %10, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load i64, i64* %6, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @AppendPhase(i32*** %7, i64 %66, i8* %67)
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* %6, align 8
  %71 = add nsw i64 %70, %69
  store i64 %71, i64* %6, align 8
  br label %72

72:                                               ; preds = %65, %58
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %100

73:                                               ; preds = %52
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @strcmp(i32 %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %93, label %79

79:                                               ; preds = %73
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @ParseTime(i8* %82)
  store i64 %83, i64* %11, align 8
  %84 = load i64, i64* %11, align 8
  %85 = load i64, i64* %6, align 8
  %86 = icmp sgt i64 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %79
  %88 = load i64, i64* %6, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = call i32 @AppendPhase(i32*** %7, i64 %88, i8* %89)
  %91 = load i64, i64* %11, align 8
  store i64 %91, i64* %6, align 8
  br label %92

92:                                               ; preds = %87, %79
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %99

93:                                               ; preds = %73
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (%struct.TYPE_7__*, i8*, ...) @msg_Err(%struct.TYPE_7__* %94, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %93, %92
  br label %100

100:                                              ; preds = %99, %72
  br label %101

101:                                              ; preds = %100, %48
  br label %102

102:                                              ; preds = %101
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  store %struct.TYPE_9__* %105, %struct.TYPE_9__** %9, align 8
  br label %39

106:                                              ; preds = %39
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = load i64, i64* %6, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %111, %106
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %116 = call i32 @free(%struct.TYPE_8__* %115)
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %118 = call i32 (%struct.TYPE_7__*, i8*, ...) @msg_Err(%struct.TYPE_7__* %117, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %119 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %119, i32* %2, align 4
  br label %142

120:                                              ; preds = %111
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  store i32* %123, i32** %125, align 8
  %126 = load i64, i64* %6, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  store i64 %126, i64* %128, align 8
  %129 = load i32, i32* @Add, align 4
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 8
  %132 = load i32, i32* @Del, align 4
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* @Send, align 4
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  store %struct.TYPE_8__* %138, %struct.TYPE_8__** %140, align 8
  %141 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %120, %114, %20
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local %struct.TYPE_8__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i64 @ParseTime(i8*) #1

declare dso_local i32 @AppendPhase(i32***, i64, i8*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
