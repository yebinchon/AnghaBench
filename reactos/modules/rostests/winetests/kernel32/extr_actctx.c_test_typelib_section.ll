; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_actctx.c_test_typelib_section.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_actctx.c_test_typelib_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i32*, i32, i64 }
%struct.guidsection_header = type { i32, i32, i32, i32 }
%struct.tlibredirect_data = type { i32, i32, i32, i32, i32, i32 }

@test_typelib_section.helpW = internal constant [4 x i8] c"help", align 1
@.str = private unnamed_addr constant [18 x i8] c"testdep1.manifest\00", align 1
@manifest_wndcls1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"testdep2.manifest\00", align 1
@manifest_wndcls2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"main_wndcls.manifest\00", align 1
@manifest_wndcls_main = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"handle == INVALID_HANDLE_VALUE, error %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"ActivateActCtx failed: %u\0A\00", align 1
@ACTIVATION_CONTEXT_SECTION_COM_TYPE_LIBRARY_REDIRECTION = common dso_local global i32 0, align 4
@IID_TlibTest = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@IID_TlibTest4 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"got %p, %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"got %u, %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"data.lpSectionGlobalData == NULL\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"data.ulSectionGlobalDataLength=%u\0A\00", align 1
@LIBFLAG_FHIDDEN = common dso_local global i32 0, align 4
@LIBFLAG_FCONTROL = common dso_local global i32 0, align 4
@LIBFLAG_FRESTRICTED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"got %x\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"DeactivateActCtx failed: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_typelib_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_typelib_section() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = alloca %struct.TYPE_4__, align 8
  %3 = alloca %struct.guidsection_header*, align 8
  %4 = alloca %struct.tlibredirect_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = load i32, i32* @manifest_wndcls1, align 4
  %9 = call i32 @create_manifest_file(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %8, i32 -1, i32* null, i32* null)
  %10 = load i32, i32* @manifest_wndcls2, align 4
  %11 = call i32 @create_manifest_file(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %10, i32 -1, i32* null, i32* null)
  %12 = load i32, i32* @manifest_wndcls_main, align 4
  %13 = call i32 @create_manifest_file(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %12, i32 -1, i32* null, i32* null)
  %14 = call i64 @test_create(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %17 = icmp ne i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 (...) @GetLastError()
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %19)
  %21 = call i32 @DeleteFileA(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @DeleteFileA(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @DeleteFileA(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @pActivateActCtx(i64 %24, i32* %5)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 (...) @GetLastError()
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %27)
  %29 = call i32 @memset(%struct.TYPE_4__* %1, i32 0, i32 40)
  %30 = call i32 @memset(%struct.TYPE_4__* %2, i32 0, i32 40)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 40, i32* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 40, i32* %32, align 8
  %33 = load i32, i32* @ACTIVATION_CONTEXT_SECTION_COM_TYPE_LIBRARY_REDIRECTION, align 4
  %34 = call i32 @pFindActCtxSectionGuid(i32 0, i32* null, i32 %33, i32* @IID_TlibTest, %struct.TYPE_4__* %1)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @ACTIVATION_CONTEXT_SECTION_COM_TYPE_LIBRARY_REDIRECTION, align 4
  %39 = call i32 @pFindActCtxSectionGuid(i32 0, i32* null, i32 %38, i32* @IID_TlibTest4, %struct.TYPE_4__* %2)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.guidsection_header*
  store %struct.guidsection_header* %45, %struct.guidsection_header** %3, align 8
  %46 = load %struct.guidsection_header*, %struct.guidsection_header** %3, align 8
  %47 = getelementptr inbounds %struct.guidsection_header, %struct.guidsection_header* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 4
  %50 = zext i1 %49 to i32
  %51 = load %struct.guidsection_header*, %struct.guidsection_header** %3, align 8
  %52 = getelementptr inbounds %struct.guidsection_header, %struct.guidsection_header* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %53)
  %55 = load %struct.guidsection_header*, %struct.guidsection_header** %3, align 8
  %56 = getelementptr inbounds %struct.guidsection_header, %struct.guidsection_header* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp eq i64 %58, 16
  %60 = zext i1 %59 to i32
  %61 = load %struct.guidsection_header*, %struct.guidsection_header** %3, align 8
  %62 = getelementptr inbounds %struct.guidsection_header, %struct.guidsection_header* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %66, %68
  %70 = zext i1 %69 to i32
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i64 %72, i64 %74)
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %77, %79
  %81 = zext i1 %80 to i32
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %83, i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.guidsection_header*, %struct.guidsection_header** %3, align 8
  %90 = bitcast %struct.guidsection_header* %89 to i32*
  %91 = load %struct.guidsection_header*, %struct.guidsection_header** %3, align 8
  %92 = getelementptr inbounds %struct.guidsection_header, %struct.guidsection_header* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %90, i64 %94
  %96 = icmp eq i32* %88, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.guidsection_header*, %struct.guidsection_header** %3, align 8
  %102 = getelementptr inbounds %struct.guidsection_header, %struct.guidsection_header* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %100, %103
  %105 = zext i1 %104 to i32
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %107)
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to %struct.tlibredirect_data*
  store %struct.tlibredirect_data* %111, %struct.tlibredirect_data** %4, align 8
  %112 = load %struct.tlibredirect_data*, %struct.tlibredirect_data** %4, align 8
  %113 = getelementptr inbounds %struct.tlibredirect_data, %struct.tlibredirect_data* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = icmp eq i64 %115, 24
  %117 = zext i1 %116 to i32
  %118 = load %struct.tlibredirect_data*, %struct.tlibredirect_data** %4, align 8
  %119 = getelementptr inbounds %struct.tlibredirect_data, %struct.tlibredirect_data* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %120)
  %122 = load %struct.tlibredirect_data*, %struct.tlibredirect_data** %4, align 8
  %123 = getelementptr inbounds %struct.tlibredirect_data, %struct.tlibredirect_data* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 1
  %126 = zext i1 %125 to i32
  %127 = load %struct.tlibredirect_data*, %struct.tlibredirect_data** %4, align 8
  %128 = getelementptr inbounds %struct.tlibredirect_data, %struct.tlibredirect_data* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %129)
  %131 = load %struct.tlibredirect_data*, %struct.tlibredirect_data** %4, align 8
  %132 = getelementptr inbounds %struct.tlibredirect_data, %struct.tlibredirect_data* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 0
  %135 = zext i1 %134 to i32
  %136 = load %struct.tlibredirect_data*, %struct.tlibredirect_data** %4, align 8
  %137 = getelementptr inbounds %struct.tlibredirect_data, %struct.tlibredirect_data* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i32, i8*, ...) @ok(i32 %135, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %138)
  %140 = load %struct.tlibredirect_data*, %struct.tlibredirect_data** %4, align 8
  %141 = getelementptr inbounds %struct.tlibredirect_data, %struct.tlibredirect_data* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = icmp sgt i32 %142, 0
  %144 = zext i1 %143 to i32
  %145 = load %struct.tlibredirect_data*, %struct.tlibredirect_data** %4, align 8
  %146 = getelementptr inbounds %struct.tlibredirect_data, %struct.tlibredirect_data* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = call i32 (i32, i8*, ...) @ok(i32 %144, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %147)
  %149 = load %struct.tlibredirect_data*, %struct.tlibredirect_data** %4, align 8
  %150 = getelementptr inbounds %struct.tlibredirect_data, %struct.tlibredirect_data* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = icmp eq i64 %152, 4
  %154 = zext i1 %153 to i32
  %155 = load %struct.tlibredirect_data*, %struct.tlibredirect_data** %4, align 8
  %156 = getelementptr inbounds %struct.tlibredirect_data, %struct.tlibredirect_data* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = call i32 (i32, i8*, ...) @ok(i32 %154, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %157)
  %159 = load %struct.tlibredirect_data*, %struct.tlibredirect_data** %4, align 8
  %160 = getelementptr inbounds %struct.tlibredirect_data, %struct.tlibredirect_data* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @LIBFLAG_FHIDDEN, align 4
  %163 = load i32, i32* @LIBFLAG_FCONTROL, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @LIBFLAG_FRESTRICTED, align 4
  %166 = or i32 %164, %165
  %167 = icmp eq i32 %161, %166
  %168 = zext i1 %167 to i32
  %169 = load %struct.tlibredirect_data*, %struct.tlibredirect_data** %4, align 8
  %170 = getelementptr inbounds %struct.tlibredirect_data, %struct.tlibredirect_data* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (i32, i8*, ...) @ok(i32 %168, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %171)
  %173 = load i32, i32* %5, align 4
  %174 = call i32 @pDeactivateActCtx(i32 0, i32 %173)
  store i32 %174, i32* %7, align 4
  %175 = load i32, i32* %7, align 4
  %176 = call i32 (...) @GetLastError()
  %177 = call i32 (i32, i8*, ...) @ok(i32 %175, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32 %176)
  %178 = load i64, i64* %6, align 8
  %179 = call i32 @pReleaseActCtx(i64 %178)
  ret void
}

declare dso_local i32 @create_manifest_file(i8*, i32, i32, i32*, i32*) #1

declare dso_local i64 @test_create(i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @DeleteFileA(i8*) #1

declare dso_local i32 @pActivateActCtx(i64, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @pFindActCtxSectionGuid(i32, i32*, i32, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @pDeactivateActCtx(i32, i32) #1

declare dso_local i32 @pReleaseActCtx(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
