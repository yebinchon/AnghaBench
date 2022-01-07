; ModuleID = '/home/carl/AnghaBench/vlc/modules/services_discovery/extr_avahi.c_resolve_callback.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/services_discovery/extr_avahi.c_resolve_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }

@AVAHI_RESOLVER_FAILURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"failed to resolve service '%s' of type '%s' in domain '%s'\00", align 1
@AVAHI_RESOLVER_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"service '%s' of type '%s' in domain '%s' port %i\00", align 1
@AVAHI_PROTO_INET6 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"[%s]\00", align 1
@NB_PROTOCOLS = common dso_local global i32 0, align 4
@protocols = common dso_local global %struct.TYPE_5__* null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"%s://%s:%d%s\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%s://%s:%d\00", align 1
@ITEM_NET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i64, i64, i8*, i8*, i8*, i8*, i32*, i32, i32*, i8*, i8*)* @resolve_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resolve_callback(i32* %0, i8* %1, i64 %2, i64 %3, i8* %4, i8* %5, i8* %6, i8* %7, i32* %8, i32 %9, i32* %10, i8* %11, i8* %12) #0 {
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.TYPE_4__*, align 8
  %28 = alloca [128 x i8], align 16
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i8*, align 8
  %37 = alloca i64, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i32*, align 8
  store i32* %0, i32** %14, align 8
  store i8* %1, i8** %15, align 8
  store i64 %2, i64* %16, align 8
  store i64 %3, i64* %17, align 8
  store i8* %4, i8** %18, align 8
  store i8* %5, i8** %19, align 8
  store i8* %6, i8** %20, align 8
  store i8* %7, i8** %21, align 8
  store i32* %8, i32** %22, align 8
  store i32 %9, i32* %23, align 4
  store i32* %10, i32** %24, align 8
  store i8* %11, i8** %25, align 8
  store i8* %12, i8** %26, align 8
  %41 = load i8*, i8** %26, align 8
  %42 = bitcast i8* %41 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %27, align 8
  %43 = load i8*, i8** %15, align 8
  %44 = call i32 @VLC_UNUSED(i8* %43)
  %45 = load i8*, i8** %21, align 8
  %46 = call i32 @VLC_UNUSED(i8* %45)
  %47 = load i8*, i8** %25, align 8
  %48 = call i32 @VLC_UNUSED(i8* %47)
  %49 = load i64, i64* %17, align 8
  %50 = load i64, i64* @AVAHI_RESOLVER_FAILURE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %13
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i8*, i8** %18, align 8
  %57 = load i8*, i8** %19, align 8
  %58 = load i8*, i8** %20, align 8
  %59 = call i32 @msg_Err(i64 %55, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %56, i8* %57, i8* %58)
  br label %251

60:                                               ; preds = %13
  %61 = load i64, i64* %17, align 8
  %62 = load i64, i64* @AVAHI_RESOLVER_FOUND, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %250

64:                                               ; preds = %60
  store i8* null, i8** %29, align 8
  store i8* null, i8** %30, align 8
  store i32* null, i32** %31, align 8
  store i32* null, i32** %32, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i8*, i8** %18, align 8
  %69 = load i8*, i8** %19, align 8
  %70 = load i8*, i8** %20, align 8
  %71 = load i32, i32* %23, align 4
  %72 = call i32 @msg_Info(i64 %67, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %68, i8* %69, i8* %70, i32 %71)
  %73 = getelementptr inbounds [128 x i8], [128 x i8]* %28, i64 0, i64 0
  %74 = load i32*, i32** %22, align 8
  %75 = call i32 @avahi_address_snprint(i8* %73, i32 127, i32* %74)
  %76 = load i64, i64* %16, align 8
  %77 = load i64, i64* @AVAHI_PROTO_INET6, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %64
  %80 = getelementptr inbounds [128 x i8], [128 x i8]* %28, i64 0, i64 0
  %81 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %80)
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32*, i32** %14, align 8
  %85 = call i32 @avahi_service_resolver_free(i32* %84)
  br label %254

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %86, %64
  store i8* null, i8** %33, align 8
  store i32 0, i32* %34, align 4
  store i32 0, i32* %35, align 4
  br label %88

88:                                               ; preds = %116, %87
  %89 = load i32, i32* %35, align 4
  %90 = load i32, i32* @NB_PROTOCOLS, align 4
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %92, label %119

92:                                               ; preds = %88
  %93 = load i8*, i8** %19, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** @protocols, align 8
  %95 = load i32, i32* %35, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @strcmp(i8* %93, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %115, label %102

102:                                              ; preds = %92
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** @protocols, align 8
  %104 = load i32, i32* %35, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  store i8* %108, i8** %33, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** @protocols, align 8
  %110 = load i32, i32* %35, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* %34, align 4
  br label %119

115:                                              ; preds = %92
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %35, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %35, align 4
  br label %88

119:                                              ; preds = %102, %88
  %120 = load i8*, i8** %33, align 8
  %121 = icmp eq i8* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load i8*, i8** %30, align 8
  %124 = call i32 @free(i8* %123)
  %125 = load i32*, i32** %14, align 8
  %126 = call i32 @avahi_service_resolver_free(i32* %125)
  br label %254

127:                                              ; preds = %119
  %128 = load i32*, i32** %24, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %153

130:                                              ; preds = %127
  %131 = load i32, i32* %34, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %153

133:                                              ; preds = %130
  %134 = load i8*, i8** %30, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = load i8*, i8** %30, align 8
  br label %140

138:                                              ; preds = %133
  %139 = getelementptr inbounds [128 x i8], [128 x i8]* %28, i64 0, i64 0
  br label %140

140:                                              ; preds = %138, %136
  %141 = phi i8* [ %137, %136 ], [ %139, %138 ]
  store i8* %141, i8** %36, align 8
  %142 = load i8*, i8** %33, align 8
  %143 = load i8*, i8** %18, align 8
  %144 = load i8*, i8** %36, align 8
  %145 = load i32, i32* %23, align 4
  %146 = load i32*, i32** %24, align 8
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %148 = call i32 @add_renderer(i8* %142, i8* %143, i8* %144, i32 %145, i32* %146, %struct.TYPE_4__* %147)
  %149 = load i8*, i8** %30, align 8
  %150 = call i32 @free(i8* %149)
  %151 = load i32*, i32** %14, align 8
  %152 = call i32 @avahi_service_resolver_free(i32* %151)
  br label %254

153:                                              ; preds = %130, %127
  %154 = load i32*, i32** %24, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i32*, i32** %24, align 8
  %158 = call i32* @avahi_string_list_find(i32* %157, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32* %158, i32** %31, align 8
  br label %159

159:                                              ; preds = %156, %153
  %160 = load i32*, i32** %31, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %202

162:                                              ; preds = %159
  store i8* null, i8** %38, align 8
  store i8* null, i8** %39, align 8
  %163 = load i32*, i32** %31, align 8
  %164 = call i64 @avahi_string_list_get_pair(i32* %163, i8** %38, i8** %39, i64* %37)
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %189

166:                                              ; preds = %162
  %167 = load i8*, i8** %39, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %189

169:                                              ; preds = %166
  %170 = load i8*, i8** %33, align 8
  %171 = load i8*, i8** %30, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = load i8*, i8** %30, align 8
  br label %177

175:                                              ; preds = %169
  %176 = getelementptr inbounds [128 x i8], [128 x i8]* %28, i64 0, i64 0
  br label %177

177:                                              ; preds = %175, %173
  %178 = phi i8* [ %174, %173 ], [ %176, %175 ]
  %179 = load i32, i32* %23, align 4
  %180 = load i8*, i8** %39, align 8
  %181 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %170, i8* %178, i32 %179, i8* %180)
  %182 = icmp eq i32 %181, -1
  br i1 %182, label %183, label %188

183:                                              ; preds = %177
  %184 = load i8*, i8** %30, align 8
  %185 = call i32 @free(i8* %184)
  %186 = load i32*, i32** %14, align 8
  %187 = call i32 @avahi_service_resolver_free(i32* %186)
  br label %254

188:                                              ; preds = %177
  br label %189

189:                                              ; preds = %188, %166, %162
  %190 = load i8*, i8** %38, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = load i8*, i8** %38, align 8
  %194 = call i32 @avahi_free(i8* %193)
  br label %195

195:                                              ; preds = %192, %189
  %196 = load i8*, i8** %39, align 8
  %197 = icmp ne i8* %196, null
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = load i8*, i8** %39, align 8
  %200 = call i32 @avahi_free(i8* %199)
  br label %201

201:                                              ; preds = %198, %195
  br label %221

202:                                              ; preds = %159
  %203 = load i8*, i8** %33, align 8
  %204 = load i8*, i8** %30, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %206, label %208

206:                                              ; preds = %202
  %207 = load i8*, i8** %30, align 8
  br label %210

208:                                              ; preds = %202
  %209 = getelementptr inbounds [128 x i8], [128 x i8]* %28, i64 0, i64 0
  br label %210

210:                                              ; preds = %208, %206
  %211 = phi i8* [ %207, %206 ], [ %209, %208 ]
  %212 = load i32, i32* %23, align 4
  %213 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %203, i8* %211, i32 %212)
  %214 = icmp eq i32 %213, -1
  br i1 %214, label %215, label %220

215:                                              ; preds = %210
  %216 = load i8*, i8** %30, align 8
  %217 = call i32 @free(i8* %216)
  %218 = load i32*, i32** %14, align 8
  %219 = call i32 @avahi_service_resolver_free(i32* %218)
  br label %254

220:                                              ; preds = %210
  br label %221

221:                                              ; preds = %220, %201
  %222 = load i8*, i8** %30, align 8
  %223 = call i32 @free(i8* %222)
  %224 = load i8*, i8** %29, align 8
  %225 = icmp ne i8* %224, null
  br i1 %225, label %226, label %233

226:                                              ; preds = %221
  %227 = load i8*, i8** %29, align 8
  %228 = load i8*, i8** %18, align 8
  %229 = load i32, i32* @ITEM_NET, align 4
  %230 = call i32* @input_item_NewDirectory(i8* %227, i8* %228, i32 %229)
  store i32* %230, i32** %32, align 8
  %231 = load i8*, i8** %29, align 8
  %232 = call i32 @free(i8* %231)
  br label %233

233:                                              ; preds = %226, %221
  %234 = load i32*, i32** %32, align 8
  %235 = icmp ne i32* %234, null
  br i1 %235, label %236, label %249

236:                                              ; preds = %233
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = inttoptr i64 %239 to i32*
  store i32* %240, i32** %40, align 8
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  %243 = load i8*, i8** %18, align 8
  %244 = load i32*, i32** %32, align 8
  %245 = call i32 @vlc_dictionary_insert(i32* %242, i8* %243, i32* %244)
  %246 = load i32*, i32** %40, align 8
  %247 = load i32*, i32** %32, align 8
  %248 = call i32 @services_discovery_AddItem(i32* %246, i32* %247)
  br label %249

249:                                              ; preds = %236, %233
  br label %250

250:                                              ; preds = %249, %60
  br label %251

251:                                              ; preds = %250, %52
  %252 = load i32*, i32** %14, align 8
  %253 = call i32 @avahi_service_resolver_free(i32* %252)
  br label %254

254:                                              ; preds = %251, %215, %183, %140, %122, %83
  ret void
}

declare dso_local i32 @VLC_UNUSED(i8*) #1

declare dso_local i32 @msg_Err(i64, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @msg_Info(i64, i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @avahi_address_snprint(i8*, i32, i32*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, ...) #1

declare dso_local i32 @avahi_service_resolver_free(i32*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @add_renderer(i8*, i8*, i8*, i32, i32*, %struct.TYPE_4__*) #1

declare dso_local i32* @avahi_string_list_find(i32*, i8*) #1

declare dso_local i64 @avahi_string_list_get_pair(i32*, i8**, i8**, i64*) #1

declare dso_local i32 @avahi_free(i8*) #1

declare dso_local i32* @input_item_NewDirectory(i8*, i8*, i32) #1

declare dso_local i32 @vlc_dictionary_insert(i32*, i8*, i32*) #1

declare dso_local i32 @services_discovery_AddItem(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
