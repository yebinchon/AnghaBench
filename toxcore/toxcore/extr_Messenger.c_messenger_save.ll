; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_messenger_save.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_messenger_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MESSENGER_STATE_COOKIE_GLOBAL = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@crypto_box_SECRETKEYBYTES = common dso_local global i32 0, align 4
@MESSENGER_STATE_TYPE_NOSPAMKEYS = common dso_local global i32 0, align 4
@MESSENGER_STATE_TYPE_FRIENDS = common dso_local global i32 0, align 4
@MESSENGER_STATE_TYPE_NAME = common dso_local global i32 0, align 4
@MESSENGER_STATE_TYPE_STATUSMESSAGE = common dso_local global i32 0, align 4
@MESSENGER_STATE_TYPE_STATUS = common dso_local global i32 0, align 4
@MESSENGER_STATE_TYPE_DHT = common dso_local global i32 0, align 4
@NUM_SAVED_TCP_RELAYS = common dso_local global i32 0, align 4
@MESSENGER_STATE_TYPE_TCP_RELAY = common dso_local global i32 0, align 4
@TCP_INET6 = common dso_local global i32 0, align 4
@NUM_SAVED_PATH_NODES = common dso_local global i32 0, align 4
@MESSENGER_STATE_TYPE_PATH_NODE = common dso_local global i32 0, align 4
@MESSENGER_STATE_TYPE_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @messenger_save(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = call i32 @messenger_size(%struct.TYPE_6__* %15)
  %17 = call i32 @memset(i32* %14, i32 0, i32 %16)
  store i32 4, i32* %7, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @memset(i32* %18, i32 0, i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32* %24, i32** %4, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @MESSENGER_STATE_COOKIE_GLOBAL, align 4
  %27 = call i32 @host_to_lendian32(i32* %25, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32* %31, i32** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %34 = add nsw i32 %32, %33
  %35 = load i32, i32* @crypto_box_SECRETKEYBYTES, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @MESSENGER_STATE_TYPE_NOSPAMKEYS, align 4
  store i32 %37, i32* %6, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32* @z_state_save_subheader(i32* %38, i32 %39, i32 %40)
  store i32* %41, i32** %4, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 8
  %44 = call i32 @get_nospam(i32* %43)
  %45 = load i32*, i32** %4, align 8
  store i32 %44, i32* %45, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = call i32 @save_keys(i32 %48, i32* %52)
  %54 = load i32, i32* %5, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32* %57, i32** %4, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = call i32 @saved_friendslist_size(%struct.TYPE_6__* %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* @MESSENGER_STATE_TYPE_FRIENDS, align 4
  store i32 %60, i32* %6, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32* @z_state_save_subheader(i32* %61, i32 %62, i32 %63)
  store i32* %64, i32** %4, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @friends_list_save(%struct.TYPE_6__* %65, i32* %66)
  %68 = load i32, i32* %5, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32* %71, i32** %4, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* @MESSENGER_STATE_TYPE_NAME, align 4
  store i32 %75, i32* %6, align 4
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32* @z_state_save_subheader(i32* %76, i32 %77, i32 %78)
  store i32* %79, i32** %4, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @memcpy(i32* %80, i32 %83, i32 %84)
  %86 = load i32, i32* %5, align 4
  %87 = load i32*, i32** %4, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %4, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* @MESSENGER_STATE_TYPE_STATUSMESSAGE, align 4
  store i32 %93, i32* %6, align 4
  %94 = load i32*, i32** %4, align 8
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i32* @z_state_save_subheader(i32* %94, i32 %95, i32 %96)
  store i32* %97, i32** %4, align 8
  %98 = load i32*, i32** %4, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @memcpy(i32* %98, i32 %101, i32 %102)
  %104 = load i32, i32* %5, align 4
  %105 = load i32*, i32** %4, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32* %107, i32** %4, align 8
  store i32 1, i32* %5, align 4
  %108 = load i32, i32* @MESSENGER_STATE_TYPE_STATUS, align 4
  store i32 %108, i32* %6, align 4
  %109 = load i32*, i32** %4, align 8
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %6, align 4
  %112 = call i32* @z_state_save_subheader(i32* %109, i32 %110, i32 %111)
  store i32* %112, i32** %4, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %4, align 8
  store i32 %115, i32* %116, align 4
  %117 = load i32, i32* %5, align 4
  %118 = load i32*, i32** %4, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32* %120, i32** %4, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @DHT_size(i32 %123)
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* @MESSENGER_STATE_TYPE_DHT, align 4
  store i32 %125, i32* %6, align 4
  %126 = load i32*, i32** %4, align 8
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* %6, align 4
  %129 = call i32* @z_state_save_subheader(i32* %126, i32 %127, i32 %128)
  store i32* %129, i32** %4, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %4, align 8
  %134 = call i32 @DHT_save(i32 %132, i32* %133)
  %135 = load i32, i32* %5, align 4
  %136 = load i32*, i32** %4, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  store i32* %138, i32** %4, align 8
  %139 = load i32, i32* @NUM_SAVED_TCP_RELAYS, align 4
  %140 = zext i32 %139 to i64
  %141 = call i8* @llvm.stacksave()
  store i8* %141, i8** %8, align 8
  %142 = alloca i32, i64 %140, align 16
  store i64 %140, i64* %9, align 8
  %143 = load i32, i32* @MESSENGER_STATE_TYPE_TCP_RELAY, align 4
  store i32 %143, i32* %6, align 4
  %144 = load i32*, i32** %4, align 8
  store i32* %144, i32** %10, align 8
  %145 = load i32*, i32** %10, align 8
  %146 = load i32, i32* %6, align 4
  %147 = call i32* @z_state_save_subheader(i32* %145, i32 0, i32 %146)
  store i32* %147, i32** %4, align 8
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @NUM_SAVED_TCP_RELAYS, align 4
  %152 = call i32 @copy_connected_tcp_relays(i32 %150, i32* %142, i32 %151)
  store i32 %152, i32* %11, align 4
  %153 = load i32*, i32** %4, align 8
  %154 = load i32, i32* @NUM_SAVED_TCP_RELAYS, align 4
  %155 = load i32, i32* @TCP_INET6, align 4
  %156 = call i32 @packed_node_size(i32 %155)
  %157 = mul nsw i32 %154, %156
  %158 = load i32, i32* %11, align 4
  %159 = call i32 @pack_nodes(i32* %153, i32 %157, i32* %142, i32 %158)
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* %12, align 4
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %2
  %163 = load i32, i32* %12, align 4
  store i32 %163, i32* %5, align 4
  %164 = load i32*, i32** %10, align 8
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* %6, align 4
  %167 = call i32* @z_state_save_subheader(i32* %164, i32 %165, i32 %166)
  store i32* %167, i32** %4, align 8
  %168 = load i32, i32* %5, align 4
  %169 = load i32*, i32** %4, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  store i32* %171, i32** %4, align 8
  br label %172

172:                                              ; preds = %162, %2
  %173 = load i32, i32* @NUM_SAVED_PATH_NODES, align 4
  %174 = zext i32 %173 to i64
  %175 = alloca i32, i64 %174, align 16
  store i64 %174, i64* %13, align 8
  %176 = load i32, i32* @MESSENGER_STATE_TYPE_PATH_NODE, align 4
  store i32 %176, i32* %6, align 4
  %177 = load i32*, i32** %4, align 8
  store i32* %177, i32** %10, align 8
  %178 = load i32*, i32** %4, align 8
  %179 = load i32, i32* %6, align 4
  %180 = call i32* @z_state_save_subheader(i32* %178, i32 0, i32 %179)
  store i32* %180, i32** %4, align 8
  %181 = mul nuw i64 4, %174
  %182 = trunc i64 %181 to i32
  %183 = call i32 @memset(i32* %175, i32 0, i32 %182)
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @NUM_SAVED_PATH_NODES, align 4
  %188 = call i32 @onion_backup_nodes(i32 %186, i32* %175, i32 %187)
  store i32 %188, i32* %11, align 4
  %189 = load i32*, i32** %4, align 8
  %190 = load i32, i32* @NUM_SAVED_PATH_NODES, align 4
  %191 = load i32, i32* @TCP_INET6, align 4
  %192 = call i32 @packed_node_size(i32 %191)
  %193 = mul nsw i32 %190, %192
  %194 = load i32, i32* %11, align 4
  %195 = call i32 @pack_nodes(i32* %189, i32 %193, i32* %175, i32 %194)
  store i32 %195, i32* %12, align 4
  %196 = load i32, i32* %12, align 4
  %197 = icmp sgt i32 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %172
  %199 = load i32, i32* %12, align 4
  store i32 %199, i32* %5, align 4
  %200 = load i32*, i32** %10, align 8
  %201 = load i32, i32* %5, align 4
  %202 = load i32, i32* %6, align 4
  %203 = call i32* @z_state_save_subheader(i32* %200, i32 %201, i32 %202)
  store i32* %203, i32** %4, align 8
  %204 = load i32, i32* %5, align 4
  %205 = load i32*, i32** %4, align 8
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  store i32* %207, i32** %4, align 8
  br label %208

208:                                              ; preds = %198, %172
  %209 = load i32*, i32** %4, align 8
  %210 = load i32, i32* @MESSENGER_STATE_TYPE_END, align 4
  %211 = call i32* @z_state_save_subheader(i32* %209, i32 0, i32 %210)
  %212 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %212)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @messenger_size(%struct.TYPE_6__*) #1

declare dso_local i32 @host_to_lendian32(i32*, i32) #1

declare dso_local i32* @z_state_save_subheader(i32*, i32, i32) #1

declare dso_local i32 @get_nospam(i32*) #1

declare dso_local i32 @save_keys(i32, i32*) #1

declare dso_local i32 @saved_friendslist_size(%struct.TYPE_6__*) #1

declare dso_local i32 @friends_list_save(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @DHT_size(i32) #1

declare dso_local i32 @DHT_save(i32, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @copy_connected_tcp_relays(i32, i32*, i32) #1

declare dso_local i32 @pack_nodes(i32*, i32, i32*, i32) #1

declare dso_local i32 @packed_node_size(i32) #1

declare dso_local i32 @onion_backup_nodes(i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
