; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_clist.c_test_SHLWAPI_166.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_clist.c_test_SHLWAPI_166.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dummystream = type { i32, i64, i32, i32, %struct.TYPE_2__, i32, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"called Read()\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"called Write()\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"called Seek()\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"wrong call count\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"failed after seek adjusted\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"should be FALSE after read is OK\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Didn't seek to start\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Should be true after read fails\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Called Seek()\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"called Seek() after read failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @test_SHLWAPI_166 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @test_SHLWAPI_166() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.dummystream, align 8
  %3 = alloca i64, align 8
  %4 = call i32 @InitDummyStream(%struct.dummystream* %2)
  %5 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %2, i32 0, i32 5
  %6 = call i64 @pSHLWAPI_166(i32* %5)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @TRUE, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = load i64, i64* @FALSE, align 8
  store i64 %11, i64* %1, align 8
  br label %142

12:                                               ; preds = %0
  %13 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %2, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %18 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %2, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %23 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %2, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %28 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %2, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 1
  %31 = zext i1 %30 to i32
  %32 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %33 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %2, i32 0, i32 3
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %2, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 50001, i32* %35, align 8
  %36 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %2, i32 0, i32 5
  %37 = call i64 @pSHLWAPI_166(i32* %36)
  store i64 %37, i64* %3, align 8
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* @FALSE, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %43 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %2, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @ok(i32 %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %48 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %2, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %53 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %2, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %58 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %2, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 1
  %61 = zext i1 %60 to i32
  %62 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %63 = call i32 @InitDummyStream(%struct.dummystream* %2)
  %64 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %2, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 50001, i32* %65, align 8
  %66 = load i64, i64* @TRUE, align 8
  %67 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %2, i32 0, i32 7
  store i64 %66, i64* %67, align 8
  %68 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %2, i32 0, i32 5
  %69 = call i64 @pSHLWAPI_166(i32* %68)
  store i64 %69, i64* %3, align 8
  %70 = load i64, i64* %3, align 8
  %71 = load i64, i64* @FALSE, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @ok(i32 %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %75 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %2, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 1
  %78 = zext i1 %77 to i32
  %79 = call i32 @ok(i32 %78, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %80 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %2, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @ok(i32 %83, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %85 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %2, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 1
  %88 = zext i1 %87 to i32
  %89 = call i32 @ok(i32 %88, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %90 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %2, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 1
  %93 = zext i1 %92 to i32
  %94 = call i32 @ok(i32 %93, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %95 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %2, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i32 @ok(i32 %99, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %101 = call i32 @InitDummyStream(%struct.dummystream* %2)
  %102 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %2, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  store i32 50001, i32* %103, align 8
  %104 = load i64, i64* @TRUE, align 8
  %105 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %2, i32 0, i32 7
  store i64 %104, i64* %105, align 8
  %106 = load i64, i64* @TRUE, align 8
  %107 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %2, i32 0, i32 6
  store i64 %106, i64* %107, align 8
  %108 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %2, i32 0, i32 5
  %109 = call i64 @pSHLWAPI_166(i32* %108)
  store i64 %109, i64* %3, align 8
  %110 = load i64, i64* %3, align 8
  %111 = load i64, i64* @TRUE, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @ok(i32 %113, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %115 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %2, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 1
  %118 = zext i1 %117 to i32
  %119 = call i32 @ok(i32 %118, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %120 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %2, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %121, 0
  %123 = zext i1 %122 to i32
  %124 = call i32 @ok(i32 %123, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %125 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %2, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %126, 0
  %128 = zext i1 %127 to i32
  %129 = call i32 @ok(i32 %128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %130 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %2, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, 1
  %133 = zext i1 %132 to i32
  %134 = call i32 @ok(i32 %133, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %135 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %2, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, 50001
  %139 = zext i1 %138 to i32
  %140 = call i32 @ok(i32 %139, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %141 = load i64, i64* @TRUE, align 8
  store i64 %141, i64* %1, align 8
  br label %142

142:                                              ; preds = %12, %10
  %143 = load i64, i64* %1, align 8
  ret i64 %143
}

declare dso_local i32 @InitDummyStream(%struct.dummystream*) #1

declare dso_local i64 @pSHLWAPI_166(i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
