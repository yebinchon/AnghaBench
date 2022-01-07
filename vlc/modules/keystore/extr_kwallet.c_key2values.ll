; ModuleID = '/home/carl/AnghaBench/vlc/modules/keystore/extr_kwallet.c_key2values.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/keystore/extr_kwallet.c_key2values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32** }
%struct.TYPE_6__ = type { i32*, i64, i64, i64, i64, i64 }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@KEY_MAX = common dso_local global i32 0, align 4
@KEY_PROTOCOL = common dso_local global i64 0, align 8
@KEY_USER = common dso_local global i64 0, align 8
@KEY_SERVER = common dso_local global i64 0, align 8
@KEY_PORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@KEY_PATH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"realm=\00", align 1
@KEY_REALM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"authtype=\00", align 1
@KEY_AUTHTYPE = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_7__*)* @key2values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key2values(i8* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %12 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %24, %2
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @KEY_MAX, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32**, i32*** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  br label %13

27:                                               ; preds = %13
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @vlc_UrlParse(%struct.TYPE_6__* %5, i8* %28)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = call i8* @strdup(i64 %35)
  %37 = bitcast i8* %36 to i32*
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32**, i32*** %39, align 8
  %41 = load i64, i64* @KEY_PROTOCOL, align 8
  %42 = getelementptr inbounds i32*, i32** %40, i64 %41
  store i32* %37, i32** %42, align 8
  %43 = icmp ne i32* %37, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %33
  br label %173

45:                                               ; preds = %33, %27
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = call i8* @strdup(i64 %51)
  %53 = bitcast i8* %52 to i32*
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32**, i32*** %55, align 8
  %57 = load i64, i64* @KEY_USER, align 8
  %58 = getelementptr inbounds i32*, i32** %56, i64 %57
  store i32* %53, i32** %58, align 8
  %59 = icmp ne i32* %53, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %49
  br label %173

61:                                               ; preds = %49, %45
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = call i8* @strdup(i64 %67)
  %69 = bitcast i8* %68 to i32*
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32**, i32*** %71, align 8
  %73 = load i64, i64* @KEY_SERVER, align 8
  %74 = getelementptr inbounds i32*, i32** %72, i64 %73
  store i32* %69, i32** %74, align 8
  %75 = icmp ne i32* %69, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %65
  br label %173

77:                                               ; preds = %65, %61
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %77
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32**, i32*** %83, align 8
  %85 = load i64, i64* @KEY_PORT, align 8
  %86 = getelementptr inbounds i32*, i32** %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @asprintf(i32** %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %88)
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %173

92:                                               ; preds = %81, %77
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i8* @strdup(i64 %98)
  %100 = bitcast i8* %99 to i32*
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32**, i32*** %102, align 8
  %104 = load i64, i64* @KEY_PATH, align 8
  %105 = getelementptr inbounds i32*, i32** %103, i64 %104
  store i32* %100, i32** %105, align 8
  %106 = icmp ne i32* %100, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %96
  br label %173

108:                                              ; preds = %96, %92
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %171

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = call i8* @strtok_r(i32* %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %8)
  store i8* %115, i8** %9, align 8
  br label %116

116:                                              ; preds = %168, %112
  %117 = load i8*, i8** %9, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %170

119:                                              ; preds = %116
  %120 = load i8*, i8** %9, align 8
  %121 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %122 = call i32 @strncmp(i8* %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %131, label %124

124:                                              ; preds = %119
  %125 = load i64, i64* @KEY_REALM, align 8
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %10, align 4
  %127 = load i8*, i8** %9, align 8
  %128 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  store i8* %130, i8** %11, align 8
  br label %145

131:                                              ; preds = %119
  %132 = load i8*, i8** %9, align 8
  %133 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %134 = call i32 @strncmp(i8* %132, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %143, label %136

136:                                              ; preds = %131
  %137 = load i64, i64* @KEY_AUTHTYPE, align 8
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %10, align 4
  %139 = load i8*, i8** %9, align 8
  %140 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  store i8* %142, i8** %11, align 8
  br label %144

143:                                              ; preds = %131
  store i8* null, i8** %11, align 8
  br label %144

144:                                              ; preds = %143, %136
  br label %145

145:                                              ; preds = %144, %124
  %146 = load i8*, i8** %11, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %167

148:                                              ; preds = %145
  %149 = load i8*, i8** %11, align 8
  %150 = call i32* @vlc_b64_decode(i8* %149)
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32**, i32*** %152, align 8
  %154 = load i32, i32* %10, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i32*, i32** %153, i64 %155
  store i32* %150, i32** %156, align 8
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i32**, i32*** %158, align 8
  %160 = load i32, i32* %10, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i32*, i32** %159, i64 %161
  %163 = load i32*, i32** %162, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %166, label %165

165:                                              ; preds = %148
  br label %173

166:                                              ; preds = %148
  br label %167

167:                                              ; preds = %166, %145
  br label %168

168:                                              ; preds = %167
  %169 = call i8* @strtok_r(i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %8)
  store i8* %169, i8** %9, align 8
  br label %116

170:                                              ; preds = %116
  br label %171

171:                                              ; preds = %170, %108
  %172 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %172, i32* %6, align 4
  br label %173

173:                                              ; preds = %171, %165, %107, %91, %76, %60, %44
  %174 = call i32 @vlc_UrlClean(%struct.TYPE_6__* %5)
  %175 = load i32, i32* %6, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %227

177:                                              ; preds = %173
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = load i32**, i32*** %179, align 8
  %181 = load i64, i64* @KEY_PROTOCOL, align 8
  %182 = getelementptr inbounds i32*, i32** %180, i64 %181
  %183 = load i32*, i32** %182, align 8
  %184 = call i32 @free(i32* %183)
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  %187 = load i32**, i32*** %186, align 8
  %188 = load i64, i64* @KEY_USER, align 8
  %189 = getelementptr inbounds i32*, i32** %187, i64 %188
  %190 = load i32*, i32** %189, align 8
  %191 = call i32 @free(i32* %190)
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = load i32**, i32*** %193, align 8
  %195 = load i64, i64* @KEY_SERVER, align 8
  %196 = getelementptr inbounds i32*, i32** %194, i64 %195
  %197 = load i32*, i32** %196, align 8
  %198 = call i32 @free(i32* %197)
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 0
  %201 = load i32**, i32*** %200, align 8
  %202 = load i64, i64* @KEY_PORT, align 8
  %203 = getelementptr inbounds i32*, i32** %201, i64 %202
  %204 = load i32*, i32** %203, align 8
  %205 = call i32 @free(i32* %204)
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  %208 = load i32**, i32*** %207, align 8
  %209 = load i64, i64* @KEY_PATH, align 8
  %210 = getelementptr inbounds i32*, i32** %208, i64 %209
  %211 = load i32*, i32** %210, align 8
  %212 = call i32 @free(i32* %211)
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 0
  %215 = load i32**, i32*** %214, align 8
  %216 = load i64, i64* @KEY_REALM, align 8
  %217 = getelementptr inbounds i32*, i32** %215, i64 %216
  %218 = load i32*, i32** %217, align 8
  %219 = call i32 @free(i32* %218)
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 0
  %222 = load i32**, i32*** %221, align 8
  %223 = load i64, i64* @KEY_AUTHTYPE, align 8
  %224 = getelementptr inbounds i32*, i32** %222, i64 %223
  %225 = load i32*, i32** %224, align 8
  %226 = call i32 @free(i32* %225)
  br label %227

227:                                              ; preds = %177, %173
  %228 = load i32, i32* %6, align 4
  ret i32 %228
}

declare dso_local i32 @vlc_UrlParse(%struct.TYPE_6__*, i8*) #1

declare dso_local i8* @strdup(i64) #1

declare dso_local i32 @asprintf(i32**, i8*, i64) #1

declare dso_local i8* @strtok_r(i32*, i8*, i8**) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @vlc_b64_decode(i8*) #1

declare dso_local i32 @vlc_UrlClean(%struct.TYPE_6__*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
