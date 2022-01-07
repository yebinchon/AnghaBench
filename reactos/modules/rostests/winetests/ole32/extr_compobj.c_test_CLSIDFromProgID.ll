; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_compobj.c_test_CLSIDFromProgID.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_compobj.c_test_CLSIDFromProgID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32* }

@stdfont = common dso_local global i32* null, align 8
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"CLSIDFromProgID failed with error 0x%08x\0A\00", align 1
@CLSID_StdFont = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"clsid wasn't equal to CLSID_StdFont\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"CLSIDFromString\00", align 1
@wszNonExistent = common dso_local global i32* null, align 8
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [69 x i8] c"CLSIDFromProgID should have returned E_INVALIDARG instead of 0x%08x\0A\00", align 1
@CO_E_CLASSSTRING = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [95 x i8] c"CLSIDFromProgID on nonexistent ProgID should have returned CO_E_CLASSSTRING instead of 0x%08x\0A\00", align 1
@CLSID_NULL = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [63 x i8] c"CLSIDFromProgID should have set clsid to all-zeros on failure\0A\00", align 1
@progidW = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"wrong clsid\0A\00", align 1
@actctx_manifest = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"should have zero CLSID on failure\0A\00", align 1
@CLSID_non_existent = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [20 x i8] c"got wrong clsid %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"got %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CLSIDFromProgID to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CLSIDFromProgID() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__, align 8
  store i32 0, i32* %1, align 4
  %6 = load i32*, i32** @stdfont, align 8
  %7 = call i64 @CLSIDFromProgID(i32* %6, %struct.TYPE_12__* %3)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @S_OK, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i64, i64* %4, align 8
  %13 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = call i32 @IsEqualCLSID(%struct.TYPE_12__* %3, %struct.TYPE_12__* @CLSID_StdFont)
  %15 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32*, i32** @stdfont, align 8
  %17 = call i64 @CLSIDFromString(i32* %16, %struct.TYPE_12__* %3)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @ok_ole_success(i64 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %20 = call i32 @IsEqualCLSID(%struct.TYPE_12__* %3, %struct.TYPE_12__* @CLSID_StdFont)
  %21 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32*, i32** @wszNonExistent, align 8
  %23 = call i64 @CLSIDFromProgID(i32* %22, %struct.TYPE_12__* null)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @E_INVALIDARG, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %4, align 8
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i64 %28)
  %30 = call i64 @CLSIDFromProgID(i32* null, %struct.TYPE_12__* %3)
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @E_INVALIDARG, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i64, i64* %4, align 8
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i64 %35)
  %37 = call i32 @memset(%struct.TYPE_12__* %3, i32 204, i32 8)
  %38 = load i32*, i32** @wszNonExistent, align 8
  %39 = call i64 @CLSIDFromProgID(i32* %38, %struct.TYPE_12__* %3)
  store i64 %39, i64* %4, align 8
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* @CO_E_CLASSSTRING, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %4, align 8
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.4, i64 0, i64 0), i64 %44)
  %46 = call i32 @IsEqualCLSID(%struct.TYPE_12__* %3, %struct.TYPE_12__* @CLSID_NULL)
  %47 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0))
  %48 = call i32 @memset(%struct.TYPE_12__* %3, i32 204, i32 8)
  %49 = load i32*, i32** @progidW, align 8
  %50 = call i64 @CLSIDFromProgID(i32* %49, %struct.TYPE_12__* %3)
  store i64 %50, i64* %4, align 8
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* @CO_E_CLASSSTRING, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* %4, align 8
  %56 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i64 %55)
  %57 = call i32 @IsEqualCLSID(%struct.TYPE_12__* %3, %struct.TYPE_12__* @CLSID_NULL)
  %58 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %59 = load i32, i32* @actctx_manifest, align 4
  %60 = call i32 @activate_context(i32 %59, i32* %1)
  store i32 %60, i32* %2, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %133

62:                                               ; preds = %0
  %63 = call i32 @memset(%struct.TYPE_12__* %3, i32 204, i32 8)
  %64 = load i32*, i32** @wszNonExistent, align 8
  %65 = call i64 @CLSIDFromProgID(i32* %64, %struct.TYPE_12__* %3)
  store i64 %65, i64* %4, align 8
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* @CO_E_CLASSSTRING, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i64, i64* %4, align 8
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i64 %70)
  %72 = call i32 @IsEqualCLSID(%struct.TYPE_12__* %3, %struct.TYPE_12__* @CLSID_NULL)
  %73 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %74 = load i32*, i32** @progidW, align 8
  %75 = call i64 @CLSIDFromString(i32* %74, %struct.TYPE_12__* %3)
  store i64 %75, i64* %4, align 8
  %76 = load i64, i64* %4, align 8
  %77 = load i64, i64* @CO_E_CLASSSTRING, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = load i64, i64* %4, align 8
  %81 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i64 %80)
  %82 = bitcast %struct.TYPE_12__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %82, i8* align 8 bitcast (%struct.TYPE_12__* @CLSID_NULL to i8*), i64 8, i1 false)
  %83 = load i32*, i32** @progidW, align 8
  %84 = call i64 @CLSIDFromProgID(i32* %83, %struct.TYPE_12__* %3)
  store i64 %84, i64* %4, align 8
  %85 = load i64, i64* %4, align 8
  %86 = load i64, i64* @S_OK, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i64, i64* %4, align 8
  %90 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i64 %89)
  %91 = call i32 @IsEqualCLSID(%struct.TYPE_12__* %3, %struct.TYPE_12__* @CLSID_non_existent)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %62
  %94 = call i32 @IsEqualCLSID(%struct.TYPE_12__* %3, %struct.TYPE_12__* @CLSID_NULL)
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  br label %97

97:                                               ; preds = %93, %62
  %98 = phi i1 [ false, %62 ], [ %96, %93 ]
  %99 = zext i1 %98 to i32
  %100 = call i64 @wine_dbgstr_guid(%struct.TYPE_12__* %3)
  %101 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i64 %100)
  %102 = bitcast %struct.TYPE_12__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %102, i8* align 8 bitcast (%struct.TYPE_12__* @CLSID_NULL to i8*), i64 8, i1 false)
  %103 = load i32*, i32** @stdfont, align 8
  %104 = call i64 @CLSIDFromProgID(i32* %103, %struct.TYPE_12__* %3)
  store i64 %104, i64* %4, align 8
  %105 = load i64, i64* %4, align 8
  %106 = load i64, i64* @S_OK, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = load i64, i64* %4, align 8
  %110 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i64 %109)
  %111 = bitcast %struct.TYPE_12__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %111, i8* align 8 bitcast (%struct.TYPE_12__* @CLSID_StdFont to i8*), i64 8, i1 false)
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 7
  store i32 82, i32* %114, align 4
  %115 = call i32 @IsEqualCLSID(%struct.TYPE_12__* %3, %struct.TYPE_12__* @CLSID_StdFont)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %97
  %118 = call i32 @IsEqualCLSID(%struct.TYPE_12__* %3, %struct.TYPE_12__* @CLSID_NULL)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %117
  %121 = call i32 @IsEqualCLSID(%struct.TYPE_12__* %3, %struct.TYPE_12__* %5)
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  br label %124

124:                                              ; preds = %120, %117, %97
  %125 = phi i1 [ false, %117 ], [ false, %97 ], [ %123, %120 ]
  %126 = zext i1 %125 to i32
  %127 = call i64 @wine_dbgstr_guid(%struct.TYPE_12__* %3)
  %128 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i64 %127)
  %129 = load i32, i32* %1, align 4
  %130 = call i32 @pDeactivateActCtx(i32 0, i32 %129)
  %131 = load i32, i32* %2, align 4
  %132 = call i32 @pReleaseActCtx(i32 %131)
  br label %133

133:                                              ; preds = %124, %0
  ret void
}

declare dso_local i64 @CLSIDFromProgID(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @IsEqualCLSID(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i64 @CLSIDFromString(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @ok_ole_success(i64, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @activate_context(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @wine_dbgstr_guid(%struct.TYPE_12__*) #1

declare dso_local i32 @pDeactivateActCtx(i32, i32) #1

declare dso_local i32 @pReleaseActCtx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
