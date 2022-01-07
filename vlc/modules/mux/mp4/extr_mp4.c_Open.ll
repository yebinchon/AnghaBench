; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_mp4.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_mp4.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_7__*, i64, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i32*, i64, i64 }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Mp4 muxer opened\00", align 1
@SOUT_CFG_PREFIX = common dso_local global i32 0, align 4
@ppsz_sout_options = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"mov\00", align 1
@QUICKTIME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"mp4frag\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"mp4stream\00", align 1
@FRAGMENTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"3gp\00", align 1
@VLC_TICK_INVALID = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@AddStream = common dso_local global i32 0, align 4
@DelStream = common dso_local global i32 0, align 4
@MuxFrag = common dso_local global i32 0, align 4
@Mux = common dso_local global i32 0, align 4
@BRAND_3gp6 = common dso_local global i32 0, align 4
@BRAND_3gp4 = common dso_local global i32 0, align 4
@BRAND_isom = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = bitcast i32* %7 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %4, align 8
  %9 = call %struct.TYPE_7__* @malloc(i32 72)
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %5, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = icmp ne %struct.TYPE_7__* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %13, i32* %2, align 4
  br label %142

14:                                               ; preds = %1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = call i32 @msg_Dbg(%struct.TYPE_6__* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = load i32, i32* @SOUT_CFG_PREFIX, align 4
  %19 = load i32, i32* @ppsz_sout_options, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @config_ChainParse(%struct.TYPE_6__* %17, i32 %18, i32 %19, i32 %22)
  store i32 0, i32* %6, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %55

28:                                               ; preds = %14
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @strcmp(i64 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @QUICKTIME, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %34, %28
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @strcmp(i64 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @strcmp(i64 %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %44, %38
  %51 = load i32, i32* @FRAGMENTED, align 4
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %50, %44
  br label %55

55:                                               ; preds = %54, %14
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @strcmp(i64 %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  br label %67

67:                                               ; preds = %60, %55
  %68 = phi i1 [ false, %55 ], [ %66, %60 ]
  %69 = zext i1 %68 to i32
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @mp4mux_New(i32 %72)
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 10
  store i64 0, i64* %77, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 9
  store i64 0, i64* %79, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 8
  store i32* null, i32** %81, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 7
  store i64 0, i64* %83, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  store i32 0, i32* %85, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 6
  store i64 0, i64* %87, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 5
  store i64 0, i64* %89, align 8
  %90 = load i32, i32* @VLC_TICK_INVALID, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  store i32 1, i32* %94, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 4
  store %struct.TYPE_7__* %95, %struct.TYPE_7__** %97, align 8
  %98 = load i32, i32* @Control, align 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @AddStream, align 4
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* @DelStream, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @FRAGMENTED, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %67
  %112 = load i32, i32* @MuxFrag, align 4
  br label %115

113:                                              ; preds = %67
  %114 = load i32, i32* @Mux, align 4
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %112, %111 ], [ %114, %113 ]
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %115
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @BRAND_3gp6, align 4
  %128 = call i32 @mp4mux_SetBrand(i32 %126, i32 %127, i32 0)
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @BRAND_3gp4, align 4
  %133 = call i32 @mp4mux_AddExtraBrand(i32 %131, i32 %132)
  br label %140

134:                                              ; preds = %115
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @BRAND_isom, align 4
  %139 = call i32 @mp4mux_SetBrand(i32 %137, i32 %138, i32 0)
  br label %140

140:                                              ; preds = %134, %123
  %141 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %140, %12
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local %struct.TYPE_7__* @malloc(i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @config_ChainParse(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @strcmp(i64, i8*) #1

declare dso_local i32 @mp4mux_New(i32) #1

declare dso_local i32 @mp4mux_SetBrand(i32, i32, i32) #1

declare dso_local i32 @mp4mux_AddExtraBrand(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
