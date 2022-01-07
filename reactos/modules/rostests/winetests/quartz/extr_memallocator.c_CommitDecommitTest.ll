; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/quartz/extr_memallocator.c_CommitDecommitTest.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/quartz/extr_memallocator.c_CommitDecommitTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64 }

@CLSID_MemoryAllocator = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IMemAllocator = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Unable to create memory allocator %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"SetProperties returned: %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Commit returned: %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Could not get a buffer: %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Decommit returned: %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Cecommit returned: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CommitDecommitTest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CommitDecommitTest() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %8 = bitcast i32** %1 to i32*
  %9 = call i64 @CoCreateInstance(i32* @CLSID_MemoryAllocator, i32* null, i32 %7, i32* @IID_IMemAllocator, i32* %8)
  store i64 %9, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @S_OK, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i64, i64* %2, align 8
  %15 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* @S_OK, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %110

19:                                               ; preds = %0
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 2, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store i32 65536, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  store i32 1, i32* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load i32*, i32** %1, align 8
  %25 = call i64 @IMemAllocator_SetProperties(i32* %24, %struct.TYPE_4__* %3, %struct.TYPE_4__* %4)
  store i64 %25, i64* %2, align 8
  %26 = load i64, i64* %2, align 8
  %27 = load i64, i64* @S_OK, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i64, i64* %2, align 8
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  %32 = load i32*, i32** %1, align 8
  %33 = call i64 @IMemAllocator_Commit(i32* %32)
  store i64 %33, i64* %2, align 8
  %34 = load i64, i64* %2, align 8
  %35 = load i64, i64* @S_OK, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i64, i64* %2, align 8
  %39 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %38)
  %40 = load i32*, i32** %1, align 8
  %41 = call i64 @IMemAllocator_Commit(i32* %40)
  store i64 %41, i64* %2, align 8
  %42 = load i64, i64* %2, align 8
  %43 = load i64, i64* @S_OK, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i64, i64* %2, align 8
  %47 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %46)
  %48 = load i32*, i32** %1, align 8
  %49 = call i64 @IMemAllocator_GetBuffer(i32* %48, i32** %5, i32* null, i32* null, i32 0)
  store i64 %49, i64* %2, align 8
  %50 = load i64, i64* %2, align 8
  %51 = load i64, i64* @S_OK, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i64, i64* %2, align 8
  %55 = call i32 @ok(i32 %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %54)
  %56 = load i32*, i32** %1, align 8
  %57 = call i64 @IMemAllocator_Decommit(i32* %56)
  store i64 %57, i64* %2, align 8
  %58 = load i64, i64* %2, align 8
  %59 = load i64, i64* @S_OK, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i64, i64* %2, align 8
  %63 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i64 %62)
  %64 = load i32*, i32** %1, align 8
  %65 = call i64 @IMemAllocator_Decommit(i32* %64)
  store i64 %65, i64* %2, align 8
  %66 = load i64, i64* %2, align 8
  %67 = load i64, i64* @S_OK, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i64, i64* %2, align 8
  %71 = call i32 @ok(i32 %69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i64 %70)
  %72 = load i32*, i32** %5, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %107

74:                                               ; preds = %19
  %75 = load i32*, i32** %1, align 8
  %76 = call i64 @IMemAllocator_Commit(i32* %75)
  store i64 %76, i64* %2, align 8
  %77 = load i64, i64* %2, align 8
  %78 = load i64, i64* @S_OK, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i64, i64* %2, align 8
  %82 = call i32 @ok(i32 %80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %81)
  %83 = load i32*, i32** %1, align 8
  %84 = call i64 @IMemAllocator_GetBuffer(i32* %83, i32** %6, i32* null, i32* null, i32 0)
  store i64 %84, i64* %2, align 8
  %85 = load i64, i64* %2, align 8
  %86 = load i64, i64* @S_OK, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i64, i64* %2, align 8
  %90 = call i32 @ok(i32 %88, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %89)
  %91 = load i32*, i32** %5, align 8
  %92 = call i32 @IMediaSample_Release(i32* %91)
  %93 = load i32*, i32** %6, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %74
  %96 = load i32*, i32** %6, align 8
  %97 = call i32 @IMediaSample_Release(i32* %96)
  br label %98

98:                                               ; preds = %95, %74
  %99 = load i32*, i32** %1, align 8
  %100 = call i64 @IMemAllocator_Decommit(i32* %99)
  store i64 %100, i64* %2, align 8
  %101 = load i64, i64* %2, align 8
  %102 = load i64, i64* @S_OK, align 8
  %103 = icmp eq i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = load i64, i64* %2, align 8
  %106 = call i32 @ok(i32 %104, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i64 %105)
  br label %107

107:                                              ; preds = %98, %19
  %108 = load i32*, i32** %1, align 8
  %109 = call i32 @IMemAllocator_Release(i32* %108)
  br label %110

110:                                              ; preds = %107, %0
  ret void
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IMemAllocator_SetProperties(i32*, %struct.TYPE_4__*, %struct.TYPE_4__*) #1

declare dso_local i64 @IMemAllocator_Commit(i32*) #1

declare dso_local i64 @IMemAllocator_GetBuffer(i32*, i32**, i32*, i32*, i32) #1

declare dso_local i64 @IMemAllocator_Decommit(i32*) #1

declare dso_local i32 @IMediaSample_Release(i32*) #1

declare dso_local i32 @IMemAllocator_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
