; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_secure.c_sec_out_mcs_data.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_secure.c_sec_out_mcs_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__*, i64, i64, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@SEC_TAG_CLI_INFO = common dso_local global i32 0, align 4
@SEC_TAG_CLI_4 = common dso_local global i32 0, align 4
@SEC_TAG_CLI_CRYPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"This->num_channels is %d\0A\00", align 1
@SEC_TAG_CLI_CHANNELS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Requesting channel %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32, i32*)* @sec_out_mcs_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sec_out_mcs_data(%struct.TYPE_8__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i64 @wcslen(i32* %10)
  %12 = trunc i64 %11 to i32
  %13 = mul nsw i32 2, %12
  store i32 %13, i32* %7, align 4
  store i32 250, i32* %8, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %21, 12
  %23 = add nsw i32 %22, 8
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %18, %3
  %27 = load i32, i32* %7, align 4
  %28 = icmp sgt i32 %27, 30
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 30, i32* %7, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @out_uint16_be(i32 %31, i32 5)
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @out_uint16_be(i32 %33, i32 20)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @out_uint8(i32 %35, i32 124)
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @out_uint16_be(i32 %37, i32 1)
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %40, 32768
  %42 = call i32 @out_uint16_be(i32 %39, i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @out_uint16_be(i32 %43, i32 8)
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @out_uint16_be(i32 %45, i32 16)
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @out_uint8(i32 %47, i32 0)
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @out_uint16_le(i32 %49, i32 49153)
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @out_uint8(i32 %51, i32 0)
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @out_uint32_le(i32 %53, i32 1633908036)
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %8, align 4
  %57 = sub nsw i32 %56, 14
  %58 = or i32 %57, 32768
  %59 = call i32 @out_uint16_be(i32 %55, i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @SEC_TAG_CLI_INFO, align 4
  %62 = call i32 @out_uint16_le(i32 %60, i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @out_uint16_le(i32 %63, i32 212)
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 12
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 4, i32 1
  %72 = call i32 @out_uint16_le(i32 %65, i32 %71)
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @out_uint16_le(i32 %73, i32 8)
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @out_uint16_le(i32 %75, i32 %78)
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @out_uint16_le(i32 %80, i32 %83)
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @out_uint16_le(i32 %85, i32 51713)
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @out_uint16_le(i32 %87, i32 43523)
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @out_uint32_le(i32 %89, i32 %92)
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @out_uint32_le(i32 %94, i32 2600)
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %97 = load i32, i32* %5, align 4
  %98 = load i32*, i32** %6, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @rdp_out_unistr(%struct.TYPE_8__* %96, i32 %97, i32* %98, i32 %99)
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %7, align 4
  %103 = sub nsw i32 30, %102
  %104 = call i32 @out_uint8s(i32 %101, i32 %103)
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @out_uint32_le(i32 %105, i32 %108)
  %110 = load i32, i32* %5, align 4
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @out_uint32_le(i32 %110, i32 %113)
  %115 = load i32, i32* %5, align 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @out_uint32_le(i32 %115, i32 %118)
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @out_uint8s(i32 %120, i32 64)
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @out_uint16_le(i32 %122, i32 51713)
  %124 = load i32, i32* %5, align 4
  %125 = call i32 @out_uint16_le(i32 %124, i32 1)
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @out_uint32(i32 %126, i32 0)
  %128 = load i32, i32* %5, align 4
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @out_uint8(i32 %128, i32 %131)
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @out_uint16_le(i32 %133, i32 1792)
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @out_uint8(i32 %135, i32 0)
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @out_uint32_le(i32 %137, i32 1)
  %139 = load i32, i32* %5, align 4
  %140 = call i32 @out_uint8s(i32 %139, i32 64)
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* @SEC_TAG_CLI_4, align 4
  %143 = call i32 @out_uint16_le(i32 %141, i32 %142)
  %144 = load i32, i32* %5, align 4
  %145 = call i32 @out_uint16_le(i32 %144, i32 12)
  %146 = load i32, i32* %5, align 4
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 11
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i32 11, i32 9
  %153 = call i32 @out_uint32_le(i32 %146, i32 %152)
  %154 = load i32, i32* %5, align 4
  %155 = call i32 @out_uint32(i32 %154, i32 0)
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* @SEC_TAG_CLI_CRYPT, align 4
  %158 = call i32 @out_uint16_le(i32 %156, i32 %157)
  %159 = load i32, i32* %5, align 4
  %160 = call i32 @out_uint16_le(i32 %159, i32 12)
  %161 = load i32, i32* %5, align 4
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 10
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i32 3, i32 0
  %168 = call i32 @out_uint32_le(i32 %161, i32 %167)
  %169 = load i32, i32* %5, align 4
  %170 = call i32 @out_uint32(i32 %169, i32 0)
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = inttoptr i64 %174 to i8*
  %176 = call i32 @DEBUG_RDP5(i8* %175)
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %239

181:                                              ; preds = %30
  %182 = load i32, i32* %5, align 4
  %183 = load i32, i32* @SEC_TAG_CLI_CHANNELS, align 4
  %184 = call i32 @out_uint16_le(i32 %182, i32 %183)
  %185 = load i32, i32* %5, align 4
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = mul nsw i32 %188, 12
  %190 = add nsw i32 %189, 8
  %191 = call i32 @out_uint16_le(i32 %185, i32 %190)
  %192 = load i32, i32* %5, align 4
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @out_uint32_le(i32 %192, i32 %195)
  store i32 0, i32* %9, align 4
  br label %197

197:                                              ; preds = %235, %181
  %198 = load i32, i32* %9, align 4
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = icmp ult i32 %198, %201
  br i1 %202, label %203, label %238

203:                                              ; preds = %197
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 9
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = load i32, i32* %9, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = sext i32 %211 to i64
  %213 = inttoptr i64 %212 to i8*
  %214 = call i32 @DEBUG_RDP5(i8* %213)
  %215 = load i32, i32* %5, align 4
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 8
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %217, align 8
  %219 = load i32, i32* %9, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @out_uint8a(i32 %215, i32 %223, i32 8)
  %225 = load i32, i32* %5, align 4
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 8
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %227, align 8
  %229 = load i32, i32* %9, align 4
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @out_uint32_be(i32 %225, i32 %233)
  br label %235

235:                                              ; preds = %203
  %236 = load i32, i32* %9, align 4
  %237 = add i32 %236, 1
  store i32 %237, i32* %9, align 4
  br label %197

238:                                              ; preds = %197
  br label %239

239:                                              ; preds = %238, %30
  %240 = load i32, i32* %5, align 4
  %241 = call i32 @s_mark_end(i32 %240)
  ret void
}

declare dso_local i64 @wcslen(i32*) #1

declare dso_local i32 @out_uint16_be(i32, i32) #1

declare dso_local i32 @out_uint8(i32, i32) #1

declare dso_local i32 @out_uint16_le(i32, i32) #1

declare dso_local i32 @out_uint32_le(i32, i32) #1

declare dso_local i32 @rdp_out_unistr(%struct.TYPE_8__*, i32, i32*, i32) #1

declare dso_local i32 @out_uint8s(i32, i32) #1

declare dso_local i32 @out_uint32(i32, i32) #1

declare dso_local i32 @DEBUG_RDP5(i8*) #1

declare dso_local i32 @out_uint8a(i32, i32, i32) #1

declare dso_local i32 @out_uint32_be(i32, i32) #1

declare dso_local i32 @s_mark_end(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
