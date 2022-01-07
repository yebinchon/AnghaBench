; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_ordinal.c_test_SHPropertyBag_ReadLONG.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_ordinal.c_test_SHPropertyBag_ReadLONG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@test_SHPropertyBag_ReadLONG.szName1 = internal constant [6 x i8] c"name1\00", align 1
@prop_vtbl = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"incorrect return %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"value should not have changed\0A\00", align 1
@S_FALSE = common dso_local global i64 0, align 8
@DISP_E_BADVARTYPE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"value should not have changed %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SHPropertyBag_ReadLONG to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SHPropertyBag_ReadLONG() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = call i32 (...) @GetProcessHeap()
  %5 = call %struct.TYPE_4__* @HeapAlloc(i32 %4, i32 0, i32 16)
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %1, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i32* @prop_vtbl, i32** %10, align 8
  store i32 -17958194, i32* %3, align 4
  %11 = call i64 @pSHPropertyBag_ReadLONG(%struct.TYPE_5__* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_SHPropertyBag_ReadLONG.szName1, i64 0, i64 0), i32* %3)
  store i64 %11, i64* %2, align 8
  %12 = load i64, i64* %2, align 8
  %13 = load i64, i64* @E_INVALIDARG, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %0
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* @S_OK, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @broken(i32 %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %15, %0
  %23 = phi i1 [ true, %0 ], [ %21, %15 ]
  %24 = zext i1 %23 to i32
  %25 = load i64, i64* %2, align 8
  %26 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %27, -17958194
  %29 = zext i1 %28 to i32
  %30 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = call i64 @pSHPropertyBag_ReadLONG(%struct.TYPE_5__* %32, i8* null, i32* %3)
  store i64 %33, i64* %2, align 8
  %34 = load i64, i64* %2, align 8
  %35 = load i64, i64* @E_INVALIDARG, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %51, label %37

37:                                               ; preds = %22
  %38 = load i64, i64* %2, align 8
  %39 = load i64, i64* @S_OK, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @broken(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %37
  %45 = load i64, i64* %2, align 8
  %46 = load i64, i64* @S_FALSE, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i64 @broken(i32 %48)
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %44, %37, %22
  %52 = phi i1 [ true, %37 ], [ true, %22 ], [ %50, %44 ]
  %53 = zext i1 %52 to i32
  %54 = load i64, i64* %2, align 8
  %55 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %54)
  %56 = load i32, i32* %3, align 4
  %57 = icmp eq i32 %56, -17958194
  %58 = zext i1 %57 to i32
  %59 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = call i64 @pSHPropertyBag_ReadLONG(%struct.TYPE_5__* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_SHPropertyBag_ReadLONG.szName1, i64 0, i64 0), i32* null)
  store i64 %62, i64* %2, align 8
  %63 = load i64, i64* %2, align 8
  %64 = load i64, i64* @E_INVALIDARG, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %80, label %66

66:                                               ; preds = %51
  %67 = load i64, i64* %2, align 8
  %68 = load i64, i64* @S_OK, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i64 @broken(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %66
  %74 = load i64, i64* %2, align 8
  %75 = load i64, i64* @S_FALSE, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i64 @broken(i32 %77)
  %79 = icmp ne i64 %78, 0
  br label %80

80:                                               ; preds = %73, %66, %51
  %81 = phi i1 [ true, %66 ], [ true, %51 ], [ %79, %73 ]
  %82 = zext i1 %81 to i32
  %83 = load i64, i64* %2, align 8
  %84 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %83)
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = call i64 @pSHPropertyBag_ReadLONG(%struct.TYPE_5__* %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_SHPropertyBag_ReadLONG.szName1, i64 0, i64 0), i32* %3)
  store i64 %87, i64* %2, align 8
  %88 = load i64, i64* %2, align 8
  %89 = load i64, i64* @DISP_E_BADVARTYPE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %105, label %91

91:                                               ; preds = %80
  %92 = load i64, i64* %2, align 8
  %93 = load i64, i64* @S_OK, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i64 @broken(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %91
  %99 = load i64, i64* %2, align 8
  %100 = load i64, i64* @S_FALSE, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i64 @broken(i32 %102)
  %104 = icmp ne i64 %103, 0
  br label %105

105:                                              ; preds = %98, %91, %80
  %106 = phi i1 [ true, %91 ], [ true, %80 ], [ %104, %98 ]
  %107 = zext i1 %106 to i32
  %108 = load i64, i64* %2, align 8
  %109 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %108)
  %110 = load i32, i32* %3, align 4
  %111 = icmp eq i32 %110, -17958194
  br i1 %111, label %118, label %112

112:                                              ; preds = %105
  %113 = load i32, i32* %3, align 4
  %114 = icmp eq i32 %113, -17958400
  %115 = zext i1 %114 to i32
  %116 = call i64 @broken(i32 %115)
  %117 = icmp ne i64 %116, 0
  br label %118

118:                                              ; preds = %112, %105
  %119 = phi i1 [ true, %105 ], [ %117, %112 ]
  %120 = zext i1 %119 to i32
  %121 = load i32, i32* %3, align 4
  %122 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %121)
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %124 = bitcast %struct.TYPE_4__* %123 to i32*
  %125 = call i32 @IUnknown_Release(i32* %124)
  ret void
}

declare dso_local %struct.TYPE_4__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @pSHPropertyBag_ReadLONG(%struct.TYPE_5__*, i8*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
