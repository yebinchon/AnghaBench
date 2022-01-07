; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_pki.c_GetNestedRFC3161TimeStamp.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_pki.c_GetNestedRFC3161TimeStamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@szOID_NESTED_SIGNATURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"PKI: Multiple nested signatures found. This could indicate something very nasty...\00", align 1
@TRUE = common dso_local global i64 0, align 8
@PKCS_7_ASN_ENCODING = common dso_local global i32 0, align 4
@PKCS_CONTENT_INFO = common dso_local global i32 0, align 4
@CRYPT_DECODE_ALLOC_FLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"PKI: Could not retrieve nested signature data: %s\00", align 1
@ENCODING = common dso_local global i32 0, align 4
@CMSG_DETACHED_FLAG = common dso_local global i32 0, align 4
@CMSG_SIGNED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"PKI: Could not create nested signature message: %s\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"PKI: Could not update message: %s\00", align 1
@CMSG_SIGNER_INFO_PARAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"PKI: Failed to get nested signer size: %s\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"PKI: Could not allocate memory for nested signer\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"PKI: Failed to get nested signer information: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_16__*)* @GetNestedRFC3161TimeStamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @GetNestedRFC3161TimeStamp(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %12 = load i64, i64* @FALSE, align 8
  store i64 %12, i64* %5, align 8
  store i64 0, i64* %7, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %9, align 8
  store i32* null, i32** %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %145, %1
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %15 = icmp ne %struct.TYPE_15__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %18 = call i32 @LocalFree(%struct.TYPE_15__* %17)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %8, align 8
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32*, i32** %10, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32*, i32** %10, align 8
  %24 = call i32 @CryptMsgClose(i32* %23)
  store i32* null, i32** %10, align 8
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %27 = call i32 @safe_free(%struct.TYPE_16__* %26)
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp uge i64 %28, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %148

35:                                               ; preds = %25
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @szOID_NESTED_SIGNATURE, align 4
  %45 = call i64 @lstrcmpA(i32 %43, i32 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %144

47:                                               ; preds = %35
  %48 = load i64, i64* %5, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %2, align 8
  br label %150

52:                                               ; preds = %47
  %53 = load i64, i64* @TRUE, align 8
  store i64 %53, i64* %5, align 8
  %54 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %55 = load i32, i32* @PKCS_CONTENT_INFO, align 4
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = load i64, i64* %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @CRYPT_DECODE_ALLOC_FLAG, align 4
  %79 = bitcast %struct.TYPE_15__** %8 to i32*
  %80 = call i64 @CryptDecodeObjectEx(i32 %54, i32 %55, i32 %66, i32 %77, i32 %78, i32* null, i32* %79, i64* %7)
  store i64 %80, i64* %4, align 8
  %81 = load i64, i64* %4, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %52
  %84 = call i32 (...) @WinPKIErrorString()
  %85 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  br label %145

86:                                               ; preds = %52
  %87 = load i32, i32* @ENCODING, align 4
  %88 = load i32, i32* @CMSG_DETACHED_FLAG, align 4
  %89 = load i32, i32* @CMSG_SIGNED, align 4
  %90 = call i32* @CryptMsgOpenToDecode(i32 %87, i32 %88, i32 %89, i32 0, i32* null, i32* null)
  store i32* %90, i32** %10, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = call i32 (...) @WinPKIErrorString()
  %95 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  br label %145

96:                                               ; preds = %86
  %97 = load i32*, i32** %10, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i64, i64* @TRUE, align 8
  %107 = call i64 @CryptMsgUpdate(i32* %97, i32 %101, i32 %105, i64 %106)
  store i64 %107, i64* %4, align 8
  %108 = load i64, i64* %4, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %96
  %111 = call i32 (...) @WinPKIErrorString()
  %112 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  br label %145

113:                                              ; preds = %96
  %114 = load i32*, i32** %10, align 8
  %115 = load i32, i32* @CMSG_SIGNER_INFO_PARAM, align 4
  %116 = call i64 @CryptMsgGetParam(i32* %114, i32 %115, i32 0, i32* null, i64* %7)
  store i64 %116, i64* %4, align 8
  %117 = load i64, i64* %4, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %113
  %120 = call i32 (...) @WinPKIErrorString()
  %121 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %120)
  br label %145

122:                                              ; preds = %113
  %123 = load i64, i64* %7, align 8
  %124 = call i64 @calloc(i64 %123, i32 1)
  %125 = inttoptr i64 %124 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %125, %struct.TYPE_16__** %9, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %127 = icmp ne %struct.TYPE_16__* %126, null
  br i1 %127, label %130, label %128

128:                                              ; preds = %122
  %129 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  br label %145

130:                                              ; preds = %122
  %131 = load i32*, i32** %10, align 8
  %132 = load i32, i32* @CMSG_SIGNER_INFO_PARAM, align 4
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %134 = bitcast %struct.TYPE_16__* %133 to i32*
  %135 = call i64 @CryptMsgGetParam(i32* %131, i32 %132, i32 0, i32* %134, i64* %7)
  store i64 %135, i64* %4, align 8
  %136 = load i64, i64* %4, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %130
  %139 = call i32 (...) @WinPKIErrorString()
  %140 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %139)
  br label %145

141:                                              ; preds = %130
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %143 = call i64 @GetRFC3161TimeStamp(%struct.TYPE_16__* %142)
  store i64 %143, i64* %11, align 8
  br label %144

144:                                              ; preds = %141, %35
  br label %145

145:                                              ; preds = %144, %138, %128, %119, %110, %93, %83
  %146 = load i64, i64* %6, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %6, align 8
  br label %13

148:                                              ; preds = %34
  %149 = load i64, i64* %11, align 8
  store i64 %149, i64* %2, align 8
  br label %150

150:                                              ; preds = %148, %50
  %151 = load i64, i64* %2, align 8
  ret i64 %151
}

declare dso_local i32 @LocalFree(%struct.TYPE_15__*) #1

declare dso_local i32 @CryptMsgClose(i32*) #1

declare dso_local i32 @safe_free(%struct.TYPE_16__*) #1

declare dso_local i64 @lstrcmpA(i32, i32) #1

declare dso_local i32 @uprintf(i8*, ...) #1

declare dso_local i64 @CryptDecodeObjectEx(i32, i32, i32, i32, i32, i32*, i32*, i64*) #1

declare dso_local i32 @WinPKIErrorString(...) #1

declare dso_local i32* @CryptMsgOpenToDecode(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @CryptMsgUpdate(i32*, i32, i32, i64) #1

declare dso_local i64 @CryptMsgGetParam(i32*, i32, i32, i32*, i64*) #1

declare dso_local i64 @calloc(i64, i32) #1

declare dso_local i64 @GetRFC3161TimeStamp(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
