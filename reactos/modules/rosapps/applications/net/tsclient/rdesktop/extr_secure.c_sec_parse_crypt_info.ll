; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_secure.c_sec_parse_crypt_info.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_secure.c_sec_parse_crypt_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32*, i32* }

@False = common dso_local global i32 0, align 4
@SEC_RANDOM_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"random len %d, expected %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"We're going for the RDP4-style encryption\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Got Public key, RDP4-style\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"crypt tag 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"We're going for the RDP5-style encryption\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Server didn't send enough X509 certificates\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Ignored certs left: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Ignored Certificate length is %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [75 x i8] c"got a bad cert: this will probably screw up the rest of the communication\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"CA Certificate length is %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"Couldn't load CA Certificate from server\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Certificate length is %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"Couldn't load Certificate from server\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Didn't parse X509 correctly\0A\00", align 1
@True = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_13__*, i64*, i32**, i32**, i32**)* @sec_parse_crypt_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_parse_crypt_info(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i64* %2, i32** %3, i32** %4, i32** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %9, align 8
  store i64* %2, i64** %10, align 8
  store i32** %3, i32*** %11, align 8
  store i32** %4, i32*** %12, align 8
  store i32** %5, i32*** %13, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %30 = load i64*, i64** %10, align 8
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @in_uint32_le(%struct.TYPE_13__* %29, i64 %31)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %34 = load i64, i64* %14, align 8
  %35 = call i32 @in_uint32_le(%struct.TYPE_13__* %33, i64 %34)
  %36 = load i64, i64* %14, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %6
  %39 = load i32, i32* @False, align 4
  store i32 %39, i32* %7, align 4
  br label %221

40:                                               ; preds = %6
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %42 = load i64, i64* %15, align 8
  %43 = call i32 @in_uint32_le(%struct.TYPE_13__* %41, i64 %42)
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %45 = load i64, i64* %16, align 8
  %46 = call i32 @in_uint32_le(%struct.TYPE_13__* %44, i64 %45)
  %47 = load i64, i64* %15, align 8
  %48 = load i64, i64* @SEC_RANDOM_SIZE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %40
  %51 = load i64, i64* %15, align 8
  %52 = load i64, i64* @SEC_RANDOM_SIZE, align 8
  %53 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %51, i64 %52)
  %54 = load i32, i32* @False, align 4
  store i32 %54, i32* %7, align 4
  br label %221

55:                                               ; preds = %40
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %57 = load i32**, i32*** %11, align 8
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %15, align 8
  %60 = call i32 @in_uint8p(%struct.TYPE_13__* %56, i32* %58, i64 %59)
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %16, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32* %65, i32** %25, align 8
  %66 = load i32*, i32** %25, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ugt i32* %66, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %55
  %72 = load i32, i32* @False, align 4
  store i32 %72, i32* %7, align 4
  br label %221

73:                                               ; preds = %55
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %75 = load i64, i64* %19, align 8
  %76 = call i32 @in_uint32_le(%struct.TYPE_13__* %74, i64 %75)
  %77 = load i64, i64* %19, align 8
  %78 = and i64 %77, 1
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %124

80:                                               ; preds = %73
  %81 = call i32 @DEBUG_RDP5(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %83 = call i32 @in_uint8s(%struct.TYPE_13__* %82, i32 8)
  br label %84

84:                                               ; preds = %119, %80
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32*, i32** %25, align 8
  %89 = icmp ult i32* %87, %88
  br i1 %89, label %90, label %123

90:                                               ; preds = %84
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %92 = load i32, i32* %22, align 4
  %93 = call i32 @in_uint16_le(%struct.TYPE_13__* %91, i32 %92)
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %95 = load i32, i32* %23, align 4
  %96 = call i32 @in_uint16_le(%struct.TYPE_13__* %94, i32 %95)
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %23, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32* %102, i32** %24, align 8
  %103 = load i32, i32* %22, align 4
  switch i32 %103, label %116 [
    i32 128, label %104
    i32 129, label %115
  ]

104:                                              ; preds = %90
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %107 = load i32**, i32*** %12, align 8
  %108 = load i32**, i32*** %13, align 8
  %109 = call i32 @sec_parse_public_key(%struct.TYPE_14__* %105, %struct.TYPE_13__* %106, i32** %107, i32** %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %104
  %112 = load i32, i32* @False, align 4
  store i32 %112, i32* %7, align 4
  br label %221

113:                                              ; preds = %104
  %114 = call i32 @DEBUG_RDP5(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %119

115:                                              ; preds = %90
  br label %119

116:                                              ; preds = %90
  %117 = load i32, i32* %22, align 4
  %118 = call i32 @unimpl(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %116, %115, %113
  %120 = load i32*, i32** %24, align 8
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  store i32* %120, i32** %122, align 8
  br label %84

123:                                              ; preds = %84
  br label %218

124:                                              ; preds = %73
  %125 = call i32 @DEBUG_RDP5(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %127 = load i64, i64* %26, align 8
  %128 = call i32 @in_uint32_le(%struct.TYPE_13__* %126, i64 %127)
  %129 = load i64, i64* %26, align 8
  %130 = icmp slt i64 %129, 2
  br i1 %130, label %131, label %136

131:                                              ; preds = %124
  %132 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  store i32 1798, i32* %134, align 4
  %135 = load i32, i32* @False, align 4
  store i32 %135, i32* %7, align 4
  br label %221

136:                                              ; preds = %124
  br label %137

137:                                              ; preds = %159, %136
  %138 = load i64, i64* %26, align 8
  %139 = icmp sgt i64 %138, 2
  br i1 %139, label %140, label %162

140:                                              ; preds = %137
  %141 = load i64, i64* %26, align 8
  %142 = inttoptr i64 %141 to i8*
  %143 = call i32 @DEBUG_RDP5(i8* %142)
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %145 = load i64, i64* %27, align 8
  %146 = call i32 @in_uint32_le(%struct.TYPE_13__* %144, i64 %145)
  %147 = load i64, i64* %27, align 8
  %148 = inttoptr i64 %147 to i8*
  %149 = call i32 @DEBUG_RDP5(i8* %148)
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load i64, i64* %27, align 8
  %153 = call i32* @d2i_X509(i32* null, i32** %151, i64 %152)
  store i32* %153, i32** %28, align 8
  %154 = load i32*, i32** %28, align 8
  %155 = icmp eq i32* %154, null
  br i1 %155, label %156, label %158

156:                                              ; preds = %140
  %157 = call i32 @DEBUG_RDP5(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.8, i64 0, i64 0))
  br label %158

158:                                              ; preds = %156, %140
  br label %159

159:                                              ; preds = %158
  %160 = load i64, i64* %26, align 8
  %161 = add nsw i64 %160, -1
  store i64 %161, i64* %26, align 8
  br label %137

162:                                              ; preds = %137
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %164 = load i64, i64* %17, align 8
  %165 = call i32 @in_uint32_le(%struct.TYPE_13__* %163, i64 %164)
  %166 = load i64, i64* %17, align 8
  %167 = inttoptr i64 %166 to i8*
  %168 = call i32 @DEBUG_RDP5(i8* %167)
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = load i64, i64* %17, align 8
  %172 = call i32* @d2i_X509(i32* null, i32** %170, i64 %171)
  store i32* %172, i32** %20, align 8
  %173 = load i32*, i32** %20, align 8
  %174 = icmp eq i32* null, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %162
  %176 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0))
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 0
  store i32 1798, i32* %178, align 4
  %179 = load i32, i32* @False, align 4
  store i32 %179, i32* %7, align 4
  br label %221

180:                                              ; preds = %162
  %181 = load i32*, i32** %20, align 8
  %182 = call i32 @X509_free(i32* %181)
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %184 = load i64, i64* %18, align 8
  %185 = call i32 @in_uint32_le(%struct.TYPE_13__* %183, i64 %184)
  %186 = load i64, i64* %18, align 8
  %187 = inttoptr i64 %186 to i8*
  %188 = call i32 @DEBUG_RDP5(i8* %187)
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  %191 = load i64, i64* %18, align 8
  %192 = call i32* @d2i_X509(i32* null, i32** %190, i64 %191)
  store i32* %192, i32** %21, align 8
  %193 = load i32*, i32** %21, align 8
  %194 = icmp eq i32* null, %193
  br i1 %194, label %195, label %200

195:                                              ; preds = %180
  %196 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0))
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 0
  store i32 1798, i32* %198, align 4
  %199 = load i32, i32* @False, align 4
  store i32 %199, i32* %7, align 4
  br label %221

200:                                              ; preds = %180
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %202 = call i32 @in_uint8s(%struct.TYPE_13__* %201, i32 16)
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %204 = load i32*, i32** %21, align 8
  %205 = call i32 @sec_parse_x509_key(%struct.TYPE_14__* %203, i32* %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %214, label %207

207:                                              ; preds = %200
  %208 = call i32 @DEBUG_RDP5(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  %209 = load i32*, i32** %21, align 8
  %210 = call i32 @X509_free(i32* %209)
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 0
  store i32 1798, i32* %212, align 4
  %213 = load i32, i32* @False, align 4
  store i32 %213, i32* %7, align 4
  br label %221

214:                                              ; preds = %200
  %215 = load i32*, i32** %21, align 8
  %216 = call i32 @X509_free(i32* %215)
  %217 = load i32, i32* @True, align 4
  store i32 %217, i32* %7, align 4
  br label %221

218:                                              ; preds = %123
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %220 = call i32 @s_check_end(%struct.TYPE_13__* %219)
  store i32 %220, i32* %7, align 4
  br label %221

221:                                              ; preds = %218, %214, %207, %195, %175, %131, %111, %71, %50, %38
  %222 = load i32, i32* %7, align 4
  ret i32 %222
}

declare dso_local i32 @in_uint32_le(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @in_uint8p(%struct.TYPE_13__*, i32*, i64) #1

declare dso_local i32 @DEBUG_RDP5(i8*) #1

declare dso_local i32 @in_uint8s(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @in_uint16_le(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @sec_parse_public_key(%struct.TYPE_14__*, %struct.TYPE_13__*, i32**, i32**) #1

declare dso_local i32 @unimpl(i8*, i32) #1

declare dso_local i32* @d2i_X509(i32*, i32**, i64) #1

declare dso_local i32 @X509_free(i32*) #1

declare dso_local i32 @sec_parse_x509_key(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @s_check_end(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
