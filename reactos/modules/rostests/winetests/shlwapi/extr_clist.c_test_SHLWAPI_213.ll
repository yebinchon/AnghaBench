; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_clist.c_test_SHLWAPI_213.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_clist.c_test_SHLWAPI_213.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dummystream = type { i32, i64, i64, i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"called Stat()\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"called Read()\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"called Write()\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"wrong call count\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"failed Stat()\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"213 didn't rewind stream\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SHLWAPI_213 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SHLWAPI_213() #0 {
  %1 = alloca %struct.dummystream, align 8
  %2 = alloca %struct.TYPE_5__, align 4
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = alloca i64, align 8
  %5 = call i32 @InitDummyStream(%struct.dummystream* %1)
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i64 5000, i64* %6, align 8
  %7 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %1, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @Seek(i32* %7, i64 %9, i32 0, i32* null)
  %11 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %1, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %1, i32 0, i32 4
  %13 = call i32 @pSHLWAPI_213(i32* %12)
  %14 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %1, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %19 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %1, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %24 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %1, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %29 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %1, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 1
  %32 = zext i1 %31 to i32
  %33 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  store i32 50001, i32* %34, align 4
  %35 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %1, i32 0, i32 4
  %36 = call i64 @pSHLWAPI_214(i32* %35, %struct.TYPE_5__* %2)
  store i64 %36, i64* %4, align 8
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @S_OK, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @InitDummyStream(%struct.dummystream*) #1

declare dso_local i32 @Seek(i32*, i64, i32, i32*) #1

declare dso_local i32 @pSHLWAPI_213(i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i64 @pSHLWAPI_214(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
