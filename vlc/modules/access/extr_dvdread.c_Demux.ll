; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_dvdread.c_Demux.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_dvdread.c_Demux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64, i32, i32, i64, i64, i32, %struct.TYPE_11__*, i64, i32 }
%struct.TYPE_11__ = type { i64 }

@VLC_DEMUXER_EOF = common dso_local global i32 0, align 4
@DVD_VIDEO_LB_LEN = common dso_local global i32 0, align 4
@DVD_BLOCK_READ_ONCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"read failed for block %d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Playback failure\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"DVDRead could not read block %d.\00", align 1
@VLC_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed next title, trying another: %i\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"i_pack_len >= 1024 (%i). This shouldn't happen!\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"read failed for %d/%d blocks at 0x%02x\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"DVDRead could not read %d/%d blocks at 0x%02x.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @Demux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Demux(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %4, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @VLC_DEMUXER_EOF, align 4
  store i32 %25, i32* %2, align 4
  br label %239

26:                                               ; preds = %1
  %27 = load i32, i32* @DVD_VIDEO_LB_LEN, align 4
  %28 = load i32, i32* @DVD_BLOCK_READ_ONCE, align 4
  %29 = mul nsw i32 %27, %28
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %5, align 8
  %32 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %6, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %127, label %37

37:                                               ; preds = %26
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 8
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @DVDReadBlocks(i32 %40, i64 %43, i32 1, i32* %32)
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %61

46:                                               ; preds = %37
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 8
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 (%struct.TYPE_12__*, i8*, i32, ...) @msg_Err(%struct.TYPE_12__* %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %55 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 8
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 (%struct.TYPE_12__*, i32, i32, i32, ...) @vlc_dialog_display_error(%struct.TYPE_12__* %53, i32 %54, i32 %55, i32 %59)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %237

61:                                               ; preds = %37
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %63 = load i32, i32* @DVD_VIDEO_LB_LEN, align 4
  %64 = call i32 @DemuxBlock(%struct.TYPE_12__* %62, i32* %32, i32 %63)
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %66 = call i32 @DvdReadHandleDSI(%struct.TYPE_12__* %65, i32* %32)
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 7
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp sge i64 %69, %74
  br i1 %75, label %76, label %107

76:                                               ; preds = %61
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %105, %76
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  %90 = call i64 @DvdReadSetArea(%struct.TYPE_12__* %87, i32 %89, i32 0, i32 -1)
  %91 = load i64, i64* @VLC_SUCCESS, align 8
  %92 = icmp ne i64 %90, %91
  br label %93

93:                                               ; preds = %86, %80
  %94 = phi i1 [ false, %80 ], [ %92, %86 ]
  br i1 %94, label %95, label %106

95:                                               ; preds = %93
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i32 (%struct.TYPE_12__*, i8*, i32, ...) @msg_Err(%struct.TYPE_12__* %96, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = icmp sge i32 %99, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %237

105:                                              ; preds = %95
  br label %80

106:                                              ; preds = %93
  br label %107

107:                                              ; preds = %106, %61
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp sge i32 %110, 1024
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 (%struct.TYPE_12__*, i8*, i32, ...) @msg_Err(%struct.TYPE_12__* %113, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %237

118:                                              ; preds = %107
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* %120, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %125, 1
  store i64 %126, i64* %124, align 8
  br label %127

127:                                              ; preds = %118, %26
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 7
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp sge i64 %130, %135
  br i1 %136, label %137, label %168

137:                                              ; preds = %127
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  store i32 %140, i32* %11, align 4
  br label %141

141:                                              ; preds = %166, %137
  %142 = load i32, i32* %11, align 4
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = icmp slt i32 %142, %145
  br i1 %146, label %147, label %154

147:                                              ; preds = %141
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %149 = load i32, i32* %11, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %11, align 4
  %151 = call i64 @DvdReadSetArea(%struct.TYPE_12__* %148, i32 %150, i32 0, i32 -1)
  %152 = load i64, i64* @VLC_SUCCESS, align 8
  %153 = icmp ne i64 %151, %152
  br label %154

154:                                              ; preds = %147, %141
  %155 = phi i1 [ false, %141 ], [ %153, %147 ]
  br i1 %155, label %156, label %167

156:                                              ; preds = %154
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %158 = load i32, i32* %11, align 4
  %159 = call i32 (%struct.TYPE_12__*, i8*, i32, ...) @msg_Err(%struct.TYPE_12__* %157, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* %11, align 4
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = icmp sge i32 %160, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %156
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %237

166:                                              ; preds = %156
  br label %141

167:                                              ; preds = %154
  br label %168

168:                                              ; preds = %167, %127
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @DVD_BLOCK_READ_ONCE, align 4
  %173 = call i32 @__MIN(i32 %171, i32 %172)
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %7, align 4
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = sub nsw i32 %177, %174
  store i32 %178, i32* %176, align 8
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 4
  %184 = load i64, i64* %183, align 8
  %185 = load i32, i32* %7, align 4
  %186 = call i32 @DVDReadBlocks(i32 %181, i64 %184, i32 %185, i32* %32)
  store i32 %186, i32* %8, align 4
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* %7, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %190, label %207

190:                                              ; preds = %168
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* %7, align 4
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  %197 = call i32 (%struct.TYPE_12__*, i8*, i32, ...) @msg_Err(%struct.TYPE_12__* %191, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %192, i32 %193, i64 %196)
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %199 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %200 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  %201 = load i32, i32* %8, align 4
  %202 = load i32, i32* %7, align 4
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 4
  %205 = load i64, i64* %204, align 8
  %206 = call i32 (%struct.TYPE_12__*, i32, i32, i32, ...) @vlc_dialog_display_error(%struct.TYPE_12__* %198, i32 %199, i32 %200, i32 %201, i32 %202, i64 %205)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %237

207:                                              ; preds = %168
  %208 = load i32, i32* %8, align 4
  %209 = sext i32 %208 to i64
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 4
  %212 = load i64, i64* %211, align 8
  %213 = add nsw i64 %212, %209
  store i64 %213, i64* %211, align 8
  %214 = load i32, i32* %8, align 4
  %215 = sext i32 %214 to i64
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 5
  %218 = load i64, i64* %217, align 8
  %219 = add nsw i64 %218, %215
  store i64 %219, i64* %217, align 8
  store i32 0, i32* %12, align 4
  br label %220

220:                                              ; preds = %233, %207
  %221 = load i32, i32* %12, align 4
  %222 = load i32, i32* %8, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %236

224:                                              ; preds = %220
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %226 = load i32, i32* %12, align 4
  %227 = load i32, i32* @DVD_VIDEO_LB_LEN, align 4
  %228 = mul nsw i32 %226, %227
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %32, i64 %229
  %231 = load i32, i32* @DVD_VIDEO_LB_LEN, align 4
  %232 = call i32 @DemuxBlock(%struct.TYPE_12__* %225, i32* %230, i32 %231)
  br label %233

233:                                              ; preds = %224
  %234 = load i32, i32* %12, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %12, align 4
  br label %220

236:                                              ; preds = %220
  store i32 1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %237

237:                                              ; preds = %236, %190, %165, %112, %104, %46
  %238 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %238)
  br label %239

239:                                              ; preds = %237, %24
  %240 = load i32, i32* %2, align 4
  ret i32 %240
}

declare dso_local i64 @unlikely(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @DVDReadBlocks(i32, i64, i32, i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_12__*, i8*, i32, ...) #1

declare dso_local i32 @vlc_dialog_display_error(%struct.TYPE_12__*, i32, i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @DemuxBlock(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @DvdReadHandleDSI(%struct.TYPE_12__*, i32*) #1

declare dso_local i64 @DvdReadSetArea(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @__MIN(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
