; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_lookup.c_LsapLookupIsolatedAccountNames.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_lookup.c_LsapLookupIsolatedAccountNames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64 }
%struct.TYPE_22__ = type { i64, i32, i64, i32* }
%struct.TYPE_20__ = type { i64*, i32*, i32 }

@STATUS_SUCCESS = common dso_local global %struct.TYPE_21__* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"()\0A\00", align 1
@SAM_SERVER_CONNECT = common dso_local global i32 0, align 4
@SAM_SERVER_LOOKUP_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"SamrConnect failed (Status %08lx)\0A\00", align 1
@DOMAIN_LOOKUP = common dso_local global i32 0, align 4
@AccountDomainSid = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"SamOpenDomain failed (Status %08lx)\0A\00", align 1
@SidTypeUnknown = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"Mapping name: %wZ\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Found relative ID: %lu\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global %struct.TYPE_21__* null, align 8
@AccountDomainName = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (i64, %struct.TYPE_21__*, %struct.TYPE_21__*, i32, %struct.TYPE_22__*, i32*)* @LsapLookupIsolatedAccountNames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @LsapLookupIsolatedAccountNames(i64 %0, %struct.TYPE_21__* %1, %struct.TYPE_21__* %2, i32 %3, %struct.TYPE_22__* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_20__, align 8
  %16 = alloca %struct.TYPE_20__, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_21__*, align 8
  store i64 %0, i64* %7, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %8, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_22__* %4, %struct.TYPE_22__** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %20 = bitcast %struct.TYPE_20__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 24, i1 false)
  %21 = bitcast %struct.TYPE_20__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 24, i1 false)
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** @STATUS_SUCCESS, align 8
  store %struct.TYPE_21__* %22, %struct.TYPE_21__** %19, align 8
  %23 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @SAM_SERVER_CONNECT, align 4
  %25 = load i32, i32* @SAM_SERVER_LOOKUP_DOMAIN, align 4
  %26 = or i32 %24, %25
  %27 = call %struct.TYPE_21__* @SamrConnect(i32* null, i32** %13, i32 %26)
  store %struct.TYPE_21__* %27, %struct.TYPE_21__** %19, align 8
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %29 = call i64 @NT_SUCCESS(%struct.TYPE_21__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %6
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %33 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_21__* %32)
  br label %145

34:                                               ; preds = %6
  %35 = load i32*, i32** %13, align 8
  %36 = load i32, i32* @DOMAIN_LOOKUP, align 4
  %37 = load i32, i32* @AccountDomainSid, align 4
  %38 = call %struct.TYPE_21__* @SamrOpenDomain(i32* %35, i32 %36, i32 %37, i32** %14)
  store %struct.TYPE_21__* %38, %struct.TYPE_21__** %19, align 8
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %40 = call i64 @NT_SUCCESS(%struct.TYPE_21__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %44 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_21__* %43)
  br label %145

45:                                               ; preds = %34
  store i64 0, i64* %18, align 8
  br label %46

46:                                               ; preds = %141, %45
  %47 = load i64, i64* %18, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %144

50:                                               ; preds = %46
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %52 = load i64, i64* %18, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SidTypeUnknown, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %141

59:                                               ; preds = %50
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %61 = load i64, i64* %18, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %141

67:                                               ; preds = %59
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %69 = load i64, i64* %18, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i64 %69
  %71 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_21__* %70)
  %72 = load i32*, i32** %14, align 8
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %74 = load i64, i64* %18, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i64 %74
  %76 = call %struct.TYPE_21__* @SamrLookupNamesInDomain(i32* %72, i32 1, %struct.TYPE_21__* %75, %struct.TYPE_20__* %15, %struct.TYPE_20__* %16)
  store %struct.TYPE_21__* %76, %struct.TYPE_21__** %19, align 8
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %78 = call i64 @NT_SUCCESS(%struct.TYPE_21__* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %138

80:                                               ; preds = %67
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 %84)
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %91 = load i64, i64* %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 0
  store i64 %89, i64* %93, align 8
  %94 = load i32, i32* @AccountDomainSid, align 4
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32* @CreateSidFromSidAndRid(i32 %94, i64 %98)
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %101 = load i64, i64* %18, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 3
  store i32* %99, i32** %103, align 8
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %105 = load i64, i64* %18, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %80
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** @STATUS_INSUFFICIENT_RESOURCES, align 8
  store %struct.TYPE_21__* %111, %struct.TYPE_21__** %19, align 8
  br label %145

112:                                              ; preds = %80
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %114 = load i64, i64* %18, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 1
  store i32 -1, i32* %116, align 8
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %118 = load i64, i64* %18, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 2
  store i64 0, i64* %120, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @AccountDomainSid, align 4
  %123 = call %struct.TYPE_21__* @LsapAddDomainToDomainsList(i32 %121, i32* @AccountDomainName, i32 %122, i64* %17)
  store %struct.TYPE_21__* %123, %struct.TYPE_21__** %19, align 8
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %125 = call i64 @NT_SUCCESS(%struct.TYPE_21__* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %112
  br label %145

128:                                              ; preds = %112
  %129 = load i64, i64* %17, align 8
  %130 = trunc i64 %129 to i32
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %132 = load i64, i64* %18, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 1
  store i32 %130, i32* %134, align 8
  %135 = load i32*, i32** %12, align 8
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %128, %67
  %139 = call i32 @SamIFree_SAMPR_ULONG_ARRAY(%struct.TYPE_20__* %15)
  %140 = call i32 @SamIFree_SAMPR_ULONG_ARRAY(%struct.TYPE_20__* %16)
  br label %141

141:                                              ; preds = %138, %66, %58
  %142 = load i64, i64* %18, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %18, align 8
  br label %46

144:                                              ; preds = %46
  br label %145

145:                                              ; preds = %144, %127, %110, %42, %31
  %146 = load i32*, i32** %14, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = call i32 @SamrCloseHandle(i32** %14)
  br label %150

150:                                              ; preds = %148, %145
  %151 = load i32*, i32** %13, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = call i32 @SamrCloseHandle(i32** %13)
  br label %155

155:                                              ; preds = %153, %150
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  ret %struct.TYPE_21__* %156
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @TRACE(i8*, ...) #2

declare dso_local %struct.TYPE_21__* @SamrConnect(i32*, i32**, i32) #2

declare dso_local i64 @NT_SUCCESS(%struct.TYPE_21__*) #2

declare dso_local %struct.TYPE_21__* @SamrOpenDomain(i32*, i32, i32, i32**) #2

declare dso_local %struct.TYPE_21__* @SamrLookupNamesInDomain(i32*, i32, %struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_20__*) #2

declare dso_local i32* @CreateSidFromSidAndRid(i32, i64) #2

declare dso_local %struct.TYPE_21__* @LsapAddDomainToDomainsList(i32, i32*, i32, i64*) #2

declare dso_local i32 @SamIFree_SAMPR_ULONG_ARRAY(%struct.TYPE_20__*) #2

declare dso_local i32 @SamrCloseHandle(i32**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
