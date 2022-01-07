; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mciseq/extr_mcimidi.c_MIDI_mciReadMTrk.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mciseq/extr_mcimidi.c_MIDI_mciReadMTrk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, i32* }
%struct.TYPE_9__ = type { i64, i64, i64, i64, i32, i64, i64, i32, i32 }

@MCIERR_INVALID_FILE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Can't synchronize on 'MTrk' !\0A\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Buffer for text is too small (%u are needed)\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Two copyright notices (%s|%s)\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Two names (%s|%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Track %u has %u bytes and %u pulses\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Ouch, out of sync seek=%u track=%u\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, %struct.TYPE_9__*)* @MIDI_mciReadMTrk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @MIDI_mciReadMTrk(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = bitcast i64* %7 to i8*
  %14 = call i32 @mmioRead(i32 %12, i8* %13, i32 8)
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 8
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* @MCIERR_INVALID_FILE, align 8
  store i64 %18, i64* %3, align 8
  br label %243

19:                                               ; preds = %2
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @mmioFOURCC(i8 signext 77, i8 signext 84, i8 signext 114, i8 signext 107)
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %25 = load i64, i64* @MCIERR_INVALID_FILE, align 8
  store i64 %25, i64* %3, align 8
  br label %243

26:                                               ; preds = %19
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = call i64 @MIDI_mciReadLong(%struct.TYPE_8__* %27, i64* %6)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i64, i64* @MCIERR_INVALID_FILE, align 8
  store i64 %31, i64* %3, align 8
  br label %243

32:                                               ; preds = %26
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SEEK_CUR, align 4
  %37 = call i64 @mmioSeek(i32 %35, i8* null, i32 %36)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = add nsw i64 %42, %43
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 5
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %190, %32
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %57 = call i64 @MIDI_mciReadNextEvent(%struct.TYPE_8__* %55, %struct.TYPE_9__* %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @LOWORD(i32 %62)
  %64 = icmp ne i32 %63, 12287
  br label %65

65:                                               ; preds = %59, %54
  %66 = phi i1 [ false, %54 ], [ %64, %59 ]
  br i1 %66, label %67, label %191

67:                                               ; preds = %65
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, %70
  store i64 %74, i64* %72, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @LOWORD(i32 %77)
  switch i32 %78, label %190 [
    i32 767, label %79
    i32 1023, label %79
  ]

79:                                               ; preds = %67, %67
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @HIWORD(i32 %85)
  %87 = sext i32 %86 to i64
  %88 = sub nsw i64 %82, %87
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = icmp uge i64 %91, 1024
  br i1 %92, label %93, label %96

93:                                               ; preds = %79
  %94 = load i32, i32* %9, align 4
  %95 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  store i32 1023, i32* %9, align 4
  br label %96

96:                                               ; preds = %93, %79
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @mmioRead(i32 %99, i8* %100, i32 %101)
  %103 = load i32, i32* %9, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %189

105:                                              ; preds = %96
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 %107
  store i8 0, i8* %108, align 1
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 8
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @LOWORD(i32 %111)
  %113 = call i32 @HIBYTE(i32 %112)
  switch i32 %113, label %188 [
    i32 2, label %114
    i32 3, label %151
  ]

114:                                              ; preds = %105
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %131

119:                                              ; preds = %114
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = call i64 @debugstr_w(i32* %122)
  %124 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %125 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %123, i8* %124)
  %126 = call i32 (...) @GetProcessHeap()
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @HeapFree(i32 %126, i32 0, i32* %129)
  br label %131

131:                                              ; preds = %119, %114
  %132 = load i32, i32* @CP_ACP, align 4
  %133 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %134 = call i32 @MultiByteToWideChar(i32 %132, i32 0, i8* %133, i32 -1, i32* null, i32 0)
  store i32 %134, i32* %9, align 4
  %135 = call i32 (...) @GetProcessHeap()
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = mul i64 %137, 4
  %139 = trunc i64 %138 to i32
  %140 = call i8* @HeapAlloc(i32 %135, i32 0, i32 %139)
  %141 = bitcast i8* %140 to i32*
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 2
  store i32* %141, i32** %143, align 8
  %144 = load i32, i32* @CP_ACP, align 4
  %145 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %9, align 4
  %150 = call i32 @MultiByteToWideChar(i32 %144, i32 0, i8* %145, i32 -1, i32* %148, i32 %149)
  br label %188

151:                                              ; preds = %105
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %168

156:                                              ; preds = %151
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = call i64 @debugstr_w(i32* %159)
  %161 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %162 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64 %160, i8* %161)
  %163 = call i32 (...) @GetProcessHeap()
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @HeapFree(i32 %163, i32 0, i32* %166)
  br label %168

168:                                              ; preds = %156, %151
  %169 = load i32, i32* @CP_ACP, align 4
  %170 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %171 = call i32 @MultiByteToWideChar(i32 %169, i32 0, i8* %170, i32 -1, i32* null, i32 0)
  store i32 %171, i32* %9, align 4
  %172 = call i32 (...) @GetProcessHeap()
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = mul i64 %174, 4
  %176 = trunc i64 %175 to i32
  %177 = call i8* @HeapAlloc(i32 %172, i32 0, i32 %176)
  %178 = bitcast i8* %177 to i32*
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 1
  store i32* %178, i32** %180, align 8
  %181 = load i32, i32* @CP_ACP, align 4
  %182 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %9, align 4
  %187 = call i32 @MultiByteToWideChar(i32 %181, i32 0, i8* %182, i32 -1, i32* %185, i32 %186)
  br label %188

188:                                              ; preds = %105, %168, %131
  br label %189

189:                                              ; preds = %188, %96
  br label %190

190:                                              ; preds = %67, %189
  br label %54

191:                                              ; preds = %65
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 5
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 6
  store i64 %194, i64* %196, align 8
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 7
  %199 = load i32, i32* %198, align 8
  %200 = load i64, i64* %6, align 8
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 6
  %203 = load i64, i64* %202, align 8
  %204 = call i32 @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %199, i64 %200, i64 %203)
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 4
  store i32 1, i32* %206, align 8
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 2
  store i64 %209, i64* %211, align 8
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 5
  store i64 0, i64* %213, align 8
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @SEEK_CUR, align 4
  %218 = call i64 @mmioSeek(i32 %216, i8* null, i32 %217)
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %218, %221
  br i1 %222, label %223, label %242

223:                                              ; preds = %191
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @SEEK_CUR, align 4
  %228 = call i64 @mmioSeek(i32 %226, i8* null, i32 %227)
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i64 %228, i64 %231)
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = inttoptr i64 %238 to i8*
  %240 = load i32, i32* @SEEK_SET, align 4
  %241 = call i64 @mmioSeek(i32 %235, i8* %239, i32 %240)
  br label %242

242:                                              ; preds = %223, %191
  store i64 0, i64* %3, align 8
  br label %243

243:                                              ; preds = %242, %30, %23, %17
  %244 = load i64, i64* %3, align 8
  ret i64 %244
}

declare dso_local i32 @mmioRead(i32, i8*, i32) #1

declare dso_local i64 @mmioFOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i64 @MIDI_mciReadLong(%struct.TYPE_8__*, i64*) #1

declare dso_local i64 @mmioSeek(i32, i8*, i32) #1

declare dso_local i64 @MIDI_mciReadNextEvent(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @LOWORD(i32) #1

declare dso_local i32 @HIWORD(i32) #1

declare dso_local i32 @HIBYTE(i32) #1

declare dso_local i64 @debugstr_w(i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
