; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_test-lldp.c_test_receive_oui_packet.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_test-lldp.c_test_receive_oui_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_receive_oui_packet.frame = private unnamed_addr constant [95 x i32] [i32 1, i32 128, i32 194, i32 0, i32 0, i32 3, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 136, i32 204, i32 2, i32 7, i32 4, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 4, i32 4, i32 5, i32 49, i32 47, i32 51, i32 6, i32 2, i32 0, i32 120, i32 254, i32 6, i32 0, i32 128, i32 194, i32 1, i32 18, i32 52, i32 254, i32 7, i32 0, i32 128, i32 194, i32 2, i32 1, i32 119, i32 136, i32 254, i32 13, i32 0, i32 128, i32 194, i32 3, i32 18, i32 52, i32 6, i32 86, i32 108, i32 97, i32 110, i32 53, i32 49, i32 254, i32 6, i32 0, i32 128, i32 194, i32 6, i32 1, i32 2, i32 254, i32 9, i32 0, i32 128, i32 194, i32 7, i32 1, i32 0, i32 20, i32 0, i32 18, i32 254, i32 7, i32 0, i32 18, i32 15, i32 2, i32 7, i32 1, i32 0, i32 0, i32 0], align 16
@lldp_handler_calls = common dso_local global i32 0, align 4
@lldp_handler = common dso_local global i32 0, align 4
@test_fd = common dso_local global i32* null, align 8
@SD_LLDP_TYPE_CHASSIS_ID = common dso_local global i32 0, align 4
@SD_LLDP_TYPE_PORT_ID = common dso_local global i32 0, align 4
@SD_LLDP_TYPE_TTL = common dso_local global i32 0, align 4
@SD_LLDP_OUI_802_1 = common dso_local global i32 0, align 4
@SD_LLDP_OUI_802_1_SUBTYPE_PORT_VLAN_ID = common dso_local global i32 0, align 4
@SD_LLDP_OUI_802_1_SUBTYPE_PORT_PROTOCOL_VLAN_ID = common dso_local global i32 0, align 4
@SD_LLDP_OUI_802_1_SUBTYPE_VLAN_NAME = common dso_local global i32 0, align 4
@SD_LLDP_OUI_802_1_SUBTYPE_MANAGEMENT_VID = common dso_local global i32 0, align 4
@SD_LLDP_OUI_802_1_SUBTYPE_LINK_AGGREGATION = common dso_local global i32 0, align 4
@SD_LLDP_OUI_802_3 = common dso_local global i32 0, align 4
@SD_LLDP_OUI_802_3_SUBTYPE_POWER_VIA_MDI = common dso_local global i32 0, align 4
@SD_LLDP_TYPE_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_receive_oui_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_receive_oui_packet(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca [95 x i32], align 16
  store i32* %0, i32** %2, align 8
  %6 = bitcast [95 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([95 x i32]* @__const.test_receive_oui_packet.frame to i8*), i64 380, i1 false)
  store i32 0, i32* @lldp_handler_calls, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* @lldp_handler, align 4
  %9 = call i64 @start_lldp(i32** %3, i32* %7, i32 %8, i32* null)
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert_se(i32 %11)
  %13 = load i32*, i32** @test_fd, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds [95 x i32], [95 x i32]* %5, i64 0, i64 0
  %17 = call i32 @write(i32 %15, i32* %16, i32 380)
  %18 = sext i32 %17 to i64
  %19 = icmp eq i64 %18, 380
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert_se(i32 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @sd_event_run(i32* %22, i32 0)
  %24 = load i32, i32* @lldp_handler_calls, align 4
  %25 = icmp eq i32 %24, 1
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert_se(i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @sd_lldp_get_neighbors(i32* %28, i32*** %4)
  %30 = icmp eq i32 %29, 1
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert_se(i32 %31)
  %33 = load i32**, i32*** %4, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @sd_lldp_neighbor_tlv_rewind(i32* %35)
  %37 = icmp sge i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert_se(i32 %38)
  %40 = load i32**, i32*** %4, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* @SD_LLDP_TYPE_CHASSIS_ID, align 4
  %44 = call i64 @sd_lldp_neighbor_tlv_is_type(i32* %42, i32 %43)
  %45 = icmp sgt i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert_se(i32 %46)
  %48 = load i32**, i32*** %4, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i64 @sd_lldp_neighbor_tlv_next(i32* %50)
  %52 = icmp sgt i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert_se(i32 %53)
  %55 = load i32**, i32*** %4, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* @SD_LLDP_TYPE_PORT_ID, align 4
  %59 = call i64 @sd_lldp_neighbor_tlv_is_type(i32* %57, i32 %58)
  %60 = icmp sgt i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert_se(i32 %61)
  %63 = load i32**, i32*** %4, align 8
  %64 = getelementptr inbounds i32*, i32** %63, i64 0
  %65 = load i32*, i32** %64, align 8
  %66 = call i64 @sd_lldp_neighbor_tlv_next(i32* %65)
  %67 = icmp sgt i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert_se(i32 %68)
  %70 = load i32**, i32*** %4, align 8
  %71 = getelementptr inbounds i32*, i32** %70, i64 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* @SD_LLDP_TYPE_TTL, align 4
  %74 = call i64 @sd_lldp_neighbor_tlv_is_type(i32* %72, i32 %73)
  %75 = icmp sgt i64 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert_se(i32 %76)
  %78 = load i32**, i32*** %4, align 8
  %79 = getelementptr inbounds i32*, i32** %78, i64 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i64 @sd_lldp_neighbor_tlv_next(i32* %80)
  %82 = icmp sgt i64 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert_se(i32 %83)
  %85 = load i32**, i32*** %4, align 8
  %86 = getelementptr inbounds i32*, i32** %85, i64 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* @SD_LLDP_OUI_802_1, align 4
  %89 = load i32, i32* @SD_LLDP_OUI_802_1_SUBTYPE_PORT_VLAN_ID, align 4
  %90 = call i64 @sd_lldp_neighbor_tlv_is_oui(i32* %87, i32 %88, i32 %89)
  %91 = icmp sgt i64 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert_se(i32 %92)
  %94 = load i32**, i32*** %4, align 8
  %95 = getelementptr inbounds i32*, i32** %94, i64 0
  %96 = load i32*, i32** %95, align 8
  %97 = call i64 @sd_lldp_neighbor_tlv_next(i32* %96)
  %98 = icmp sgt i64 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert_se(i32 %99)
  %101 = load i32**, i32*** %4, align 8
  %102 = getelementptr inbounds i32*, i32** %101, i64 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* @SD_LLDP_OUI_802_1, align 4
  %105 = load i32, i32* @SD_LLDP_OUI_802_1_SUBTYPE_PORT_PROTOCOL_VLAN_ID, align 4
  %106 = call i64 @sd_lldp_neighbor_tlv_is_oui(i32* %103, i32 %104, i32 %105)
  %107 = icmp sgt i64 %106, 0
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert_se(i32 %108)
  %110 = load i32**, i32*** %4, align 8
  %111 = getelementptr inbounds i32*, i32** %110, i64 0
  %112 = load i32*, i32** %111, align 8
  %113 = call i64 @sd_lldp_neighbor_tlv_next(i32* %112)
  %114 = icmp sgt i64 %113, 0
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert_se(i32 %115)
  %117 = load i32**, i32*** %4, align 8
  %118 = getelementptr inbounds i32*, i32** %117, i64 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* @SD_LLDP_OUI_802_1, align 4
  %121 = load i32, i32* @SD_LLDP_OUI_802_1_SUBTYPE_VLAN_NAME, align 4
  %122 = call i64 @sd_lldp_neighbor_tlv_is_oui(i32* %119, i32 %120, i32 %121)
  %123 = icmp sgt i64 %122, 0
  %124 = zext i1 %123 to i32
  %125 = call i32 @assert_se(i32 %124)
  %126 = load i32**, i32*** %4, align 8
  %127 = getelementptr inbounds i32*, i32** %126, i64 0
  %128 = load i32*, i32** %127, align 8
  %129 = call i64 @sd_lldp_neighbor_tlv_next(i32* %128)
  %130 = icmp sgt i64 %129, 0
  %131 = zext i1 %130 to i32
  %132 = call i32 @assert_se(i32 %131)
  %133 = load i32**, i32*** %4, align 8
  %134 = getelementptr inbounds i32*, i32** %133, i64 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* @SD_LLDP_OUI_802_1, align 4
  %137 = load i32, i32* @SD_LLDP_OUI_802_1_SUBTYPE_MANAGEMENT_VID, align 4
  %138 = call i64 @sd_lldp_neighbor_tlv_is_oui(i32* %135, i32 %136, i32 %137)
  %139 = icmp sgt i64 %138, 0
  %140 = zext i1 %139 to i32
  %141 = call i32 @assert_se(i32 %140)
  %142 = load i32**, i32*** %4, align 8
  %143 = getelementptr inbounds i32*, i32** %142, i64 0
  %144 = load i32*, i32** %143, align 8
  %145 = call i64 @sd_lldp_neighbor_tlv_next(i32* %144)
  %146 = icmp sgt i64 %145, 0
  %147 = zext i1 %146 to i32
  %148 = call i32 @assert_se(i32 %147)
  %149 = load i32**, i32*** %4, align 8
  %150 = getelementptr inbounds i32*, i32** %149, i64 0
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* @SD_LLDP_OUI_802_1, align 4
  %153 = load i32, i32* @SD_LLDP_OUI_802_1_SUBTYPE_LINK_AGGREGATION, align 4
  %154 = call i64 @sd_lldp_neighbor_tlv_is_oui(i32* %151, i32 %152, i32 %153)
  %155 = icmp sgt i64 %154, 0
  %156 = zext i1 %155 to i32
  %157 = call i32 @assert_se(i32 %156)
  %158 = load i32**, i32*** %4, align 8
  %159 = getelementptr inbounds i32*, i32** %158, i64 0
  %160 = load i32*, i32** %159, align 8
  %161 = call i64 @sd_lldp_neighbor_tlv_next(i32* %160)
  %162 = icmp sgt i64 %161, 0
  %163 = zext i1 %162 to i32
  %164 = call i32 @assert_se(i32 %163)
  %165 = load i32**, i32*** %4, align 8
  %166 = getelementptr inbounds i32*, i32** %165, i64 0
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* @SD_LLDP_OUI_802_3, align 4
  %169 = load i32, i32* @SD_LLDP_OUI_802_3_SUBTYPE_POWER_VIA_MDI, align 4
  %170 = call i64 @sd_lldp_neighbor_tlv_is_oui(i32* %167, i32 %168, i32 %169)
  %171 = icmp sgt i64 %170, 0
  %172 = zext i1 %171 to i32
  %173 = call i32 @assert_se(i32 %172)
  %174 = load i32**, i32*** %4, align 8
  %175 = getelementptr inbounds i32*, i32** %174, i64 0
  %176 = load i32*, i32** %175, align 8
  %177 = call i64 @sd_lldp_neighbor_tlv_next(i32* %176)
  %178 = icmp sgt i64 %177, 0
  %179 = zext i1 %178 to i32
  %180 = call i32 @assert_se(i32 %179)
  %181 = load i32**, i32*** %4, align 8
  %182 = getelementptr inbounds i32*, i32** %181, i64 0
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* @SD_LLDP_TYPE_END, align 4
  %185 = call i64 @sd_lldp_neighbor_tlv_is_type(i32* %183, i32 %184)
  %186 = icmp sgt i64 %185, 0
  %187 = zext i1 %186 to i32
  %188 = call i32 @assert_se(i32 %187)
  %189 = load i32**, i32*** %4, align 8
  %190 = getelementptr inbounds i32*, i32** %189, i64 0
  %191 = load i32*, i32** %190, align 8
  %192 = call i64 @sd_lldp_neighbor_tlv_next(i32* %191)
  %193 = icmp eq i64 %192, 0
  %194 = zext i1 %193 to i32
  %195 = call i32 @assert_se(i32 %194)
  %196 = load i32**, i32*** %4, align 8
  %197 = getelementptr inbounds i32*, i32** %196, i64 0
  %198 = load i32*, i32** %197, align 8
  %199 = call i32 @sd_lldp_neighbor_unref(i32* %198)
  %200 = load i32**, i32*** %4, align 8
  %201 = call i32 @free(i32** %200)
  %202 = load i32*, i32** %3, align 8
  %203 = call i64 @stop_lldp(i32* %202)
  %204 = icmp eq i64 %203, 0
  %205 = zext i1 %204 to i32
  %206 = call i32 @assert_se(i32 %205)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert_se(i32) #2

declare dso_local i64 @start_lldp(i32**, i32*, i32, i32*) #2

declare dso_local i32 @write(i32, i32*, i32) #2

declare dso_local i32 @sd_event_run(i32*, i32) #2

declare dso_local i32 @sd_lldp_get_neighbors(i32*, i32***) #2

declare dso_local i64 @sd_lldp_neighbor_tlv_rewind(i32*) #2

declare dso_local i64 @sd_lldp_neighbor_tlv_is_type(i32*, i32) #2

declare dso_local i64 @sd_lldp_neighbor_tlv_next(i32*) #2

declare dso_local i64 @sd_lldp_neighbor_tlv_is_oui(i32*, i32, i32) #2

declare dso_local i32 @sd_lldp_neighbor_unref(i32*) #2

declare dso_local i32 @free(i32**) #2

declare dso_local i64 @stop_lldp(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
