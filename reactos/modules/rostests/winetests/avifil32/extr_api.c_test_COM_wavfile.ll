; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/avifil32/extr_api.c_test_COM_wavfile.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/avifil32/extr_api.c_test_COM_wavfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unk_impl = type { i32, i32, i32*, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@unk_vtbl = common dso_local global i32 0, align 4
@CLSID_WAVFile = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IUnknown = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"COM aggregation failed: %08x, expected S_OK\0A\00", align 1
@IID_IAVIFile = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"QueryInterface for IID_IAVIFile failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"WAVFile just pretends to support COM aggregation\0A\00", align 1
@IID_IPersistFile = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"QueryInterface for IID_IPersistFile failed: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Outer ref count should be back at 19 but is %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Inner ref count should be 0 but is %u\0A\00", align 1
@IID_IAVIStreaming = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [53 x i8] c"WAVFile create failed: %08x, expected E_NOINTERFACE\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"WAVFile create failed: %08x, expected S_OK\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"refcount == %u, expected 2\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"refcount == %u, expected 4\0A\00", align 1
@IID_IAVIStream = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [48 x i8] c"QueryInterface for IID_IAVIStream failed: %08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"refcount == %u, expected 5\0A\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"QueryInterface for IID_IUnknown failed: %08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"refcount == %u, expected 6\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_COM_wavfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_COM_wavfile() #0 {
  %1 = alloca %struct.unk_impl, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = bitcast %struct.unk_impl* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 40, i1 false)
  %9 = getelementptr inbounds %struct.unk_impl, %struct.unk_impl* %1, i32 0, i32 0
  store i32 ptrtoint (i32* @unk_vtbl to i32), i32* %9, align 8
  %10 = getelementptr inbounds %struct.unk_impl, %struct.unk_impl* %1, i32 0, i32 1
  store i32 19, i32* %10, align 4
  store i32* null, i32** %2, align 8
  %11 = getelementptr inbounds %struct.unk_impl, %struct.unk_impl* %1, i32 0, i32 3
  %12 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %13 = getelementptr inbounds %struct.unk_impl, %struct.unk_impl* %1, i32 0, i32 2
  %14 = bitcast i32** %13 to i8**
  %15 = call i32 @CoCreateInstance(i32* @CLSID_WAVFile, i32* %11, i32 %12, i32* @IID_IUnknown, i8** %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @S_OK, align 4
  %18 = icmp eq i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* %7, align 4
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = getelementptr inbounds %struct.unk_impl, %struct.unk_impl* %1, i32 0, i32 3
  %23 = bitcast i32** %2 to i8**
  %24 = call i32 @IUnknown_QueryInterface(i32* %22, i32* @IID_IAVIFile, i8** %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @S_OK, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %7, align 4
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @IAVIFile_AddRef(i32* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = getelementptr inbounds %struct.unk_impl, %struct.unk_impl* %1, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %33, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @IAVIFile_Release(i32* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = getelementptr inbounds %struct.unk_impl, %struct.unk_impl* %1, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %41, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32*, i32** %2, align 8
  %48 = bitcast i32** %3 to i8**
  %49 = call i32 @IAVIFile_QueryInterface(i32* %47, i32* @IID_IPersistFile, i8** %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @S_OK, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %7, align 4
  %55 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @IPersistFile_Release(i32* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = getelementptr inbounds %struct.unk_impl, %struct.unk_impl* %1, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %58, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 @IAVIFile_Release(i32* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, 19
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* %6, align 4
  %70 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  %71 = getelementptr inbounds %struct.unk_impl, %struct.unk_impl* %1, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @IUnknown_Release(i32* %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp eq i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %6, align 4
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %80 = bitcast i32** %2 to i8**
  %81 = call i32 @CoCreateInstance(i32* @CLSID_WAVFile, i32* null, i32 %79, i32* @IID_IAVIStreaming, i8** %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @E_NOINTERFACE, align 4
  %84 = icmp eq i32 %82, %83
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %7, align 4
  %87 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %89 = bitcast i32** %2 to i8**
  %90 = call i32 @CoCreateInstance(i32* @CLSID_WAVFile, i32* null, i32 %88, i32* @IID_IAVIFile, i8** %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @S_OK, align 4
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %7, align 4
  %96 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i32 %95)
  %97 = load i32*, i32** %2, align 8
  %98 = call i32 @IAVIFile_AddRef(i32* %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp eq i32 %99, 2
  %101 = zext i1 %100 to i32
  %102 = load i32, i32* %6, align 4
  %103 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %102)
  %104 = load i32*, i32** %2, align 8
  %105 = bitcast i32** %3 to i8**
  %106 = call i32 @IAVIFile_QueryInterface(i32* %104, i32* @IID_IPersistFile, i8** %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @S_OK, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* %7, align 4
  %112 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  %113 = load i32*, i32** %3, align 8
  %114 = call i32 @IPersistFile_AddRef(i32* %113)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp eq i32 %115, 4
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* %6, align 4
  %119 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %118)
  %120 = load i32*, i32** %3, align 8
  %121 = call i32 @IPersistFile_Release(i32* %120)
  store i32 %121, i32* %6, align 4
  %122 = load i32*, i32** %2, align 8
  %123 = bitcast i32** %4 to i8**
  %124 = call i32 @IAVIFile_QueryInterface(i32* %122, i32* @IID_IAVIStream, i8** %123)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @S_OK, align 4
  %127 = icmp eq i32 %125, %126
  %128 = zext i1 %127 to i32
  %129 = load i32, i32* %7, align 4
  %130 = call i32 (i32, i8*, ...) @ok(i32 %128, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), i32 %129)
  %131 = load i32*, i32** %4, align 8
  %132 = call i32 @IAVIStream_AddRef(i32* %131)
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp eq i32 %133, 5
  %135 = zext i1 %134 to i32
  %136 = load i32, i32* %6, align 4
  %137 = call i32 (i32, i8*, ...) @ok(i32 %135, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %136)
  %138 = load i32*, i32** %4, align 8
  %139 = call i32 @IAVIStream_Release(i32* %138)
  store i32 %139, i32* %6, align 4
  %140 = load i32*, i32** %2, align 8
  %141 = bitcast i32** %5 to i8**
  %142 = call i32 @IAVIFile_QueryInterface(i32* %140, i32* @IID_IUnknown, i8** %141)
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* @S_OK, align 4
  %145 = icmp eq i32 %143, %144
  %146 = zext i1 %145 to i32
  %147 = load i32, i32* %7, align 4
  %148 = call i32 (i32, i8*, ...) @ok(i32 %146, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0), i32 %147)
  %149 = load i32*, i32** %5, align 8
  %150 = call i32 @IUnknown_AddRef(i32* %149)
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = icmp eq i32 %151, 6
  %153 = zext i1 %152 to i32
  %154 = load i32, i32* %6, align 4
  %155 = call i32 (i32, i8*, ...) @ok(i32 %153, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32 %154)
  %156 = load i32*, i32** %5, align 8
  %157 = call i32 @IUnknown_Release(i32* %156)
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %162, %0
  %159 = load i32*, i32** %2, align 8
  %160 = call i32 @IAVIFile_Release(i32* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  br label %158

163:                                              ; preds = %158
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

declare dso_local i32 @IUnknown_Release(i32*) #2

declare dso_local i32 @IPersistFile_AddRef(i32*) #2

declare dso_local i32 @IAVIStream_AddRef(i32*) #2

declare dso_local i32 @IAVIStream_Release(i32*) #2

declare dso_local i32 @IUnknown_AddRef(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
