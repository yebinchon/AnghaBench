; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_onion_client.c_client_ping_nodes.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_onion_client.c_client_ping_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_13__*, i32, i32*, %struct.TYPE_12__*, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i32, i32*, i32*, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@MAX_ONION_CLIENTS_ANNOUNCE = common dso_local global i32 0, align 4
@MAX_ONION_CLIENTS = common dso_local global i32 0, align 4
@ONION_NODE_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32, %struct.TYPE_16__*, i32, i32)* @client_ping_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_ping_nodes(%struct.TYPE_15__* %0, i32 %1, %struct.TYPE_16__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  store i32 %4, i32* %20, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %10, align 8
  store i32 %3, i32* %11, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %218

27:                                               ; preds = %5
  %28 = load i32, i32* %11, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %218

31:                                               ; preds = %27
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %31
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 5
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %12, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %13, align 8
  %43 = load i32, i32* @MAX_ONION_CLIENTS_ANNOUNCE, align 4
  store i32 %43, i32* %14, align 4
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %15, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 2
  store i32* %48, i32** %16, align 8
  br label %86

49:                                               ; preds = %31
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  store %struct.TYPE_14__* %58, %struct.TYPE_14__** %12, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %13, align 8
  %68 = load i32, i32* @MAX_ONION_CLIENTS, align 4
  store i32 %68, i32* %14, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %15, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  store i32* %85, i32** %16, align 8
  br label %86

86:                                               ; preds = %49, %34
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @LAN_ip(i32 %88)
  %90 = icmp eq i64 %89, 0
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %19, align 4
  store i32 0, i32* %17, align 4
  br label %92

92:                                               ; preds = %214, %86
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %96, label %217

96:                                               ; preds = %92
  %97 = load i32, i32* %19, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %111, label %99

99:                                               ; preds = %96
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %101 = load i32, i32* %17, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @LAN_ip(i32 %106)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  br label %214

110:                                              ; preds = %99
  br label %111

111:                                              ; preds = %110, %96
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @ONION_NODE_TIMEOUT, align 4
  %117 = call i64 @is_timeout(i32 %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %155, label %119

119:                                              ; preds = %111
  %120 = load i32*, i32** %13, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i64 0
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %126 = load i32, i32* %17, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @id_closest(i32* %120, i32 %124, i32 %130)
  %132 = icmp eq i32 %131, 2
  br i1 %132, label %155, label %133

133:                                              ; preds = %119
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i64 1
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @ONION_NODE_TIMEOUT, align 4
  %139 = call i64 @is_timeout(i32 %137, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %155, label %141

141:                                              ; preds = %133
  %142 = load i32*, i32** %13, align 8
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i64 1
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %148 = load i32, i32* %17, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @id_closest(i32* %142, i32 %146, i32 %152)
  %154 = icmp eq i32 %153, 2
  br i1 %154, label %155, label %213

155:                                              ; preds = %141, %133, %119, %111
  store i32 0, i32* %18, align 4
  br label %156

156:                                              ; preds = %177, %155
  %157 = load i32, i32* %18, align 4
  %158 = load i32, i32* %14, align 4
  %159 = icmp ult i32 %157, %158
  br i1 %159, label %160, label %180

160:                                              ; preds = %156
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %162 = load i32, i32* %18, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %168 = load i32, i32* %17, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i64 @public_key_cmp(i32 %166, i32 %172)
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %160
  br label %180

176:                                              ; preds = %160
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %18, align 4
  %179 = add i32 %178, 1
  store i32 %179, i32* %18, align 4
  br label %156

180:                                              ; preds = %175, %156
  %181 = load i32, i32* %18, align 4
  %182 = load i32, i32* %14, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %212

184:                                              ; preds = %180
  %185 = load i32*, i32** %15, align 8
  %186 = load i32*, i32** %16, align 8
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %188 = load i32, i32* %17, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i64 @good_to_ping(i32* %185, i32* %186, i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %212

195:                                              ; preds = %184
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %197 = load i32, i32* %9, align 4
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %199 = load i32, i32* %17, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %204 = load i32, i32* %17, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @client_send_announce_request(%struct.TYPE_15__* %196, i32 %197, i32 %210, i32 %208, i32* null, i32 -1)
  br label %212

212:                                              ; preds = %195, %184, %180
  br label %213

213:                                              ; preds = %212, %141
  br label %214

214:                                              ; preds = %213, %109
  %215 = load i32, i32* %17, align 4
  %216 = add i32 %215, 1
  store i32 %216, i32* %17, align 4
  br label %92

217:                                              ; preds = %92
  store i32 0, i32* %6, align 4
  br label %218

218:                                              ; preds = %217, %30, %26
  %219 = load i32, i32* %6, align 4
  ret i32 %219
}

declare dso_local i64 @LAN_ip(i32) #1

declare dso_local i64 @is_timeout(i32, i32) #1

declare dso_local i32 @id_closest(i32*, i32, i32) #1

declare dso_local i64 @public_key_cmp(i32, i32) #1

declare dso_local i64 @good_to_ping(i32*, i32*, i32) #1

declare dso_local i32 @client_send_announce_request(%struct.TYPE_15__*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
