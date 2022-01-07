; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_handle_filecontrol.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_handle_filecontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32, i32 (%struct.TYPE_9__*, i64, i32, i32, i32)* }
%struct.TYPE_8__ = type { i32, %struct.File_Transfers*, %struct.File_Transfers* }
%struct.File_Transfers = type { i64, i32, i64, i64, i64 }

@FILECONTROL_SEEK = common dso_local global i32 0, align 4
@FILESTATUS_NONE = common dso_local global i64 0, align 8
@FILECONTROL_KILL = common dso_local global i32 0, align 4
@FILECONTROL_ACCEPT = common dso_local global i32 0, align 4
@FILESTATUS_NOT_ACCEPTED = common dso_local global i64 0, align 8
@FILESTATUS_TRANSFERRING = common dso_local global i64 0, align 8
@FILE_PAUSE_OTHER = common dso_local global i32 0, align 4
@FILECONTROL_PAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64, i32, i32, i32, i32*, i32)* @handle_filecontrol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_filecontrol(%struct.TYPE_9__* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.File_Transfers*, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %242

22:                                               ; preds = %7
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* @FILECONTROL_SEEK, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 -1, i32* %8, align 4
  br label %242

27:                                               ; preds = %22
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %27
  %32 = load i32, i32* %16, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %16, align 4
  %35 = shl i32 %34, 16
  store i32 %35, i32* %16, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = load %struct.File_Transfers*, %struct.File_Transfers** %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %42, i64 %44
  store %struct.File_Transfers* %45, %struct.File_Transfers** %17, align 8
  br label %57

46:                                               ; preds = %27
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load %struct.File_Transfers*, %struct.File_Transfers** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %53, i64 %55
  store %struct.File_Transfers* %56, %struct.File_Transfers** %17, align 8
  br label %57

57:                                               ; preds = %46, %31
  %58 = load %struct.File_Transfers*, %struct.File_Transfers** %17, align 8
  %59 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @FILESTATUS_NONE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %57
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @FILECONTROL_KILL, align 4
  %72 = call i32 @send_file_control_packet(%struct.TYPE_9__* %64, i64 %65, i32 %69, i32 %70, i32 %71, i32 0, i32 0)
  store i32 -1, i32* %8, align 4
  br label %242

73:                                               ; preds = %57
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @FILECONTROL_ACCEPT, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %123

77:                                               ; preds = %73
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %77
  %81 = load %struct.File_Transfers*, %struct.File_Transfers** %17, align 8
  %82 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @FILESTATUS_NOT_ACCEPTED, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i64, i64* @FILESTATUS_TRANSFERRING, align 8
  %88 = load %struct.File_Transfers*, %struct.File_Transfers** %17, align 8
  %89 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  br label %105

90:                                               ; preds = %80, %77
  %91 = load %struct.File_Transfers*, %struct.File_Transfers** %17, align 8
  %92 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @FILE_PAUSE_OTHER, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %90
  %98 = load i32, i32* @FILE_PAUSE_OTHER, align 4
  %99 = load %struct.File_Transfers*, %struct.File_Transfers** %17, align 8
  %100 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = xor i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %104

103:                                              ; preds = %90
  store i32 -1, i32* %8, align 4
  br label %242

104:                                              ; preds = %97
  br label %105

105:                                              ; preds = %104, %86
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 2
  %108 = load i32 (%struct.TYPE_9__*, i64, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i64, i32, i32, i32)** %107, align 8
  %109 = icmp ne i32 (%struct.TYPE_9__*, i64, i32, i32, i32)* %108, null
  br i1 %109, label %110, label %122

110:                                              ; preds = %105
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 2
  %113 = load i32 (%struct.TYPE_9__*, i64, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i64, i32, i32, i32)** %112, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %115 = load i64, i64* %10, align 8
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* %13, align 4
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 %113(%struct.TYPE_9__* %114, i64 %115, i32 %116, i32 %117, i32 %120)
  br label %122

122:                                              ; preds = %110, %105
  br label %241

123:                                              ; preds = %73
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* @FILECONTROL_PAUSE, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %164

127:                                              ; preds = %123
  %128 = load %struct.File_Transfers*, %struct.File_Transfers** %17, align 8
  %129 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @FILE_PAUSE_OTHER, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %127
  %135 = load %struct.File_Transfers*, %struct.File_Transfers** %17, align 8
  %136 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @FILESTATUS_TRANSFERRING, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %134, %127
  store i32 -1, i32* %8, align 4
  br label %242

141:                                              ; preds = %134
  %142 = load i32, i32* @FILE_PAUSE_OTHER, align 4
  %143 = load %struct.File_Transfers*, %struct.File_Transfers** %17, align 8
  %144 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 8
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 2
  %149 = load i32 (%struct.TYPE_9__*, i64, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i64, i32, i32, i32)** %148, align 8
  %150 = icmp ne i32 (%struct.TYPE_9__*, i64, i32, i32, i32)* %149, null
  br i1 %150, label %151, label %163

151:                                              ; preds = %141
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 2
  %154 = load i32 (%struct.TYPE_9__*, i64, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i64, i32, i32, i32)** %153, align 8
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %156 = load i64, i64* %10, align 8
  %157 = load i32, i32* %16, align 4
  %158 = load i32, i32* %13, align 4
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = call i32 %154(%struct.TYPE_9__* %155, i64 %156, i32 %157, i32 %158, i32 %161)
  br label %163

163:                                              ; preds = %151, %141
  br label %240

164:                                              ; preds = %123
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* @FILECONTROL_KILL, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %201

168:                                              ; preds = %164
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 2
  %171 = load i32 (%struct.TYPE_9__*, i64, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i64, i32, i32, i32)** %170, align 8
  %172 = icmp ne i32 (%struct.TYPE_9__*, i64, i32, i32, i32)* %171, null
  br i1 %172, label %173, label %185

173:                                              ; preds = %168
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 2
  %176 = load i32 (%struct.TYPE_9__*, i64, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i64, i32, i32, i32)** %175, align 8
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %178 = load i64, i64* %10, align 8
  %179 = load i32, i32* %16, align 4
  %180 = load i32, i32* %13, align 4
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = call i32 %176(%struct.TYPE_9__* %177, i64 %178, i32 %179, i32 %180, i32 %183)
  br label %185

185:                                              ; preds = %173, %168
  %186 = load i64, i64* @FILESTATUS_NONE, align 8
  %187 = load %struct.File_Transfers*, %struct.File_Transfers** %17, align 8
  %188 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %187, i32 0, i32 0
  store i64 %186, i64* %188, align 8
  %189 = load i32, i32* %11, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %185
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %193, align 8
  %195 = load i64, i64* %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = add nsw i32 %198, -1
  store i32 %199, i32* %197, align 8
  br label %200

200:                                              ; preds = %191, %185
  br label %239

201:                                              ; preds = %164
  %202 = load i32, i32* %13, align 4
  %203 = load i32, i32* @FILECONTROL_SEEK, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %237

205:                                              ; preds = %201
  %206 = load i32, i32* %15, align 4
  %207 = sext i32 %206 to i64
  %208 = icmp ne i64 %207, 8
  br i1 %208, label %209, label %210

209:                                              ; preds = %205
  store i32 -1, i32* %8, align 4
  br label %242

210:                                              ; preds = %205
  %211 = load %struct.File_Transfers*, %struct.File_Transfers** %17, align 8
  %212 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @FILESTATUS_NOT_ACCEPTED, align 8
  %215 = icmp ne i64 %213, %214
  br i1 %215, label %219, label %216

216:                                              ; preds = %210
  %217 = load i32, i32* %11, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %220, label %219

219:                                              ; preds = %216, %210
  store i32 -1, i32* %8, align 4
  br label %242

220:                                              ; preds = %216
  %221 = load i32*, i32** %14, align 8
  %222 = call i32 @memcpy(i64* %18, i32* %221, i32 8)
  %223 = bitcast i64* %18 to i32*
  %224 = call i32 @net_to_host(i32* %223, i32 8)
  %225 = load i64, i64* %18, align 8
  %226 = load %struct.File_Transfers*, %struct.File_Transfers** %17, align 8
  %227 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %226, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = icmp sge i64 %225, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %220
  store i32 -1, i32* %8, align 4
  br label %242

231:                                              ; preds = %220
  %232 = load i64, i64* %18, align 8
  %233 = load %struct.File_Transfers*, %struct.File_Transfers** %17, align 8
  %234 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %233, i32 0, i32 3
  store i64 %232, i64* %234, align 8
  %235 = load %struct.File_Transfers*, %struct.File_Transfers** %17, align 8
  %236 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %235, i32 0, i32 4
  store i64 %232, i64* %236, align 8
  br label %238

237:                                              ; preds = %201
  store i32 -1, i32* %8, align 4
  br label %242

238:                                              ; preds = %231
  br label %239

239:                                              ; preds = %238, %200
  br label %240

240:                                              ; preds = %239, %163
  br label %241

241:                                              ; preds = %240, %122
  store i32 0, i32* %8, align 4
  br label %242

242:                                              ; preds = %241, %237, %230, %219, %209, %140, %103, %63, %26, %21
  %243 = load i32, i32* %8, align 4
  ret i32 %243
}

declare dso_local i32 @send_file_control_packet(%struct.TYPE_9__*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i32 @net_to_host(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
