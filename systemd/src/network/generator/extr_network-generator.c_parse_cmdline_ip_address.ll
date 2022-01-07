; ModuleID = '/home/carl/AnghaBench/systemd/src/network/generator/extr_network-generator.c_parse_cmdline_ip_address.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/generator/extr_network-generator.c_parse_cmdline_ip_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.in_addr_union = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*)* @parse_cmdline_ip_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_cmdline_ip_address(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %union.in_addr_union, align 4
  %9 = alloca %union.in_addr_union, align 4
  %10 = alloca %union.in_addr_union, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %18 = bitcast %union.in_addr_union* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 4, i1 false)
  %19 = bitcast %union.in_addr_union* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 4, i1 false)
  %20 = bitcast %union.in_addr_union* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 4, i1 false)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @parse_ip_address_one(i32 %21, i8** %7, %union.in_addr_union* %8)
  store i32 %22, i32* %17, align 4
  %23 = load i32, i32* %17, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %17, align 4
  store i32 %26, i32* %4, align 4
  br label %204

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @parse_ip_address_one(i32 %28, i8** %7, %union.in_addr_union* %9)
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %17, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %17, align 4
  store i32 %33, i32* %4, align 4
  br label %204

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @parse_ip_address_one(i32 %35, i8** %7, %union.in_addr_union* %10)
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %17, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %17, align 4
  store i32 %40, i32* %4, align 4
  br label %204

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @parse_netmask_or_prefixlen(i32 %42, i8** %7, i8* %16)
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %17, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %17, align 4
  store i32 %47, i32* %4, align 4
  br label %204

48:                                               ; preds = %41
  %49 = load i8*, i8** %7, align 8
  %50 = call i8* @strchr(i8* %49, i8 signext 58)
  store i8* %50, i8** %15, align 8
  %51 = load i8*, i8** %15, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %204

56:                                               ; preds = %48
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** %15, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = trunc i64 %62 to i32
  %64 = call i8* @strndupa(i8* %57, i32 %63)
  store i8* %64, i8** %11, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = call i32 @hostname_is_valid(i8* %65, i32 0)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %56
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %204

71:                                               ; preds = %56
  %72 = load i8*, i8** %15, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  store i8* %73, i8** %7, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = call i8* @strchr(i8* %74, i8 signext 58)
  store i8* %75, i8** %15, align 8
  %76 = load i8*, i8** %15, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %71
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %204

81:                                               ; preds = %71
  %82 = load i8*, i8** %7, align 8
  %83 = load i8*, i8** %15, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = trunc i64 %87 to i32
  %89 = call i8* @strndupa(i8* %82, i32 %88)
  store i8* %89, i8** %12, align 8
  %90 = load i8*, i8** %15, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  store i8* %91, i8** %7, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = call i8* @strchr(i8* %92, i8 signext 58)
  store i8* %93, i8** %15, align 8
  %94 = load i8*, i8** %15, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %81
  %97 = load i8*, i8** %7, align 8
  store i8* %97, i8** %13, align 8
  br label %107

98:                                               ; preds = %81
  %99 = load i8*, i8** %7, align 8
  %100 = load i8*, i8** %15, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = ptrtoint i8* %100 to i64
  %103 = ptrtoint i8* %101 to i64
  %104 = sub i64 %102, %103
  %105 = trunc i64 %104 to i32
  %106 = call i8* @strndupa(i8* %99, i32 %105)
  store i8* %106, i8** %13, align 8
  br label %107

107:                                              ; preds = %98, %96
  %108 = load i32*, i32** %5, align 8
  %109 = load i8*, i8** %12, align 8
  %110 = load i8*, i8** %13, align 8
  %111 = call i32 @network_set_dhcp_type(i32* %108, i8* %109, i8* %110)
  store i32 %111, i32* %17, align 4
  %112 = load i32, i32* %17, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = load i32, i32* %17, align 4
  store i32 %115, i32* %4, align 4
  br label %204

116:                                              ; preds = %107
  %117 = load i32*, i32** %5, align 8
  %118 = load i8*, i8** %12, align 8
  %119 = load i8*, i8** %11, align 8
  %120 = call i32 @network_set_hostname(i32* %117, i8* %118, i8* %119)
  store i32 %120, i32* %17, align 4
  %121 = load i32, i32* %17, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %116
  %124 = load i32, i32* %17, align 4
  store i32 %124, i32* %4, align 4
  br label %204

125:                                              ; preds = %116
  %126 = load i32*, i32** %5, align 8
  %127 = load i8*, i8** %12, align 8
  %128 = load i32, i32* %6, align 4
  %129 = load i8, i8* %16, align 1
  %130 = call i32 @network_set_address(i32* %126, i8* %127, i32 %128, i8 zeroext %129, %union.in_addr_union* %8, %union.in_addr_union* %9)
  store i32 %130, i32* %17, align 4
  %131 = load i32, i32* %17, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %125
  %134 = load i32, i32* %17, align 4
  store i32 %134, i32* %4, align 4
  br label %204

135:                                              ; preds = %125
  %136 = load i32*, i32** %5, align 8
  %137 = load i8*, i8** %12, align 8
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @network_set_route(i32* %136, i8* %137, i32 %138, i32 0, i32* null, %union.in_addr_union* %10)
  store i32 %139, i32* %17, align 4
  %140 = load i32, i32* %17, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = load i32, i32* %17, align 4
  store i32 %143, i32* %4, align 4
  br label %204

144:                                              ; preds = %135
  %145 = load i8*, i8** %15, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %148, label %147

147:                                              ; preds = %144
  store i32 0, i32* %4, align 4
  br label %204

148:                                              ; preds = %144
  %149 = load i32*, i32** %5, align 8
  %150 = load i8*, i8** %12, align 8
  %151 = load i32, i32* @AF_UNSPEC, align 4
  %152 = load i8*, i8** %15, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 1
  %154 = call i32 @parse_cmdline_ip_mtu_mac(i32* %149, i8* %150, i32 %151, i8* %153)
  store i32 %154, i32* %17, align 4
  %155 = load i32, i32* %17, align 4
  %156 = icmp sge i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %148
  store i32 0, i32* %4, align 4
  br label %204

158:                                              ; preds = %148
  %159 = load i8*, i8** %15, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 1
  store i8* %160, i8** %7, align 8
  %161 = load i8*, i8** %7, align 8
  %162 = call i8* @strchr(i8* %161, i8 signext 58)
  store i8* %162, i8** %15, align 8
  %163 = load i8*, i8** %15, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %175, label %165

165:                                              ; preds = %158
  %166 = load i32*, i32** %5, align 8
  %167 = load i8*, i8** %12, align 8
  %168 = load i8*, i8** %7, align 8
  %169 = call i32 @network_set_dns(i32* %166, i8* %167, i8* %168)
  store i32 %169, i32* %17, align 4
  %170 = load i32, i32* %17, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %165
  %173 = load i32, i32* %17, align 4
  store i32 %173, i32* %4, align 4
  br label %204

174:                                              ; preds = %165
  br label %203

175:                                              ; preds = %158
  %176 = load i8*, i8** %7, align 8
  %177 = load i8*, i8** %15, align 8
  %178 = load i8*, i8** %7, align 8
  %179 = ptrtoint i8* %177 to i64
  %180 = ptrtoint i8* %178 to i64
  %181 = sub i64 %179, %180
  %182 = trunc i64 %181 to i32
  %183 = call i8* @strndupa(i8* %176, i32 %182)
  store i8* %183, i8** %14, align 8
  %184 = load i32*, i32** %5, align 8
  %185 = load i8*, i8** %12, align 8
  %186 = load i8*, i8** %14, align 8
  %187 = call i32 @network_set_dns(i32* %184, i8* %185, i8* %186)
  store i32 %187, i32* %17, align 4
  %188 = load i32, i32* %17, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %175
  %191 = load i32, i32* %17, align 4
  store i32 %191, i32* %4, align 4
  br label %204

192:                                              ; preds = %175
  %193 = load i32*, i32** %5, align 8
  %194 = load i8*, i8** %12, align 8
  %195 = load i8*, i8** %15, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 1
  %197 = call i32 @network_set_dns(i32* %193, i8* %194, i8* %196)
  store i32 %197, i32* %17, align 4
  %198 = load i32, i32* %17, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %192
  %201 = load i32, i32* %17, align 4
  store i32 %201, i32* %4, align 4
  br label %204

202:                                              ; preds = %192
  br label %203

203:                                              ; preds = %202, %174
  store i32 0, i32* %4, align 4
  br label %204

204:                                              ; preds = %203, %200, %190, %172, %157, %147, %142, %133, %123, %114, %78, %68, %53, %46, %39, %32, %25
  %205 = load i32, i32* %4, align 4
  ret i32 %205
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @parse_ip_address_one(i32, i8**, %union.in_addr_union*) #2

declare dso_local i32 @parse_netmask_or_prefixlen(i32, i8**, i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i8* @strndupa(i8*, i32) #2

declare dso_local i32 @hostname_is_valid(i8*, i32) #2

declare dso_local i32 @network_set_dhcp_type(i32*, i8*, i8*) #2

declare dso_local i32 @network_set_hostname(i32*, i8*, i8*) #2

declare dso_local i32 @network_set_address(i32*, i8*, i32, i8 zeroext, %union.in_addr_union*, %union.in_addr_union*) #2

declare dso_local i32 @network_set_route(i32*, i8*, i32, i32, i32*, %union.in_addr_union*) #2

declare dso_local i32 @parse_cmdline_ip_mtu_mac(i32*, i8*, i32, i8*) #2

declare dso_local i32 @network_set_dns(i32*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
