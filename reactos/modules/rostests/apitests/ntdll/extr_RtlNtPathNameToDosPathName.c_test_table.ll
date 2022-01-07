; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_RtlNtPathNameToDosPathName.c_test_table.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_RtlNtPathNameToDosPathName.c_test_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_entry = type { i32, i32, i32* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i64, i32, i32, i32, i32*, i32* }
%struct.TYPE_10__ = type { i32*, i32 }
%struct.TYPE_8__ = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@RTL_SKIP_BUFFER_COPY = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Expected Buffer to point inside StaticBuffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.test_entry*)* @test_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_table(%struct.test_entry* %0) #0 {
  %2 = alloca %struct.test_entry*, align 8
  %3 = alloca %struct.TYPE_9__, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.test_entry* %0, %struct.test_entry** %2, align 8
  %7 = bitcast %struct.TYPE_9__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 72, i1 false)
  %8 = load i32, i32* @MAX_PATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  store i32 74565, i32* %6, align 4
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %13 = ptrtoint i32* %11 to i64
  %14 = mul nuw i64 4, %9
  %15 = trunc i64 %14 to i32
  %16 = call i32 @RtlInitBuffer(%struct.TYPE_11__* %12, i64 %13, i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 2
  %18 = load %struct.test_entry*, %struct.test_entry** %2, align 8
  %19 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @RtlInitUnicodeString(%struct.TYPE_10__* %17, i32* %20)
  %22 = load i32, i32* @RTL_SKIP_BUFFER_COPY, align 4
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @RtlEnsureBufferSize(i32 %22, %struct.TYPE_11__* %23, i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 5
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @memcpy(i32* %30, i32* %33, i32 %36)
  %38 = call i32 @pRtlNtPathNameToDosPathName(i32 0, %struct.TYPE_9__* %3, i32* %6, i32* null)
  %39 = load i32, i32* @STATUS_SUCCESS, align 4
  %40 = call i32 @ok_hex_(i32 %38, i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.test_entry*, %struct.test_entry** %2, align 8
  %43 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ok_hex_(i32 %41, i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.test_entry*, %struct.test_entry** %2, align 8
  %50 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ok_wstr_(i32* %48, i32 %51)
  %53 = load %struct.test_entry*, %struct.test_entry** %2, align 8
  %54 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.test_entry*, %struct.test_entry** %2, align 8
  %57 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @wcscmp(i32* %55, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.test_entry*, %struct.test_entry** %2, align 8
  %66 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @ok_ptr_(i32* %64, i32* %67)
  br label %96

69:                                               ; preds = %1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = ptrtoint i32* %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp sge i64 %73, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %69
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = ptrtoint i32* %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %85, %89
  %91 = icmp sle i64 %82, %90
  br label %92

92:                                               ; preds = %78, %69
  %93 = phi i1 [ false, %69 ], [ %91, %78 ]
  %94 = zext i1 %93 to i32
  %95 = call i32 @winetest_ok(i32 %94, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %92, %61
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 5
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.test_entry*, %struct.test_entry** %2, align 8
  %101 = getelementptr inbounds %struct.test_entry, %struct.test_entry* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @ok_wstr_(i32* %99, i32 %102)
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @ok_hex_(i32 %105, i32 0)
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 5
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to i32*
  %114 = call i32 @ok_ptr_(i32* %109, i32* %113)
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @ok_hex_(i32 %117, i32 %120)
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @ok_hex_(i32 %124, i32 0)
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @ok_ptr_(i32* %128, i32* null)
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %131 = call i32 @RtlFreeBuffer(%struct.TYPE_11__* %130)
  %132 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %132)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @RtlInitBuffer(%struct.TYPE_11__*, i64, i32) #3

declare dso_local i32 @RtlInitUnicodeString(%struct.TYPE_10__*, i32*) #3

declare dso_local i32 @RtlEnsureBufferSize(i32, %struct.TYPE_11__*, i32) #3

declare dso_local i32 @memcpy(i32*, i32*, i32) #3

declare dso_local i32 @ok_hex_(i32, i32) #3

declare dso_local i32 @pRtlNtPathNameToDosPathName(i32, %struct.TYPE_9__*, i32*, i32*) #3

declare dso_local i32 @ok_wstr_(i32*, i32) #3

declare dso_local i32 @wcscmp(i32*, i32) #3

declare dso_local i32 @ok_ptr_(i32*, i32*) #3

declare dso_local i32 @winetest_ok(i32, i8*) #3

declare dso_local i32 @RtlFreeBuffer(%struct.TYPE_11__*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
