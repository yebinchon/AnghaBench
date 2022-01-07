; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dvb/extr_scan.c_scan_session_Push.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dvb/extr_scan.c_scan_session_Push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, i64, %struct.TYPE_12__*, i64, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.TYPE_12__ = type { i8* }

@PSI_PAT_PID = common dso_local global i32 0, align 4
@dvbpsi_messages = common dso_local global i32 0, align 4
@DVBPSI_MSG_DEBUG = common dso_local global i32 0, align 4
@PATCallBack = common dso_local global i64 0, align 8
@SI_SDT_PID = common dso_local global i32 0, align 4
@PSINewTableCallBack = common dso_local global i64 0, align 8
@SI_NIT_PID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*)* @scan_session_Push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_session_Push(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 71
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %227

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 31
  %17 = shl i32 %16, 8
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %17, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @PSI_PAT_PID, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %78

25:                                               ; preds = %12
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 5
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = icmp ne %struct.TYPE_12__* %28, null
  br i1 %29, label %66, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @DVBPSI_MSG_DEBUG, align 4
  %32 = call i8* @dvbpsi_new(i32* @dvbpsi_messages, i32 %31)
  %33 = bitcast i8* %32 to %struct.TYPE_12__*
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 5
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %35, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 5
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = icmp ne %struct.TYPE_12__* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %227

41:                                               ; preds = %30
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 5
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  store i8* %45, i8** %49, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 5
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = load i64, i64* @PATCallBack, align 8
  %54 = trunc i64 %53 to i32
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %56 = call i32 @dvbpsi_pat_attach(%struct.TYPE_12__* %52, i32 %54, %struct.TYPE_11__* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %41
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 5
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = call i32 @dvbpsi_delete(%struct.TYPE_12__* %61)
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 5
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %64, align 8
  store i32 0, i32* %3, align 4
  br label %227

65:                                               ; preds = %41
  br label %66

66:                                               ; preds = %65, %25
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 5
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = icmp ne %struct.TYPE_12__* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 5
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @dvbpsi_packet_push(%struct.TYPE_12__* %74, i32* %75)
  br label %77

77:                                               ; preds = %71, %66
  br label %199

78:                                               ; preds = %12
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @SI_SDT_PID, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %135

82:                                               ; preds = %78
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = icmp ne %struct.TYPE_12__* %85, null
  br i1 %86, label %123, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* @DVBPSI_MSG_DEBUG, align 4
  %89 = call i8* @dvbpsi_new(i32* @dvbpsi_messages, i32 %88)
  %90 = bitcast i8* %89 to %struct.TYPE_12__*
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 4
  store %struct.TYPE_12__* %90, %struct.TYPE_12__** %92, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 4
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = icmp ne %struct.TYPE_12__* %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %87
  store i32 0, i32* %3, align 4
  br label %227

98:                                               ; preds = %87
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to i8*
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 4
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  store i8* %102, i8** %106, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 4
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = load i64, i64* @PSINewTableCallBack, align 8
  %111 = trunc i64 %110 to i32
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %113 = call i32 @dvbpsi_AttachDemux(%struct.TYPE_12__* %109, i32 %111, %struct.TYPE_11__* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %98
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 4
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = call i32 @dvbpsi_delete(%struct.TYPE_12__* %118)
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %121, align 8
  store i32 0, i32* %3, align 4
  br label %227

122:                                              ; preds = %98
  br label %123

123:                                              ; preds = %122, %82
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 4
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = icmp ne %struct.TYPE_12__* %126, null
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 4
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = load i32*, i32** %5, align 8
  %133 = call i32 @dvbpsi_packet_push(%struct.TYPE_12__* %131, i32* %132)
  br label %134

134:                                              ; preds = %128, %123
  br label %198

135:                                              ; preds = %78
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %197

140:                                              ; preds = %135
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* @SI_NIT_PID, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %197

144:                                              ; preds = %140
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = icmp ne %struct.TYPE_12__* %147, null
  br i1 %148, label %185, label %149

149:                                              ; preds = %144
  %150 = load i32, i32* @DVBPSI_MSG_DEBUG, align 4
  %151 = call i8* @dvbpsi_new(i32* @dvbpsi_messages, i32 %150)
  %152 = bitcast i8* %151 to %struct.TYPE_12__*
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 2
  store %struct.TYPE_12__* %152, %struct.TYPE_12__** %154, align 8
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %156, align 8
  %158 = icmp ne %struct.TYPE_12__* %157, null
  br i1 %158, label %160, label %159

159:                                              ; preds = %149
  store i32 0, i32* %3, align 4
  br label %227

160:                                              ; preds = %149
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = inttoptr i64 %163 to i8*
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  store i8* %164, i8** %168, align 8
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 2
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %170, align 8
  %172 = load i64, i64* @PSINewTableCallBack, align 8
  %173 = trunc i64 %172 to i32
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %175 = call i32 @dvbpsi_AttachDemux(%struct.TYPE_12__* %171, i32 %173, %struct.TYPE_11__* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %184, label %177

177:                                              ; preds = %160
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %179, align 8
  %181 = call i32 @dvbpsi_delete(%struct.TYPE_12__* %180)
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 2
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %183, align 8
  store i32 0, i32* %3, align 4
  br label %227

184:                                              ; preds = %160
  br label %185

185:                                              ; preds = %184, %144
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %187, align 8
  %189 = icmp ne %struct.TYPE_12__* %188, null
  br i1 %189, label %190, label %196

190:                                              ; preds = %185
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %192, align 8
  %194 = load i32*, i32** %5, align 8
  %195 = call i32 @dvbpsi_packet_push(%struct.TYPE_12__* %193, i32* %194)
  br label %196

196:                                              ; preds = %190, %185
  br label %197

197:                                              ; preds = %196, %140, %135
  br label %198

198:                                              ; preds = %197, %134
  br label %199

199:                                              ; preds = %198, %77
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %224

205:                                              ; preds = %199
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %224

211:                                              ; preds = %205
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %211
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br label %222

222:                                              ; preds = %216, %211
  %223 = phi i1 [ true, %211 ], [ %221, %216 ]
  br label %224

224:                                              ; preds = %222, %205, %199
  %225 = phi i1 [ false, %205 ], [ false, %199 ], [ %223, %222 ]
  %226 = zext i1 %225 to i32
  store i32 %226, i32* %3, align 4
  br label %227

227:                                              ; preds = %224, %177, %159, %115, %97, %58, %40, %11
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

declare dso_local i8* @dvbpsi_new(i32*, i32) #1

declare dso_local i32 @dvbpsi_pat_attach(%struct.TYPE_12__*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @dvbpsi_delete(%struct.TYPE_12__*) #1

declare dso_local i32 @dvbpsi_packet_push(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @dvbpsi_AttachDemux(%struct.TYPE_12__*, i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
