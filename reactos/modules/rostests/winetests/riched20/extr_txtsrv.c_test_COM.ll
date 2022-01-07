; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_txtsrv.c_test_COM.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_txtsrv.c_test_COM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unk_impl = type { i32, i32, i32, i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.ITextHostTestImpl = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@unk_vtbl = common dso_local global i32 0, align 4
@itextHostVtbl = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"CreateTextServices failed: %08x\0A\00", align 1
@pIID_ITextServices = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"QueryInterface for IID_ITextServices failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"CreateTextServices just pretends to support COM aggregation\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Refcount should be back at 19 but is %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_COM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_COM() #0 {
  %1 = alloca %struct.unk_impl, align 8
  %2 = alloca %struct.ITextHostTestImpl, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.unk_impl, %struct.unk_impl* %1, i32 0, i32 0
  store i32 ptrtoint (i32* @unk_vtbl to i32), i32* %6, align 8
  %7 = getelementptr inbounds %struct.unk_impl, %struct.unk_impl* %1, i32 0, i32 1
  store i32 19, i32* %7, align 4
  %8 = getelementptr inbounds %struct.unk_impl, %struct.unk_impl* %1, i32 0, i32 2
  store i32 0, i32* %8, align 8
  %9 = getelementptr inbounds %struct.unk_impl, %struct.unk_impl* %1, i32 0, i32 3
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.unk_impl, %struct.unk_impl* %1, i32 0, i32 4
  store i32* null, i32** %10, align 8
  %11 = getelementptr inbounds %struct.unk_impl, %struct.unk_impl* %1, i32 0, i32 5
  %12 = bitcast %struct.TYPE_3__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 8, i1 false)
  %13 = getelementptr inbounds %struct.ITextHostTestImpl, %struct.ITextHostTestImpl* %2, i32 0, i32 0
  store i32 ptrtoint (i32* @itextHostVtbl to i32), i32* %13, align 8
  %14 = getelementptr inbounds %struct.ITextHostTestImpl, %struct.ITextHostTestImpl* %2, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = getelementptr inbounds %struct.ITextHostTestImpl, %struct.ITextHostTestImpl* %2, i32 0, i32 2
  %16 = bitcast %struct.TYPE_4__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 8, i1 false)
  %17 = getelementptr inbounds %struct.unk_impl, %struct.unk_impl* %1, i32 0, i32 3
  %18 = getelementptr inbounds %struct.ITextHostTestImpl, %struct.ITextHostTestImpl* %2, i32 0, i32 1
  %19 = getelementptr inbounds %struct.unk_impl, %struct.unk_impl* %1, i32 0, i32 2
  %20 = call i64 @pCreateTextServices(i32* %17, i32* %18, i32* %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @S_OK, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i64, i64* %5, align 8
  %26 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = getelementptr inbounds %struct.unk_impl, %struct.unk_impl* %1, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @pIID_ITextServices, align 4
  %30 = bitcast i32** %3 to i8**
  %31 = call i64 @IUnknown_QueryInterface(i32 %28, i32 %29, i8** %30)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @S_OK, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i64, i64* %5, align 8
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @ITextServices_AddRef(i32* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = getelementptr inbounds %struct.unk_impl, %struct.unk_impl* %1, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %40, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @ITextServices_Release(i32* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = getelementptr inbounds %struct.unk_impl, %struct.unk_impl* %1, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %48, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @ITextServices_Release(i32* %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp eq i32 %56, 19
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %4, align 4
  %60 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = getelementptr inbounds %struct.unk_impl, %struct.unk_impl* %1, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @IUnknown_Release(i32 %62)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @pCreateTextServices(i32*, i32*, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @IUnknown_QueryInterface(i32, i32, i8**) #2

declare dso_local i32 @ITextServices_AddRef(i32*) #2

declare dso_local i32 @ITextServices_Release(i32*) #2

declare dso_local i32 @IUnknown_Release(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
