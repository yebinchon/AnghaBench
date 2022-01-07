; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/extr_gnutls.c_gnutls_ClientHandshake.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/extr_gnutls.c_gnutls_ClientHandshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Certificate verification error: %s\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Certificate verification failure: %s\00", align 1
@GNUTLS_CERT_INVALID = common dso_local global i32 0, align 4
@GNUTLS_CERT_SIGNER_NOT_FOUND = common dso_local global i32 0, align 4
@GNUTLS_CERT_UNEXPECTED_OWNER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Peer certificate not available\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"%u certificate(s) in the list\00", align 1
@GNUTLS_CRT_X509 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"certificate key match for %s\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"no known certificates for %s\00", align 1
@.str.6 = private unnamed_addr constant [138 x i8] c"However, the security certificate presented by the server is unknown and could not be authenticated by any trusted Certificate Authority.\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"certificate keys mismatch for %s\00", align 1
@.str.8 = private unnamed_addr constant [155 x i8] c"However, the security certificate presented by the server changed since the previous visit and was not authenticated by any trusted Certificate Authority.\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"certificate key match error for %s: %s\00", align 1
@VLC_DIALOG_QUESTION_WARNING = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"Abort\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"View certificate\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"Insecure site\00", align 1
@.str.13 = private unnamed_addr constant [173 x i8] c"You attempted to reach %s. %s\0AThis problem may be stem from an attempt to breach your security, compromise your privacy, or a configuration error.\0A\0AIf in doubt, abort now.\0A\00", align 1
@GNUTLS_X509_FMT_DER = common dso_local global i32 0, align 4
@GNUTLS_CRT_PRINT_ONELINE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"Accept 24 hours\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"Accept permanently\00", align 1
@.str.16 = private unnamed_addr constant [70 x i8] c"This is the certificate presented by %s:\0A%s\0A\0AIf in doubt, abort now.\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"cannot store X.509 certificate: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i8**)* @gnutls_ClientHandshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gnutls_ClientHandshake(i32* %0, i8* %1, i8* %2, i8** noalias %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__, align 4
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = bitcast i32* %21 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %10, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %11, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i8**, i8*** %9, align 8
  %28 = call i32 @gnutls_Handshake(i32* %26, i8** %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %5, align 4
  br label %203

33:                                               ; preds = %4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @gnutls_certificate_verify_peers3(i32 %37, i8* %38, i32* %14)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %33
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @gnutls_strerror(i32 %44)
  %46 = call i32 (i32*, i8*, ...) @msg_Err(i32* %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %195

47:                                               ; preds = %33
  %48 = load i32, i32* %14, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %203

51:                                               ; preds = %47
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @gnutls_certificate_type_get(i32 %53)
  %55 = call i64 @gnutls_certificate_verification_status_print(i32 %52, i32 %54, %struct.TYPE_10__* %15, i32 0)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load i32*, i32** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32*, i8*, ...) @msg_Err(i32* %58, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @gnutls_free(i32 %63)
  br label %65

65:                                               ; preds = %57, %51
  %66 = load i32, i32* @GNUTLS_CERT_INVALID, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %14, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* @GNUTLS_CERT_SIGNER_NOT_FOUND, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %14, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* @GNUTLS_CERT_UNEXPECTED_OWNER, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %14, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %65
  %81 = load i8*, i8** %7, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %80, %65
  br label %195

84:                                               ; preds = %80
  %85 = load i32, i32* %13, align 4
  %86 = call %struct.TYPE_10__* @gnutls_certificate_get_peers(i32 %85, i32* %17)
  store %struct.TYPE_10__* %86, %struct.TYPE_10__** %16, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %88 = icmp eq %struct.TYPE_10__* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %17, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89, %84
  %93 = load i32*, i32** %11, align 8
  %94 = call i32 (i32*, i8*, ...) @msg_Err(i32* %93, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %195

95:                                               ; preds = %89
  %96 = load i32*, i32** %11, align 8
  %97 = load i32, i32* %17, align 4
  %98 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %96, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  %99 = load i8*, i8** %7, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = load i32, i32* @GNUTLS_CRT_X509, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %103 = call i32 @gnutls_verify_stored_pubkey(i32* null, i32* null, i8* %99, i8* %100, i32 %101, %struct.TYPE_10__* %102, i32 0)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  switch i32 %104, label %119 [
    i32 0, label %105
    i32 128, label %109
    i32 129, label %114
  ]

105:                                              ; preds = %95
  %106 = load i32*, i32** %11, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %106, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %107)
  store i32 0, i32* %5, align 4
  br label %203

109:                                              ; preds = %95
  %110 = load i32*, i32** %11, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %110, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %111)
  %113 = call i8* @N_(i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.6, i64 0, i64 0))
  store i8* %113, i8** %18, align 8
  br label %125

114:                                              ; preds = %95
  %115 = load i32*, i32** %11, align 8
  %116 = load i8*, i8** %7, align 8
  %117 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %115, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8* %116)
  %118 = call i8* @N_(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.8, i64 0, i64 0))
  store i8* %118, i8** %18, align 8
  br label %125

119:                                              ; preds = %95
  %120 = load i32*, i32** %11, align 8
  %121 = load i8*, i8** %7, align 8
  %122 = load i32, i32* %12, align 4
  %123 = call i32 @gnutls_strerror(i32 %122)
  %124 = call i32 (i32*, i8*, ...) @msg_Err(i32* %120, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i8* %121, i32 %123)
  br label %195

125:                                              ; preds = %114, %109
  %126 = load i32*, i32** %11, align 8
  %127 = load i32, i32* @VLC_DIALOG_QUESTION_WARNING, align 4
  %128 = call i32* @_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %129 = call i32* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %130 = call i32* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %131 = call i32* @_(i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str.13, i64 0, i64 0))
  %132 = load i8*, i8** %7, align 8
  %133 = load i8*, i8** %18, align 8
  %134 = call i32 @vlc_gettext(i8* %133)
  %135 = call i32 @vlc_dialog_wait_question(i32* %126, i32 %127, i32* %128, i32* %129, i32* null, i32* %130, i32* %131, i8* %132, i32 %134)
  %136 = icmp ne i32 %135, 1
  br i1 %136, label %137, label %138

137:                                              ; preds = %125
  br label %195

138:                                              ; preds = %125
  %139 = call i64 @gnutls_x509_crt_init(i32* %19)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  br label %195

142:                                              ; preds = %138
  %143 = load i32, i32* %19, align 4
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %145 = load i32, i32* @GNUTLS_X509_FMT_DER, align 4
  %146 = call i64 @gnutls_x509_crt_import(i32 %143, %struct.TYPE_10__* %144, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %142
  %149 = load i32, i32* %19, align 4
  %150 = load i32, i32* @GNUTLS_CRT_PRINT_ONELINE, align 4
  %151 = call i64 @gnutls_x509_crt_print(i32 %149, i32 %150, %struct.TYPE_10__* %15)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %148, %142
  %154 = load i32, i32* %19, align 4
  %155 = call i32 @gnutls_x509_crt_deinit(i32 %154)
  br label %195

156:                                              ; preds = %148
  %157 = load i32, i32* %19, align 4
  %158 = call i32 @gnutls_x509_crt_deinit(i32 %157)
  %159 = load i32*, i32** %11, align 8
  %160 = load i32, i32* @VLC_DIALOG_QUESTION_WARNING, align 4
  %161 = call i32* @_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %162 = call i32* @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  %163 = call i32* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  %164 = call i32* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %165 = call i32* @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.16, i64 0, i64 0))
  %166 = load i8*, i8** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @vlc_dialog_wait_question(i32* %159, i32 %160, i32* %161, i32* %162, i32* %163, i32* %164, i32* %165, i8* %166, i32 %168)
  store i32 %169, i32* %12, align 4
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @gnutls_free(i32 %171)
  store i32 0, i32* %20, align 4
  %173 = load i32, i32* %12, align 4
  switch i32 %173, label %193 [
    i32 1, label %174
    i32 2, label %178
  ]

174:                                              ; preds = %156
  %175 = call i32 @time(i32* %20)
  %176 = load i32, i32* %20, align 4
  %177 = add nsw i32 %176, 86400
  store i32 %177, i32* %20, align 4
  br label %178

178:                                              ; preds = %156, %174
  %179 = load i8*, i8** %7, align 8
  %180 = load i8*, i8** %8, align 8
  %181 = load i32, i32* @GNUTLS_CRT_X509, align 4
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %183 = load i32, i32* %20, align 4
  %184 = call i32 @gnutls_store_pubkey(i32* null, i32* null, i8* %179, i8* %180, i32 %181, %struct.TYPE_10__* %182, i32 %183, i32 0)
  store i32 %184, i32* %12, align 4
  %185 = load i32, i32* %12, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %178
  %188 = load i32*, i32** %11, align 8
  %189 = load i32, i32* %12, align 4
  %190 = call i32 @gnutls_strerror(i32 %189)
  %191 = call i32 (i32*, i8*, ...) @msg_Err(i32* %188, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0), i32 %190)
  br label %192

192:                                              ; preds = %187, %178
  br label %194

193:                                              ; preds = %156
  br label %195

194:                                              ; preds = %192
  store i32 0, i32* %5, align 4
  br label %203

195:                                              ; preds = %193, %153, %141, %137, %119, %92, %83, %42
  %196 = load i8**, i8*** %9, align 8
  %197 = icmp ne i8** %196, null
  br i1 %197, label %198, label %202

198:                                              ; preds = %195
  %199 = load i8**, i8*** %9, align 8
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 @free(i8* %200)
  br label %202

202:                                              ; preds = %198, %195
  store i32 -1, i32* %5, align 4
  br label %203

203:                                              ; preds = %202, %194, %105, %50, %31
  %204 = load i32, i32* %5, align 4
  ret i32 %204
}

declare dso_local i32 @gnutls_Handshake(i32*, i8**) #1

declare dso_local i32 @gnutls_certificate_verify_peers3(i32, i8*, i32*) #1

declare dso_local i32 @msg_Err(i32*, i8*, ...) #1

declare dso_local i32 @gnutls_strerror(i32) #1

declare dso_local i64 @gnutls_certificate_verification_status_print(i32, i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @gnutls_certificate_type_get(i32) #1

declare dso_local i32 @gnutls_free(i32) #1

declare dso_local %struct.TYPE_10__* @gnutls_certificate_get_peers(i32, i32*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, ...) #1

declare dso_local i32 @gnutls_verify_stored_pubkey(i32*, i32*, i8*, i8*, i32, %struct.TYPE_10__*, i32) #1

declare dso_local i8* @N_(i8*) #1

declare dso_local i32 @vlc_dialog_wait_question(i32*, i32, i32*, i32*, i32*, i32*, i32*, i8*, i32) #1

declare dso_local i32* @_(i8*) #1

declare dso_local i32 @vlc_gettext(i8*) #1

declare dso_local i64 @gnutls_x509_crt_init(i32*) #1

declare dso_local i64 @gnutls_x509_crt_import(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i64 @gnutls_x509_crt_print(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @gnutls_x509_crt_deinit(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @gnutls_store_pubkey(i32*, i32*, i8*, i8*, i32, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
