; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_access.c_access_New.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_access.c_access_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i8*, i8*, i32, i8*, i32*, i32*, i32* }
%struct.vlc_access_private = type { i32* }

@MAX_REDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"attachment://\00", align 1
@vlc_access_Destroy = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"access\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"creating access: %s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"://\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" (path: %s)\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"redirecting to: %s\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"redirection loop\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"too many redirections\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i32*, i32*, i32*, i32, i8*)* @access_New to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @access_New(i32* %0, i32* %1, i32* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.vlc_access_private*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %21 = load i32, i32* @MAX_REDIR, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %13, align 8
  %24 = alloca i8*, i64 %22, align 16
  store i64 %22, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %25 = load i8*, i8** %11, align 8
  %26 = call i64 @strncmp(i8* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 13)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %5
  %29 = load i32*, i32** %7, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = call %struct.TYPE_10__* @accessNewAttachment(i32* %29, i32* %30, i8* %31)
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %6, align 8
  store i32 1, i32* %16, align 4
  br label %243

33:                                               ; preds = %5
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* @vlc_access_Destroy, align 4
  %36 = call %struct.TYPE_10__* @vlc_stream_CustomNew(i32* %34, i32 %35, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %17, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %38 = icmp eq %struct.TYPE_10__* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  store i32 1, i32* %16, align 4
  br label %243

43:                                               ; preds = %33
  %44 = load i32*, i32** %8, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32*, i32** %8, align 8
  %48 = call i32* @input_GetItem(i32* %47)
  br label %50

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49, %46
  %51 = phi i32* [ %48, %46 ], [ null, %49 ]
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 7
  store i32* %51, i32** %53, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 6
  store i32* %54, i32** %56, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  store i8* null, i8** %58, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = call i8* @strdup(i8* %59)
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  store i8* null, i8** %64, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %69 = call %struct.vlc_access_private* @vlc_stream_Private(%struct.TYPE_10__* %68)
  store %struct.vlc_access_private* %69, %struct.vlc_access_private** %12, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = icmp eq i8* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %50
  br label %221

78:                                               ; preds = %50
  br label %79

79:                                               ; preds = %205, %78
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @MAX_REDIR, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %218

83:                                               ; preds = %79
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %18, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %88 = load i8*, i8** %18, align 8
  %89 = call i32 @msg_Dbg(%struct.TYPE_10__* %87, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %88)
  %90 = load i8*, i8** %18, align 8
  %91 = call i8* @strstr(i8* %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i8* %91, i8** %19, align 8
  %92 = load i8*, i8** %19, align 8
  %93 = icmp eq i8* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  br label %221

95:                                               ; preds = %83
  %96 = load i8*, i8** %18, align 8
  %97 = load i8*, i8** %19, align 8
  %98 = load i8*, i8** %18, align 8
  %99 = ptrtoint i8* %97 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = trunc i64 %101 to i32
  %103 = call i8* @strndup(i8* %96, i32 %102)
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  store i8* %103, i8** %105, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = icmp eq i8* %108, null
  %110 = zext i1 %109 to i32
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %95
  br label %221

114:                                              ; preds = %95
  %115 = load i8*, i8** %19, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 3
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 4
  store i8* %116, i8** %118, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 4
  %121 = load i8*, i8** %120, align 8
  %122 = call i8* @get_path(i8* %121)
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 2
  store i8* %122, i8** %124, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %135

129:                                              ; preds = %114
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 2
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @msg_Dbg(%struct.TYPE_10__* %130, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %133)
  br label %135

135:                                              ; preds = %129, %114
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = call i32* @module_need(%struct.TYPE_10__* %136, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %139, i32 1)
  %141 = load %struct.vlc_access_private*, %struct.vlc_access_private** %12, align 8
  %142 = getelementptr inbounds %struct.vlc_access_private, %struct.vlc_access_private* %141, i32 0, i32 0
  store i32* %140, i32** %142, align 8
  %143 = load %struct.vlc_access_private*, %struct.vlc_access_private** %12, align 8
  %144 = getelementptr inbounds %struct.vlc_access_private, %struct.vlc_access_private* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %166

147:                                              ; preds = %135
  br label %148

148:                                              ; preds = %151, %147
  %149 = load i32, i32* %15, align 4
  %150 = icmp ugt i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %148
  %152 = load i32, i32* %15, align 4
  %153 = add i32 %152, -1
  store i32 %153, i32* %15, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i8*, i8** %24, i64 %154
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @free(i8* %156)
  br label %148

158:                                              ; preds = %148
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 5
  %161 = load i32*, i32** %160, align 8
  %162 = icmp ne i32* %161, null
  %163 = zext i1 %162 to i32
  %164 = call i32 @assert(i32 %163)
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %165, %struct.TYPE_10__** %6, align 8
  store i32 1, i32* %16, align 4
  br label %243

166:                                              ; preds = %135
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  %170 = load i8*, i8** %18, align 8
  %171 = icmp eq i8* %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %166
  br label %221

173:                                              ; preds = %166
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @msg_Dbg(%struct.TYPE_10__* %174, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %177)
  %179 = load i8*, i8** %18, align 8
  %180 = load i32, i32* %15, align 4
  %181 = add i32 %180, 1
  store i32 %181, i32* %15, align 4
  %182 = zext i32 %180 to i64
  %183 = getelementptr inbounds i8*, i8** %24, i64 %182
  store i8* %179, i8** %183, align 8
  store i32 0, i32* %20, align 4
  br label %184

184:                                              ; preds = %202, %173
  %185 = load i32, i32* %20, align 4
  %186 = load i32, i32* %15, align 4
  %187 = icmp ult i32 %185, %186
  br i1 %187, label %188, label %205

188:                                              ; preds = %184
  %189 = load i32, i32* %20, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds i8*, i8** %24, i64 %190
  %192 = load i8*, i8** %191, align 8
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 1
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 @strcmp(i8* %192, i8* %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %188
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %200 = call i32 @msg_Err(%struct.TYPE_10__* %199, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %221

201:                                              ; preds = %188
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %20, align 4
  %204 = add i32 %203, 1
  store i32 %204, i32* %20, align 4
  br label %184

205:                                              ; preds = %184
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 2
  %208 = load i8*, i8** %207, align 8
  %209 = call i32 @free(i8* %208)
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 @free(i8* %212)
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  store i8* null, i8** %215, align 8
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 2
  store i8* null, i8** %217, align 8
  br label %79

218:                                              ; preds = %79
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %220 = call i32 @msg_Err(%struct.TYPE_10__* %219, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %221

221:                                              ; preds = %218, %198, %172, %113, %94, %77
  br label %222

222:                                              ; preds = %225, %221
  %223 = load i32, i32* %15, align 4
  %224 = icmp ugt i32 %223, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %222
  %226 = load i32, i32* %15, align 4
  %227 = add i32 %226, -1
  store i32 %227, i32* %15, align 4
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds i8*, i8** %24, i64 %228
  %230 = load i8*, i8** %229, align 8
  %231 = call i32 @free(i8* %230)
  br label %222

232:                                              ; preds = %222
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 2
  %235 = load i8*, i8** %234, align 8
  %236 = call i32 @free(i8* %235)
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = call i32 @free(i8* %239)
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %242 = call i32 @stream_CommonDelete(%struct.TYPE_10__* %241)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  store i32 1, i32* %16, align 4
  br label %243

243:                                              ; preds = %232, %158, %42, %28
  %244 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %244)
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  ret %struct.TYPE_10__* %245
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local %struct.TYPE_10__* @accessNewAttachment(i32*, i32*, i8*) #2

declare dso_local %struct.TYPE_10__* @vlc_stream_CustomNew(i32*, i32, i32, i8*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32* @input_GetItem(i32*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local %struct.vlc_access_private* @vlc_stream_Private(%struct.TYPE_10__*) #2

declare dso_local i32 @msg_Dbg(%struct.TYPE_10__*, i8*, i8*) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i8* @strndup(i8*, i32) #2

declare dso_local i8* @get_path(i8*) #2

declare dso_local i32* @module_need(%struct.TYPE_10__*, i8*, i8*, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @msg_Err(%struct.TYPE_10__*, i8*) #2

declare dso_local i32 @stream_CommonDelete(%struct.TYPE_10__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
