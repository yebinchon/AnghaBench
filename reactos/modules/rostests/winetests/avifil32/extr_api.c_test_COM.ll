; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/avifil32/extr_api.c_test_COM.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/avifil32/extr_api.c_test_COM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unk_impl = type { i32, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@unk_vtbl = common dso_local global i32 0, align 4
@CLSID_AVIFile = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IUnknown = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"COM aggregation failed: %08x, expected S_OK\0A\00", align 1
@IID_IAVIFile = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"QueryInterface for IID_IAVIFile failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"AVIFile just pretends to support COM aggregation\0A\00", align 1
@IID_IPersistFile = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"QueryInterface for IID_IPersistFile failed: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Outer ref count should be back at 19 but is %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Inner ref count should be 0 but is %u\0A\00", align 1
@IID_IAVIStream = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [53 x i8] c"AVIFile create failed: %08x, expected E_NOINTERFACE\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"AVIFile create failed: %08x, expected S_OK\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"refcount == %u, expected 2\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"QueryInterface for IID_IUnknown failed: %08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"refcount == %u, expected 4\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"refcount == %u, expected 6\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_COM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_COM() #0 {
  %1 = alloca %struct.unk_impl, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.unk_impl, %struct.unk_impl* %1, i32 0, i32 0
  store i32 ptrtoint (i32* @unk_vtbl to i32), i32* %7, align 8
  %8 = getelementptr inbounds %struct.unk_impl, %struct.unk_impl* %1, i32 0, i32 1
  store i32 19, i32* %8, align 4
  %9 = getelementptr inbounds %struct.unk_impl, %struct.unk_impl* %1, i32 0, i32 2
  store i32 0, i32* %9, align 8
  %10 = getelementptr inbounds %struct.unk_impl, %struct.unk_impl* %1, i32 0, i32 3
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.unk_impl, %struct.unk_impl* %1, i32 0, i32 4
  store i32* null, i32** %11, align 8
  %12 = getelementptr inbounds %struct.unk_impl, %struct.unk_impl* %1, i32 0, i32 5
  %13 = bitcast %struct.TYPE_2__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 8, i1 false)
  store i32* null, i32** %2, align 8
  %14 = getelementptr inbounds %struct.unk_impl, %struct.unk_impl* %1, i32 0, i32 3
  %15 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %16 = getelementptr inbounds %struct.unk_impl, %struct.unk_impl* %1, i32 0, i32 2
  %17 = bitcast i32* %16 to i8**
  %18 = call i32 @CoCreateInstance(i32* @CLSID_AVIFile, i32* %14, i32 %15, i32* @IID_IUnknown, i8** %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @S_OK, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %6, align 4
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = getelementptr inbounds %struct.unk_impl, %struct.unk_impl* %1, i32 0, i32 3
  %26 = bitcast i32** %2 to i8**
  %27 = call i32 @IUnknown_QueryInterface(i32* %25, i32* @IID_IAVIFile, i8** %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @S_OK, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %6, align 4
  %33 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @IAVIFile_AddRef(i32* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = getelementptr inbounds %struct.unk_impl, %struct.unk_impl* %1, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %36, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @IAVIFile_Release(i32* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = getelementptr inbounds %struct.unk_impl, %struct.unk_impl* %1, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %44, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32*, i32** %2, align 8
  %51 = bitcast i32** %3 to i8**
  %52 = call i32 @IAVIFile_QueryInterface(i32* %50, i32* @IID_IPersistFile, i8** %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @S_OK, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %6, align 4
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @IPersistFile_Release(i32* %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = getelementptr inbounds %struct.unk_impl, %struct.unk_impl* %1, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %61, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32*, i32** %2, align 8
  %68 = call i32 @IAVIFile_Release(i32* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp eq i32 %69, 19
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %5, align 4
  %73 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  %74 = getelementptr inbounds %struct.unk_impl, %struct.unk_impl* %1, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @IUnknown_Release(i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp eq i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %5, align 4
  %81 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %83 = bitcast i32** %2 to i8**
  %84 = call i32 @CoCreateInstance(i32* @CLSID_AVIFile, i32* null, i32 %82, i32* @IID_IAVIStream, i8** %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @E_NOINTERFACE, align 4
  %87 = icmp eq i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %6, align 4
  %90 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %92 = bitcast i32** %2 to i8**
  %93 = call i32 @CoCreateInstance(i32* @CLSID_AVIFile, i32* null, i32 %91, i32* @IID_IAVIFile, i8** %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @S_OK, align 4
  %96 = icmp eq i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %6, align 4
  %99 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i32 %98)
  %100 = load i32*, i32** %2, align 8
  %101 = call i32 @IAVIFile_AddRef(i32* %100)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp eq i32 %102, 2
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* %5, align 4
  %106 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %105)
  %107 = load i32*, i32** %2, align 8
  %108 = bitcast i32** %4 to i8**
  %109 = call i32 @IAVIFile_QueryInterface(i32* %107, i32* @IID_IUnknown, i8** %108)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @S_OK, align 4
  %112 = icmp eq i32 %110, %111
  %113 = zext i1 %112 to i32
  %114 = load i32, i32* %6, align 4
  %115 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i32 %114)
  %116 = load i32*, i32** %4, align 8
  %117 = call i32 @IUnknown_AddRef(i32* %116)
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp eq i32 %118, 4
  %120 = zext i1 %119 to i32
  %121 = load i32, i32* %5, align 4
  %122 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %121)
  %123 = load i32*, i32** %2, align 8
  %124 = bitcast i32** %3 to i8**
  %125 = call i32 @IAVIFile_QueryInterface(i32* %123, i32* @IID_IPersistFile, i8** %124)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @S_OK, align 4
  %128 = icmp eq i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = load i32, i32* %6, align 4
  %131 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %130)
  %132 = load i32*, i32** %3, align 8
  %133 = call i32 @IPersistFile_AddRef(i32* %132)
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* %5, align 4
  %135 = icmp eq i32 %134, 6
  %136 = zext i1 %135 to i32
  %137 = load i32, i32* %5, align 4
  %138 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %143, %0
  %140 = load i32*, i32** %2, align 8
  %141 = call i32 @IAVIFile_Release(i32* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  br label %139

144:                                              ; preds = %139
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @IUnknown_QueryInterface(i32*, i32*, i8**) #2

declare dso_local i32 @IAVIFile_AddRef(i32*) #2

declare dso_local i32 @IAVIFile_Release(i32*) #2

declare dso_local i32 @IAVIFile_QueryInterface(i32*, i32*, i8**) #2

declare dso_local i32 @IPersistFile_Release(i32*) #2

declare dso_local i32 @IUnknown_Release(i32) #2

declare dso_local i32 @IUnknown_AddRef(i32*) #2

declare dso_local i32 @IPersistFile_AddRef(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
