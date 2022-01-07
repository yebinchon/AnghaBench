; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_file_control.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_file_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, %struct.File_Transfers*, %struct.File_Transfers* }
%struct.File_Transfers = type { i64, i32 }

@FRIEND_ONLINE = common dso_local global i64 0, align 8
@MAX_CONCURRENT_FILE_PIPES = common dso_local global i32 0, align 4
@FILESTATUS_NONE = common dso_local global i64 0, align 8
@FILECONTROL_KILL = common dso_local global i32 0, align 4
@FILECONTROL_PAUSE = common dso_local global i32 0, align 4
@FILE_PAUSE_US = common dso_local global i32 0, align 4
@FILESTATUS_TRANSFERRING = common dso_local global i64 0, align 8
@FILECONTROL_ACCEPT = common dso_local global i32 0, align 4
@FILE_PAUSE_OTHER = common dso_local global i32 0, align 4
@FILESTATUS_NOT_ACCEPTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_control(%struct.TYPE_7__* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.File_Transfers*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i64 @friend_not_valid(%struct.TYPE_7__* %14, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %204

19:                                               ; preds = %4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @FRIEND_ONLINE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 -2, i32* %5, align 4
  br label %204

30:                                               ; preds = %19
  %31 = load i32, i32* %8, align 4
  %32 = icmp sge i32 %31, 65536
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  store i32 1, i32* %11, align 4
  %34 = load i32, i32* %8, align 4
  %35 = ashr i32 %34, 16
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %39

37:                                               ; preds = %30
  store i32 0, i32* %11, align 4
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %37, %33
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @MAX_CONCURRENT_FILE_PIPES, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 -3, i32* %5, align 4
  br label %204

44:                                               ; preds = %39
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  %55 = load %struct.File_Transfers*, %struct.File_Transfers** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %55, i64 %57
  store %struct.File_Transfers* %58, %struct.File_Transfers** %13, align 8
  br label %70

59:                                               ; preds = %44
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load %struct.File_Transfers*, %struct.File_Transfers** %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %66, i64 %68
  store %struct.File_Transfers* %69, %struct.File_Transfers** %13, align 8
  br label %70

70:                                               ; preds = %59, %48
  %71 = load %struct.File_Transfers*, %struct.File_Transfers** %13, align 8
  %72 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @FILESTATUS_NONE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 -3, i32* %5, align 4
  br label %204

77:                                               ; preds = %70
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @FILECONTROL_KILL, align 4
  %80 = icmp ugt i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 -4, i32* %5, align 4
  br label %204

82:                                               ; preds = %77
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @FILECONTROL_PAUSE, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %82
  %87 = load %struct.File_Transfers*, %struct.File_Transfers** %13, align 8
  %88 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @FILE_PAUSE_US, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %86
  %94 = load %struct.File_Transfers*, %struct.File_Transfers** %13, align 8
  %95 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @FILESTATUS_TRANSFERRING, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93, %86
  store i32 -5, i32* %5, align 4
  br label %204

100:                                              ; preds = %93, %82
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @FILECONTROL_ACCEPT, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %140

104:                                              ; preds = %100
  %105 = load %struct.File_Transfers*, %struct.File_Transfers** %13, align 8
  %106 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @FILESTATUS_TRANSFERRING, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %127

110:                                              ; preds = %104
  %111 = load %struct.File_Transfers*, %struct.File_Transfers** %13, align 8
  %112 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @FILE_PAUSE_US, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %126, label %117

117:                                              ; preds = %110
  %118 = load %struct.File_Transfers*, %struct.File_Transfers** %13, align 8
  %119 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @FILE_PAUSE_OTHER, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  store i32 -6, i32* %5, align 4
  br label %204

125:                                              ; preds = %117
  store i32 -7, i32* %5, align 4
  br label %204

126:                                              ; preds = %110
  br label %139

127:                                              ; preds = %104
  %128 = load %struct.File_Transfers*, %struct.File_Transfers** %13, align 8
  %129 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @FILESTATUS_NOT_ACCEPTED, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  store i32 -7, i32* %5, align 4
  br label %204

134:                                              ; preds = %127
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %134
  store i32 -6, i32* %5, align 4
  br label %204

138:                                              ; preds = %134
  br label %139

139:                                              ; preds = %138, %126
  br label %140

140:                                              ; preds = %139, %100
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %142 = load i64, i64* %7, align 8
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %9, align 4
  %146 = call i64 @send_file_control_packet(%struct.TYPE_7__* %141, i64 %142, i32 %143, i32 %144, i32 %145, i32 0, i32 0)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %202

148:                                              ; preds = %140
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* @FILECONTROL_KILL, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %168

152:                                              ; preds = %148
  %153 = load i64, i64* @FILESTATUS_NONE, align 8
  %154 = load %struct.File_Transfers*, %struct.File_Transfers** %13, align 8
  %155 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %154, i32 0, i32 0
  store i64 %153, i64* %155, align 8
  %156 = load i32, i32* %11, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %152
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = load i64, i64* %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* %164, align 8
  br label %167

167:                                              ; preds = %158, %152
  br label %201

168:                                              ; preds = %148
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* @FILECONTROL_PAUSE, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %178

172:                                              ; preds = %168
  %173 = load i32, i32* @FILE_PAUSE_US, align 4
  %174 = load %struct.File_Transfers*, %struct.File_Transfers** %13, align 8
  %175 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 8
  br label %200

178:                                              ; preds = %168
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* @FILECONTROL_ACCEPT, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %199

182:                                              ; preds = %178
  %183 = load i64, i64* @FILESTATUS_TRANSFERRING, align 8
  %184 = load %struct.File_Transfers*, %struct.File_Transfers** %13, align 8
  %185 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %184, i32 0, i32 0
  store i64 %183, i64* %185, align 8
  %186 = load %struct.File_Transfers*, %struct.File_Transfers** %13, align 8
  %187 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @FILE_PAUSE_US, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %182
  %193 = load i32, i32* @FILE_PAUSE_US, align 4
  %194 = load %struct.File_Transfers*, %struct.File_Transfers** %13, align 8
  %195 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = xor i32 %196, %193
  store i32 %197, i32* %195, align 8
  br label %198

198:                                              ; preds = %192, %182
  br label %199

199:                                              ; preds = %198, %178
  br label %200

200:                                              ; preds = %199, %172
  br label %201

201:                                              ; preds = %200, %167
  br label %203

202:                                              ; preds = %140
  store i32 -8, i32* %5, align 4
  br label %204

203:                                              ; preds = %201
  store i32 0, i32* %5, align 4
  br label %204

204:                                              ; preds = %203, %202, %137, %133, %125, %124, %99, %81, %76, %43, %29, %18
  %205 = load i32, i32* %5, align 4
  ret i32 %205
}

declare dso_local i64 @friend_not_valid(%struct.TYPE_7__*, i64) #1

declare dso_local i64 @send_file_control_packet(%struct.TYPE_7__*, i64, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
