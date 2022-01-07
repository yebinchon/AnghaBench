; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_lookup.c_LsapLookupIsolatedBuiltinNames.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_lookup.c_LsapLookupIsolatedBuiltinNames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64 }
%struct.TYPE_23__ = type { i64, i32, i64, i32* }
%struct.TYPE_21__ = type { i64*, i32*, i32 }

@STATUS_SUCCESS = common dso_local global %struct.TYPE_22__* null, align 8
@SAM_SERVER_CONNECT = common dso_local global i32 0, align 4
@SAM_SERVER_LOOKUP_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"SamrConnect failed (Status %08lx)\0A\00", align 1
@DOMAIN_LOOKUP = common dso_local global i32 0, align 4
@BuiltinDomainSid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"SamOpenDomain failed (Status %08lx)\0A\00", align 1
@SidTypeUnknown = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"Mapping name: %wZ\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Found relative ID: %lu\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global %struct.TYPE_22__* null, align 8
@BuiltinDomainName = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (i64, %struct.TYPE_22__*, %struct.TYPE_22__*, i32, %struct.TYPE_23__*, i32*)* @LsapLookupIsolatedBuiltinNames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @LsapLookupIsolatedBuiltinNames(i64 %0, %struct.TYPE_22__* %1, %struct.TYPE_22__* %2, i32 %3, %struct.TYPE_23__* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_21__, align 8
  %16 = alloca %struct.TYPE_21__, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_22__*, align 8
  store i64 %0, i64* %7, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_23__* %4, %struct.TYPE_23__** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %20 = bitcast %struct.TYPE_21__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 24, i1 false)
  %21 = bitcast %struct.TYPE_21__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 24, i1 false)
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** @STATUS_SUCCESS, align 8
  store %struct.TYPE_22__* %22, %struct.TYPE_22__** %19, align 8
  %23 = load i32, i32* @SAM_SERVER_CONNECT, align 4
  %24 = load i32, i32* @SAM_SERVER_LOOKUP_DOMAIN, align 4
  %25 = or i32 %23, %24
  %26 = call %struct.TYPE_22__* @SamrConnect(i32* null, i32** %13, i32 %25)
  store %struct.TYPE_22__* %26, %struct.TYPE_22__** %19, align 8
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %28 = call i64 @NT_SUCCESS(%struct.TYPE_22__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %6
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %32 = call i32 @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.TYPE_22__* %31)
  br label %145

33:                                               ; preds = %6
  %34 = load i32*, i32** %13, align 8
  %35 = load i32, i32* @DOMAIN_LOOKUP, align 4
  %36 = load i32, i32* @BuiltinDomainSid, align 4
  %37 = call %struct.TYPE_22__* @SamrOpenDomain(i32* %34, i32 %35, i32 %36, i32** %14)
  store %struct.TYPE_22__* %37, %struct.TYPE_22__** %19, align 8
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %39 = call i64 @NT_SUCCESS(%struct.TYPE_22__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %43 = call i32 @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_22__* %42)
  br label %145

44:                                               ; preds = %33
  store i64 0, i64* %18, align 8
  br label %45

45:                                               ; preds = %141, %44
  %46 = load i64, i64* %18, align 8
  %47 = load i64, i64* %7, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %144

49:                                               ; preds = %45
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %51 = load i64, i64* %18, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SidTypeUnknown, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %141

58:                                               ; preds = %49
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %60 = load i64, i64* %18, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %141

66:                                               ; preds = %58
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %68 = load i64, i64* %18, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i64 %68
  %70 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_22__* %69)
  %71 = load i32*, i32** %14, align 8
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %73 = load i64, i64* %18, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i64 %73
  %75 = call %struct.TYPE_22__* @SamrLookupNamesInDomain(i32* %71, i32 1, %struct.TYPE_22__* %74, %struct.TYPE_21__* %15, %struct.TYPE_21__* %16)
  store %struct.TYPE_22__* %75, %struct.TYPE_22__** %19, align 8
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %77 = call i64 @NT_SUCCESS(%struct.TYPE_22__* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %138

79:                                               ; preds = %66
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to %struct.TYPE_22__*
  %85 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_22__* %84)
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %91 = load i64, i64* %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 0
  store i64 %89, i64* %93, align 8
  %94 = load i32, i32* @BuiltinDomainSid, align 4
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32* @CreateSidFromSidAndRid(i32 %94, i64 %98)
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %101 = load i64, i64* %18, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 3
  store i32* %99, i32** %103, align 8
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %105 = load i64, i64* %18, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %79
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** @STATUS_INSUFFICIENT_RESOURCES, align 8
  store %struct.TYPE_22__* %111, %struct.TYPE_22__** %19, align 8
  br label %145

112:                                              ; preds = %79
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %114 = load i64, i64* %18, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 1
  store i32 -1, i32* %116, align 8
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %118 = load i64, i64* %18, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 2
  store i64 0, i64* %120, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @BuiltinDomainSid, align 4
  %123 = call %struct.TYPE_22__* @LsapAddDomainToDomainsList(i32 %121, i32* @BuiltinDomainName, i32 %122, i64* %17)
  store %struct.TYPE_22__* %123, %struct.TYPE_22__** %19, align 8
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %125 = call i64 @NT_SUCCESS(%struct.TYPE_22__* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %112
  br label %145

128:                                              ; preds = %112
  %129 = load i64, i64* %17, align 8
  %130 = trunc i64 %129 to i32
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %132 = load i64, i64* %18, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 1
  store i32 %130, i32* %134, align 8
  %135 = load i32*, i32** %12, align 8
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %128, %66
  %139 = call i32 @SamIFree_SAMPR_ULONG_ARRAY(%struct.TYPE_21__* %15)
  %140 = call i32 @SamIFree_SAMPR_ULONG_ARRAY(%struct.TYPE_21__* %16)
  br label %141

141:                                              ; preds = %138, %65, %57
  %142 = load i64, i64* %18, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %18, align 8
  br label %45

144:                                              ; preds = %45
  br label %145

145:                                              ; preds = %144, %127, %110, %41, %30
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
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  ret %struct.TYPE_22__* %156
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_22__* @SamrConnect(i32*, i32**, i32) #2

declare dso_local i64 @NT_SUCCESS(%struct.TYPE_22__*) #2

declare dso_local i32 @TRACE(i8*, %struct.TYPE_22__*) #2

declare dso_local %struct.TYPE_22__* @SamrOpenDomain(i32*, i32, i32, i32**) #2

declare dso_local %struct.TYPE_22__* @SamrLookupNamesInDomain(i32*, i32, %struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_21__*) #2

declare dso_local i32* @CreateSidFromSidAndRid(i32, i64) #2

declare dso_local %struct.TYPE_22__* @LsapAddDomainToDomainsList(i32, i32*, i32, i64*) #2

declare dso_local i32 @SamIFree_SAMPR_ULONG_ARRAY(%struct.TYPE_21__*) #2

declare dso_local i32 @SamrCloseHandle(i32**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
