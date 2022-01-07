; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_rist.c_rist_udp_receiver.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_rist.c_rist_udp_receiver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rist_flow = type { i32, i32, i32, %struct.rist_flow*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.rist_flow* }
%struct.TYPE_10__ = type { i64, i32 }

@.str = private unnamed_addr constant [46 x i8] c"Opening Rist Flow Receiver at %s:%d and %s:%d\00", align 1
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"cannot open input socket\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"cannot open multicast nack socket\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"cannot open nack socket\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"our cname is %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rist_flow* (%struct.TYPE_11__*, %struct.TYPE_10__*, i32)* @rist_udp_receiver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rist_flow* @rist_udp_receiver(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca %struct.rist_flow*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %8, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  %26 = call i32 (%struct.TYPE_11__*, i8*, i32, ...) @msg_Info(%struct.TYPE_11__* %12, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %15, i64 %18, i32 %21, i64 %25)
  %27 = call %struct.rist_flow* (...) @rist_init_rx()
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  store %struct.rist_flow* %27, %struct.rist_flow** %29, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load %struct.rist_flow*, %struct.rist_flow** %31, align 8
  %33 = icmp ne %struct.rist_flow* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %3
  store %struct.rist_flow* null, %struct.rist_flow** %4, align 8
  br label %203

35:                                               ; preds = %3
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @IPPROTO_UDP, align 4
  %44 = call i8* @net_OpenDgram(%struct.TYPE_11__* %36, i32 %39, i64 %42, i32* null, i32 0, i32 %43)
  %45 = ptrtoint i8* %44 to i32
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load %struct.rist_flow*, %struct.rist_flow** %47, align 8
  %49 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load %struct.rist_flow*, %struct.rist_flow** %51, align 8
  %53 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %35
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %58 = call i32 @msg_Err(%struct.TYPE_11__* %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %150

59:                                               ; preds = %35
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %102

62:                                               ; preds = %59
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  %71 = load i32, i32* @IPPROTO_UDP, align 4
  %72 = call i8* @net_OpenDgram(%struct.TYPE_11__* %63, i32 %66, i64 %70, i32* null, i32 0, i32 %71)
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load %struct.rist_flow*, %struct.rist_flow** %75, align 8
  %77 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %76, i32 0, i32 1
  store i32 %73, i32* %77, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load %struct.rist_flow*, %struct.rist_flow** %79, align 8
  %81 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %62
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %86 = call i32 @msg_Err(%struct.TYPE_11__* %85, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %150

87:                                               ; preds = %62
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 1
  %96 = load i32, i32* @IPPROTO_UDP, align 4
  %97 = call i32 @net_ConnectDgram(%struct.TYPE_11__* %88, i32 %91, i64 %95, i32 -1, i32 %96)
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load %struct.rist_flow*, %struct.rist_flow** %99, align 8
  %101 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %100, i32 0, i32 2
  store i32 %97, i32* %101, align 8
  br label %118

102:                                              ; preds = %59
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, 1
  %111 = load i32, i32* @IPPROTO_UDP, align 4
  %112 = call i8* @net_OpenDgram(%struct.TYPE_11__* %103, i32 %106, i64 %110, i32* null, i32 0, i32 %111)
  %113 = ptrtoint i8* %112 to i32
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load %struct.rist_flow*, %struct.rist_flow** %115, align 8
  %117 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %116, i32 0, i32 2
  store i32 %113, i32* %117, align 8
  br label %118

118:                                              ; preds = %102, %87
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load %struct.rist_flow*, %struct.rist_flow** %120, align 8
  %122 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %127 = call i32 @msg_Err(%struct.TYPE_11__* %126, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %150

128:                                              ; preds = %118
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load %struct.rist_flow*, %struct.rist_flow** %130, align 8
  %132 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load %struct.rist_flow*, %struct.rist_flow** %135, align 8
  %137 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @populate_cname(i32 %133, i32 %138)
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = load %struct.rist_flow*, %struct.rist_flow** %142, align 8
  %144 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = call i32 (%struct.TYPE_11__*, i8*, i32, ...) @msg_Info(%struct.TYPE_11__* %140, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %145)
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load %struct.rist_flow*, %struct.rist_flow** %148, align 8
  store %struct.rist_flow* %149, %struct.rist_flow** %4, align 8
  br label %203

150:                                              ; preds = %125, %84, %56
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = load %struct.rist_flow*, %struct.rist_flow** %152, align 8
  %154 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, -1
  br i1 %156, label %157, label %164

157:                                              ; preds = %150
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load %struct.rist_flow*, %struct.rist_flow** %159, align 8
  %161 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @vlc_close(i32 %162)
  br label %164

164:                                              ; preds = %157, %150
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load %struct.rist_flow*, %struct.rist_flow** %166, align 8
  %168 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %169, -1
  br i1 %170, label %171, label %178

171:                                              ; preds = %164
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = load %struct.rist_flow*, %struct.rist_flow** %173, align 8
  %175 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @vlc_close(i32 %176)
  br label %178

178:                                              ; preds = %171, %164
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = load %struct.rist_flow*, %struct.rist_flow** %180, align 8
  %182 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, -1
  br i1 %184, label %185, label %192

185:                                              ; preds = %178
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 0
  %188 = load %struct.rist_flow*, %struct.rist_flow** %187, align 8
  %189 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @vlc_close(i32 %190)
  br label %192

192:                                              ; preds = %185, %178
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 0
  %195 = load %struct.rist_flow*, %struct.rist_flow** %194, align 8
  %196 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %195, i32 0, i32 3
  %197 = load %struct.rist_flow*, %struct.rist_flow** %196, align 8
  %198 = call i32 @free(%struct.rist_flow* %197)
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  %201 = load %struct.rist_flow*, %struct.rist_flow** %200, align 8
  %202 = call i32 @free(%struct.rist_flow* %201)
  store %struct.rist_flow* null, %struct.rist_flow** %4, align 8
  br label %203

203:                                              ; preds = %192, %128, %34
  %204 = load %struct.rist_flow*, %struct.rist_flow** %4, align 8
  ret %struct.rist_flow* %204
}

declare dso_local i32 @msg_Info(%struct.TYPE_11__*, i8*, i32, ...) #1

declare dso_local %struct.rist_flow* @rist_init_rx(...) #1

declare dso_local i8* @net_OpenDgram(%struct.TYPE_11__*, i32, i64, i32*, i32, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @net_ConnectDgram(%struct.TYPE_11__*, i32, i64, i32, i32) #1

declare dso_local i32 @populate_cname(i32, i32) #1

declare dso_local i32 @vlc_close(i32) #1

declare dso_local i32 @free(%struct.rist_flow*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
