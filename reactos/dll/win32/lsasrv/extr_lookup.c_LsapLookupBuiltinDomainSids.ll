; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_lookup.c_LsapLookupBuiltinDomainSids.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_lookup.c_LsapLookupBuiltinDomainSids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i32*, i32, i32 }
%struct.TYPE_28__ = type { i32, i32, i32 }
%struct.TYPE_33__ = type { i64, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_32__ = type { i64, i64, %struct.TYPE_34__, i64 }
%struct.TYPE_31__ = type { %struct.TYPE_29__*, i32*, i32 }
%struct.TYPE_29__ = type { i32, i32, i32 }
%struct.TYPE_30__ = type { i64*, i32*, i32 }

@STATUS_SUCCESS = common dso_local global %struct.TYPE_34__* null, align 8
@SAM_SERVER_CONNECT = common dso_local global i32 0, align 4
@SAM_SERVER_LOOKUP_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"SamrConnect failed (Status %08lx)\0A\00", align 1
@DOMAIN_LOOKUP = common dso_local global i32 0, align 4
@BuiltinDomainSid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"SamOpenDomain failed (Status %08lx)\0A\00", align 1
@SidTypeUnknown = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"Mapping SID: %S\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Found builtin domain!\0A\00", align 1
@SidTypeDomain = common dso_local global i64 0, align 8
@BuiltinDomainName = common dso_local global %struct.TYPE_28__ zeroinitializer, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global %struct.TYPE_34__* null, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"Mapped to: %wZ\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Found builtin domain account!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_34__* (%struct.TYPE_33__*, %struct.TYPE_32__*, i32, i32*)* @LsapLookupBuiltinDomainSids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_34__* @LsapLookupBuiltinDomainSids(%struct.TYPE_33__* %0, %struct.TYPE_32__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_33__*, align 8
  %6 = alloca %struct.TYPE_32__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_31__, align 8
  %12 = alloca %struct.TYPE_30__, align 8
  %13 = alloca %struct.TYPE_34__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca [1 x i64], align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_34__*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %5, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %18 = bitcast %struct.TYPE_31__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 24, i1 false)
  %19 = bitcast %struct.TYPE_30__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 24, i1 false)
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %13, align 8
  %20 = load %struct.TYPE_34__*, %struct.TYPE_34__** @STATUS_SUCCESS, align 8
  store %struct.TYPE_34__* %20, %struct.TYPE_34__** %17, align 8
  %21 = load i32, i32* @SAM_SERVER_CONNECT, align 4
  %22 = load i32, i32* @SAM_SERVER_LOOKUP_DOMAIN, align 4
  %23 = or i32 %21, %22
  %24 = call %struct.TYPE_34__* @SamrConnect(i32* null, i32** %9, i32 %23)
  store %struct.TYPE_34__* %24, %struct.TYPE_34__** %17, align 8
  %25 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %26 = call i64 @NT_SUCCESS(%struct.TYPE_34__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %4
  %29 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %30 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.TYPE_34__* %29)
  br label %284

31:                                               ; preds = %4
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* @DOMAIN_LOOKUP, align 4
  %34 = load i32, i32* @BuiltinDomainSid, align 4
  %35 = call %struct.TYPE_34__* @SamrOpenDomain(i32* %32, i32 %33, i32 %34, i32** %10)
  store %struct.TYPE_34__* %35, %struct.TYPE_34__** %17, align 8
  %36 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %37 = call i64 @NT_SUCCESS(%struct.TYPE_34__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %41 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_34__* %40)
  br label %284

42:                                               ; preds = %31
  store i64 0, i64* %16, align 8
  br label %43

43:                                               ; preds = %280, %42
  %44 = load i64, i64* %16, align 8
  %45 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %44, %47
  br i1 %48, label %49, label %283

49:                                               ; preds = %43
  %50 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %51 = load i64, i64* %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SidTypeUnknown, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %280

58:                                               ; preds = %49
  %59 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %60, align 8
  %62 = load i64, i64* %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ConvertSidToStringSidW(i32 %65, %struct.TYPE_34__** %13)
  %67 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %68 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_34__* %67)
  %69 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %70 = call i32 @LocalFree(%struct.TYPE_34__* %69)
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %13, align 8
  %71 = load i32, i32* @BuiltinDomainSid, align 4
  %72 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %73, align 8
  %75 = load i64, i64* %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @RtlEqualSid(i32 %71, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %152

81:                                               ; preds = %58
  %82 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i64, i64* @SidTypeDomain, align 8
  %84 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %85 = load i64, i64* %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %86, i32 0, i32 0
  store i64 %83, i64* %87, align 8
  %88 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %89 = load i64, i64* %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %90, i32 0, i32 3
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @BuiltinDomainName, i32 0, i32 2), align 4
  %93 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %94 = load i64, i64* %16, align 8
  %95 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %96, i32 0, i32 2
  store i32 %92, i32* %97, align 4
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @BuiltinDomainName, i32 0, i32 0), align 4
  %99 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %100 = load i64, i64* %16, align 8
  %101 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %102, i32 0, i32 1
  store i32 %98, i32* %103, align 8
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @BuiltinDomainName, i32 0, i32 0), align 4
  %105 = call i8* @MIDL_user_allocate(i32 %104)
  %106 = bitcast i8* %105 to i32*
  %107 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %108 = load i64, i64* %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %110, i32 0, i32 0
  store i32* %106, i32** %111, align 8
  %112 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %113 = load i64, i64* %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %81
  %120 = load %struct.TYPE_34__*, %struct.TYPE_34__** @STATUS_INSUFFICIENT_RESOURCES, align 8
  store %struct.TYPE_34__* %120, %struct.TYPE_34__** %17, align 8
  br label %284

121:                                              ; preds = %81
  %122 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %123 = load i64, i64* %16, align 8
  %124 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @BuiltinDomainName, i32 0, i32 1), align 4
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @BuiltinDomainName, i32 0, i32 0), align 4
  %130 = call i32 @RtlCopyMemory(i32* %127, i32 %128, i32 %129)
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @BuiltinDomainSid, align 4
  %133 = call %struct.TYPE_34__* @LsapAddDomainToDomainsList(i32 %131, %struct.TYPE_28__* @BuiltinDomainName, i32 %132, i64* %14)
  store %struct.TYPE_34__* %133, %struct.TYPE_34__** %17, align 8
  %134 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %135 = call i64 @NT_SUCCESS(%struct.TYPE_34__* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %121
  br label %284

138:                                              ; preds = %121
  %139 = load i64, i64* %14, align 8
  %140 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %141 = load i64, i64* %16, align 8
  %142 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %142, i32 0, i32 1
  store i64 %139, i64* %143, align 8
  %144 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %145 = load i64, i64* %16, align 8
  %146 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %146, i32 0, i32 2
  %148 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_34__* %147)
  %149 = load i32*, i32** %8, align 8
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 4
  br label %279

152:                                              ; preds = %58
  %153 = load i32, i32* @BuiltinDomainSid, align 4
  %154 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_27__*, %struct.TYPE_27__** %155, align 8
  %157 = load i64, i64* %16, align 8
  %158 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @LsapIsPrefixSid(i32 %153, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %278

163:                                              ; preds = %152
  %164 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %165 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_27__*, %struct.TYPE_27__** %166, align 8
  %168 = load i64, i64* %16, align 8
  %169 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %167, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i64 @LsapGetRelativeIdFromSid(i32 %171)
  %173 = getelementptr inbounds [1 x i64], [1 x i64]* %15, i64 0, i64 0
  store i64 %172, i64* %173, align 8
  %174 = load i32*, i32** %10, align 8
  %175 = getelementptr inbounds [1 x i64], [1 x i64]* %15, i64 0, i64 0
  %176 = call %struct.TYPE_34__* @SamrLookupIdsInDomain(i32* %174, i32 1, i64* %175, %struct.TYPE_31__* %11, %struct.TYPE_30__* %12)
  store %struct.TYPE_34__* %176, %struct.TYPE_34__** %17, align 8
  %177 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %178 = call i64 @NT_SUCCESS(%struct.TYPE_34__* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %277

180:                                              ; preds = %163
  %181 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %12, i32 0, i32 0
  %182 = load i64*, i64** %181, align 8
  %183 = getelementptr inbounds i64, i64* %182, i64 0
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %186 = load i64, i64* %16, align 8
  %187 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %185, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %187, i32 0, i32 0
  store i64 %184, i64* %188, align 8
  %189 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %190 = load i64, i64* %16, align 8
  %191 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %189, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %191, i32 0, i32 3
  store i64 0, i64* %192, align 8
  %193 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 0
  %194 = load %struct.TYPE_29__*, %struct.TYPE_29__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %194, i64 0
  %196 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %199 = load i64, i64* %16, align 8
  %200 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %198, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %201, i32 0, i32 2
  store i32 %197, i32* %202, align 4
  %203 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 0
  %204 = load %struct.TYPE_29__*, %struct.TYPE_29__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %204, i64 0
  %206 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %209 = load i64, i64* %16, align 8
  %210 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %208, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %211, i32 0, i32 1
  store i32 %207, i32* %212, align 8
  %213 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 0
  %214 = load %struct.TYPE_29__*, %struct.TYPE_29__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %214, i64 0
  %216 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i8* @MIDL_user_allocate(i32 %217)
  %219 = bitcast i8* %218 to i32*
  %220 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %221 = load i64, i64* %16, align 8
  %222 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %220, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %223, i32 0, i32 0
  store i32* %219, i32** %224, align 8
  %225 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %226 = load i64, i64* %16, align 8
  %227 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %225, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = icmp eq i32* %230, null
  br i1 %231, label %232, label %236

232:                                              ; preds = %180
  %233 = call i32 @SamIFree_SAMPR_RETURNED_USTRING_ARRAY(%struct.TYPE_31__* %11)
  %234 = call i32 @SamIFree_SAMPR_ULONG_ARRAY(%struct.TYPE_30__* %12)
  %235 = load %struct.TYPE_34__*, %struct.TYPE_34__** @STATUS_INSUFFICIENT_RESOURCES, align 8
  store %struct.TYPE_34__* %235, %struct.TYPE_34__** %17, align 8
  br label %284

236:                                              ; preds = %180
  %237 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %238 = load i64, i64* %16, align 8
  %239 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %237, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 0
  %244 = load %struct.TYPE_29__*, %struct.TYPE_29__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %244, i64 0
  %246 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 0
  %249 = load %struct.TYPE_29__*, %struct.TYPE_29__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %249, i64 0
  %251 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @RtlCopyMemory(i32* %242, i32 %247, i32 %252)
  %254 = call i32 @SamIFree_SAMPR_RETURNED_USTRING_ARRAY(%struct.TYPE_31__* %11)
  %255 = call i32 @SamIFree_SAMPR_ULONG_ARRAY(%struct.TYPE_30__* %12)
  %256 = load i32, i32* %7, align 4
  %257 = load i32, i32* @BuiltinDomainSid, align 4
  %258 = call %struct.TYPE_34__* @LsapAddDomainToDomainsList(i32 %256, %struct.TYPE_28__* @BuiltinDomainName, i32 %257, i64* %14)
  store %struct.TYPE_34__* %258, %struct.TYPE_34__** %17, align 8
  %259 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %260 = call i64 @NT_SUCCESS(%struct.TYPE_34__* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %263, label %262

262:                                              ; preds = %236
  br label %284

263:                                              ; preds = %236
  %264 = load i64, i64* %14, align 8
  %265 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %266 = load i64, i64* %16, align 8
  %267 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %265, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %267, i32 0, i32 1
  store i64 %264, i64* %268, align 8
  %269 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %270 = load i64, i64* %16, align 8
  %271 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %269, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %271, i32 0, i32 2
  %273 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_34__* %272)
  %274 = load i32*, i32** %8, align 8
  %275 = load i32, i32* %274, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %274, align 4
  br label %277

277:                                              ; preds = %263, %163
  br label %278

278:                                              ; preds = %277, %152
  br label %279

279:                                              ; preds = %278, %138
  br label %280

280:                                              ; preds = %279, %57
  %281 = load i64, i64* %16, align 8
  %282 = add i64 %281, 1
  store i64 %282, i64* %16, align 8
  br label %43

283:                                              ; preds = %43
  br label %284

284:                                              ; preds = %283, %262, %232, %137, %119, %39, %28
  %285 = load i32*, i32** %10, align 8
  %286 = icmp ne i32* %285, null
  br i1 %286, label %287, label %289

287:                                              ; preds = %284
  %288 = call i32 @SamrCloseHandle(i32** %10)
  br label %289

289:                                              ; preds = %287, %284
  %290 = load i32*, i32** %9, align 8
  %291 = icmp ne i32* %290, null
  br i1 %291, label %292, label %294

292:                                              ; preds = %289
  %293 = call i32 @SamrCloseHandle(i32** %9)
  br label %294

294:                                              ; preds = %292, %289
  %295 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  ret %struct.TYPE_34__* %295
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_34__* @SamrConnect(i32*, i32**, i32) #2

declare dso_local i64 @NT_SUCCESS(%struct.TYPE_34__*) #2

declare dso_local i32 @TRACE(i8*, ...) #2

declare dso_local %struct.TYPE_34__* @SamrOpenDomain(i32*, i32, i32, i32**) #2

declare dso_local i32 @ConvertSidToStringSidW(i32, %struct.TYPE_34__**) #2

declare dso_local i32 @LocalFree(%struct.TYPE_34__*) #2

declare dso_local i64 @RtlEqualSid(i32, i32) #2

declare dso_local i8* @MIDL_user_allocate(i32) #2

declare dso_local i32 @RtlCopyMemory(i32*, i32, i32) #2

declare dso_local %struct.TYPE_34__* @LsapAddDomainToDomainsList(i32, %struct.TYPE_28__*, i32, i64*) #2

declare dso_local i64 @LsapIsPrefixSid(i32, i32) #2

declare dso_local i64 @LsapGetRelativeIdFromSid(i32) #2

declare dso_local %struct.TYPE_34__* @SamrLookupIdsInDomain(i32*, i32, i64*, %struct.TYPE_31__*, %struct.TYPE_30__*) #2

declare dso_local i32 @SamIFree_SAMPR_RETURNED_USTRING_ARRAY(%struct.TYPE_31__*) #2

declare dso_local i32 @SamIFree_SAMPR_ULONG_ARRAY(%struct.TYPE_30__*) #2

declare dso_local i32 @SamrCloseHandle(i32**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
