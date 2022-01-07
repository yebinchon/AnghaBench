; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_do_reqchunk_filecb.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_do_reqchunk_filecb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 (%struct.TYPE_9__*, i64, i32, i64, i64, i32)*, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.File_Transfers* }
%struct.File_Transfers = type { i64, i64, i32, i64, i64, i64, i32 }

@MIN_SLOTS_FREE = common dso_local global i32 0, align 4
@MAX_CONCURRENT_FILE_PIPES = common dso_local global i32 0, align 4
@FILESTATUS_NONE = common dso_local global i64 0, align 8
@FILESTATUS_FINISHED = common dso_local global i64 0, align 8
@FILESTATUS_TRANSFERRING = common dso_local global i64 0, align 8
@FILE_PAUSE_NOT = common dso_local global i64 0, align 8
@MAX_FILE_DATA_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i64)* @do_reqchunk_filecb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_reqchunk_filecb(%struct.TYPE_9__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.File_Transfers*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %250

20:                                               ; preds = %2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @friend_connection_crypt_connection_id(i32 %26, i32 %33)
  %35 = call i32 @crypto_num_free_sendqueue_slots(i32 %23, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @MIN_SLOTS_FREE, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %44

40:                                               ; preds = %20
  %41 = load i32, i32* @MIN_SLOTS_FREE, align 4
  %42 = load i32, i32* %5, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %40, %39
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = load i64, i64* %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %247, %44
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @MAX_CONCURRENT_FILE_PIPES, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %250

56:                                               ; preds = %52
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = load i64, i64* %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load %struct.File_Transfers*, %struct.File_Transfers** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %63, i64 %65
  store %struct.File_Transfers* %66, %struct.File_Transfers** %8, align 8
  %67 = load %struct.File_Transfers*, %struct.File_Transfers** %8, align 8
  %68 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @FILESTATUS_NONE, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %134

72:                                               ; preds = %56
  %73 = load i32, i32* %7, align 4
  %74 = add i32 %73, -1
  store i32 %74, i32* %7, align 4
  %75 = load %struct.File_Transfers*, %struct.File_Transfers** %8, align 8
  %76 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @FILESTATUS_FINISHED, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %120

80:                                               ; preds = %72
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %82 = load i64, i64* %4, align 8
  %83 = load %struct.File_Transfers*, %struct.File_Transfers** %8, align 8
  %84 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @friend_received_packet(%struct.TYPE_9__* %81, i64 %82, i32 %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %119

88:                                               ; preds = %80
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i32 (%struct.TYPE_9__*, i64, i32, i64, i64, i32)*, i32 (%struct.TYPE_9__*, i64, i32, i64, i64, i32)** %90, align 8
  %92 = icmp ne i32 (%struct.TYPE_9__*, i64, i32, i64, i64, i32)* %91, null
  br i1 %92, label %93, label %107

93:                                               ; preds = %88
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i32 (%struct.TYPE_9__*, i64, i32, i64, i64, i32)*, i32 (%struct.TYPE_9__*, i64, i32, i64, i64, i32)** %95, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %98 = load i64, i64* %4, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.File_Transfers*, %struct.File_Transfers** %8, align 8
  %101 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 %96(%struct.TYPE_9__* %97, i64 %98, i32 %99, i64 %102, i64 0, i32 %105)
  br label %107

107:                                              ; preds = %93, %88
  %108 = load i64, i64* @FILESTATUS_NONE, align 8
  %109 = load %struct.File_Transfers*, %struct.File_Transfers** %8, align 8
  %110 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = load i64, i64* %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = add i32 %117, -1
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %107, %80
  br label %120

120:                                              ; preds = %119, %72
  %121 = load %struct.File_Transfers*, %struct.File_Transfers** %8, align 8
  %122 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = icmp ugt i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  store i32 0, i32* %5, align 4
  br label %133

127:                                              ; preds = %120
  %128 = load %struct.File_Transfers*, %struct.File_Transfers** %8, align 8
  %129 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sub i32 %131, %130
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %127, %126
  br label %134

134:                                              ; preds = %133, %56
  br label %135

135:                                              ; preds = %239, %134
  %136 = load %struct.File_Transfers*, %struct.File_Transfers** %8, align 8
  %137 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @FILESTATUS_TRANSFERRING, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %135
  %142 = load %struct.File_Transfers*, %struct.File_Transfers** %8, align 8
  %143 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @FILE_PAUSE_NOT, align 8
  %146 = icmp eq i64 %144, %145
  br label %147

147:                                              ; preds = %141, %135
  %148 = phi i1 [ false, %135 ], [ %146, %141 ]
  br i1 %148, label %149, label %242

149:                                              ; preds = %147
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %157, align 8
  %159 = load i64, i64* %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @friend_connection_crypt_connection_id(i32 %155, i32 %162)
  %164 = call i64 @max_speed_reached(i32 %152, i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %149
  store i32 0, i32* %5, align 4
  br label %167

167:                                              ; preds = %166, %149
  %168 = load i32, i32* %5, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  br label %242

171:                                              ; preds = %167
  %172 = load i64, i64* @MAX_FILE_DATA_SIZE, align 8
  store i64 %172, i64* %9, align 8
  %173 = load %struct.File_Transfers*, %struct.File_Transfers** %8, align 8
  %174 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %171
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %179 = load i64, i64* %4, align 8
  %180 = load i32, i32* %6, align 4
  %181 = call i32 @file_data(%struct.TYPE_9__* %178, i64 %179, i32 %180, i32 0, i32 0, i32 0)
  br label %242

182:                                              ; preds = %171
  %183 = load %struct.File_Transfers*, %struct.File_Transfers** %8, align 8
  %184 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %183, i32 0, i32 4
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.File_Transfers*, %struct.File_Transfers** %8, align 8
  %187 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %186, i32 0, i32 5
  %188 = load i64, i64* %187, align 8
  %189 = icmp eq i64 %185, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %182
  br label %242

191:                                              ; preds = %182
  %192 = load %struct.File_Transfers*, %struct.File_Transfers** %8, align 8
  %193 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %192, i32 0, i32 4
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.File_Transfers*, %struct.File_Transfers** %8, align 8
  %196 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %195, i32 0, i32 5
  %197 = load i64, i64* %196, align 8
  %198 = sub nsw i64 %194, %197
  %199 = load i64, i64* %9, align 8
  %200 = icmp slt i64 %198, %199
  br i1 %200, label %201, label %209

201:                                              ; preds = %191
  %202 = load %struct.File_Transfers*, %struct.File_Transfers** %8, align 8
  %203 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %202, i32 0, i32 4
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.File_Transfers*, %struct.File_Transfers** %8, align 8
  %206 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %205, i32 0, i32 5
  %207 = load i64, i64* %206, align 8
  %208 = sub nsw i64 %204, %207
  store i64 %208, i64* %9, align 8
  br label %209

209:                                              ; preds = %201, %191
  %210 = load %struct.File_Transfers*, %struct.File_Transfers** %8, align 8
  %211 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = add i32 %212, 1
  store i32 %213, i32* %211, align 8
  %214 = load %struct.File_Transfers*, %struct.File_Transfers** %8, align 8
  %215 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %214, i32 0, i32 5
  %216 = load i64, i64* %215, align 8
  store i64 %216, i64* %10, align 8
  %217 = load i64, i64* %9, align 8
  %218 = load %struct.File_Transfers*, %struct.File_Transfers** %8, align 8
  %219 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %218, i32 0, i32 5
  %220 = load i64, i64* %219, align 8
  %221 = add nsw i64 %220, %217
  store i64 %221, i64* %219, align 8
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 1
  %224 = load i32 (%struct.TYPE_9__*, i64, i32, i64, i64, i32)*, i32 (%struct.TYPE_9__*, i64, i32, i64, i64, i32)** %223, align 8
  %225 = icmp ne i32 (%struct.TYPE_9__*, i64, i32, i64, i64, i32)* %224, null
  br i1 %225, label %226, label %239

226:                                              ; preds = %209
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 1
  %229 = load i32 (%struct.TYPE_9__*, i64, i32, i64, i64, i32)*, i32 (%struct.TYPE_9__*, i64, i32, i64, i64, i32)** %228, align 8
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %231 = load i64, i64* %4, align 8
  %232 = load i32, i32* %6, align 4
  %233 = load i64, i64* %10, align 8
  %234 = load i64, i64* %9, align 8
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = call i32 %229(%struct.TYPE_9__* %230, i64 %231, i32 %232, i64 %233, i64 %234, i32 %237)
  br label %239

239:                                              ; preds = %226, %209
  %240 = load i32, i32* %5, align 4
  %241 = add nsw i32 %240, -1
  store i32 %241, i32* %5, align 4
  br label %135

242:                                              ; preds = %190, %177, %170, %147
  %243 = load i32, i32* %7, align 4
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %242
  br label %250

246:                                              ; preds = %242
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %6, align 4
  %249 = add i32 %248, 1
  store i32 %249, i32* %6, align 4
  br label %52

250:                                              ; preds = %19, %245, %52
  ret void
}

declare dso_local i32 @crypto_num_free_sendqueue_slots(i32, i32) #1

declare dso_local i32 @friend_connection_crypt_connection_id(i32, i32) #1

declare dso_local i64 @friend_received_packet(%struct.TYPE_9__*, i64, i32) #1

declare dso_local i64 @max_speed_reached(i32, i32) #1

declare dso_local i32 @file_data(%struct.TYPE_9__*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
