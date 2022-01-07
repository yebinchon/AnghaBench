; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterSendPing.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterSendPing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i64, i32* }
%struct.TYPE_20__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }

@server = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@CLUSTERMSG_TYPE_PING = common dso_local global i32 0, align 4
@myself = common dso_local global %struct.TYPE_18__* null, align 8
@CLUSTER_NODE_PFAIL = common dso_local global i32 0, align 4
@CLUSTER_NODE_HANDSHAKE = common dso_local global i32 0, align 4
@CLUSTER_NODE_NOADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterSendPing(%struct.TYPE_20__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @server, i32 0, i32 0), align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dictSize(i32 %20)
  %22 = sub nsw i32 %21, 2
  store i32 %22, i32* %10, align 4
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @server, i32 0, i32 0), align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dictSize(i32 %25)
  %27 = sdiv i32 %26, 10
  %28 = call i32 @floor(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 3
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 3, i32* %8, align 4
  br label %32

32:                                               ; preds = %31, %2
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %36, %32
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @server, i32 0, i32 0), align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %11, align 4
  store i32 4, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = mul i64 4, %45
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 8
  br i1 %52, label %53, label %54

53:                                               ; preds = %38
  store i32 8, i32* %9, align 4
  br label %54

54:                                               ; preds = %53, %38
  %55 = load i32, i32* %9, align 4
  %56 = call i8* @zcalloc(i32 %55)
  store i8* %56, i8** %5, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = bitcast i8* %57 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %58, %struct.TYPE_19__** %6, align 8
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %60, align 8
  %62 = icmp ne %struct.TYPE_16__* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %54
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @CLUSTERMSG_TYPE_PING, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = call i32 (...) @mstime()
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 4
  br label %73

73:                                               ; preds = %67, %63, %54
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @clusterBuildMessageHdr(%struct.TYPE_19__* %74, i32 %75)
  %77 = load i32, i32* %8, align 4
  %78 = mul nsw i32 %77, 3
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %140, %139, %130, %110, %102, %73
  %80 = load i32, i32* %10, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %12, align 4
  %89 = icmp ne i32 %87, 0
  br label %90

90:                                               ; preds = %86, %82, %79
  %91 = phi i1 [ false, %82 ], [ false, %79 ], [ %89, %86 ]
  br i1 %91, label %92, label %149

92:                                               ; preds = %90
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @server, i32 0, i32 0), align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32* @dictGetRandomKey(i32 %95)
  store i32* %96, i32** %13, align 8
  %97 = load i32*, i32** %13, align 8
  %98 = call %struct.TYPE_18__* @dictGetVal(i32* %97)
  store %struct.TYPE_18__* %98, %struct.TYPE_18__** %14, align 8
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** @myself, align 8
  %101 = icmp eq %struct.TYPE_18__* %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %92
  br label %79

103:                                              ; preds = %92
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @CLUSTER_NODE_PFAIL, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %79

111:                                              ; preds = %103
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @CLUSTER_NODE_HANDSHAKE, align 4
  %116 = load i32, i32* @CLUSTER_NODE_NOADDR, align 4
  %117 = or i32 %115, %116
  %118 = and i32 %114, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %130, label %120

120:                                              ; preds = %111
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %125, label %133

125:                                              ; preds = %120
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %125, %111
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %10, align 4
  br label %79

133:                                              ; preds = %125, %120
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %137 = call i64 @clusterNodeIsInGossipSection(%struct.TYPE_19__* %134, i32 %135, %struct.TYPE_18__* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  br label %79

140:                                              ; preds = %133
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %142 = load i32, i32* %7, align 4
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %144 = call i32 @clusterSetGossipEntry(%struct.TYPE_19__* %141, i32 %142, %struct.TYPE_18__* %143)
  %145 = load i32, i32* %10, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %7, align 4
  br label %79

149:                                              ; preds = %90
  %150 = load i32, i32* %11, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %206

152:                                              ; preds = %149
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @server, i32 0, i32 0), align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32* @dictGetSafeIterator(i32 %155)
  store i32* %156, i32** %15, align 8
  br label %157

157:                                              ; preds = %192, %191, %183, %175, %152
  %158 = load i32*, i32** %15, align 8
  %159 = call i32* @dictNext(i32* %158)
  store i32* %159, i32** %16, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %157
  %162 = load i32, i32* %11, align 4
  %163 = icmp sgt i32 %162, 0
  br label %164

164:                                              ; preds = %161, %157
  %165 = phi i1 [ false, %157 ], [ %163, %161 ]
  br i1 %165, label %166, label %203

166:                                              ; preds = %164
  %167 = load i32*, i32** %16, align 8
  %168 = call %struct.TYPE_18__* @dictGetVal(i32* %167)
  store %struct.TYPE_18__* %168, %struct.TYPE_18__** %17, align 8
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @CLUSTER_NODE_HANDSHAKE, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %166
  br label %157

176:                                              ; preds = %166
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @CLUSTER_NODE_NOADDR, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %176
  br label %157

184:                                              ; preds = %176
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @CLUSTER_NODE_PFAIL, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %184
  br label %157

192:                                              ; preds = %184
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %194 = load i32, i32* %7, align 4
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %196 = call i32 @clusterSetGossipEntry(%struct.TYPE_19__* %193, i32 %194, %struct.TYPE_18__* %195)
  %197 = load i32, i32* %10, align 4
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %10, align 4
  %199 = load i32, i32* %7, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %7, align 4
  %201 = load i32, i32* %11, align 4
  %202 = add nsw i32 %201, -1
  store i32 %202, i32* %11, align 4
  br label %157

203:                                              ; preds = %164
  %204 = load i32*, i32** %15, align 8
  %205 = call i32 @dictReleaseIterator(i32* %204)
  br label %206

206:                                              ; preds = %203, %149
  store i32 4, i32* %9, align 4
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = mul i64 4, %208
  %210 = load i32, i32* %9, align 4
  %211 = sext i32 %210 to i64
  %212 = add i64 %211, %209
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %9, align 4
  %214 = load i32, i32* %7, align 4
  %215 = call i32 @htons(i32 %214)
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 1
  store i32 %215, i32* %217, align 4
  %218 = load i32, i32* %9, align 4
  %219 = call i32 @htonl(i32 %218)
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 0
  store i32 %219, i32* %221, align 4
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %223 = load i8*, i8** %5, align 8
  %224 = load i32, i32* %9, align 4
  %225 = call i32 @clusterSendMessage(%struct.TYPE_20__* %222, i8* %223, i32 %224)
  %226 = load i8*, i8** %5, align 8
  %227 = call i32 @zfree(i8* %226)
  ret void
}

declare dso_local i32 @dictSize(i32) #1

declare dso_local i32 @floor(i32) #1

declare dso_local i8* @zcalloc(i32) #1

declare dso_local i32 @mstime(...) #1

declare dso_local i32 @clusterBuildMessageHdr(%struct.TYPE_19__*, i32) #1

declare dso_local i32* @dictGetRandomKey(i32) #1

declare dso_local %struct.TYPE_18__* @dictGetVal(i32*) #1

declare dso_local i64 @clusterNodeIsInGossipSection(%struct.TYPE_19__*, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @clusterSetGossipEntry(%struct.TYPE_19__*, i32, %struct.TYPE_18__*) #1

declare dso_local i32* @dictGetSafeIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @clusterSendMessage(%struct.TYPE_20__*, i8*, i32) #1

declare dso_local i32 @zfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
