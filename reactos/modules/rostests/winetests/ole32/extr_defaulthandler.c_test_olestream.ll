; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_defaulthandler.c_test_olestream.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_defaulthandler.c_test_olestream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@__const.test_olestream.non_existent_class = private unnamed_addr constant %struct.TYPE_8__ { i32 -1510901969, i32 14194, i32 18703, %struct.TYPE_6__ { i32 158, i32 198, i32 119, i32 19, i32 232, i32 179, i32 75, i32 93 } }, align 4
@test_olestream.olestream = internal constant [5 x i32] [i32 1, i32 79, i32 108, i32 101, i32 0], align 16
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@STGM_READ = common dso_local global i32 0, align 4
@STG_E_FILENOTFOUND = common dso_local global i64 0, align 8
@IID_IOleObject = common dso_local global i32 0, align 4
@IID_IPersistStorage = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"read %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"got version %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"got flags %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"got link update option %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"got reserved %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"got moniker size %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_olestream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_olestream() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_8__, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__, align 4
  %9 = bitcast %struct.TYPE_8__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.TYPE_8__* @__const.test_olestream.non_existent_class to i8*), i64 44, i1 false)
  %10 = call i64 @create_storage(i32** %5)
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* %1, align 8
  %12 = load i64, i64* @S_OK, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i64, i64* %1, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %20 = load i32, i32* @STGM_READ, align 4
  %21 = or i32 %19, %20
  %22 = call i64 @IStorage_OpenStream(i32* %18, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @test_olestream.olestream, i64 0, i64 0), i32* null, i32 %21, i32 0, i32** %6)
  store i64 %22, i64* %1, align 8
  %23 = load i64, i64* %1, align 8
  %24 = load i64, i64* @STG_E_FILENOTFOUND, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %1, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = bitcast i32** %3 to i8**
  %31 = call i64 @OleCreateDefaultHandler(%struct.TYPE_8__* %2, i32 0, i32* @IID_IOleObject, i8** %30)
  store i64 %31, i64* %1, align 8
  %32 = load i64, i64* %1, align 8
  %33 = load i64, i64* @S_OK, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i64, i64* %1, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = bitcast i32** %4 to i8**
  %41 = call i64 @IOleObject_QueryInterface(i32* %39, i32* @IID_IPersistStorage, i8** %40)
  store i64 %41, i64* %1, align 8
  %42 = load i64, i64* %1, align 8
  %43 = load i64, i64* @S_OK, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i64, i64* %1, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32*, i32** %4, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i64 @IPersistStorage_InitNew(i32* %49, i32* %50)
  store i64 %51, i64* %1, align 8
  %52 = load i64, i64* %1, align 8
  %53 = load i64, i64* @S_OK, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i64, i64* %1, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %61 = load i32, i32* @STGM_READ, align 4
  %62 = or i32 %60, %61
  %63 = call i64 @IStorage_OpenStream(i32* %59, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @test_olestream.olestream, i64 0, i64 0), i32* null, i32 %62, i32 0, i32** %6)
  store i64 %63, i64* %1, align 8
  %64 = load i64, i64* %1, align 8
  %65 = load i64, i64* @S_OK, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i64, i64* %1, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @ok(i32 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i32*, i32** %6, align 8
  %72 = call i64 @IStream_Read(i32* %71, %struct.TYPE_7__* %8, i32 20, i32* %7)
  store i64 %72, i64* %1, align 8
  %73 = load i64, i64* %1, align 8
  %74 = load i64, i64* @S_OK, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = load i64, i64* %1, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @ok(i32 %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = icmp eq i64 %81, 20
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @ok(i32 %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 33554433
  %89 = zext i1 %88 to i32
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ok(i32 %89, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ok(i32 %96, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 0
  %103 = zext i1 %102 to i32
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ok(i32 %103, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %105)
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 0
  %110 = zext i1 %109 to i32
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @ok(i32 %110, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %112)
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 0
  %117 = zext i1 %116 to i32
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @ok(i32 %117, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %119)
  %121 = load i32*, i32** %6, align 8
  %122 = call i32 @IStream_Release(i32* %121)
  %123 = load i32*, i32** %4, align 8
  %124 = call i32 @IPersistStorage_Release(i32* %123)
  %125 = load i32*, i32** %3, align 8
  %126 = call i32 @IOleObject_Release(i32* %125)
  %127 = load i32*, i32** %5, align 8
  %128 = call i32 @IStorage_Release(i32* %127)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @create_storage(i32**) #2

declare dso_local i32 @ok(i32, i8*, i32) #2

declare dso_local i64 @IStorage_OpenStream(i32*, i32*, i32*, i32, i32, i32**) #2

declare dso_local i64 @OleCreateDefaultHandler(%struct.TYPE_8__*, i32, i32*, i8**) #2

declare dso_local i64 @IOleObject_QueryInterface(i32*, i32*, i8**) #2

declare dso_local i64 @IPersistStorage_InitNew(i32*, i32*) #2

declare dso_local i64 @IStream_Read(i32*, %struct.TYPE_7__*, i32, i32*) #2

declare dso_local i32 @IStream_Release(i32*) #2

declare dso_local i32 @IPersistStorage_Release(i32*) #2

declare dso_local i32 @IOleObject_Release(i32*) #2

declare dso_local i32 @IStorage_Release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
