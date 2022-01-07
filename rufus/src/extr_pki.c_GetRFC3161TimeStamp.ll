; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_pki.c_GetRFC3161TimeStamp.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_pki.c_GetRFC3161TimeStamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32* }

@FALSE = common dso_local global i64 0, align 8
@szOID_RFC3161_counterSign = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [89 x i8] c"PKI: Multiple RFC 3161 countersigners found. This could indicate something very nasty...\00", align 1
@TRUE = common dso_local global i64 0, align 8
@PKCS_7_ASN_ENCODING = common dso_local global i32 0, align 4
@PKCS_CONTENT_INFO = common dso_local global i32 0, align 4
@CRYPT_DECODE_ALLOC_FLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"PKI: Could not retrieve RFC 3161 countersigner data: %s\00", align 1
@szOID_TIMESTAMP_TOKEN = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"PKI: Not an RFC 3161 timestamp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*)* @GetRFC3161TimeStamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @GetRFC3161TimeStamp(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %5, align 8
  store i64 0, i64* %7, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %6, align 8
  br label %15

15:                                               ; preds = %118, %1
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %16, %20
  br i1 %21, label %22, label %121

22:                                               ; preds = %15
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @szOID_RFC3161_counterSign, align 4
  %32 = call i64 @lstrcmpA(i32 %30, i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %117

34:                                               ; preds = %22
  %35 = load i64, i64* %5, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %2, align 8
  br label %123

39:                                               ; preds = %34
  %40 = load i64, i64* @TRUE, align 8
  store i64 %40, i64* %5, align 8
  %41 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %42 = load i32, i32* @PKCS_CONTENT_INFO, align 4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @CRYPT_DECODE_ALLOC_FLAG, align 4
  %66 = ptrtoint %struct.TYPE_13__** %8 to i32
  %67 = call i64 @CryptDecodeObjectEx(i32 %41, i32 %42, i32 %53, i32 %64, i32 %65, i32* null, i32 %66, i64* %7)
  store i64 %67, i64* %4, align 8
  %68 = load i64, i64* %4, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %39
  %71 = call i32 (...) @WinPKIErrorString()
  %72 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %118

73:                                               ; preds = %39
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i32*, i32** @szOID_TIMESTAMP_TOKEN, align 8
  %83 = call i8* @get_data_from_asn1(i32* %77, i64 %81, i32* %82, i32 4, i64* %11)
  %84 = bitcast i8* %83 to i32*
  store i32* %84, i32** %10, align 8
  %85 = load i32*, i32** %10, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %114

87:                                               ; preds = %73
  %88 = load i32*, i32** %10, align 8
  %89 = load i64, i64* %11, align 8
  %90 = call i8* @get_data_from_asn1(i32* %88, i64 %89, i32* null, i32 24, i64* %13)
  store i8* %90, i8** %12, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %113

93:                                               ; preds = %87
  %94 = load i64, i64* %13, align 8
  %95 = icmp ult i64 %94, 14
  br i1 %95, label %104, label %96

96:                                               ; preds = %93
  %97 = load i8*, i8** %12, align 8
  %98 = load i64, i64* %13, align 8
  %99 = sub i64 %98, 1
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 90
  br i1 %103, label %104, label %109

104:                                              ; preds = %96, %93
  %105 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %106 = load i8*, i8** %12, align 8
  %107 = load i64, i64* %13, align 8
  %108 = call i32 @DumpBufferHex(i8* %106, i64 %107)
  br label %112

109:                                              ; preds = %96
  %110 = load i8*, i8** %12, align 8
  %111 = call i64 @strtoull(i8* %110, i32* null, i32 10)
  store i64 %111, i64* %9, align 8
  br label %112

112:                                              ; preds = %109, %104
  br label %113

113:                                              ; preds = %112, %87
  br label %114

114:                                              ; preds = %113, %73
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %116 = call i32 @LocalFree(%struct.TYPE_13__* %115)
  br label %117

117:                                              ; preds = %114, %22
  br label %118

118:                                              ; preds = %117, %70
  %119 = load i64, i64* %6, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %6, align 8
  br label %15

121:                                              ; preds = %15
  %122 = load i64, i64* %9, align 8
  store i64 %122, i64* %2, align 8
  br label %123

123:                                              ; preds = %121, %37
  %124 = load i64, i64* %2, align 8
  ret i64 %124
}

declare dso_local i64 @lstrcmpA(i32, i32) #1

declare dso_local i32 @uprintf(i8*, ...) #1

declare dso_local i64 @CryptDecodeObjectEx(i32, i32, i32, i32, i32, i32*, i32, i64*) #1

declare dso_local i32 @WinPKIErrorString(...) #1

declare dso_local i8* @get_data_from_asn1(i32*, i64, i32*, i32, i64*) #1

declare dso_local i32 @DumpBufferHex(i8*, i64) #1

declare dso_local i64 @strtoull(i8*, i32*, i32) #1

declare dso_local i32 @LocalFree(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
