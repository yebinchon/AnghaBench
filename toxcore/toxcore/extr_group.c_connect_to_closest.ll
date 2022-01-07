; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_group.c_connect_to_closest.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_group.c_connect_to_closest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32, i32, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i64, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@GROUPCHAT_CLOSEST_REMOVED = common dso_local global i64 0, align 8
@MAX_GROUP_CONNECTIONS = common dso_local global i32 0, align 4
@GROUPCHAT_CLOSE_NONE = common dso_local global i64 0, align 8
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@DESIRED_CLOSE_CONNECTIONS = common dso_local global i32 0, align 4
@FRIENDCONN_STATUS_CONNECTED = common dso_local global i64 0, align 8
@GROUPCHAT_CLOSEST_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32)* @connect_to_closest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connect_to_closest(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.TYPE_15__* @get_group_c(%struct.TYPE_16__* %13, i32 %14)
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %6, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %17 = icmp ne %struct.TYPE_15__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %231

19:                                               ; preds = %2
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %231

25:                                               ; preds = %19
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @GROUPCHAT_CLOSEST_REMOVED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %62

31:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %58, %31
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %32
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 5
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 5
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @add_to_closest(%struct.TYPE_16__* %39, i32 %40, i32 %48, i32 %56)
  br label %58

58:                                               ; preds = %38
  %59 = load i32, i32* %7, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %32

61:                                               ; preds = %32
  br label %62

62:                                               ; preds = %61, %25
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %136, %62
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @MAX_GROUP_CONNECTIONS, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %139

67:                                               ; preds = %63
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @GROUPCHAT_CLOSE_NONE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  br label %136

79:                                               ; preds = %67
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 4
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %79
  br label %136

90:                                               ; preds = %79
  %91 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %92 = zext i32 %91 to i64
  %93 = call i8* @llvm.stacksave()
  store i8* %93, i8** %8, align 8
  %94 = alloca i32, i64 %92, align 16
  store i64 %92, i64* %9, align 8
  %95 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %96 = zext i32 %95 to i64
  %97 = alloca i32, i64 %96, align 16
  store i64 %96, i64* %10, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @get_friendcon_public_keys(i32* %94, i32* %97, i32 %100, i32 %108)
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %111 = call i32 @pk_in_closest_peers(%struct.TYPE_15__* %110, i32* %94)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %134, label %113

113:                                              ; preds = %90
  %114 = load i64, i64* @GROUPCHAT_CLOSE_NONE, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 4
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  store i64 %114, i64* %121, align 8
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 4
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @kill_friend_connection(i32 %124, i32 %132)
  br label %134

134:                                              ; preds = %113, %90
  %135 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %135)
  br label %136

136:                                              ; preds = %134, %89, %78
  %137 = load i32, i32* %7, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %7, align 4
  br label %63

139:                                              ; preds = %63
  store i32 0, i32* %7, align 4
  br label %140

140:                                              ; preds = %224, %139
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @DESIRED_CLOSE_CONNECTIONS, align 4
  %143 = icmp ult i32 %141, %142
  br i1 %143, label %144, label %227

144:                                              ; preds = %140
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %146, align 8
  %148 = load i32, i32* %7, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %144
  br label %224

155:                                              ; preds = %144
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 3
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %160, align 8
  %162 = load i32, i32* %7, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @getfriend_conn_id_pk(i32 %158, i32 %166)
  store i32 %167, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %168 = load i32, i32* %11, align 4
  %169 = icmp eq i32 %168, -1
  br i1 %169, label %170, label %200

170:                                              ; preds = %155
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 3
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %175, align 8
  %177 = load i32, i32* %7, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @new_friend_connection(i32 %173, i32 %181)
  store i32 %182, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %183 = load i32, i32* %11, align 4
  %184 = icmp eq i32 %183, -1
  br i1 %184, label %185, label %186

185:                                              ; preds = %170
  br label %224

186:                                              ; preds = %170
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %11, align 4
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 3
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %192, align 8
  %194 = load i32, i32* %7, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @set_dht_temp_pk(i32 %189, i32 %190, i32 %198)
  br label %200

200:                                              ; preds = %186, %155
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* %5, align 4
  %204 = load i32, i32* %12, align 4
  %205 = call i32 @add_conn_to_groupchat(%struct.TYPE_16__* %201, i32 %202, i32 %203, i32 1, i32 %204)
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %11, align 4
  %210 = call i64 @friend_con_connected(i32 %208, i32 %209)
  %211 = load i64, i64* @FRIENDCONN_STATUS_CONNECTED, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %223

213:                                              ; preds = %200
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %11, align 4
  %218 = load i32, i32* %5, align 4
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @send_packet_online(i32 %216, i32 %217, i32 %218, i32 %221)
  br label %223

223:                                              ; preds = %213, %200
  br label %224

224:                                              ; preds = %223, %185, %154
  %225 = load i32, i32* %7, align 4
  %226 = add i32 %225, 1
  store i32 %226, i32* %7, align 4
  br label %140

227:                                              ; preds = %140
  %228 = load i64, i64* @GROUPCHAT_CLOSEST_NONE, align 8
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 0
  store i64 %228, i64* %230, align 8
  store i32 0, i32* %3, align 4
  br label %231

231:                                              ; preds = %227, %24, %18
  %232 = load i32, i32* %3, align 4
  ret i32 %232
}

declare dso_local %struct.TYPE_15__* @get_group_c(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @add_to_closest(%struct.TYPE_16__*, i32, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @get_friendcon_public_keys(i32*, i32*, i32, i32) #1

declare dso_local i32 @pk_in_closest_peers(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @kill_friend_connection(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @getfriend_conn_id_pk(i32, i32) #1

declare dso_local i32 @new_friend_connection(i32, i32) #1

declare dso_local i32 @set_dht_temp_pk(i32, i32, i32) #1

declare dso_local i32 @add_conn_to_groupchat(%struct.TYPE_16__*, i32, i32, i32, i32) #1

declare dso_local i64 @friend_con_connected(i32, i32) #1

declare dso_local i32 @send_packet_online(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
