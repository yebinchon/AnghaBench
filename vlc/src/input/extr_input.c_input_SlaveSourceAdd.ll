; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_input.c_input_SlaveSourceAdd.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_input.c_input_SlaveSourceAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@SLAVE_ADD_CANFAIL = common dso_local global i32 0, align 4
@SLAVE_ADD_FORCED = common dso_local global i32 0, align 4
@SLAVE_ADD_SET_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"subtitle\00", align 1
@SPU_ES = common dso_local global i32 0, align 4
@AUDIO_ES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"loading %s slave: %s (forced: %d)\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"spu\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@UNKNOWN_ES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"failed to add %s as slave\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@DEMUX_GET_TIME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"demux doesn't like DEMUX_GET_TIME\00", align 1
@DEMUX_SET_TIME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"seek failed for new slave\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@ES_OUT_SET_ES_DEFAULT_BY_ID = common dso_local global i32 0, align 4
@ES_OUT_SET_ES_BY_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32)* @input_SlaveSourceAdd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_SlaveSourceAdd(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = call %struct.TYPE_9__* @input_priv(i32* %18)
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %10, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @SLAVE_ADD_CANFAIL, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @SLAVE_ADD_FORCED, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @SLAVE_ADD_SET_TIME, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %7, align 4
  switch i32 %29, label %34 [
    i32 128, label %30
    i32 129, label %32
  ]

30:                                               ; preds = %4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %31 = load i32, i32* @SPU_ES, align 4
  store i32 %31, i32* %15, align 4
  br label %36

32:                                               ; preds = %4
  store i8* null, i8** %11, align 8
  %33 = load i32, i32* @AUDIO_ES, align 4
  store i32 %33, i32* %15, align 4
  br label %36

34:                                               ; preds = %4
  %35 = call i32 (...) @vlc_assert_unreachable()
  br label %36

36:                                               ; preds = %34, %32, %30
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @SPU_ES, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @msg_Dbg(i32* %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %42, i8* %43, i32 %44)
  %46 = load i32, i32* @UNKNOWN_ES, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %36
  %55 = load i8*, i8** %11, align 8
  %56 = icmp ne i8* %55, null
  br label %57

57:                                               ; preds = %54, %36
  %58 = phi i1 [ true, %36 ], [ %56, %54 ]
  %59 = zext i1 %58 to i32
  %60 = call %struct.TYPE_10__* @InputSourceNew(i32* %49, i8* %50, i8* %51, i32 %59)
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %16, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %65 = icmp eq %struct.TYPE_10__* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i32*, i32** %6, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call %struct.TYPE_10__* @InputSourceNew(i32* %67, i8* %68, i8* null, i32 %69)
  store %struct.TYPE_10__* %70, %struct.TYPE_10__** %16, align 8
  br label %71

71:                                               ; preds = %66, %63, %57
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %73 = icmp eq %struct.TYPE_10__* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i32*, i32** %6, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @msg_Warn(i32* %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %76)
  %78 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %78, i32* %5, align 4
  br label %168

79:                                               ; preds = %71
  %80 = load i32, i32* %7, align 4
  %81 = icmp eq i32 %80, 129
  br i1 %81, label %82, label %122

82:                                               ; preds = %79
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %116

85:                                               ; preds = %82
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 5
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @DEMUX_GET_TIME, align 4
  %92 = ptrtoint i32* %17 to i32
  %93 = call i64 (i32, i32, i32, ...) @demux_Control(i32 %90, i32 %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %85
  %96 = load i32*, i32** %6, align 8
  %97 = call i32 @msg_Err(i32* %96, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %99 = call i32 @InputSourceDestroy(%struct.TYPE_10__* %98)
  %100 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %100, i32* %5, align 4
  br label %168

101:                                              ; preds = %85
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @DEMUX_SET_TIME, align 4
  %106 = load i32, i32* %17, align 4
  %107 = call i64 (i32, i32, i32, ...) @demux_Control(i32 %104, i32 %105, i32 %106, i32 1)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %101
  %110 = load i32*, i32** %6, align 8
  %111 = call i32 @msg_Err(i32* %110, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %113 = call i32 @InputSourceDestroy(%struct.TYPE_10__* %112)
  %114 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %114, i32* %5, align 4
  br label %168

115:                                              ; preds = %101
  br label %116

116:                                              ; preds = %115, %82
  %117 = load i32*, i32** %6, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @InputUpdateMeta(i32* %117, i32 %120)
  br label %125

122:                                              ; preds = %79
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  store i32 1, i32* %124, align 4
  br label %125

125:                                              ; preds = %122, %116
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %133 = call i32 @TAB_APPEND(i32 %128, i32 %131, %struct.TYPE_10__* %132)
  %134 = load i32, i32* %13, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %125
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %15, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %136, %125
  %143 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %143, i32* %5, align 4
  br label %168

144:                                              ; preds = %136
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, -1
  %149 = zext i1 %148 to i32
  %150 = call i32 @assert(i32 %149)
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @ES_OUT_SET_ES_DEFAULT_BY_ID, align 4
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 (i32, i32, i32, ...) @es_out_Control(i32 %153, i32 %154, i32 %157)
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @ES_OUT_SET_ES_BY_ID, align 4
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (i32, i32, i32, ...) @es_out_Control(i32 %161, i32 %162, i32 %165, i32 0)
  %167 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %167, i32* %5, align 4
  br label %168

168:                                              ; preds = %144, %142, %109, %95, %74
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

declare dso_local %struct.TYPE_9__* @input_priv(i32*) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i8*, i8*, i32) #1

declare dso_local %struct.TYPE_10__* @InputSourceNew(i32*, i8*, i8*, i32) #1

declare dso_local i32 @msg_Warn(i32*, i8*, i8*) #1

declare dso_local i64 @demux_Control(i32, i32, i32, ...) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

declare dso_local i32 @InputSourceDestroy(%struct.TYPE_10__*) #1

declare dso_local i32 @InputUpdateMeta(i32*, i32) #1

declare dso_local i32 @TAB_APPEND(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @es_out_Control(i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
