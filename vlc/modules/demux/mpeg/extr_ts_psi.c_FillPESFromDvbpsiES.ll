; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_psi.c_FillPESFromDvbpsiES.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_psi.c_FillPESFromDvbpsiES.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_63__ = type { %struct.TYPE_64__* }
%struct.TYPE_64__ = type { i64 }
%struct.TYPE_61__ = type { i32 }
%struct.TYPE_62__ = type { i32, i32 }
%struct.TYPE_60__ = type { i32, %struct.TYPE_65__*, i8* }
%struct.TYPE_65__ = type { %struct.TYPE_59__ }
%struct.TYPE_59__ = type { i64, i32, i32, i32, i8* }

@TS_TRANSPORT_PES = common dso_local global i8* null, align 8
@TS_PMT_REGISTRATION_BLURAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"    + HDMV registration applied to pid %d type 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"    + registration applied to pid %d type 0x%x\00", align 1
@TS_TRANSPORT_SECTIONS = common dso_local global i8* null, align 8
@TS_TRANSPORT_IGNORE = common dso_local global i8* null, align 8
@AUDIO_ES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"HDMV\00", align 1
@ES_PRIORITY_NOT_DEFAULTABLE = common dso_local global i8* null, align 8
@ES_PRIORITY_SELECTABLE_MIN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_63__*, %struct.TYPE_61__*, %struct.TYPE_62__*, i64, i32*, %struct.TYPE_60__*)* @FillPESFromDvbpsiES to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FillPESFromDvbpsiES(%struct.TYPE_63__* %0, %struct.TYPE_61__* %1, %struct.TYPE_62__* %2, i64 %3, i32* %4, %struct.TYPE_60__* %5) #0 {
  %7 = alloca %struct.TYPE_63__*, align 8
  %8 = alloca %struct.TYPE_61__*, align 8
  %9 = alloca %struct.TYPE_62__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_60__*, align 8
  %13 = alloca %struct.TYPE_64__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_63__* %0, %struct.TYPE_63__** %7, align 8
  store %struct.TYPE_61__* %1, %struct.TYPE_61__** %8, align 8
  store %struct.TYPE_62__* %2, %struct.TYPE_62__** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.TYPE_60__* %5, %struct.TYPE_60__** %12, align 8
  %16 = load %struct.TYPE_63__*, %struct.TYPE_63__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_64__*, %struct.TYPE_64__** %17, align 8
  store %struct.TYPE_64__* %18, %struct.TYPE_64__** %13, align 8
  %19 = load i8*, i8** @TS_TRANSPORT_PES, align 8
  store i8* %19, i8** %14, align 8
  %20 = load %struct.TYPE_63__*, %struct.TYPE_63__** %7, align 8
  %21 = load %struct.TYPE_60__*, %struct.TYPE_60__** %12, align 8
  %22 = load %struct.TYPE_62__*, %struct.TYPE_62__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @PIDFillFormat(%struct.TYPE_63__* %20, %struct.TYPE_60__* %21, i32 %24, i8** %14)
  %26 = load %struct.TYPE_62__*, %struct.TYPE_62__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_60__*, %struct.TYPE_60__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  store i32 0, i32* %15, align 4
  %31 = load %struct.TYPE_62__*, %struct.TYPE_62__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %33, 128
  br i1 %34, label %35, label %76

35:                                               ; preds = %6
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* @TS_PMT_REGISTRATION_BLURAY, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = load %struct.TYPE_63__*, %struct.TYPE_63__** %7, align 8
  %41 = load %struct.TYPE_60__*, %struct.TYPE_60__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_65__*, %struct.TYPE_65__** %42, align 8
  %44 = load %struct.TYPE_62__*, %struct.TYPE_62__** %9, align 8
  %45 = call i32 @PMTSetupEsHDMV(%struct.TYPE_63__* %40, %struct.TYPE_65__* %43, %struct.TYPE_62__* %44)
  store i32 %45, i32* %15, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %39
  %48 = load %struct.TYPE_63__*, %struct.TYPE_63__** %7, align 8
  %49 = load %struct.TYPE_62__*, %struct.TYPE_62__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_62__*, %struct.TYPE_62__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @msg_Dbg(%struct.TYPE_63__* %48, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %47, %39
  br label %75

57:                                               ; preds = %35
  %58 = load %struct.TYPE_63__*, %struct.TYPE_63__** %7, align 8
  %59 = load %struct.TYPE_60__*, %struct.TYPE_60__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_65__*, %struct.TYPE_65__** %60, align 8
  %62 = load %struct.TYPE_62__*, %struct.TYPE_62__** %9, align 8
  %63 = call i32 @PMTSetupEsRegistration(%struct.TYPE_63__* %58, %struct.TYPE_65__* %61, %struct.TYPE_62__* %62)
  store i32 %63, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %57
  %66 = load %struct.TYPE_63__*, %struct.TYPE_63__** %7, align 8
  %67 = load %struct.TYPE_62__*, %struct.TYPE_62__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_62__*, %struct.TYPE_62__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @msg_Dbg(%struct.TYPE_63__* %66, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %65, %57
  br label %75

75:                                               ; preds = %74, %56
  br label %76

76:                                               ; preds = %75, %6
  %77 = load i32, i32* %15, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %172, label %79

79:                                               ; preds = %76
  %80 = load i8*, i8** %14, align 8
  %81 = load %struct.TYPE_60__*, %struct.TYPE_60__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %81, i32 0, i32 2
  store i8* %80, i8** %82, align 8
  %83 = load %struct.TYPE_62__*, %struct.TYPE_62__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  switch i32 %85, label %170 [
    i32 2, label %86
    i32 5, label %92
    i32 6, label %102
    i32 10, label %107
    i32 11, label %107
    i32 12, label %107
    i32 13, label %107
    i32 19, label %111
    i32 15, label %115
    i32 16, label %115
    i32 17, label %115
    i32 18, label %115
    i32 21, label %121
    i32 27, label %126
    i32 33, label %133
    i32 131, label %140
    i32 160, label %149
    i32 209, label %156
    i32 234, label %163
  ]

86:                                               ; preds = %79
  %87 = load %struct.TYPE_60__*, %struct.TYPE_60__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_65__*, %struct.TYPE_65__** %88, align 8
  %90 = load %struct.TYPE_62__*, %struct.TYPE_62__** %9, align 8
  %91 = call i32 @PMTSetupEs0x02(%struct.TYPE_65__* %89, %struct.TYPE_62__* %90)
  br label %171

92:                                               ; preds = %79
  %93 = load i8*, i8** @TS_TRANSPORT_SECTIONS, align 8
  %94 = load %struct.TYPE_60__*, %struct.TYPE_60__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  %96 = load %struct.TYPE_63__*, %struct.TYPE_63__** %7, align 8
  %97 = load %struct.TYPE_60__*, %struct.TYPE_60__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_65__*, %struct.TYPE_65__** %98, align 8
  %100 = load %struct.TYPE_62__*, %struct.TYPE_62__** %9, align 8
  %101 = call i32 @PMTSetupEs0x05PrivateData(%struct.TYPE_63__* %96, %struct.TYPE_65__* %99, %struct.TYPE_62__* %100)
  br label %171

102:                                              ; preds = %79
  %103 = load %struct.TYPE_63__*, %struct.TYPE_63__** %7, align 8
  %104 = load %struct.TYPE_60__*, %struct.TYPE_60__** %12, align 8
  %105 = load %struct.TYPE_62__*, %struct.TYPE_62__** %9, align 8
  %106 = call i32 @PMTSetupEs0x06(%struct.TYPE_63__* %103, %struct.TYPE_60__* %104, %struct.TYPE_62__* %105)
  br label %171

107:                                              ; preds = %79, %79, %79, %79
  %108 = load i8*, i8** @TS_TRANSPORT_IGNORE, align 8
  %109 = load %struct.TYPE_60__*, %struct.TYPE_60__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %109, i32 0, i32 2
  store i8* %108, i8** %110, align 8
  br label %171

111:                                              ; preds = %79
  %112 = load i8*, i8** @TS_TRANSPORT_SECTIONS, align 8
  %113 = load %struct.TYPE_60__*, %struct.TYPE_60__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %113, i32 0, i32 2
  store i8* %112, i8** %114, align 8
  br label %115

115:                                              ; preds = %79, %79, %79, %79, %111
  %116 = load %struct.TYPE_63__*, %struct.TYPE_63__** %7, align 8
  %117 = load %struct.TYPE_60__*, %struct.TYPE_60__** %12, align 8
  %118 = load i32*, i32** %11, align 8
  %119 = load %struct.TYPE_62__*, %struct.TYPE_62__** %9, align 8
  %120 = call i32 @SetupISO14496Descriptors(%struct.TYPE_63__* %116, %struct.TYPE_60__* %117, i32* %118, %struct.TYPE_62__* %119)
  br label %171

121:                                              ; preds = %79
  %122 = load %struct.TYPE_63__*, %struct.TYPE_63__** %7, align 8
  %123 = load %struct.TYPE_60__*, %struct.TYPE_60__** %12, align 8
  %124 = load %struct.TYPE_62__*, %struct.TYPE_62__** %9, align 8
  %125 = call i32 @SetupMetadataDescriptors(%struct.TYPE_63__* %122, %struct.TYPE_60__* %123, %struct.TYPE_62__* %124)
  br label %171

126:                                              ; preds = %79
  %127 = load %struct.TYPE_63__*, %struct.TYPE_63__** %7, align 8
  %128 = load %struct.TYPE_60__*, %struct.TYPE_60__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_65__*, %struct.TYPE_65__** %129, align 8
  %131 = load %struct.TYPE_62__*, %struct.TYPE_62__** %9, align 8
  %132 = call i32 @SetupAVCDescriptors(%struct.TYPE_63__* %127, %struct.TYPE_65__* %130, %struct.TYPE_62__* %131)
  br label %171

133:                                              ; preds = %79
  %134 = load %struct.TYPE_63__*, %struct.TYPE_63__** %7, align 8
  %135 = load %struct.TYPE_60__*, %struct.TYPE_60__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_65__*, %struct.TYPE_65__** %136, align 8
  %138 = load %struct.TYPE_62__*, %struct.TYPE_62__** %9, align 8
  %139 = call i32 @SetupJ2KDescriptors(%struct.TYPE_63__* %134, %struct.TYPE_65__* %137, %struct.TYPE_62__* %138)
  br label %171

140:                                              ; preds = %79
  %141 = load %struct.TYPE_61__*, %struct.TYPE_61__** %8, align 8
  %142 = load %struct.TYPE_60__*, %struct.TYPE_60__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_65__*, %struct.TYPE_65__** %143, align 8
  %145 = load %struct.TYPE_62__*, %struct.TYPE_62__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @PMTSetupEs0x83(%struct.TYPE_61__* %141, %struct.TYPE_65__* %144, i32 %147)
  br label %171

149:                                              ; preds = %79
  %150 = load %struct.TYPE_63__*, %struct.TYPE_63__** %7, align 8
  %151 = load %struct.TYPE_60__*, %struct.TYPE_60__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_65__*, %struct.TYPE_65__** %152, align 8
  %154 = load %struct.TYPE_62__*, %struct.TYPE_62__** %9, align 8
  %155 = call i32 @PMTSetupEs0xA0(%struct.TYPE_63__* %150, %struct.TYPE_65__* %153, %struct.TYPE_62__* %154)
  br label %171

156:                                              ; preds = %79
  %157 = load %struct.TYPE_63__*, %struct.TYPE_63__** %7, align 8
  %158 = load %struct.TYPE_60__*, %struct.TYPE_60__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_65__*, %struct.TYPE_65__** %159, align 8
  %161 = load %struct.TYPE_62__*, %struct.TYPE_62__** %9, align 8
  %162 = call i32 @PMTSetupEs0xD1(%struct.TYPE_63__* %157, %struct.TYPE_65__* %160, %struct.TYPE_62__* %161)
  br label %171

163:                                              ; preds = %79
  %164 = load %struct.TYPE_63__*, %struct.TYPE_63__** %7, align 8
  %165 = load %struct.TYPE_60__*, %struct.TYPE_60__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_65__*, %struct.TYPE_65__** %166, align 8
  %168 = load %struct.TYPE_62__*, %struct.TYPE_62__** %9, align 8
  %169 = call i32 @PMTSetupEs0xEA(%struct.TYPE_63__* %164, %struct.TYPE_65__* %167, %struct.TYPE_62__* %168)
  br label %170

170:                                              ; preds = %79, %163
  br label %171

171:                                              ; preds = %170, %156, %149, %140, %133, %126, %121, %115, %107, %102, %92, %86
  br label %172

172:                                              ; preds = %171, %76
  %173 = load %struct.TYPE_60__*, %struct.TYPE_60__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_65__*, %struct.TYPE_65__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @AUDIO_ES, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %188

181:                                              ; preds = %172
  %182 = load %struct.TYPE_63__*, %struct.TYPE_63__** %7, align 8
  %183 = load %struct.TYPE_60__*, %struct.TYPE_60__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_65__*, %struct.TYPE_65__** %184, align 8
  %186 = load %struct.TYPE_62__*, %struct.TYPE_62__** %9, align 8
  %187 = call i32 @SetupAudioExtendedDescriptors(%struct.TYPE_63__* %182, %struct.TYPE_65__* %185, %struct.TYPE_62__* %186)
  br label %188

188:                                              ; preds = %181, %172
  %189 = load %struct.TYPE_63__*, %struct.TYPE_63__** %7, align 8
  %190 = load %struct.TYPE_60__*, %struct.TYPE_60__** %12, align 8
  %191 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_65__*, %struct.TYPE_65__** %191, align 8
  %193 = load %struct.TYPE_62__*, %struct.TYPE_62__** %9, align 8
  %194 = call i32 @SetupStandardESDescriptors(%struct.TYPE_63__* %189, %struct.TYPE_65__* %192, %struct.TYPE_62__* %193)
  %195 = load i64, i64* %10, align 8
  %196 = load i64, i64* @TS_PMT_REGISTRATION_BLURAY, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %258

198:                                              ; preds = %188
  %199 = load %struct.TYPE_62__*, %struct.TYPE_62__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = icmp eq i32 %201, 4117
  br i1 %202, label %203, label %215

203:                                              ; preds = %198
  %204 = load %struct.TYPE_63__*, %struct.TYPE_63__** %7, align 8
  %205 = load %struct.TYPE_62__*, %struct.TYPE_62__** %9, align 8
  %206 = call i64 @PMTEsHasRegistration(%struct.TYPE_63__* %204, %struct.TYPE_62__* %205, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %215

208:                                              ; preds = %203
  %209 = load i8*, i8** @ES_PRIORITY_NOT_DEFAULTABLE, align 8
  %210 = load %struct.TYPE_60__*, %struct.TYPE_60__** %12, align 8
  %211 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_65__*, %struct.TYPE_65__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %213, i32 0, i32 4
  store i8* %209, i8** %214, align 8
  br label %257

215:                                              ; preds = %203, %198
  %216 = load %struct.TYPE_62__*, %struct.TYPE_62__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = icmp sge i32 %218, 6656
  br i1 %219, label %220, label %225

220:                                              ; preds = %215
  %221 = load %struct.TYPE_62__*, %struct.TYPE_62__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = icmp sle i32 %223, 6687
  br i1 %224, label %235, label %225

225:                                              ; preds = %220, %215
  %226 = load %struct.TYPE_62__*, %struct.TYPE_62__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = icmp sge i32 %228, 6912
  br i1 %229, label %230, label %242

230:                                              ; preds = %225
  %231 = load %struct.TYPE_62__*, %struct.TYPE_62__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = icmp sle i32 %233, 6943
  br i1 %234, label %235, label %242

235:                                              ; preds = %230, %220
  %236 = load i8*, i8** @ES_PRIORITY_NOT_DEFAULTABLE, align 8
  %237 = load %struct.TYPE_60__*, %struct.TYPE_60__** %12, align 8
  %238 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_65__*, %struct.TYPE_65__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %240, i32 0, i32 4
  store i8* %236, i8** %241, align 8
  br label %256

242:                                              ; preds = %230, %225
  %243 = load %struct.TYPE_62__*, %struct.TYPE_62__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = and i32 %245, 65535
  %247 = sub nsw i32 65535, %246
  %248 = load i8*, i8** @ES_PRIORITY_SELECTABLE_MIN, align 8
  %249 = sext i32 %247 to i64
  %250 = getelementptr i8, i8* %248, i64 %249
  %251 = load %struct.TYPE_60__*, %struct.TYPE_60__** %12, align 8
  %252 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %251, i32 0, i32 1
  %253 = load %struct.TYPE_65__*, %struct.TYPE_65__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %254, i32 0, i32 4
  store i8* %250, i8** %255, align 8
  br label %256

256:                                              ; preds = %242, %235
  br label %257

257:                                              ; preds = %256, %208
  br label %258

258:                                              ; preds = %257, %188
  %259 = load %struct.TYPE_60__*, %struct.TYPE_60__** %12, align 8
  %260 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %259, i32 0, i32 1
  %261 = load %struct.TYPE_65__*, %struct.TYPE_65__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %262, i32 0, i32 1
  store i32 0, i32* %263, align 8
  %264 = load %struct.TYPE_61__*, %struct.TYPE_61__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.TYPE_60__*, %struct.TYPE_60__** %12, align 8
  %268 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %267, i32 0, i32 1
  %269 = load %struct.TYPE_65__*, %struct.TYPE_65__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %270, i32 0, i32 3
  store i32 %266, i32* %271, align 8
  %272 = load %struct.TYPE_64__*, %struct.TYPE_64__** %13, align 8
  %273 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %285

276:                                              ; preds = %258
  %277 = load %struct.TYPE_62__*, %struct.TYPE_62__** %9, align 8
  %278 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.TYPE_60__*, %struct.TYPE_60__** %12, align 8
  %281 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %280, i32 0, i32 1
  %282 = load %struct.TYPE_65__*, %struct.TYPE_65__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %283, i32 0, i32 2
  store i32 %279, i32* %284, align 4
  br label %285

285:                                              ; preds = %276, %258
  ret void
}

declare dso_local i32 @PIDFillFormat(%struct.TYPE_63__*, %struct.TYPE_60__*, i32, i8**) #1

declare dso_local i32 @PMTSetupEsHDMV(%struct.TYPE_63__*, %struct.TYPE_65__*, %struct.TYPE_62__*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_63__*, i8*, i32, i32) #1

declare dso_local i32 @PMTSetupEsRegistration(%struct.TYPE_63__*, %struct.TYPE_65__*, %struct.TYPE_62__*) #1

declare dso_local i32 @PMTSetupEs0x02(%struct.TYPE_65__*, %struct.TYPE_62__*) #1

declare dso_local i32 @PMTSetupEs0x05PrivateData(%struct.TYPE_63__*, %struct.TYPE_65__*, %struct.TYPE_62__*) #1

declare dso_local i32 @PMTSetupEs0x06(%struct.TYPE_63__*, %struct.TYPE_60__*, %struct.TYPE_62__*) #1

declare dso_local i32 @SetupISO14496Descriptors(%struct.TYPE_63__*, %struct.TYPE_60__*, i32*, %struct.TYPE_62__*) #1

declare dso_local i32 @SetupMetadataDescriptors(%struct.TYPE_63__*, %struct.TYPE_60__*, %struct.TYPE_62__*) #1

declare dso_local i32 @SetupAVCDescriptors(%struct.TYPE_63__*, %struct.TYPE_65__*, %struct.TYPE_62__*) #1

declare dso_local i32 @SetupJ2KDescriptors(%struct.TYPE_63__*, %struct.TYPE_65__*, %struct.TYPE_62__*) #1

declare dso_local i32 @PMTSetupEs0x83(%struct.TYPE_61__*, %struct.TYPE_65__*, i32) #1

declare dso_local i32 @PMTSetupEs0xA0(%struct.TYPE_63__*, %struct.TYPE_65__*, %struct.TYPE_62__*) #1

declare dso_local i32 @PMTSetupEs0xD1(%struct.TYPE_63__*, %struct.TYPE_65__*, %struct.TYPE_62__*) #1

declare dso_local i32 @PMTSetupEs0xEA(%struct.TYPE_63__*, %struct.TYPE_65__*, %struct.TYPE_62__*) #1

declare dso_local i32 @SetupAudioExtendedDescriptors(%struct.TYPE_63__*, %struct.TYPE_65__*, %struct.TYPE_62__*) #1

declare dso_local i32 @SetupStandardESDescriptors(%struct.TYPE_63__*, %struct.TYPE_65__*, %struct.TYPE_62__*) #1

declare dso_local i64 @PMTEsHasRegistration(%struct.TYPE_63__*, %struct.TYPE_62__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
