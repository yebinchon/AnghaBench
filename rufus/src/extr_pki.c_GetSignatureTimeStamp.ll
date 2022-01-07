; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_pki.c_GetSignatureTimeStamp.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_pki.c_GetSignatureTimeStamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"PKI: Could not get current executable handle: %s\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"PKI: Could not get module filename: %s\00", align 1
@CERT_QUERY_OBJECT_FILE = common dso_local global i32 0, align 4
@CERT_QUERY_CONTENT_FLAG_PKCS7_SIGNED_EMBED = common dso_local global i32 0, align 4
@CERT_QUERY_FORMAT_FLAG_BINARY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"PKI: Failed to get signature for '%s': %s\00", align 1
@CMSG_SIGNER_INFO_PARAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"PKI: Failed to get signer size: %s\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"PKI: Could not allocate memory for signer information\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"PKI: Failed to get signer information: %s\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Note: '%s' has timestamp %s\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Note: '%s' has nested timestamp %s\00", align 1
@.str.8 = private unnamed_addr constant [120 x i8] c"PKI: Signature timestamp and nested timestamp differ by more than a minute. This could indicate something very nasty...\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GetSignatureTimeStamp(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %3, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i8* null, i8** %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %15, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %53

19:                                               ; preds = %1
  %20 = load i64, i64* @MAX_PATH, align 8
  %21 = call i8* @calloc(i64 %20, i32 1)
  store i8* %21, i8** %14, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %154

25:                                               ; preds = %19
  %26 = call i32* @GetModuleHandle(i32* null)
  store i32* %26, i32** %5, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = call i32 (...) @WinPKIErrorString()
  %31 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %154

32:                                               ; preds = %25
  %33 = load i32*, i32** %5, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = load i64, i64* @MAX_PATH, align 8
  %36 = call i64 @GetModuleFileNameW(i32* %33, i8* %34, i64 %35)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %32
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @MAX_PATH, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = call i64 (...) @GetLastError()
  %45 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43, %32
  %48 = call i32 (...) @WinPKIErrorString()
  %49 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %154

50:                                               ; preds = %43, %39
  %51 = load i8*, i8** %14, align 8
  %52 = call i8* @wchar_to_utf8(i8* %51)
  store i8* %52, i8** %3, align 8
  br label %56

53:                                               ; preds = %1
  %54 = load i8*, i8** %2, align 8
  %55 = call i8* @utf8_to_wchar(i8* %54)
  store i8* %55, i8** %14, align 8
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* @CERT_QUERY_OBJECT_FILE, align 4
  %58 = load i8*, i8** %14, align 8
  %59 = load i32, i32* @CERT_QUERY_CONTENT_FLAG_PKCS7_SIGNED_EMBED, align 4
  %60 = load i32, i32* @CERT_QUERY_FORMAT_FLAG_BINARY, align 4
  %61 = call i64 @CryptQueryObject(i32 %57, i8* %58, i32 %59, i32 %60, i32 0, i64* %9, i64* %10, i64* %11, i32** %6, i32** %7, i32* null)
  store i64 %61, i64* %4, align 8
  %62 = load i64, i64* %4, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %56
  %65 = load i8*, i8** %2, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i8*, i8** %3, align 8
  br label %71

69:                                               ; preds = %64
  %70 = load i8*, i8** %2, align 8
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i8* [ %68, %67 ], [ %70, %69 ]
  %73 = call i32 (...) @WinPKIErrorString()
  %74 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %72, i32 %73)
  br label %154

75:                                               ; preds = %56
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* @CMSG_SIGNER_INFO_PARAM, align 4
  %78 = call i64 @CryptMsgGetParam(i32* %76, i32 %77, i32 0, i32* null, i64* %13)
  store i64 %78, i64* %4, align 8
  %79 = load i64, i64* %4, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %75
  %82 = call i32 (...) @WinPKIErrorString()
  %83 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  br label %154

84:                                               ; preds = %75
  %85 = load i64, i64* %13, align 8
  %86 = call i8* @calloc(i64 %85, i32 1)
  store i8* %86, i8** %12, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %84
  %90 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  br label %154

91:                                               ; preds = %84
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* @CMSG_SIGNER_INFO_PARAM, align 4
  %94 = load i8*, i8** %12, align 8
  %95 = bitcast i8* %94 to i32*
  %96 = call i64 @CryptMsgGetParam(i32* %92, i32 %93, i32 0, i32* %95, i64* %13)
  store i64 %96, i64* %4, align 8
  %97 = load i64, i64* %4, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %91
  %100 = call i32 (...) @WinPKIErrorString()
  %101 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %100)
  br label %154

102:                                              ; preds = %91
  %103 = load i8*, i8** %12, align 8
  %104 = call i64 @GetRFC3161TimeStamp(i8* %103)
  store i64 %104, i64* %15, align 8
  %105 = load i64, i64* %15, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %102
  %108 = load i8*, i8** %2, align 8
  %109 = icmp eq i8* %108, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load i8*, i8** %3, align 8
  br label %114

112:                                              ; preds = %107
  %113 = load i8*, i8** %2, align 8
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i8* [ %111, %110 ], [ %113, %112 ]
  %116 = load i64, i64* %15, align 8
  %117 = call i32 @TimestampToHumanReadable(i64 %116)
  %118 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %115, i32 %117)
  br label %119

119:                                              ; preds = %114, %102
  %120 = load i8*, i8** %12, align 8
  %121 = call i64 @GetNestedRFC3161TimeStamp(i8* %120)
  store i64 %121, i64* %16, align 8
  %122 = load i64, i64* %16, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %119
  %125 = load i8*, i8** %2, align 8
  %126 = icmp eq i8* %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = load i8*, i8** %3, align 8
  br label %131

129:                                              ; preds = %124
  %130 = load i8*, i8** %2, align 8
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i8* [ %128, %127 ], [ %130, %129 ]
  %133 = load i64, i64* %16, align 8
  %134 = call i32 @TimestampToHumanReadable(i64 %133)
  %135 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i8* %132, i32 %134)
  br label %136

136:                                              ; preds = %131, %119
  %137 = load i64, i64* %15, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %153

139:                                              ; preds = %136
  %140 = load i64, i64* %16, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %153

142:                                              ; preds = %139
  %143 = load i64, i64* %16, align 8
  %144 = load i64, i64* %15, align 8
  %145 = sub nsw i64 %143, %144
  %146 = call i32 @_abs64(i64 %145)
  %147 = icmp sgt i32 %146, 100
  br i1 %147, label %148, label %152

148:                                              ; preds = %142
  %149 = load i64, i64* %15, align 8
  %150 = load i64, i64* %16, align 8
  %151 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.8, i64 0, i64 0), i64 %149, i64 %150)
  store i64 0, i64* %15, align 8
  br label %152

152:                                              ; preds = %148, %142
  br label %153

153:                                              ; preds = %152, %139, %136
  br label %154

154:                                              ; preds = %153, %99, %89, %81, %71, %47, %29, %24
  %155 = load i8*, i8** %3, align 8
  %156 = call i32 @safe_free(i8* %155)
  %157 = load i8*, i8** %14, align 8
  %158 = call i32 @safe_free(i8* %157)
  %159 = load i8*, i8** %12, align 8
  %160 = call i32 @safe_free(i8* %159)
  %161 = load i32*, i32** %6, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %154
  %164 = load i32*, i32** %6, align 8
  %165 = call i32 @CertCloseStore(i32* %164, i32 0)
  br label %166

166:                                              ; preds = %163, %154
  %167 = load i32*, i32** %7, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load i32*, i32** %7, align 8
  %171 = call i32 @CryptMsgClose(i32* %170)
  br label %172

172:                                              ; preds = %169, %166
  %173 = load i64, i64* %15, align 8
  ret i64 %173
}

declare dso_local i8* @calloc(i64, i32) #1

declare dso_local i32* @GetModuleHandle(i32*) #1

declare dso_local i32 @uprintf(i8*, ...) #1

declare dso_local i32 @WinPKIErrorString(...) #1

declare dso_local i64 @GetModuleFileNameW(i32*, i8*, i64) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i8* @wchar_to_utf8(i8*) #1

declare dso_local i8* @utf8_to_wchar(i8*) #1

declare dso_local i64 @CryptQueryObject(i32, i8*, i32, i32, i32, i64*, i64*, i64*, i32**, i32**, i32*) #1

declare dso_local i64 @CryptMsgGetParam(i32*, i32, i32, i32*, i64*) #1

declare dso_local i64 @GetRFC3161TimeStamp(i8*) #1

declare dso_local i32 @TimestampToHumanReadable(i64) #1

declare dso_local i64 @GetNestedRFC3161TimeStamp(i8*) #1

declare dso_local i32 @_abs64(i64) #1

declare dso_local i32 @safe_free(i8*) #1

declare dso_local i32 @CertCloseStore(i32*, i32) #1

declare dso_local i32 @CryptMsgClose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
