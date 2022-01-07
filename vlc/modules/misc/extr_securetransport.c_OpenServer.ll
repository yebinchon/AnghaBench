; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/extr_securetransport.c_OpenServer.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/extr_securetransport.c_OpenServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__*, i32* }
%struct.TYPE_11__ = type { i32*, i32* }
%struct.TYPE_13__ = type { i8*, i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }

@.str = private unnamed_addr constant [15 x i8] c"open st server\00", align 1
@kSecLabelItemAttr = common dso_local global i32 0, align 4
@kSecCertificateItemClass = common dso_local global i32 0, align 4
@noErr = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Cannot find certificate with alias %s\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Cannot get certificate with alias %s, error: %d\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Cannot get private key for certificate\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"Cannot create trust\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Error evaluating trust\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"error while getting certificate chain\00", align 1
@kCFAllocatorDefault = common dso_local global i32 0, align 4
@kCFTypeArrayCallBacks = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [64 x i8] c"Found certificate chain with %ld entries for server certificate\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@st_ServerOps = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i8*)* @OpenServer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenServer(%struct.TYPE_10__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__, align 8
  %10 = alloca %struct.TYPE_12__, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @VLC_UNUSED(i8* %24)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = call i32 (%struct.TYPE_10__*, i8*, ...) @msg_Dbg(%struct.TYPE_10__* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %29 = load i32, i32* @kSecLabelItemAttr, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %28, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @strlen(i8* %33)
  store i32 %34, i32* %32, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 2
  %36 = load i8*, i8** %6, align 8
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %35, align 4
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %39, align 8
  store i32* null, i32** %11, align 8
  %40 = load i32, i32* @kSecCertificateItemClass, align 4
  %41 = call i64 @SecKeychainSearchCreateFromAttributes(i32* null, i32 %40, %struct.TYPE_12__* %10, i32** %11)
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @noErr, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %48, label %45

45:                                               ; preds = %3
  %46 = load i32*, i32** %11, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %45, %3
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 (%struct.TYPE_10__*, i8*, ...) @msg_Err(%struct.TYPE_10__* %49, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  %52 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %52, i32* %4, align 4
  br label %187

53:                                               ; preds = %45
  store i32* null, i32** %12, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = call i64 @SecKeychainSearchCopyNext(i32* %54, i32** %12)
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* @noErr, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i32 (%struct.TYPE_10__*, i8*, ...) @msg_Err(%struct.TYPE_10__* %60, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %61, i64 %62)
  %64 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %64, i32* %4, align 4
  br label %187

65:                                               ; preds = %53
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @CFRelease(i32* %66)
  %68 = load i32*, i32** %12, align 8
  store i32* %68, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = call i64 @SecIdentityCreateWithCertificate(i32* null, i32* %69, i32** %14)
  store i64 %70, i64* %8, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* @noErr, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %65
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %76 = call i32 (%struct.TYPE_10__*, i8*, ...) @msg_Err(%struct.TYPE_10__* %75, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32*, i32** %13, align 8
  %78 = call i32 @CFRelease(i32* %77)
  %79 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %79, i32* %4, align 4
  br label %187

80:                                               ; preds = %65
  %81 = call i32* @SecPolicyCreateSSL(i32 1, i32* null)
  store i32* %81, i32** %15, align 8
  store i32* null, i32** %16, align 8
  %82 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %82, i32* %17, align 4
  %83 = load i32*, i32** %13, align 8
  %84 = load i32*, i32** %15, align 8
  %85 = call i64 @SecTrustCreateWithCertificates(i32* %83, i32* %84, i32** %16)
  store i64 %85, i64* %8, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* @noErr, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %80
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %91 = call i32 (%struct.TYPE_10__*, i8*, ...) @msg_Err(%struct.TYPE_10__* %90, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %92 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %92, i32* %17, align 4
  br label %161

93:                                               ; preds = %80
  %94 = load i32*, i32** %16, align 8
  %95 = call i64 @SecTrustEvaluate(i32* %94, i32* %18)
  store i64 %95, i64* %8, align 8
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* @noErr, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %101 = call i32 (%struct.TYPE_10__*, i8*, ...) @msg_Err(%struct.TYPE_10__* %100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %102 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %102, i32* %17, align 4
  br label %161

103:                                              ; preds = %93
  store i32* null, i32** %19, align 8
  %104 = load i32*, i32** %16, align 8
  %105 = call i64 @SecTrustGetResult(i32* %104, i32* %18, i32** %19, i32** %20)
  store i64 %105, i64* %8, align 8
  %106 = load i64, i64* %8, align 8
  %107 = load i64, i64* @noErr, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %112, label %109

109:                                              ; preds = %103
  %110 = load i32*, i32** %19, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %116, label %112

112:                                              ; preds = %109, %103
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %114 = call i32 (%struct.TYPE_10__*, i8*, ...) @msg_Err(%struct.TYPE_10__* %113, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %115 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %115, i32* %17, align 4
  br label %161

116:                                              ; preds = %109
  %117 = load i32*, i32** %19, align 8
  %118 = call i32 @CFArrayGetCount(i32* %117)
  store i32 %118, i32* %21, align 4
  %119 = load i32, i32* @kCFAllocatorDefault, align 4
  %120 = load i32, i32* %21, align 4
  %121 = call i32* @CFArrayCreateMutable(i32 %119, i32 %120, i32* @kCFTypeArrayCallBacks)
  store i32* %121, i32** %22, align 8
  %122 = load i32*, i32** %22, align 8
  %123 = load i32*, i32** %14, align 8
  %124 = call i32 @CFArrayAppendValue(i32* %122, i32* %123)
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %126 = load i32, i32* %21, align 4
  %127 = call i32 (%struct.TYPE_10__*, i8*, ...) @msg_Dbg(%struct.TYPE_10__* %125, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* %21, align 4
  %129 = icmp sgt i32 %128, 1
  br i1 %129, label %130, label %137

130:                                              ; preds = %116
  %131 = load i32*, i32** %22, align 8
  %132 = load i32*, i32** %19, align 8
  %133 = load i32, i32* %21, align 4
  %134 = sub nsw i32 %133, 1
  %135 = call i32 @CFRangeMake(i32 1, i32 %134)
  %136 = call i32 @CFArrayAppendArray(i32* %131, i32* %132, i32 %135)
  br label %137

137:                                              ; preds = %130, %116
  %138 = load i32*, i32** %19, align 8
  %139 = call i32 @CFRelease(i32* %138)
  %140 = call %struct.TYPE_11__* @malloc(i32 16)
  store %struct.TYPE_11__* %140, %struct.TYPE_11__** %23, align 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %142 = icmp eq %struct.TYPE_11__* %141, null
  %143 = zext i1 %142 to i32
  %144 = call i64 @unlikely(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %137
  %147 = load i32*, i32** %22, align 8
  %148 = call i32 @CFRelease(i32* %147)
  %149 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %149, i32* %17, align 4
  br label %161

150:                                              ; preds = %137
  %151 = load i32*, i32** %22, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 1
  store i32* %151, i32** %153, align 8
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  store i32* null, i32** %155, align 8
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 1
  store i32* @st_ServerOps, i32** %157, align 8
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  store %struct.TYPE_11__* %158, %struct.TYPE_11__** %160, align 8
  br label %161

161:                                              ; preds = %150, %146, %112, %99, %89
  %162 = load i32*, i32** %15, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i32*, i32** %15, align 8
  %166 = call i32 @CFRelease(i32* %165)
  br label %167

167:                                              ; preds = %164, %161
  %168 = load i32*, i32** %16, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i32*, i32** %16, align 8
  %172 = call i32 @CFRelease(i32* %171)
  br label %173

173:                                              ; preds = %170, %167
  %174 = load i32*, i32** %13, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i32*, i32** %13, align 8
  %178 = call i32 @CFRelease(i32* %177)
  br label %179

179:                                              ; preds = %176, %173
  %180 = load i32*, i32** %14, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load i32*, i32** %14, align 8
  %184 = call i32 @CFRelease(i32* %183)
  br label %185

185:                                              ; preds = %182, %179
  %186 = load i32, i32* %17, align 4
  store i32 %186, i32* %4, align 4
  br label %187

187:                                              ; preds = %185, %74, %59, %48
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local i32 @VLC_UNUSED(i8*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @SecKeychainSearchCreateFromAttributes(i32*, i32, %struct.TYPE_12__*, i32**) #1

declare dso_local i32 @msg_Err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i64 @SecKeychainSearchCopyNext(i32*, i32**) #1

declare dso_local i32 @CFRelease(i32*) #1

declare dso_local i64 @SecIdentityCreateWithCertificate(i32*, i32*, i32**) #1

declare dso_local i32* @SecPolicyCreateSSL(i32, i32*) #1

declare dso_local i64 @SecTrustCreateWithCertificates(i32*, i32*, i32**) #1

declare dso_local i64 @SecTrustEvaluate(i32*, i32*) #1

declare dso_local i64 @SecTrustGetResult(i32*, i32*, i32**, i32**) #1

declare dso_local i32 @CFArrayGetCount(i32*) #1

declare dso_local i32* @CFArrayCreateMutable(i32, i32, i32*) #1

declare dso_local i32 @CFArrayAppendValue(i32*, i32*) #1

declare dso_local i32 @CFArrayAppendArray(i32*, i32*, i32) #1

declare dso_local i32 @CFRangeMake(i32, i32) #1

declare dso_local %struct.TYPE_11__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
