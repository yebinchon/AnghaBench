; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wintrust/extr_crypt.c_WINTRUST_GetSignedMsgFromCabFile.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wintrust/extr_crypt.c_WINTRUST_GetSignedMsgFromCabFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"(%p %p %d %p %p)\0A\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@INVALID_SET_FILE_POINTER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"seek error\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@cfhead_SIZEOF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"reading header failed\0A\00", align 1
@cfhead_Signature = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"cabinet signature not present\0A\00", align 1
@cfhead_MajorVersion = common dso_local global i64 0, align 8
@cfhead_MinorVersion = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"cabinet format version > 1.3\0A\00", align 1
@cfhead_Flags = common dso_local global i32 0, align 4
@cfheadRESERVE_PRESENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"no header present, not signed\0A\00", align 1
@cfheadext_SIZEOF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"bunk reserve-sizes?\0A\00", align 1
@cfheadext_HeaderReserved = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"no header_resv, not signed\0A\00", align 1
@cfsigninfo_SIZEOF = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"header_resv too small, not signed\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"WARNING; header reserved space > 60000\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"couldn't read reserve\0A\00", align 1
@cfsigninfo_CertOffset = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"cert_offset: %d\0A\00", align 1
@cfsigninfo_CertSize = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"cert_size: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"offset beyond file, not attempting to read\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [32 x i8] c"couldn't seek to cert location\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"couldn't read cert\0A\00", align 1
@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@PKCS_7_ASN_ENCODING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32, i32*, i32*)* @WINTRUST_GetSignedMsgFromCabFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WINTRUST_GetSignedMsgFromCabFile(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [64 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* %20, i32* %21, i32 %22, i32* %23, i32* %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SEEK_CUR, align 4
  %30 = call i64 @SetFilePointer(i32 %28, i32 0, i32* null, i32 %29)
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %13, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SEEK_END, align 4
  %36 = call i64 @SetFilePointer(i32 %34, i32 0, i32* null, i32 %35)
  %37 = load i64, i64* @INVALID_SET_FILE_POINTER, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %5
  %40 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %6, align 4
  br label %277

42:                                               ; preds = %5
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SEEK_CUR, align 4
  %47 = call i64 @SetFilePointer(i32 %45, i32 0, i32* null, i32 %46)
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %62, label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %13, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %62, label %54

54:                                               ; preds = %51
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @SEEK_SET, align 4
  %59 = call i64 @SetFilePointer(i32 %57, i32 0, i32* null, i32 %58)
  %60 = load i64, i64* @INVALID_SET_FILE_POINTER, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %54, %51, %42
  %63 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %6, align 4
  br label %277

65:                                               ; preds = %54
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds [64 x i32], [64 x i32]* %16, i64 0, i64 0
  %70 = load i32, i32* @cfhead_SIZEOF, align 4
  %71 = call i32 @ReadFile(i32 %68, i32* %69, i32 %70, i32* %19, i32* null)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load i32, i32* %19, align 4
  %75 = load i32, i32* @cfhead_SIZEOF, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73, %65
  %78 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i32, i32* @FALSE, align 4
  store i32 %79, i32* %6, align 4
  br label %277

80:                                               ; preds = %73
  %81 = getelementptr inbounds [64 x i32], [64 x i32]* %16, i64 0, i64 0
  %82 = load i32, i32* @cfhead_Signature, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = call i32 @EndGetI32(i32* %84)
  %86 = icmp ne i32 %85, 1178817357
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = call i32 @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %89 = load i32, i32* @FALSE, align 4
  store i32 %89, i32* %6, align 4
  br label %277

90:                                               ; preds = %80
  %91 = load i64, i64* @cfhead_MajorVersion, align 8
  %92 = getelementptr inbounds [64 x i32], [64 x i32]* %16, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = icmp sgt i32 %93, 1
  br i1 %94, label %105, label %95

95:                                               ; preds = %90
  %96 = load i64, i64* @cfhead_MajorVersion, align 8
  %97 = getelementptr inbounds [64 x i32], [64 x i32]* %16, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %108

100:                                              ; preds = %95
  %101 = load i64, i64* @cfhead_MinorVersion, align 8
  %102 = getelementptr inbounds [64 x i32], [64 x i32]* %16, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp sgt i32 %103, 3
  br i1 %104, label %105, label %108

105:                                              ; preds = %100, %90
  %106 = call i32 @WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %107 = load i32, i32* @FALSE, align 4
  store i32 %107, i32* %6, align 4
  br label %277

108:                                              ; preds = %100, %95
  %109 = getelementptr inbounds [64 x i32], [64 x i32]* %16, i64 0, i64 0
  %110 = load i32, i32* @cfhead_Flags, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = call i8* @EndGetI16(i32* %112)
  %114 = ptrtoint i8* %113 to i32
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* @cfheadRESERVE_PRESENT, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %108
  %120 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %121 = load i32, i32* @FALSE, align 4
  store i32 %121, i32* %6, align 4
  br label %277

122:                                              ; preds = %108
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds [64 x i32], [64 x i32]* %16, i64 0, i64 0
  %127 = load i32, i32* @cfheadext_SIZEOF, align 4
  %128 = call i32 @ReadFile(i32 %125, i32* %126, i32 %127, i32* %19, i32* null)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %122
  %131 = load i32, i32* %19, align 4
  %132 = load i32, i32* @cfheadext_SIZEOF, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %130, %122
  %135 = call i32 @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %136 = load i32, i32* @FALSE, align 4
  store i32 %136, i32* %6, align 4
  br label %277

137:                                              ; preds = %130
  %138 = getelementptr inbounds [64 x i32], [64 x i32]* %16, i64 0, i64 0
  %139 = load i32, i32* @cfheadext_HeaderReserved, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = call i8* @EndGetI16(i32* %141)
  %143 = ptrtoint i8* %142 to i32
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %137
  %147 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %148 = load i32, i32* @FALSE, align 4
  store i32 %148, i32* %6, align 4
  br label %277

149:                                              ; preds = %137
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* @cfsigninfo_SIZEOF, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  %154 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %155 = load i32, i32* @FALSE, align 4
  store i32 %155, i32* %6, align 4
  br label %277

156:                                              ; preds = %149
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %12, align 4
  %159 = icmp sgt i32 %158, 60000
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = call i32 @WARN(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  br label %162

162:                                              ; preds = %160, %157
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds [64 x i32], [64 x i32]* %16, i64 0, i64 0
  %167 = load i32, i32* @cfsigninfo_SIZEOF, align 4
  %168 = call i32 @ReadFile(i32 %165, i32* %166, i32 %167, i32* %19, i32* null)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %162
  %171 = load i32, i32* %19, align 4
  %172 = load i32, i32* @cfsigninfo_SIZEOF, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %170, %162
  %175 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %176 = load i32, i32* @FALSE, align 4
  store i32 %176, i32* %6, align 4
  br label %277

177:                                              ; preds = %170
  %178 = getelementptr inbounds [64 x i32], [64 x i32]* %16, i64 0, i64 0
  %179 = load i32, i32* @cfsigninfo_CertOffset, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = call i32 @EndGetI32(i32* %181)
  store i32 %182, i32* %17, align 4
  %183 = load i32, i32* %17, align 4
  %184 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 %183)
  %185 = getelementptr inbounds [64 x i32], [64 x i32]* %16, i64 0, i64 0
  %186 = load i32, i32* @cfsigninfo_CertSize, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = call i32 @EndGetI32(i32* %188)
  store i32 %189, i32* %18, align 4
  %190 = load i32, i32* %18, align 4
  %191 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 %190)
  %192 = load i32, i32* %17, align 4
  %193 = load i32, i32* %14, align 4
  %194 = icmp sgt i32 %192, %193
  br i1 %194, label %205, label %195

195:                                              ; preds = %177
  %196 = load i32, i32* %18, align 4
  %197 = load i32, i32* %14, align 4
  %198 = icmp sgt i32 %196, %197
  br i1 %198, label %205, label %199

199:                                              ; preds = %195
  %200 = load i32, i32* %17, align 4
  %201 = load i32, i32* %18, align 4
  %202 = add nsw i32 %200, %201
  %203 = load i32, i32* %14, align 4
  %204 = icmp sgt i32 %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %199, %195, %177
  %206 = call i32 @WARN(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0))
  %207 = load i32, i32* @FALSE, align 4
  store i32 %207, i32* %6, align 4
  br label %277

208:                                              ; preds = %199
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %13, align 4
  %213 = load i32, i32* @SEEK_SET, align 4
  %214 = call i64 @SetFilePointer(i32 %211, i32 %212, i32* null, i32 %213)
  %215 = load i32*, i32** %11, align 8
  %216 = icmp ne i32* %215, null
  br i1 %216, label %221, label %217

217:                                              ; preds = %208
  %218 = load i32, i32* %18, align 4
  %219 = load i32*, i32** %10, align 8
  store i32 %218, i32* %219, align 4
  %220 = load i32, i32* @TRUE, align 4
  store i32 %220, i32* %6, align 4
  br label %277

221:                                              ; preds = %208
  %222 = load i32*, i32** %10, align 8
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %18, align 4
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %232

226:                                              ; preds = %221
  %227 = load i32, i32* %18, align 4
  %228 = load i32*, i32** %10, align 8
  store i32 %227, i32* %228, align 4
  %229 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %230 = call i32 @SetLastError(i32 %229)
  %231 = load i32, i32* @FALSE, align 4
  store i32 %231, i32* %6, align 4
  br label %277

232:                                              ; preds = %221
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* %17, align 4
  %237 = load i32, i32* @SEEK_SET, align 4
  %238 = call i64 @SetFilePointer(i32 %235, i32 %236, i32* null, i32 %237)
  %239 = load i64, i64* @INVALID_SET_FILE_POINTER, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %232
  %242 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  %243 = load i32, i32* @FALSE, align 4
  store i32 %243, i32* %6, align 4
  br label %277

244:                                              ; preds = %232
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load i32*, i32** %11, align 8
  %249 = load i32, i32* %18, align 4
  %250 = call i32 @ReadFile(i32 %247, i32* %248, i32 %249, i32* %19, i32* null)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %244
  %253 = load i32, i32* %19, align 4
  %254 = load i32, i32* %18, align 4
  %255 = icmp ne i32 %253, %254
  br i1 %255, label %256, label %265

256:                                              ; preds = %252, %244
  %257 = call i32 @ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  %258 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %13, align 4
  %262 = load i32, i32* @SEEK_SET, align 4
  %263 = call i64 @SetFilePointer(i32 %260, i32 %261, i32* null, i32 %262)
  %264 = load i32, i32* @FALSE, align 4
  store i32 %264, i32* %6, align 4
  br label %277

265:                                              ; preds = %252
  %266 = load i32, i32* @X509_ASN_ENCODING, align 4
  %267 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %268 = or i32 %266, %267
  %269 = load i32*, i32** %8, align 8
  store i32 %268, i32* %269, align 4
  %270 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* %13, align 4
  %274 = load i32, i32* @SEEK_SET, align 4
  %275 = call i64 @SetFilePointer(i32 %272, i32 %273, i32* null, i32 %274)
  %276 = load i32, i32* @TRUE, align 4
  store i32 %276, i32* %6, align 4
  br label %277

277:                                              ; preds = %265, %256, %241, %226, %217, %205, %174, %153, %146, %134, %119, %105, %87, %77, %62, %39
  %278 = load i32, i32* %6, align 4
  ret i32 %278
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i64 @SetFilePointer(i32, i32, i32*, i32) #1

declare dso_local i32 @ReadFile(i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @EndGetI32(i32*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i8* @EndGetI16(i32*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @SetLastError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
