; ModuleID = '/home/carl/AnghaBench/vlc/src/network/extr_httpd.c_httpd_HandlerCallBack.c'
source_filename = "/home/carl/AnghaBench/vlc/src/network/extr_httpd.c_httpd_HandlerCallBack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32*, i32, i32, i32*, i64, i32 }
%struct.TYPE_7__ = type { i32, i32 (i32, %struct.TYPE_7__*, i32, i32*, i32, i32*, i64, i8*, i32*, i32**, i64*)* }

@NI_MAXNUMERICHOST = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@HTTPD_PROTO_NONE = common dso_local global i32 0, align 4
@HTTPD_MSG_ANSWER = common dso_local global i32 0, align 4
@HTTPD_MSG_HEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"HTTP/1.\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Status: \00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"HTTP/1.0 %03d %s\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_6__*)* @httpd_HandlerCallBack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @httpd_HandlerCallBack(i32* %0, i32* %1, %struct.TYPE_6__* %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = bitcast i32* %21 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %10, align 8
  %23 = load i32, i32* @NI_MAXNUMERICHOST, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %11, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %12, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = icmp ne %struct.TYPE_6__* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %31 = icmp ne %struct.TYPE_6__* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %29, %4
  %33 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %33, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %238

34:                                               ; preds = %29
  %35 = load i32, i32* @HTTPD_PROTO_NONE, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @HTTPD_MSG_ANSWER, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 5
  store i64 0, i64* %42, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @httpd_ClientIP(i32* %43, i8* %26, i32* null)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %34
  store i8 0, i8* %26, align 16
  br label %47

47:                                               ; preds = %46, %34
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %14, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32 (i32, %struct.TYPE_7__*, i32, i32*, i32, i32*, i64, i8*, i32*, i32**, i64*)*, i32 (i32, %struct.TYPE_7__*, i32, i32*, i32, i32*, i64, i8*, i32*, i32**, i64*)** %52, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %14, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = call i32 %53(i32 %56, %struct.TYPE_7__* %57, i32 %60, i32* %61, i32 %64, i32* %67, i64 %70, i8* %26, i32* null, i32** %72, i64* %74)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @HTTPD_MSG_HEAD, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %134

81:                                               ; preds = %47
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = bitcast i32* %84 to i8*
  store i8* %85, i8** %15, align 8
  br label %86

86:                                               ; preds = %109, %81
  %87 = load i8*, i8** %15, align 8
  %88 = call i8* @strchr(i8* %87, i8 signext 13)
  store i8* %88, i8** %15, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %110

90:                                               ; preds = %86
  %91 = load i8*, i8** %15, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 10
  br i1 %95, label %96, label %109

96:                                               ; preds = %90
  %97 = load i8*, i8** %15, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 2
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 13
  br i1 %101, label %102, label %109

102:                                              ; preds = %96
  %103 = load i8*, i8** %15, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 3
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 10
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %110

109:                                              ; preds = %102, %96, %90
  br label %86

110:                                              ; preds = %108, %86
  %111 = load i8*, i8** %15, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %133

113:                                              ; preds = %110
  %114 = load i8*, i8** %15, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 4
  store i8 0, i8* %115, align 1
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = bitcast i32* %118 to i8*
  %120 = call i64 @strlen(i8* %119)
  %121 = add i64 %120, 1
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i32* @xrealloc(i32* %126, i64 %129)
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  store i32* %130, i32** %132, align 8
  br label %133

133:                                              ; preds = %113, %110
  br label %134

134:                                              ; preds = %133, %47
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = bitcast i32* %137 to i8*
  %139 = call i64 @strncmp(i8* %138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %236

141:                                              ; preds = %134
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = bitcast i32* %144 to i8*
  %146 = call i64 @strncmp(i8* %145, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %189, label %148

148:                                              ; preds = %141
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 8
  %153 = bitcast i32* %152 to i8*
  %154 = call i32 @strtol(i8* %153, i8** %18, i32 0)
  store i32 %154, i32* %16, align 4
  %155 = load i8*, i8** %18, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp eq i32 %157, 13
  br i1 %158, label %164, label %159

159:                                              ; preds = %148
  %160 = load i8*, i8** %18, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 10
  br i1 %163, label %164, label %167

164:                                              ; preds = %159, %148
  %165 = load i8*, i8** %18, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %18, align 8
  br label %167

167:                                              ; preds = %164, %159
  %168 = load i8*, i8** %18, align 8
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 10
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = load i8*, i8** %18, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %18, align 8
  br label %175

175:                                              ; preds = %172, %167
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i8*, i8** %18, align 8
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = bitcast i32* %182 to i8*
  %184 = ptrtoint i8* %179 to i64
  %185 = ptrtoint i8* %183 to i64
  %186 = sub i64 %184, %185
  %187 = sub i64 %178, %186
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %17, align 4
  br label %198

189:                                              ; preds = %141
  store i32 200, i32* %16, align 4
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = bitcast i32* %192 to i8*
  store i8* %193, i8** %18, align 8
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %17, align 4
  br label %198

198:                                              ; preds = %189, %175
  %199 = load i32, i32* %16, align 4
  %200 = call i8* @httpd_ReasonFromCode(i32 %199)
  store i8* %200, i8** %20, align 8
  %201 = load i8*, i8** %20, align 8
  %202 = call i64 @strlen(i8* %201)
  %203 = add i64 16, %202
  %204 = load i32, i32* %17, align 4
  %205 = sext i32 %204 to i64
  %206 = add i64 %203, %205
  %207 = sub i64 %206, 1
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  store i64 %207, i64* %209, align 8
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = add i64 %212, 1
  %214 = trunc i64 %213 to i32
  %215 = call i64 @xmalloc(i32 %214)
  %216 = inttoptr i64 %215 to i8*
  store i8* %216, i8** %19, align 8
  %217 = load i8*, i8** %19, align 8
  %218 = load i32, i32* %16, align 4
  %219 = load i8*, i8** %20, align 8
  %220 = call i32 @sprintf(i8* %217, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %218, i8* %219)
  %221 = load i8*, i8** %19, align 8
  %222 = load i8*, i8** %19, align 8
  %223 = call i64 @strlen(i8* %222)
  %224 = getelementptr inbounds i8, i8* %221, i64 %223
  %225 = load i8*, i8** %18, align 8
  %226 = load i32, i32* %17, align 4
  %227 = call i32 @memcpy(i8* %224, i8* %225, i32 %226)
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 1
  %230 = load i32*, i32** %229, align 8
  %231 = call i32 @free(i32* %230)
  %232 = load i8*, i8** %19, align 8
  %233 = bitcast i8* %232 to i32*
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 1
  store i32* %233, i32** %235, align 8
  br label %236

236:                                              ; preds = %198, %134
  %237 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %237, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %238

238:                                              ; preds = %236, %32
  %239 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %239)
  %240 = load i32, i32* %5, align 4
  ret i32 %240
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @httpd_ClientIP(i32*, i8*, i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32* @xrealloc(i32*, i64) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @strtol(i8*, i8**, i32) #2

declare dso_local i8* @httpd_ReasonFromCode(i32) #2

declare dso_local i64 @xmalloc(i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i32, i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
