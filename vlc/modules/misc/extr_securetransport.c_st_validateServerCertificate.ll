; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/extr_securetransport.c_st_validateServerCertificate.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/extr_securetransport.c_st_validateServerCertificate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i8* }

@noErr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"error getting certifictate chain\00", align 1
@kCFAllocatorDefault = common dso_local global i32 0, align 4
@kCFStringEncodingUTF8 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"error setting anchor certificates\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"error calling SecTrustEvaluate\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"cerfificate verification successful, result is %d\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"cerfificate verification failed, result is %d\00", align 1
@cfKeyHost = common dso_local global i8* null, align 8
@cfKeyCertificate = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [41 x i8] c"certificate already accepted, continuing\00", align 1
@.str.6 = private unnamed_addr constant [299 x i8] c"You attempted to reach %s. However the security certificate presented by the server is unknown and could not be authenticated by any trusted Certification Authority. This problem may be caused by a configuration error or an attempt to breach your security or your privacy.\0A\0AIf in doubt, abort now.\0A\00", align 1
@VLC_DIALOG_QUESTION_WARNING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"Abort\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Accept certificate temporarily\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Insecure site\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"Proceeding despite of failed certificate validation\00", align 1
@kCFTypeDictionaryKeyCallBacks = common dso_local global i32 0, align 4
@kCFTypeDictionaryValueCallBacks = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"error creating dict\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @st_validateServerCertificate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_validateServerCertificate(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca [2 x i8*], align 16
  %22 = alloca [2 x i8*], align 16
  %23 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = bitcast i32* %24 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %6, align 8
  store i32 -1, i32* %7, align 4
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @SSLCopyPeerTrust(i32 %28, i8** %9)
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* @noErr, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %36, label %33

33:                                               ; preds = %2
  %34 = load i8*, i8** %9, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %33, %2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @msg_Err(i32 %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %225

41:                                               ; preds = %33
  %42 = load i32, i32* @kCFAllocatorDefault, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* @kCFStringEncodingUTF8, align 4
  %45 = call i8* @CFStringCreateWithCString(i32 %42, i8* %43, i32 %44)
  store i8* %45, i8** %11, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = call i64 @SecTrustSetAnchorCertificates(i8* %46, i32* null)
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* @noErr, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @msg_Err(i32 %54, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %209

56:                                               ; preds = %41
  store i32 0, i32* %12, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = call i64 @SecTrustEvaluate(i8* %57, i32* %12)
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* @noErr, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @msg_Err(i32 %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %209

67:                                               ; preds = %56
  %68 = load i32, i32* %12, align 4
  switch i32 %68, label %76 [
    i32 128, label %69
    i32 130, label %69
    i32 129, label %75
    i32 131, label %75
  ]

69:                                               ; preds = %67, %67
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @msg_Dbg(i32 %72, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  store i32 0, i32* %7, align 4
  br label %209

75:                                               ; preds = %67, %67
  br label %76

76:                                               ; preds = %67, %75
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = call i32 (i32, i8*, ...) @msg_Warn(i32 %79, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %76
  store i8* null, i8** %13, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @SSLCopyPeerCertificates(i32 %85, i8** %13)
  store i64 %86, i64* %10, align 8
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* @noErr, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %93, label %90

90:                                               ; preds = %82
  %91 = load i8*, i8** %13, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %90, %82
  store i32 -1, i32* %7, align 4
  br label %209

94:                                               ; preds = %90
  %95 = load i8*, i8** %13, align 8
  %96 = call i64 @CFArrayGetCount(i8* %95)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i8*, i8** %13, align 8
  %100 = call i32 @CFRelease(i8* %99)
  store i32 -1, i32* %7, align 4
  br label %209

101:                                              ; preds = %94
  %102 = load i8*, i8** %13, align 8
  %103 = call i8* @CFArrayGetValueAtIndex(i8* %102, i64 0)
  store i8* %103, i8** %8, align 8
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 @CFRetain(i8* %104)
  %106 = load i8*, i8** %13, align 8
  %107 = call i32 @CFRelease(i8* %106)
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i64 @CFArrayGetCount(i8* %112)
  store i64 %113, i64* %14, align 8
  store i64 0, i64* %15, align 8
  br label %114

114:                                              ; preds = %156, %101
  %115 = load i64, i64* %15, align 8
  %116 = load i64, i64* %14, align 8
  %117 = icmp slt i64 %115, %116
  br i1 %117, label %118, label %159

118:                                              ; preds = %114
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load i64, i64* %15, align 8
  %125 = call i8* @CFArrayGetValueAtIndex(i8* %123, i64 %124)
  store i8* %125, i8** %16, align 8
  %126 = load i8*, i8** %16, align 8
  %127 = load i8*, i8** @cfKeyHost, align 8
  %128 = call i64 @CFDictionaryGetValue(i8* %126, i8* %127)
  %129 = inttoptr i64 %128 to i8*
  store i8* %129, i8** %17, align 8
  %130 = load i8*, i8** %16, align 8
  %131 = load i8*, i8** @cfKeyCertificate, align 8
  %132 = call i64 @CFDictionaryGetValue(i8* %130, i8* %131)
  %133 = inttoptr i64 %132 to i8*
  store i8* %133, i8** %18, align 8
  %134 = load i8*, i8** %17, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %118
  %137 = load i8*, i8** %18, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %136, %118
  br label %156

140:                                              ; preds = %136
  %141 = load i8*, i8** %17, align 8
  %142 = load i8*, i8** %11, align 8
  %143 = call i64 @CFEqual(i8* %141, i8* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %140
  %146 = load i8*, i8** %18, align 8
  %147 = load i8*, i8** %8, align 8
  %148 = call i64 @CFEqual(i8* %146, i8* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i32 (i32, i8*, ...) @msg_Warn(i32 %153, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %209

155:                                              ; preds = %145, %140
  br label %156

156:                                              ; preds = %155, %139
  %157 = load i64, i64* %15, align 8
  %158 = add nsw i64 %157, 1
  store i64 %158, i64* %15, align 8
  br label %114

159:                                              ; preds = %114
  %160 = call i8* @N_(i8* getelementptr inbounds ([299 x i8], [299 x i8]* @.str.6, i64 0, i64 0))
  store i8* %160, i8** %19, align 8
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @VLC_DIALOG_QUESTION_WARNING, align 4
  %165 = call i32 @_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %166 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %167 = call i32 @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %168 = load i8*, i8** %19, align 8
  %169 = call i32 @vlc_gettext(i8* %168)
  %170 = load i8*, i8** %5, align 8
  %171 = call i32 @vlc_dialog_wait_question(i32 %163, i32 %164, i32 %165, i32 %166, i32* null, i32 %167, i32 %169, i8* %170)
  store i32 %171, i32* %20, align 4
  %172 = load i32, i32* %20, align 4
  %173 = icmp eq i32 %172, 1
  br i1 %173, label %174, label %208

174:                                              ; preds = %159
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = call i32 (i32, i8*, ...) @msg_Warn(i32 %177, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0))
  %179 = getelementptr inbounds [2 x i8*], [2 x i8*]* %21, i64 0, i64 0
  %180 = load i8*, i8** @cfKeyHost, align 8
  store i8* %180, i8** %179, align 8
  %181 = getelementptr inbounds i8*, i8** %179, i64 1
  %182 = load i8*, i8** @cfKeyCertificate, align 8
  store i8* %182, i8** %181, align 8
  %183 = getelementptr inbounds [2 x i8*], [2 x i8*]* %22, i64 0, i64 0
  %184 = load i8*, i8** %11, align 8
  store i8* %184, i8** %183, align 8
  %185 = getelementptr inbounds i8*, i8** %183, i64 1
  %186 = load i8*, i8** %8, align 8
  store i8* %186, i8** %185, align 8
  %187 = load i32, i32* @kCFAllocatorDefault, align 4
  %188 = getelementptr inbounds [2 x i8*], [2 x i8*]* %21, i64 0, i64 0
  %189 = getelementptr inbounds [2 x i8*], [2 x i8*]* %22, i64 0, i64 0
  %190 = call i8* @CFDictionaryCreate(i32 %187, i8** %188, i8** %189, i32 2, i32* @kCFTypeDictionaryKeyCallBacks, i32* @kCFTypeDictionaryValueCallBacks)
  store i8* %190, i8** %23, align 8
  %191 = load i8*, i8** %23, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %198, label %193

193:                                              ; preds = %174
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @msg_Err(i32 %196, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %209

198:                                              ; preds = %174
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  %203 = load i8*, i8** %202, align 8
  %204 = load i8*, i8** %23, align 8
  %205 = call i32 @CFArrayAppendValue(i8* %203, i8* %204)
  %206 = load i8*, i8** %23, align 8
  %207 = call i32 @CFRelease(i8* %206)
  store i32 0, i32* %7, align 4
  br label %209

208:                                              ; preds = %159
  store i32 -1, i32* %7, align 4
  br label %209

209:                                              ; preds = %208, %198, %193, %150, %98, %93, %69, %62, %51
  %210 = load i8*, i8** %9, align 8
  %211 = call i32 @CFRelease(i8* %210)
  %212 = load i8*, i8** %11, align 8
  %213 = icmp ne i8* %212, null
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = load i8*, i8** %11, align 8
  %216 = call i32 @CFRelease(i8* %215)
  br label %217

217:                                              ; preds = %214, %209
  %218 = load i8*, i8** %8, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = load i8*, i8** %8, align 8
  %222 = call i32 @CFRelease(i8* %221)
  br label %223

223:                                              ; preds = %220, %217
  %224 = load i32, i32* %7, align 4
  store i32 %224, i32* %3, align 4
  br label %225

225:                                              ; preds = %223, %36
  %226 = load i32, i32* %3, align 4
  ret i32 %226
}

declare dso_local i64 @SSLCopyPeerTrust(i32, i8**) #1

declare dso_local i32 @msg_Err(i32, i8*) #1

declare dso_local i8* @CFStringCreateWithCString(i32, i8*, i32) #1

declare dso_local i64 @SecTrustSetAnchorCertificates(i8*, i32*) #1

declare dso_local i64 @SecTrustEvaluate(i8*, i32*) #1

declare dso_local i32 @msg_Dbg(i32, i8*, i32) #1

declare dso_local i32 @msg_Warn(i32, i8*, ...) #1

declare dso_local i64 @SSLCopyPeerCertificates(i32, i8**) #1

declare dso_local i64 @CFArrayGetCount(i8*) #1

declare dso_local i32 @CFRelease(i8*) #1

declare dso_local i8* @CFArrayGetValueAtIndex(i8*, i64) #1

declare dso_local i32 @CFRetain(i8*) #1

declare dso_local i64 @CFDictionaryGetValue(i8*, i8*) #1

declare dso_local i64 @CFEqual(i8*, i8*) #1

declare dso_local i8* @N_(i8*) #1

declare dso_local i32 @vlc_dialog_wait_question(i32, i32, i32, i32, i32*, i32, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @vlc_gettext(i8*) #1

declare dso_local i8* @CFDictionaryCreate(i32, i8**, i8**, i32, i32*, i32*) #1

declare dso_local i32 @CFArrayAppendValue(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
