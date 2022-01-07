; ModuleID = '/home/carl/AnghaBench/vlc/modules/services_discovery/extr_sap.c_OpenDemux.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/services_discovery/extr_sap.c_OpenDemux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32*, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"sap-parse\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"v=0\0D\0Ao=\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"v=0\0Ao=\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"cannot read SDP\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"invalid SDP\00", align 1
@Control = common dso_local global i32 0, align 4
@Demux = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @OpenDemux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenDemux(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %3, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %4, align 8
  store i8* null, i8** %6, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  %16 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = call i32 @var_CreateGetBool(%struct.TYPE_13__* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %21, i32* %2, align 4
  br label %151

22:                                               ; preds = %1
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @vlc_stream_Peek(i32 %29, i32** %5, i32 7)
  %31 = icmp slt i32 %30, 7
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %33, i32* %2, align 4
  br label %151

34:                                               ; preds = %22
  %35 = load i32*, i32** %5, align 8
  %36 = call i64 @memcmp(i32* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32*, i32** %5, align 8
  %40 = call i64 @memcmp(i32* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %43, i32* %2, align 4
  br label %151

44:                                               ; preds = %38, %34
  store i64 0, i64* %9, align 8
  store i8* null, i8** %6, align 8
  br label %45

45:                                               ; preds = %84, %44
  %46 = load i64, i64* %9, align 8
  %47 = icmp ult i64 %46, 65536
  br i1 %47, label %48, label %85

48:                                               ; preds = %45
  store i32 1024, i32* %10, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = load i64, i64* %9, align 8
  %51 = add i64 %50, 1024
  %52 = add i64 %51, 1
  %53 = call i8* @realloc(i8* %49, i64 %52)
  store i8* %53, i8** %11, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %57, i32* %8, align 4
  br label %141

58:                                               ; preds = %48
  %59 = load i8*, i8** %11, align 8
  store i8* %59, i8** %6, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i64, i64* %9, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = call i64 @vlc_stream_Read(i32 %62, i8* %65, i32 1024)
  store i64 %66, i64* %12, align 8
  %67 = load i64, i64* %12, align 8
  %68 = trunc i64 %67 to i32
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %58
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %72 = call i32 @msg_Err(%struct.TYPE_13__* %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %141

73:                                               ; preds = %58
  %74 = load i64, i64* %12, align 8
  %75 = load i64, i64* %9, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* %9, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = load i64, i64* %9, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8 0, i8* %79, align 1
  %80 = load i64, i64* %12, align 8
  %81 = trunc i64 %80 to i32
  %82 = icmp slt i32 %81, 1024
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  br label %85

84:                                               ; preds = %73
  br label %45

85:                                               ; preds = %83, %45
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %87 = call i32 @VLC_OBJECT(%struct.TYPE_13__* %86)
  %88 = load i8*, i8** %6, align 8
  %89 = call %struct.TYPE_12__* @ParseSDP(i32 %87, i8* %88)
  store %struct.TYPE_12__* %89, %struct.TYPE_12__** %7, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %91 = icmp ne %struct.TYPE_12__* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %85
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %94 = call i32 @msg_Warn(%struct.TYPE_13__* %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %141

95:                                               ; preds = %85
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %97 = call i32 @VLC_OBJECT(%struct.TYPE_13__* %96)
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %99 = call i64 @ParseConnection(i32 %97, %struct.TYPE_12__* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  store i32* null, i32** %103, align 8
  br label %104

104:                                              ; preds = %101, %95
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @IsWellKnownPayload(i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %104
  br label %141

111:                                              ; preds = %104
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %141

117:                                              ; preds = %111
  %118 = call %struct.TYPE_14__* @malloc(i32 8)
  store %struct.TYPE_14__* %118, %struct.TYPE_14__** %13, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %120 = icmp eq %struct.TYPE_14__* %119, null
  %121 = zext i1 %120 to i32
  %122 = call i64 @unlikely(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  br label %141

125:                                              ; preds = %117
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  store %struct.TYPE_12__* %126, %struct.TYPE_12__** %128, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 2
  store %struct.TYPE_14__* %129, %struct.TYPE_14__** %131, align 8
  %132 = load i32, i32* @Control, align 4
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* @Demux, align 4
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load i8*, i8** %6, align 8
  %139 = call i32 @FREENULL(i8* %138)
  %140 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %140, i32* %2, align 4
  br label %151

141:                                              ; preds = %124, %116, %110, %92, %70, %56
  %142 = load i8*, i8** %6, align 8
  %143 = call i32 @FREENULL(i8* %142)
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %145 = icmp ne %struct.TYPE_12__* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %148 = call i32 @FreeSDP(%struct.TYPE_12__* %147)
  br label %149

149:                                              ; preds = %146, %141
  %150 = load i32, i32* %8, align 4
  store i32 %150, i32* %2, align 4
  br label %151

151:                                              ; preds = %149, %125, %42, %32, %20
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i32 @var_CreateGetBool(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_stream_Peek(i32, i32**, i32) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i64 @vlc_stream_Read(i32, i8*, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_13__*, i8*) #1

declare dso_local %struct.TYPE_12__* @ParseSDP(i32, i8*) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_13__*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_13__*, i8*) #1

declare dso_local i64 @ParseConnection(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @IsWellKnownPayload(i32) #1

declare dso_local %struct.TYPE_14__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @FREENULL(i8*) #1

declare dso_local i32 @FreeSDP(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
