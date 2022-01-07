; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-brvlan.c_append_vlan_info_data.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-brvlan.c_append_vlan_info_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_vlan_info = type { i32, i32 }

@UINT16_MAX = common dso_local global i32 0, align 4
@BRIDGE_VLAN_BITMAP_LEN = common dso_local global i32 0, align 4
@BRIDGE_VLAN_INFO_UNTAGGED = common dso_local global i32 0, align 4
@BRIDGE_VLAN_INFO_PVID = common dso_local global i32 0, align 4
@IFLA_BRIDGE_VLAN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Could not append IFLA_BRIDGE_VLAN_INFO attribute: %m\00", align 1
@BRIDGE_VLAN_INFO_RANGE_BEGIN = common dso_local global i32 0, align 4
@BRIDGE_VLAN_INFO_RANGE_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32*, i32*)* @append_vlan_info_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_vlan_info_data(i32* %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.bridge_vlan_info, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %21, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = ptrtoint i32* %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32*, i32** %8, align 8
  %29 = ptrtoint i32* %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32*, i32** %10, align 8
  %32 = ptrtoint i32* %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i32*, i32** %11, align 8
  %35 = ptrtoint i32* %34 to i32
  %36 = call i32 @assert(i32 %35)
  store i32 0, i32* %17, align 4
  %37 = load i32, i32* @UINT16_MAX, align 4
  store i32 %37, i32* %19, align 4
  store i32 %37, i32* %18, align 4
  store i32 0, i32* %15, align 4
  br label %38

38:                                               ; preds = %221, %5
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* @BRIDGE_VLAN_BITMAP_LEN, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %224

42:                                               ; preds = %38
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %23, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %24, align 4
  %53 = load i32, i32* %15, align 4
  %54 = mul nsw i32 %53, 32
  store i32 %54, i32* %22, align 4
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %20, align 4
  br label %55

55:                                               ; preds = %216, %42
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %23, align 4
  %58 = call i32 @find_next_bit(i32 %56, i32 %57)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %107

61:                                               ; preds = %55
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* @UINT16_MAX, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %61
  %66 = load i32, i32* %19, align 4
  %67 = load i32, i32* @UINT16_MAX, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load i32, i32* %14, align 4
  %71 = sub nsw i32 %70, 1
  %72 = load i32, i32* %22, align 4
  %73 = add i32 %71, %72
  store i32 %73, i32* %19, align 4
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %14, align 4
  %75 = sub nsw i32 %74, 1
  %76 = load i32, i32* %24, align 4
  %77 = call i32 @is_bit_set(i32 %75, i32 %76)
  store i32 %77, i32* %21, align 4
  br label %214

78:                                               ; preds = %65, %61
  %79 = load i32, i32* %14, align 4
  %80 = sub nsw i32 %79, 2
  %81 = load i32, i32* %22, align 4
  %82 = add i32 %80, %81
  %83 = load i32, i32* %19, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %106

85:                                               ; preds = %78
  %86 = load i32, i32* %21, align 4
  %87 = load i32, i32* %14, align 4
  %88 = sub nsw i32 %87, 1
  %89 = load i32, i32* %24, align 4
  %90 = call i32 @is_bit_set(i32 %88, i32 %89)
  %91 = icmp eq i32 %86, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %85
  %93 = load i32, i32* %14, align 4
  %94 = sub nsw i32 %93, 1
  %95 = load i32, i32* %22, align 4
  %96 = add i32 %94, %95
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %92
  %100 = load i32, i32* %18, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* %19, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %19, align 4
  br label %214

106:                                              ; preds = %99, %92, %85, %78
  br label %108

107:                                              ; preds = %55
  store i32 1, i32* %20, align 4
  br label %108

108:                                              ; preds = %107, %106
  %109 = load i32, i32* %18, align 4
  %110 = load i32, i32* @UINT16_MAX, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %201

112:                                              ; preds = %108
  %113 = load i32, i32* %17, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %17, align 4
  %115 = load i32, i32* %20, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* @BRIDGE_VLAN_BITMAP_LEN, align 4
  %120 = sub nsw i32 %119, 1
  %121 = icmp slt i32 %118, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  br label %220

123:                                              ; preds = %117, %112
  %124 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %12, i32 0, i32 1
  store i32 0, i32* %124, align 4
  %125 = load i32, i32* %21, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %123
  %128 = load i32, i32* @BRIDGE_VLAN_INFO_UNTAGGED, align 4
  %129 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %12, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %128
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %127, %123
  %133 = load i32, i32* %18, align 4
  %134 = load i32, i32* %19, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %158

136:                                              ; preds = %132
  %137 = load i32, i32* %18, align 4
  %138 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %12, i32 0, i32 0
  store i32 %137, i32* %138, align 4
  %139 = load i32, i32* %18, align 4
  %140 = load i32, i32* %9, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %136
  %143 = load i32, i32* @BRIDGE_VLAN_INFO_PVID, align 4
  %144 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %12, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %143
  store i32 %146, i32* %144, align 4
  br label %147

147:                                              ; preds = %142, %136
  %148 = load i32*, i32** %8, align 8
  %149 = load i32, i32* @IFLA_BRIDGE_VLAN_INFO, align 4
  %150 = call i32 @sd_netlink_message_append_data(i32* %148, i32 %149, %struct.bridge_vlan_info* %12, i32 8)
  store i32 %150, i32* %16, align 4
  %151 = load i32, i32* %16, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = load i32*, i32** %7, align 8
  %155 = load i32, i32* %16, align 4
  %156 = call i32 @log_link_error_errno(i32* %154, i32 %155, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  store i32 %156, i32* %6, align 4
  br label %230

157:                                              ; preds = %147
  br label %196

158:                                              ; preds = %132
  %159 = load i32, i32* %18, align 4
  %160 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %12, i32 0, i32 0
  store i32 %159, i32* %160, align 4
  %161 = load i32, i32* @BRIDGE_VLAN_INFO_RANGE_BEGIN, align 4
  %162 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %12, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %161
  store i32 %164, i32* %162, align 4
  %165 = load i32*, i32** %8, align 8
  %166 = load i32, i32* @IFLA_BRIDGE_VLAN_INFO, align 4
  %167 = call i32 @sd_netlink_message_append_data(i32* %165, i32 %166, %struct.bridge_vlan_info* %12, i32 8)
  store i32 %167, i32* %16, align 4
  %168 = load i32, i32* %16, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %158
  %171 = load i32*, i32** %7, align 8
  %172 = load i32, i32* %16, align 4
  %173 = call i32 @log_link_error_errno(i32* %171, i32 %172, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  store i32 %173, i32* %6, align 4
  br label %230

174:                                              ; preds = %158
  %175 = load i32, i32* %19, align 4
  %176 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %12, i32 0, i32 0
  store i32 %175, i32* %176, align 4
  %177 = load i32, i32* @BRIDGE_VLAN_INFO_RANGE_BEGIN, align 4
  %178 = xor i32 %177, -1
  %179 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %12, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = and i32 %180, %178
  store i32 %181, i32* %179, align 4
  %182 = load i32, i32* @BRIDGE_VLAN_INFO_RANGE_END, align 4
  %183 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %12, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %182
  store i32 %185, i32* %183, align 4
  %186 = load i32*, i32** %8, align 8
  %187 = load i32, i32* @IFLA_BRIDGE_VLAN_INFO, align 4
  %188 = call i32 @sd_netlink_message_append_data(i32* %186, i32 %187, %struct.bridge_vlan_info* %12, i32 8)
  store i32 %188, i32* %16, align 4
  %189 = load i32, i32* %16, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %174
  %192 = load i32*, i32** %7, align 8
  %193 = load i32, i32* %16, align 4
  %194 = call i32 @log_link_error_errno(i32* %192, i32 %193, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  store i32 %194, i32* %6, align 4
  br label %230

195:                                              ; preds = %174
  br label %196

196:                                              ; preds = %195, %157
  %197 = load i32, i32* %20, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  br label %220

200:                                              ; preds = %196
  br label %201

201:                                              ; preds = %200, %108
  %202 = load i32, i32* %14, align 4
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %201
  %205 = load i32, i32* %14, align 4
  %206 = sub nsw i32 %205, 1
  %207 = load i32, i32* %22, align 4
  %208 = add i32 %206, %207
  store i32 %208, i32* %19, align 4
  store i32 %208, i32* %18, align 4
  %209 = load i32, i32* %14, align 4
  %210 = sub nsw i32 %209, 1
  %211 = load i32, i32* %24, align 4
  %212 = call i32 @is_bit_set(i32 %210, i32 %211)
  store i32 %212, i32* %21, align 4
  br label %213

213:                                              ; preds = %204, %201
  br label %214

214:                                              ; preds = %213, %103, %69
  %215 = load i32, i32* %14, align 4
  store i32 %215, i32* %13, align 4
  br label %216

216:                                              ; preds = %214
  %217 = load i32, i32* %20, align 4
  %218 = icmp ne i32 %217, 0
  %219 = xor i1 %218, true
  br i1 %219, label %55, label %220

220:                                              ; preds = %216, %199, %122
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %15, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %15, align 4
  br label %38

224:                                              ; preds = %38
  %225 = load i32, i32* %17, align 4
  %226 = icmp sgt i32 %225, 0
  %227 = zext i1 %226 to i32
  %228 = call i32 @assert(i32 %227)
  %229 = load i32, i32* %17, align 4
  store i32 %229, i32* %6, align 4
  br label %230

230:                                              ; preds = %224, %191, %170, %153
  %231 = load i32, i32* %6, align 4
  ret i32 %231
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @find_next_bit(i32, i32) #1

declare dso_local i32 @is_bit_set(i32, i32) #1

declare dso_local i32 @sd_netlink_message_append_data(i32*, i32, %struct.bridge_vlan_info*, i32) #1

declare dso_local i32 @log_link_error_errno(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
