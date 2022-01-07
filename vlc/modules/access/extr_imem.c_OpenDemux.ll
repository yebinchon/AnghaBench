; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_imem.c_OpenDemux.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_imem.c_OpenDemux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__*, i32, i32, i32*, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32, i8*, i32, %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_13__, i8*, i8* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i8*, i8* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i8*, i8* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"imem-id\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"imem-group\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"imem-codec\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"imem-channels\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"imem-samplerate\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Audio %4.4s %d channels %d Hz\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"imem-width\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"imem-height\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"imem-dar\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"imem-fps\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"Video %4.4s %dx%d  SAR %d:%d frame rate %u/%u\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Subtitle %4.4s\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"imem-language\00", align 1
@ControlDemux = common dso_local global i32 0, align 4
@Demux = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @OpenDemux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenDemux(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = bitcast i32* %10 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %11, %struct.TYPE_19__** %4, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %17, i32* %2, align 4
  br label %207

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @OpenCommon(i32* %19, %struct.TYPE_17__** %5, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %26, i32* %2, align 4
  br label %207

27:                                               ; preds = %18
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @GetCategory(i32* %28)
  %30 = call i32 @es_format_Init(%struct.TYPE_18__* %6, i32 %29, i32 0)
  %31 = load i32*, i32** %3, align 8
  %32 = call i8* @var_InheritInteger(i32* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 7
  store i8* %32, i8** %33, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = call i8* @var_InheritInteger(i32* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 6
  store i8* %35, i8** %36, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = call i8* @var_InheritString(i32* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i8* %38, i8** %7, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %27
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @vlc_fourcc_GetCodecFromString(i32 %43, i8* %44)
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 2
  store i32 %45, i32* %46, align 8
  br label %47

47:                                               ; preds = %41, %27
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @free(i8* %48)
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %172 [
    i32 130, label %52
    i32 128, label %71
    i32 129, label %157
  ]

52:                                               ; preds = %47
  %53 = load i32*, i32** %3, align 8
  %54 = call i8* @var_InheritInteger(i32* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load i32*, i32** %3, align 8
  %58 = call i8* @var_InheritInteger(i32* %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load i32*, i32** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 2
  %63 = bitcast i32* %62 to i8*
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 (i32*, i8*, i8*, ...) @msg_Dbg(i32* %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %63, i8* %66, i8* %69)
  br label %177

71:                                               ; preds = %47
  %72 = load i32*, i32** %3, align 8
  %73 = call i8* @var_InheritInteger(i32* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %74 = ptrtoint i8* %73 to i32
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32*, i32** %3, align 8
  %78 = call i8* @var_InheritInteger(i32* %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %79 = ptrtoint i8* %78 to i32
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @var_InheritURational(i32* %82, i32* %8, i32* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %117, label %85

85:                                               ; preds = %71
  %86 = load i32, i32* %8, align 4
  %87 = icmp ugt i32 %86, 0
  br i1 %87, label %88, label %117

88:                                               ; preds = %85
  %89 = load i32, i32* %9, align 4
  %90 = icmp ugt i32 %89, 0
  br i1 %90, label %91, label %117

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %116

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %96
  %102 = load i32, i32* %8, align 4
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = mul i32 %102, %105
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* %9, align 4
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = mul i32 %109, %112
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %101, %96, %91
  br label %117

117:                                              ; preds = %116, %88, %85, %71
  %118 = load i32*, i32** %3, align 8
  %119 = call i32 @var_InheritURational(i32* %118, i32* %8, i32* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %134, label %121

121:                                              ; preds = %117
  %122 = load i32, i32* %8, align 4
  %123 = icmp ugt i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %121
  %125 = load i32, i32* %9, align 4
  %126 = icmp ugt i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %124
  %128 = load i32, i32* %8, align 4
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 8
  %131 = load i32, i32* %9, align 4
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 5
  store i32 %131, i32* %133, align 4
  br label %134

134:                                              ; preds = %127, %124, %121, %117
  %135 = load i32*, i32** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 2
  %137 = bitcast i32* %136 to i8*
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i32*, i8*, i8*, ...) @msg_Dbg(i32* %135, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i8* %137, i32 %140, i32 %143, i32 %146, i32 %149, i32 %152, i32 %155)
  br label %177

157:                                              ; preds = %47
  %158 = load i32*, i32** %3, align 8
  %159 = call i8* @var_InheritInteger(i32* %158, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 1
  store i8* %159, i8** %162, align 8
  %163 = load i32*, i32** %3, align 8
  %164 = call i8* @var_InheritInteger(i32* %163, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  store i8* %164, i8** %167, align 8
  %168 = load i32*, i32** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 2
  %170 = bitcast i32* %169 to i8*
  %171 = call i32 (i32*, i8*, i8*, ...) @msg_Dbg(i32* %168, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* %170)
  br label %177

172:                                              ; preds = %47
  %173 = call i32 @es_format_Clean(%struct.TYPE_18__* %6)
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %175 = call i32 @CloseCommon(%struct.TYPE_17__* %174)
  %176 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %176, i32* %2, align 4
  br label %207

177:                                              ; preds = %157, %134, %52
  %178 = load i32*, i32** %3, align 8
  %179 = call i8* @var_InheritString(i32* %178, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  store i8* %179, i8** %180, align 8
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 3
  %183 = load i32*, i32** %182, align 8
  %184 = call i32 @es_out_Add(i32* %183, %struct.TYPE_18__* %6)
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 4
  %187 = call i32 @es_format_Clean(%struct.TYPE_18__* %6)
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %177
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %194 = call i32 @CloseCommon(%struct.TYPE_17__* %193)
  %195 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %195, i32* %2, align 4
  br label %207

196:                                              ; preds = %177
  %197 = load i32, i32* @ControlDemux, align 4
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 2
  store i32 %197, i32* %199, align 4
  %200 = load i32, i32* @Demux, align 4
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 1
  store i32 %200, i32* %202, align 8
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 0
  store %struct.TYPE_17__* %203, %struct.TYPE_17__** %205, align 8
  %206 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %206, i32* %2, align 4
  br label %207

207:                                              ; preds = %196, %192, %172, %25, %16
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local i64 @OpenCommon(i32*, %struct.TYPE_17__**, i32) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @GetCategory(i32*) #1

declare dso_local i8* @var_InheritInteger(i32*, i8*) #1

declare dso_local i8* @var_InheritString(i32*, i8*) #1

declare dso_local i32 @vlc_fourcc_GetCodecFromString(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i8*, ...) #1

declare dso_local i32 @var_InheritURational(i32*, i32*, i32*, i8*) #1

declare dso_local i32 @es_format_Clean(%struct.TYPE_18__*) #1

declare dso_local i32 @CloseCommon(%struct.TYPE_17__*) #1

declare dso_local i32 @es_out_Add(i32*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
