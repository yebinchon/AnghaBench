; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/mm/i386/extr_page.c_MmGetPageTableForProcess.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/mm/i386/extr_page.c_MmGetPageTableForProcess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }

@MmSystemRangeStart = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@MEMORY_MANAGEMENT = common dso_local global i32 0, align 4
@DemandZeroPde = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_18__*, i64, i64)* @MmGetPageTableForProcess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @MmGetPageTableForProcess(%struct.TYPE_18__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @MmSystemRangeStart, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %136

17:                                               ; preds = %3
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %19 = icmp ne %struct.TYPE_18__* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %23 = call %struct.TYPE_18__* (...) @PsGetCurrentProcess()
  %24 = icmp ne %struct.TYPE_18__* %22, %23
  br i1 %24, label %25, label %84

25:                                               ; preds = %17
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @MiGetPdeOffset(i64 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @FALSE, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @PTE_TO_PFN(i32 %38)
  %40 = call i8* @MmCreateHyperspaceMapping(i32 %39)
  %41 = bitcast i8* %40 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %41, %struct.TYPE_17__** %11, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %43 = icmp eq %struct.TYPE_17__* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %25
  %45 = load i32, i32* @MEMORY_MANAGEMENT, align 4
  %46 = call i32 @KeBugCheck(i32 %45)
  br label %47

47:                                               ; preds = %44, %25
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i64 %50
  store %struct.TYPE_17__* %51, %struct.TYPE_17__** %10, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %60 = call i32 @MmDeleteHyperspaceMapping(%struct.TYPE_17__* %59)
  store i32* null, i32** %4, align 8
  br label %168

61:                                               ; preds = %47
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %61
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %69 = call i32 @MmDeleteHyperspaceMapping(%struct.TYPE_17__* %68)
  %70 = load i32, i32* %8, align 4
  %71 = call i8* @MmCreateHyperspaceMapping(i32 %70)
  %72 = bitcast i8* %71 to i32*
  store i32* %72, i32** %9, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load i32, i32* @MEMORY_MANAGEMENT, align 4
  %77 = call i32 @KeBugCheck(i32 %76)
  br label %78

78:                                               ; preds = %75, %67
  %79 = load i32*, i32** %9, align 8
  %80 = load i64, i64* %6, align 8
  %81 = call i32 @MiAddressToPteOffset(i64 %80)
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  store i32* %83, i32** %4, align 8
  br label %168

84:                                               ; preds = %17
  %85 = load i64, i64* %6, align 8
  %86 = call %struct.TYPE_17__* @MiAddressToPde(i64 %85)
  store %struct.TYPE_17__* %86, %struct.TYPE_17__** %10, align 8
  %87 = load i64, i64* %6, align 8
  %88 = call i64 @MiAddressToPte(i64 %87)
  %89 = inttoptr i64 %88 to i32*
  store i32* %89, i32** %9, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %132

96:                                               ; preds = %84
  %97 = load i64, i64* %7, align 8
  %98 = load i64, i64* @FALSE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i32* null, i32** %4, align 8
  br label %168

101:                                              ; preds = %96
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i32 @ASSERT(i32 %107)
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %110 = load i32, i32* @DemandZeroPde, align 4
  %111 = call i32 @MI_WRITE_INVALID_PTE(%struct.TYPE_17__* %109, i32 %110)
  %112 = load i32*, i32** %9, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %114 = load i64, i64* @FALSE, align 8
  %115 = call %struct.TYPE_18__* (...) @PsGetCurrentProcess()
  %116 = call i32 @MiDispatchFault(i32 1, i32* %112, %struct.TYPE_17__* %113, i32* null, i64 %114, %struct.TYPE_18__* %115, i32* null, i32* null)
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @DBG_UNREFERENCED_LOCAL_VARIABLE(i32 %117)
  %119 = call i64 (...) @KeAreAllApcsDisabled()
  %120 = load i64, i64* @TRUE, align 8
  %121 = icmp eq i64 %119, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 @ASSERT(i32 %122)
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 1
  %130 = zext i1 %129 to i32
  %131 = call i32 @ASSERT(i32 %130)
  br label %132

132:                                              ; preds = %101, %84
  %133 = load i64, i64* %6, align 8
  %134 = call i64 @MiAddressToPte(i64 %133)
  %135 = inttoptr i64 %134 to i32*
  store i32* %135, i32** %4, align 8
  br label %168

136:                                              ; preds = %3
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %138 = icmp eq %struct.TYPE_18__* %137, null
  %139 = zext i1 %138 to i32
  %140 = call i32 @ASSERT(i32 %139)
  %141 = load i64, i64* %6, align 8
  %142 = call %struct.TYPE_17__* @MiAddressToPde(i64 %141)
  store %struct.TYPE_17__* %142, %struct.TYPE_17__** %10, align 8
  %143 = load i64, i64* %6, align 8
  %144 = call i64 @MiAddressToPte(i64 %143)
  %145 = inttoptr i64 %144 to i32*
  store i32* %145, i32** %9, align 8
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %166

152:                                              ; preds = %136
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %154 = call i32 @MiSynchronizeSystemPde(%struct.TYPE_17__* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %165, label %156

156:                                              ; preds = %152
  %157 = load i64, i64* %7, align 8
  %158 = load i64, i64* @FALSE, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  store i32* null, i32** %4, align 8
  br label %168

161:                                              ; preds = %156
  %162 = load i64, i64* %6, align 8
  %163 = load i32, i32* @PAGE_SIZE, align 4
  %164 = call i32 @MiFillSystemPageDirectory(i64 %162, i32 %163)
  br label %165

165:                                              ; preds = %161, %152
  br label %166

166:                                              ; preds = %165, %136
  %167 = load i32*, i32** %9, align 8
  store i32* %167, i32** %4, align 8
  br label %168

168:                                              ; preds = %166, %160, %132, %100, %78, %58
  %169 = load i32*, i32** %4, align 8
  ret i32* %169
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_18__* @PsGetCurrentProcess(...) #1

declare dso_local i32 @MiGetPdeOffset(i64) #1

declare dso_local i8* @MmCreateHyperspaceMapping(i32) #1

declare dso_local i32 @PTE_TO_PFN(i32) #1

declare dso_local i32 @KeBugCheck(i32) #1

declare dso_local i32 @MmDeleteHyperspaceMapping(%struct.TYPE_17__*) #1

declare dso_local i32 @MiAddressToPteOffset(i64) #1

declare dso_local %struct.TYPE_17__* @MiAddressToPde(i64) #1

declare dso_local i64 @MiAddressToPte(i64) #1

declare dso_local i32 @MI_WRITE_INVALID_PTE(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @MiDispatchFault(i32, i32*, %struct.TYPE_17__*, i32*, i64, %struct.TYPE_18__*, i32*, i32*) #1

declare dso_local i32 @DBG_UNREFERENCED_LOCAL_VARIABLE(i32) #1

declare dso_local i64 @KeAreAllApcsDisabled(...) #1

declare dso_local i32 @MiSynchronizeSystemPde(%struct.TYPE_17__*) #1

declare dso_local i32 @MiFillSystemPageDirectory(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
