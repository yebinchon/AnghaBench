; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/quartz/extr_filtermapper.c_test_aggregate_filter_mapper.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/quartz/extr_filtermapper.c_test_aggregate_filter_mapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@IUnknownImpl_Vtbl = common dso_local global i32 0, align 4
@CLSID_FilterMapper2 = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IUnknown = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"CoCreateInstance returned %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"pmapper = %p, expected not %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"IUnknown_QueryInterface returned %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"punk = %p, expected not %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"IUnknownImpl_AddRef called %d times\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"IUnknownImpl_Release called %d times\0A\00", align 1
@IID_IFilterMapper = common dso_local global i32 0, align 4
@IID_IFilterMapper2 = common dso_local global i32 0, align 4
@IID_IFilterMapper3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_aggregate_filter_mapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_aggregate_filter_mapper() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = bitcast %struct.TYPE_4__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 32, i1 false)
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 ptrtoint (i32* @IUnknownImpl_Vtbl to i32), i32* %6, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %8 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %9 = bitcast i32** %2 to i8**
  %10 = call i32 @CoCreateInstance(i32* @CLSID_FilterMapper2, i32* %7, i32 %8, i32* @IID_IUnknown, i8** %9)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @S_OK, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %1, align 4
  %16 = call i32 (i32, i8*, i32, ...) @ok(i32 %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %19 = icmp ne i32* %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i32*, i32** %2, align 8
  %22 = ptrtoint i32* %21 to i32
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %24 = call i32 (i32, i8*, i32, ...) @ok(i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32* %23)
  %25 = load i32*, i32** %2, align 8
  %26 = bitcast i32** %3 to i8**
  %27 = call i32 @IUnknown_QueryInterface(i32* %25, i32* @IID_IUnknown, i8** %26)
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* %1, align 4
  %29 = load i32, i32* @S_OK, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %1, align 4
  %33 = call i32 (i32, i8*, i32, ...) @ok(i32 %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %36 = icmp ne i32* %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i32*, i32** %3, align 8
  %39 = ptrtoint i32* %38 to i32
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %41 = call i32 (i32, i8*, i32, ...) @ok(i32 %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %39, i32* %40)
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @IUnknown_Release(i32* %42)
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i32, i8*, i32, ...) @ok(i32 %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, i8*, i32, ...) @ok(i32 %54, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i32 0, i32* %59, align 4
  %60 = load i32*, i32** %2, align 8
  %61 = bitcast i32** %3 to i8**
  %62 = call i32 @IUnknown_QueryInterface(i32* %60, i32* @IID_IFilterMapper, i8** %61)
  store i32 %62, i32* %1, align 4
  %63 = load i32, i32* %1, align 4
  %64 = load i32, i32* @S_OK, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %1, align 4
  %68 = call i32 (i32, i8*, i32, ...) @ok(i32 %66, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i32*, i32** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %71 = icmp ne i32* %69, %70
  %72 = zext i1 %71 to i32
  %73 = load i32*, i32** %3, align 8
  %74 = ptrtoint i32* %73 to i32
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %76 = call i32 (i32, i8*, i32, ...) @ok(i32 %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %74, i32* %75)
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @IUnknown_Release(i32* %77)
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 1
  %82 = zext i1 %81 to i32
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i32, i8*, i32, ...) @ok(i32 %82, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 1
  %89 = zext i1 %88 to i32
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i32, i8*, i32, ...) @ok(i32 %89, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 0, i32* %93, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i32 0, i32* %94, align 4
  %95 = load i32*, i32** %2, align 8
  %96 = bitcast i32** %3 to i8**
  %97 = call i32 @IUnknown_QueryInterface(i32* %95, i32* @IID_IFilterMapper2, i8** %96)
  store i32 %97, i32* %1, align 4
  %98 = load i32, i32* %1, align 4
  %99 = load i32, i32* @S_OK, align 4
  %100 = icmp eq i32 %98, %99
  %101 = zext i1 %100 to i32
  %102 = load i32, i32* %1, align 4
  %103 = call i32 (i32, i8*, i32, ...) @ok(i32 %101, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = load i32*, i32** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %106 = icmp ne i32* %104, %105
  %107 = zext i1 %106 to i32
  %108 = load i32*, i32** %3, align 8
  %109 = ptrtoint i32* %108 to i32
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %111 = call i32 (i32, i8*, i32, ...) @ok(i32 %107, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %109, i32* %110)
  %112 = load i32*, i32** %3, align 8
  %113 = call i32 @IUnknown_Release(i32* %112)
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %115, 1
  %117 = zext i1 %116 to i32
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (i32, i8*, i32, ...) @ok(i32 %117, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %119)
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 1
  %124 = zext i1 %123 to i32
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i32, i8*, i32, ...) @ok(i32 %124, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %126)
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 0, i32* %128, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i32 0, i32* %129, align 4
  %130 = load i32*, i32** %2, align 8
  %131 = bitcast i32** %3 to i8**
  %132 = call i32 @IUnknown_QueryInterface(i32* %130, i32* @IID_IFilterMapper3, i8** %131)
  store i32 %132, i32* %1, align 4
  %133 = load i32, i32* %1, align 4
  %134 = load i32, i32* @S_OK, align 4
  %135 = icmp eq i32 %133, %134
  %136 = zext i1 %135 to i32
  %137 = load i32, i32* %1, align 4
  %138 = call i32 (i32, i8*, i32, ...) @ok(i32 %136, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %137)
  %139 = load i32*, i32** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %141 = icmp ne i32* %139, %140
  %142 = zext i1 %141 to i32
  %143 = load i32*, i32** %3, align 8
  %144 = ptrtoint i32* %143 to i32
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %146 = call i32 (i32, i8*, i32, ...) @ok(i32 %142, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %144, i32* %145)
  %147 = load i32*, i32** %3, align 8
  %148 = call i32 @IUnknown_Release(i32* %147)
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp eq i32 %150, 1
  %152 = zext i1 %151 to i32
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 (i32, i8*, i32, ...) @ok(i32 %152, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %154)
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, 1
  %159 = zext i1 %158 to i32
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (i32, i8*, i32, ...) @ok(i32 %159, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %161)
  %163 = load i32*, i32** %2, align 8
  %164 = call i32 @IUnknown_Release(i32* %163)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #2

declare dso_local i32 @ok(i32, i8*, i32, ...) #2

declare dso_local i32 @IUnknown_QueryInterface(i32*, i32*, i8**) #2

declare dso_local i32 @IUnknown_Release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
