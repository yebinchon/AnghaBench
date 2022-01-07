; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/linsys/extr_linsys_sdi.c_DemuxOpen.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/linsys/extr_linsys_sdi.c_DemuxOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__*, i32, i32, i32* }
%struct.TYPE_11__ = type { i32, i32, i8*, i8*, %struct.TYPE_9__*, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@DemuxDemux = common dso_local global i32 0, align 4
@DemuxControl = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@STATE_NOSYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"linsys-hdsdi-aspect-ratio\00", align 1
@VOUT_ASPECT_FACTOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"linsys-sdi-id-video\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"linsys-sdi-audio\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"malformed audio configuration (%s)\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"linsys-sdi-telx\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"linsys-sdi-telx-lang\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @DemuxOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DemuxOpen(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = bitcast i32* %15 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %4, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %22, i32* %2, align 4
  br label %154

23:                                               ; preds = %1
  %24 = load i32, i32* @DemuxDemux, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @DemuxControl, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = call %struct.TYPE_11__* @calloc(i32 1, i32 48)
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %5, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %32, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = icmp ne %struct.TYPE_11__* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %23
  %40 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %40, i32* %2, align 4
  br label %154

41:                                               ; preds = %23
  %42 = load i32, i32* @STATE_NOSYNC, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 8
  %45 = call i32 (...) @vlc_tick_now()
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %49 = call i32 @var_InheritURational(%struct.TYPE_10__* %48, i32* %7, i32* %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %41
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @VOUT_ASPECT_FACTOR, align 4
  %57 = mul i32 %55, %56
  %58 = load i32, i32* %8, align 4
  %59 = udiv i32 %57, %58
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 8
  br label %67

64:                                               ; preds = %51, %41
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  br label %67

67:                                               ; preds = %64, %54
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %69 = call i32 @var_InheritInteger(%struct.TYPE_10__* %68, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = call i8* @var_InheritString(%struct.TYPE_10__* %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i8* %73, i8** %6, align 8
  store i8* %73, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %74

74:                                               ; preds = %140, %67
  %75 = load i8*, i8** %6, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i8*, i8** %6, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br label %82

82:                                               ; preds = %77, %74
  %83 = phi i1 [ false, %74 ], [ %81, %77 ]
  br i1 %83, label %84, label %142

84:                                               ; preds = %82
  %85 = load i8*, i8** %6, align 8
  %86 = call i8* @strchr(i8* %85, i8 signext 61)
  store i8* %86, i8** %14, align 8
  %87 = load i8*, i8** %14, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load i8*, i8** %14, align 8
  store i8 0, i8* %90, align 1
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 @strtol(i8* %91, i32* null, i32 0)
  store i32 %92, i32* %11, align 4
  %93 = load i8*, i8** %14, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  store i8* %94, i8** %6, align 8
  br label %96

95:                                               ; preds = %84
  store i32 0, i32* %11, align 4
  br label %96

96:                                               ; preds = %95, %89
  %97 = load i8*, i8** %6, align 8
  %98 = call i8* @strchr(i8* %97, i8 signext 58)
  store i8* %98, i8** %14, align 8
  %99 = load i8*, i8** %14, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i8*, i8** %14, align 8
  store i8 0, i8* %102, align 1
  %103 = load i8*, i8** %14, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %14, align 8
  br label %105

105:                                              ; preds = %101, %96
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 @sscanf(i8* %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %12, i32* %13)
  %108 = icmp eq i32 %107, 2
  br i1 %108, label %109, label %136

109:                                              ; preds = %105
  %110 = load i32, i32* %12, align 4
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  store i32 %110, i32* %117, align 4
  %118 = load i32, i32* %13, align 4
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 4
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  store i32 %118, i32* %125, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 4
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 2
  store i32 %126, i32* %133, align 4
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %10, align 4
  br label %140

136:                                              ; preds = %105
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %138 = load i8*, i8** %6, align 8
  %139 = call i32 @msg_Warn(%struct.TYPE_10__* %137, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %138)
  br label %140

140:                                              ; preds = %136, %109
  %141 = load i8*, i8** %14, align 8
  store i8* %141, i8** %6, align 8
  br label %74

142:                                              ; preds = %82
  %143 = load i8*, i8** %9, align 8
  %144 = call i32 @free(i8* %143)
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %146 = call i8* @var_InheritString(%struct.TYPE_10__* %145, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 3
  store i8* %146, i8** %148, align 8
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %150 = call i8* @var_InheritString(%struct.TYPE_10__* %149, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 2
  store i8* %150, i8** %152, align 8
  %153 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %142, %39, %21
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local %struct.TYPE_11__* @calloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_tick_now(...) #1

declare dso_local i32 @var_InheritURational(%struct.TYPE_10__*, i32*, i32*, i8*) #1

declare dso_local i32 @var_InheritInteger(%struct.TYPE_10__*, i8*) #1

declare dso_local i8* @var_InheritString(%struct.TYPE_10__*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_10__*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
