; ModuleID = '/home/carl/AnghaBench/vlc/modules/keystore/extr_kwallet.c_values2key.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/keystore/extr_kwallet.c_values2key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_memstream = type { i8* }

@KEY_PROTOCOL = common dso_local global i64 0, align 8
@KEY_SERVER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s://\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"*://\00", align 1
@KEY_USER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%s@\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@KEY_PORT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c":%s\00", align 1
@KEY_PATH = common dso_local global i64 0, align 8
@KEY_REALM = common dso_local global i64 0, align 8
@KEY_AUTHTYPE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"realm=%s\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"authtype=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**, i32)* @values2key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @values2key(i8** %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vlc_memstream, align 8
  %10 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i8**, i8*** %4, align 8
  %12 = load i64, i64* @KEY_PROTOCOL, align 8
  %13 = getelementptr inbounds i8*, i8** %11, i64 %12
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i8**, i8*** %4, align 8
  %18 = load i64, i64* @KEY_SERVER, align 8
  %19 = getelementptr inbounds i8*, i8** %17, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16, %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store i8* null, i8** %3, align 8
  br label %253

26:                                               ; preds = %22, %16
  %27 = call i64 @vlc_memstream_open(%struct.vlc_memstream* %9)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i8* null, i8** %3, align 8
  br label %253

30:                                               ; preds = %26
  %31 = load i8**, i8*** %4, align 8
  %32 = load i64, i64* @KEY_PROTOCOL, align 8
  %33 = getelementptr inbounds i8*, i8** %31, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i8**, i8*** %4, align 8
  %38 = load i64, i64* @KEY_PROTOCOL, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (%struct.vlc_memstream*, i8*, ...) @vlc_memstream_printf(%struct.vlc_memstream* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %40)
  br label %48

42:                                               ; preds = %30
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 (%struct.vlc_memstream*, i8*, ...) @vlc_memstream_printf(%struct.vlc_memstream* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %42
  br label %48

48:                                               ; preds = %47, %36
  %49 = load i8**, i8*** %4, align 8
  %50 = load i64, i64* @KEY_USER, align 8
  %51 = getelementptr inbounds i8*, i8** %49, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load i8**, i8*** %4, align 8
  %56 = load i64, i64* @KEY_USER, align 8
  %57 = getelementptr inbounds i8*, i8** %55, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (%struct.vlc_memstream*, i8*, ...) @vlc_memstream_printf(%struct.vlc_memstream* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  br label %66

60:                                               ; preds = %48
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 (%struct.vlc_memstream*, i8*, ...) @vlc_memstream_printf(%struct.vlc_memstream* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %60
  br label %66

66:                                               ; preds = %65, %54
  %67 = load i8**, i8*** %4, align 8
  %68 = load i64, i64* @KEY_SERVER, align 8
  %69 = getelementptr inbounds i8*, i8** %67, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load i8**, i8*** %4, align 8
  %74 = load i64, i64* @KEY_SERVER, align 8
  %75 = getelementptr inbounds i8*, i8** %73, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (%struct.vlc_memstream*, i8*, ...) @vlc_memstream_printf(%struct.vlc_memstream* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %76)
  br label %84

78:                                               ; preds = %66
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = call i32 (%struct.vlc_memstream*, i8*, ...) @vlc_memstream_printf(%struct.vlc_memstream* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %78
  br label %84

84:                                               ; preds = %83, %72
  %85 = load i8**, i8*** %4, align 8
  %86 = load i64, i64* @KEY_PORT, align 8
  %87 = getelementptr inbounds i8*, i8** %85, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = load i8**, i8*** %4, align 8
  %92 = load i64, i64* @KEY_PORT, align 8
  %93 = getelementptr inbounds i8*, i8** %91, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (%struct.vlc_memstream*, i8*, ...) @vlc_memstream_printf(%struct.vlc_memstream* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %94)
  br label %102

96:                                               ; preds = %84
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = call i32 (%struct.vlc_memstream*, i8*, ...) @vlc_memstream_printf(%struct.vlc_memstream* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %96
  br label %102

102:                                              ; preds = %101, %90
  %103 = load i8**, i8*** %4, align 8
  %104 = load i64, i64* @KEY_PATH, align 8
  %105 = getelementptr inbounds i8*, i8** %103, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %125

108:                                              ; preds = %102
  %109 = load i8**, i8*** %4, align 8
  %110 = load i64, i64* @KEY_PATH, align 8
  %111 = getelementptr inbounds i8*, i8** %109, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 47
  br i1 %116, label %117, label %119

117:                                              ; preds = %108
  %118 = call i32 @vlc_memstream_putc(%struct.vlc_memstream* %9, i8 signext 47)
  br label %119

119:                                              ; preds = %117, %108
  %120 = load i8**, i8*** %4, align 8
  %121 = load i64, i64* @KEY_PATH, align 8
  %122 = getelementptr inbounds i8*, i8** %120, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @vlc_memstream_puts(%struct.vlc_memstream* %9, i8* %123)
  br label %131

125:                                              ; preds = %102
  %126 = load i32, i32* %5, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = call i32 (%struct.vlc_memstream*, i8*, ...) @vlc_memstream_printf(%struct.vlc_memstream* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %125
  br label %131

131:                                              ; preds = %130, %119
  %132 = load i8**, i8*** %4, align 8
  %133 = load i64, i64* @KEY_REALM, align 8
  %134 = getelementptr inbounds i8*, i8** %132, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %146, label %137

137:                                              ; preds = %131
  %138 = load i8**, i8*** %4, align 8
  %139 = load i64, i64* @KEY_AUTHTYPE, align 8
  %140 = getelementptr inbounds i8*, i8** %138, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %137
  %144 = load i32, i32* %5, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %228

146:                                              ; preds = %143, %137, %131
  %147 = call i32 (%struct.vlc_memstream*, i8*, ...) @vlc_memstream_printf(%struct.vlc_memstream* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %148 = load i8**, i8*** %4, align 8
  %149 = load i64, i64* @KEY_REALM, align 8
  %150 = getelementptr inbounds i8*, i8** %148, i64 %149
  %151 = load i8*, i8** %150, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %146
  %154 = load i32, i32* %5, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %191

156:                                              ; preds = %153, %146
  %157 = load i8**, i8*** %4, align 8
  %158 = load i64, i64* @KEY_REALM, align 8
  %159 = getelementptr inbounds i8*, i8** %157, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %180

162:                                              ; preds = %156
  %163 = load i8**, i8*** %4, align 8
  %164 = load i64, i64* @KEY_REALM, align 8
  %165 = getelementptr inbounds i8*, i8** %163, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = bitcast i8* %166 to i32*
  %168 = load i8**, i8*** %4, align 8
  %169 = load i64, i64* @KEY_REALM, align 8
  %170 = getelementptr inbounds i8*, i8** %168, i64 %169
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @strlen(i8* %171)
  %173 = call i8* @vlc_b64_encode_binary(i32* %167, i32 %172)
  store i8* %173, i8** %6, align 8
  %174 = load i8*, i8** %6, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %177, label %176

176:                                              ; preds = %162
  br label %229

177:                                              ; preds = %162
  %178 = load i8*, i8** %6, align 8
  %179 = call i32 (%struct.vlc_memstream*, i8*, ...) @vlc_memstream_printf(%struct.vlc_memstream* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %178)
  br label %182

180:                                              ; preds = %156
  %181 = call i32 (%struct.vlc_memstream*, i8*, ...) @vlc_memstream_printf(%struct.vlc_memstream* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %182

182:                                              ; preds = %180, %177
  %183 = load i8**, i8*** %4, align 8
  %184 = load i64, i64* @KEY_AUTHTYPE, align 8
  %185 = getelementptr inbounds i8*, i8** %183, i64 %184
  %186 = load i8*, i8** %185, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %188, label %190

188:                                              ; preds = %182
  %189 = call i32 (%struct.vlc_memstream*, i8*, ...) @vlc_memstream_printf(%struct.vlc_memstream* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %190

190:                                              ; preds = %188, %182
  br label %191

191:                                              ; preds = %190, %153
  %192 = load i8**, i8*** %4, align 8
  %193 = load i64, i64* @KEY_AUTHTYPE, align 8
  %194 = getelementptr inbounds i8*, i8** %192, i64 %193
  %195 = load i8*, i8** %194, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %200, label %197

197:                                              ; preds = %191
  %198 = load i32, i32* %5, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %227

200:                                              ; preds = %197, %191
  %201 = load i8**, i8*** %4, align 8
  %202 = load i64, i64* @KEY_AUTHTYPE, align 8
  %203 = getelementptr inbounds i8*, i8** %201, i64 %202
  %204 = load i8*, i8** %203, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %206, label %224

206:                                              ; preds = %200
  %207 = load i8**, i8*** %4, align 8
  %208 = load i64, i64* @KEY_AUTHTYPE, align 8
  %209 = getelementptr inbounds i8*, i8** %207, i64 %208
  %210 = load i8*, i8** %209, align 8
  %211 = bitcast i8* %210 to i32*
  %212 = load i8**, i8*** %4, align 8
  %213 = load i64, i64* @KEY_AUTHTYPE, align 8
  %214 = getelementptr inbounds i8*, i8** %212, i64 %213
  %215 = load i8*, i8** %214, align 8
  %216 = call i32 @strlen(i8* %215)
  %217 = call i8* @vlc_b64_encode_binary(i32* %211, i32 %216)
  store i8* %217, i8** %7, align 8
  %218 = load i8*, i8** %7, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %221, label %220

220:                                              ; preds = %206
  br label %229

221:                                              ; preds = %206
  %222 = load i8*, i8** %7, align 8
  %223 = call i32 (%struct.vlc_memstream*, i8*, ...) @vlc_memstream_printf(%struct.vlc_memstream* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* %222)
  br label %226

224:                                              ; preds = %200
  %225 = call i32 (%struct.vlc_memstream*, i8*, ...) @vlc_memstream_printf(%struct.vlc_memstream* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %226

226:                                              ; preds = %224, %221
  br label %227

227:                                              ; preds = %226, %197
  br label %228

228:                                              ; preds = %227, %143
  store i32 1, i32* %8, align 4
  br label %229

229:                                              ; preds = %228, %220, %176
  %230 = load i8*, i8** %6, align 8
  %231 = call i32 @free(i8* %230)
  %232 = load i8*, i8** %7, align 8
  %233 = call i32 @free(i8* %232)
  %234 = call i64 @vlc_memstream_flush(%struct.vlc_memstream* %9)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %229
  store i32 0, i32* %8, align 4
  br label %237

237:                                              ; preds = %236, %229
  %238 = call i64 @vlc_memstream_close(%struct.vlc_memstream* %9)
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %9, i32 0, i32 0
  %242 = load i8*, i8** %241, align 8
  br label %244

243:                                              ; preds = %237
  br label %244

244:                                              ; preds = %243, %240
  %245 = phi i8* [ %242, %240 ], [ null, %243 ]
  store i8* %245, i8** %10, align 8
  %246 = load i32, i32* %8, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %251, label %248

248:                                              ; preds = %244
  %249 = load i8*, i8** %10, align 8
  %250 = call i32 @free(i8* %249)
  store i8* null, i8** %10, align 8
  br label %251

251:                                              ; preds = %248, %244
  %252 = load i8*, i8** %10, align 8
  store i8* %252, i8** %3, align 8
  br label %253

253:                                              ; preds = %251, %29, %25
  %254 = load i8*, i8** %3, align 8
  ret i8* %254
}

declare dso_local i64 @vlc_memstream_open(%struct.vlc_memstream*) #1

declare dso_local i32 @vlc_memstream_printf(%struct.vlc_memstream*, i8*, ...) #1

declare dso_local i32 @vlc_memstream_putc(%struct.vlc_memstream*, i8 signext) #1

declare dso_local i32 @vlc_memstream_puts(%struct.vlc_memstream*, i8*) #1

declare dso_local i8* @vlc_b64_encode_binary(i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @vlc_memstream_flush(%struct.vlc_memstream*) #1

declare dso_local i64 @vlc_memstream_close(%struct.vlc_memstream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
