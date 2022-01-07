; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_lookup.c_LsapLookupBuiltinNames.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_lookup.c_LsapLookupBuiltinNames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i64, i32, i64, i32* }
%struct.TYPE_12__ = type { i64*, i32*, i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@SAM_SERVER_CONNECT = common dso_local global i32 0, align 4
@SAM_SERVER_LOOKUP_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"SamrConnect failed (Status %08lx)\0A\00", align 1
@DOMAIN_LOOKUP = common dso_local global i32 0, align 4
@BuiltinDomainSid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"SamOpenDomain failed (Status %08lx)\0A\00", align 1
@SidTypeUnknown = common dso_local global i64 0, align 8
@BuiltinDomainName = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Mapping name: %wZ\\%wZ\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.TYPE_13__*, %struct.TYPE_13__*, i32, %struct.TYPE_14__*, i32*)* @LsapLookupBuiltinNames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LsapLookupBuiltinNames(i64 %0, %struct.TYPE_13__* %1, %struct.TYPE_13__* %2, i32 %3, %struct.TYPE_14__* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_12__, align 8
  %16 = alloca %struct.TYPE_12__, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_14__* %4, %struct.TYPE_14__** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %20 = bitcast %struct.TYPE_12__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 24, i1 false)
  %21 = bitcast %struct.TYPE_12__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 24, i1 false)
  %22 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %22, i32* %19, align 4
  %23 = load i32, i32* @SAM_SERVER_CONNECT, align 4
  %24 = load i32, i32* @SAM_SERVER_LOOKUP_DOMAIN, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @SamrConnect(i32* null, i32** %13, i32 %25)
  store i32 %26, i32* %19, align 4
  %27 = load i32, i32* %19, align 4
  %28 = call i64 @NT_SUCCESS(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %6
  %31 = load i32, i32* %19, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to %struct.TYPE_13__*
  %34 = call i32 (i8*, %struct.TYPE_13__*, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.TYPE_13__* %33)
  br label %155

35:                                               ; preds = %6
  %36 = load i32*, i32** %13, align 8
  %37 = load i32, i32* @DOMAIN_LOOKUP, align 4
  %38 = load i32, i32* @BuiltinDomainSid, align 4
  %39 = call i32 @SamrOpenDomain(i32* %36, i32 %37, i32 %38, i32** %14)
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %19, align 4
  %41 = call i64 @NT_SUCCESS(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* %19, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to %struct.TYPE_13__*
  %47 = call i32 (i8*, %struct.TYPE_13__*, ...) @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_13__* %46)
  br label %155

48:                                               ; preds = %35
  store i64 0, i64* %18, align 8
  br label %49

49:                                               ; preds = %151, %48
  %50 = load i64, i64* %18, align 8
  %51 = load i64, i64* %7, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %154

53:                                               ; preds = %49
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %55 = load i64, i64* %18, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SidTypeUnknown, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %151

62:                                               ; preds = %53
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %64 = load i64, i64* %18, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %151

70:                                               ; preds = %62
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %72 = load i64, i64* %18, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i64 %72
  %74 = ptrtoint %struct.TYPE_13__* %73 to i32
  %75 = load i32, i32* @TRUE, align 4
  %76 = call i32 @RtlEqualUnicodeString(i32 %74, i32* @BuiltinDomainName, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %70
  br label %151

79:                                               ; preds = %70
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %81 = load i64, i64* %18, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i64 %81
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %84 = load i64, i64* %18, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i64 %84
  %86 = call i32 (i8*, %struct.TYPE_13__*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_13__* %82, %struct.TYPE_13__* %85)
  %87 = load i32*, i32** %14, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %89 = load i64, i64* %18, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i64 %89
  %91 = call i32 @SamrLookupNamesInDomain(i32* %87, i32 1, %struct.TYPE_13__* %90, %struct.TYPE_12__* %15, %struct.TYPE_12__* %16)
  store i32 %91, i32* %19, align 4
  %92 = load i32, i32* %19, align 4
  %93 = call i64 @NT_SUCCESS(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %148

95:                                               ; preds = %79
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %101 = load i64, i64* %18, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  store i64 %99, i64* %103, align 8
  %104 = load i32, i32* @BuiltinDomainSid, align 4
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32* @CreateSidFromSidAndRid(i32 %104, i64 %108)
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %111 = load i64, i64* %18, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 3
  store i32* %109, i32** %113, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %115 = load i64, i64* %18, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = icmp eq i32* %118, null
  br i1 %119, label %120, label %122

120:                                              ; preds = %95
  %121 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %121, i32* %19, align 4
  br label %155

122:                                              ; preds = %95
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %124 = load i64, i64* %18, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 1
  store i32 -1, i32* %126, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %128 = load i64, i64* %18, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 2
  store i64 0, i64* %130, align 8
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @BuiltinDomainSid, align 4
  %133 = call i32 @LsapAddDomainToDomainsList(i32 %131, i32* @BuiltinDomainName, i32 %132, i64* %17)
  store i32 %133, i32* %19, align 4
  %134 = load i32, i32* %19, align 4
  %135 = call i64 @NT_SUCCESS(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %122
  br label %155

138:                                              ; preds = %122
  %139 = load i64, i64* %17, align 8
  %140 = trunc i64 %139 to i32
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %142 = load i64, i64* %18, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 1
  store i32 %140, i32* %144, align 8
  %145 = load i32*, i32** %12, align 8
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %138, %79
  %149 = call i32 @SamIFree_SAMPR_ULONG_ARRAY(%struct.TYPE_12__* %15)
  %150 = call i32 @SamIFree_SAMPR_ULONG_ARRAY(%struct.TYPE_12__* %16)
  br label %151

151:                                              ; preds = %148, %78, %69, %61
  %152 = load i64, i64* %18, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %18, align 8
  br label %49

154:                                              ; preds = %49
  br label %155

155:                                              ; preds = %154, %137, %120, %43, %30
  %156 = load i32*, i32** %14, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = call i32 @SamrCloseHandle(i32** %14)
  br label %160

160:                                              ; preds = %158, %155
  %161 = load i32*, i32** %13, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %165

163:                                              ; preds = %160
  %164 = call i32 @SamrCloseHandle(i32** %13)
  br label %165

165:                                              ; preds = %163, %160
  %166 = load i32, i32* %19, align 4
  ret i32 %166
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SamrConnect(i32*, i32**, i32) #2

declare dso_local i64 @NT_SUCCESS(i32) #2

declare dso_local i32 @TRACE(i8*, %struct.TYPE_13__*, ...) #2

declare dso_local i32 @SamrOpenDomain(i32*, i32, i32, i32**) #2

declare dso_local i32 @RtlEqualUnicodeString(i32, i32*, i32) #2

declare dso_local i32 @SamrLookupNamesInDomain(i32*, i32, %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_12__*) #2

declare dso_local i32* @CreateSidFromSidAndRid(i32, i64) #2

declare dso_local i32 @LsapAddDomainToDomainsList(i32, i32*, i32, i64*) #2

declare dso_local i32 @SamIFree_SAMPR_ULONG_ARRAY(%struct.TYPE_12__*) #2

declare dso_local i32 @SamrCloseHandle(i32**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
