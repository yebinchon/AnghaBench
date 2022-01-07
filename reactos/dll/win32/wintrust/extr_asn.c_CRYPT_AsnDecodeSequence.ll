; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wintrust/extr_asn.c_CRYPT_AsnDecodeSequence.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wintrust/extr_asn.c_CRYPT_AsnDecodeSequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AsnDecodeSequenceItem = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"%p, %d, %p, %d, %08x, %p, %d, %p\0A\00", align 1
@ASN_SEQUENCE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"dataLen %d exceeds cbEncoded %d, failing\0A\00", align 1
@CRYPT_E_ASN1_CORRUPT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"expected %d decoded, got %d, failing\0A\00", align 1
@ERROR_MORE_DATA = common dso_local global i32 0, align 4
@CRYPT_E_ASN1_BADTAG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"returning %d (%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.AsnDecodeSequenceItem*, i32, i64*, i32, i32, i8*, i32*, i8*)* @CRYPT_AsnDecodeSequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CRYPT_AsnDecodeSequence(i32 %0, %struct.AsnDecodeSequenceItem* %1, i32 %2, i64* %3, i32 %4, i32 %5, i8* %6, i32* %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.AsnDecodeSequenceItem*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64*, align 8
  store i32 %0, i32* %10, align 4
  store %struct.AsnDecodeSequenceItem* %1, %struct.AsnDecodeSequenceItem** %11, align 8
  store i32 %2, i32* %12, align 4
  store i64* %3, i64** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  store i8* %8, i8** %18, align 8
  %28 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load i64*, i64** %13, align 8
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %15, align 4
  %33 = load i8*, i8** %16, align 8
  %34 = load i32*, i32** %17, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %18, align 8
  %37 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.AsnDecodeSequenceItem* %28, i32 %29, i64* %30, i32 %31, i32 %32, i8* %33, i32 %35, i8* %36)
  %38 = load i64*, i64** %13, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ASN_SEQUENCE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %170

43:                                               ; preds = %9
  %44 = load i64*, i64** %13, align 8
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @CRYPT_GetLen(i64* %44, i32 %45, i32* %20)
  store i32 %46, i32* %19, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %169

48:                                               ; preds = %43
  %49 = load i64*, i64** %13, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @GET_LEN_BYTES(i64 %51)
  store i32 %52, i32* %21, align 4
  %53 = load i64*, i64** %13, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 1
  %55 = load i32, i32* %21, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  store i64* %57, i64** %23, align 8
  %58 = load i32, i32* %21, align 4
  %59 = add nsw i32 1, %58
  %60 = load i32, i32* %14, align 4
  %61 = sub nsw i32 %60, %59
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %20, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %48
  %66 = load i32, i32* %20, align 4
  %67 = load i32, i32* %14, align 4
  %68 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load i32, i32* @CRYPT_E_ASN1_CORRUPT, align 4
  %70 = call i32 @SetLastError(i32 %69)
  %71 = load i32, i32* @FALSE, align 4
  store i32 %71, i32* %19, align 4
  br label %80

72:                                               ; preds = %48
  %73 = load i32, i32* %15, align 4
  %74 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load i64*, i64** %23, align 8
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @CRYPT_AsnDecodeSequenceItems(i32 %73, %struct.AsnDecodeSequenceItem* %74, i32 %75, i64* %76, i32 %77, i32 %78, i8* null, i64* null, i32* %22)
  store i32 %79, i32* %19, align 4
  br label %80

80:                                               ; preds = %72, %65
  %81 = load i32, i32* %19, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %80
  %84 = load i32, i32* %22, align 4
  %85 = load i32, i32* %20, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = load i32, i32* %20, align 4
  %89 = load i32, i32* %22, align 4
  %90 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %88, i32 %89)
  %91 = load i32, i32* @CRYPT_E_ASN1_CORRUPT, align 4
  %92 = call i32 @SetLastError(i32 %91)
  %93 = load i32, i32* @FALSE, align 4
  store i32 %93, i32* %19, align 4
  br label %94

94:                                               ; preds = %87, %83, %80
  %95 = load i32, i32* %19, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %168

97:                                               ; preds = %94
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %24, align 4
  br label %98

98:                                               ; preds = %119, %97
  %99 = load i32, i32* %24, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %122

102:                                              ; preds = %98
  %103 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %104 = load i32, i32* %24, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %103, i64 %105
  %107 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %25, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %25, align 4
  %111 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %112 = load i32, i32* %24, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %111, i64 %113
  %115 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %26, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %26, align 4
  br label %119

119:                                              ; preds = %102
  %120 = load i32, i32* %24, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %24, align 4
  br label %98

122:                                              ; preds = %98
  %123 = load i8*, i8** %16, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %25, align 4
  %127 = load i32*, i32** %17, align 8
  store i32 %126, i32* %127, align 4
  br label %167

128:                                              ; preds = %122
  %129 = load i32*, i32** %17, align 8
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %25, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = load i32, i32* @ERROR_MORE_DATA, align 4
  %135 = call i32 @SetLastError(i32 %134)
  %136 = load i32, i32* %25, align 4
  %137 = load i32*, i32** %17, align 8
  store i32 %136, i32* %137, align 4
  %138 = load i32, i32* @FALSE, align 4
  store i32 %138, i32* %19, align 4
  br label %166

139:                                              ; preds = %128
  %140 = load i32, i32* %25, align 4
  %141 = load i32*, i32** %17, align 8
  store i32 %140, i32* %141, align 4
  %142 = load i8*, i8** %18, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load i8*, i8** %18, align 8
  %146 = bitcast i8* %145 to i64*
  store i64* %146, i64** %27, align 8
  br label %153

147:                                              ; preds = %139
  %148 = load i8*, i8** %16, align 8
  %149 = bitcast i8* %148 to i64*
  %150 = load i32, i32* %26, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  store i64* %152, i64** %27, align 8
  br label %153

153:                                              ; preds = %147, %144
  %154 = load i8*, i8** %16, align 8
  %155 = load i32, i32* %26, align 4
  %156 = call i32 @memset(i8* %154, i32 0, i32 %155)
  %157 = load i32, i32* %15, align 4
  %158 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %159 = load i32, i32* %12, align 4
  %160 = load i64*, i64** %23, align 8
  %161 = load i32, i32* %14, align 4
  %162 = load i32, i32* %15, align 4
  %163 = load i8*, i8** %16, align 8
  %164 = load i64*, i64** %27, align 8
  %165 = call i32 @CRYPT_AsnDecodeSequenceItems(i32 %157, %struct.AsnDecodeSequenceItem* %158, i32 %159, i64* %160, i32 %161, i32 %162, i8* %163, i64* %164, i32* %22)
  store i32 %165, i32* %19, align 4
  br label %166

166:                                              ; preds = %153, %133
  br label %167

167:                                              ; preds = %166, %125
  br label %168

168:                                              ; preds = %167, %94
  br label %169

169:                                              ; preds = %168, %43
  br label %174

170:                                              ; preds = %9
  %171 = load i32, i32* @CRYPT_E_ASN1_BADTAG, align 4
  %172 = call i32 @SetLastError(i32 %171)
  %173 = load i32, i32* @FALSE, align 4
  store i32 %173, i32* %19, align 4
  br label %174

174:                                              ; preds = %170, %169
  %175 = load i32, i32* %19, align 4
  %176 = call i32 (...) @GetLastError()
  %177 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %175, i32 %176)
  %178 = load i32, i32* %19, align 4
  ret i32 %178
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @CRYPT_GetLen(i64*, i32, i32*) #1

declare dso_local i32 @GET_LEN_BYTES(i64) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @CRYPT_AsnDecodeSequenceItems(i32, %struct.AsnDecodeSequenceItem*, i32, i64*, i32, i32, i8*, i64*, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
