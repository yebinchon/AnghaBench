; ModuleID = '/home/carl/AnghaBench/reactos/hal/halx86/mp/extr_mpconfig.c_HaliReadMPConfigTable.c'
source_filename = "/home/carl/AnghaBench/reactos/hal/halx86/mp/extr_mpconfig.c_HaliReadMPConfigTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32 }

@MPC_SIGNATURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"Bad MP configuration block signature: %c%c%c%c\0A\00", align 1
@HAL_INITIALIZATION_FAILED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Bad MP configuration block checksum\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Bad MP configuration table version (%d)\0A\00", align 1
@APIC_DEFAULT_BASE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [69 x i8] c"APIC base address is at 0x%X. I cannot handle non-standard adresses\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Oem: %.*s, ProductId: %.*s\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"APIC at: %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Unknown entry in MPC table\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @HaliReadMPConfigTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HaliReadMPConfigTable(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MPC_SIGNATURE, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %44

12:                                               ; preds = %1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = bitcast i64* %14 to i32*
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21, i32 %24, i32 %27)
  %29 = load i32, i32* @HAL_INITIALIZATION_FAILED, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @KeBugCheckEx(i32 %29, i32 %32, i32 %35, i32 %38, i32 %41)
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %2, align 4
  br label %175

44:                                               ; preds = %1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = bitcast %struct.TYPE_3__* %45 to i32*
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @MPChecksum(i32* %46, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @FALSE, align 4
  %55 = call i32 @ASSERT(i32 %54)
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %2, align 4
  br label %175

57:                                               ; preds = %44
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 1
  br i1 %61, label %62, label %75

62:                                               ; preds = %57
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 4
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @FALSE, align 4
  %73 = call i32 @ASSERT(i32 %72)
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %2, align 4
  br label %175

75:                                               ; preds = %62, %57
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @APIC_DEFAULT_BASE, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %75
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @FALSE, align 4
  %87 = call i32 @ASSERT(i32 %86)
  %88 = load i32, i32* @FALSE, align 4
  store i32 %88, i32* %2, align 4
  br label %175

89:                                               ; preds = %75
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i8*, i32, ...) @DPRINT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 8, i32 %92, i32 12, i32 %95)
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (i8*, i32, ...) @DPRINT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %99)
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %102 = ptrtoint %struct.TYPE_3__* %101 to i64
  %103 = add i64 %102, 4
  %104 = inttoptr i64 %103 to i32*
  store i32* %104, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %172, %89
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = sub i64 %111, 4
  %113 = icmp ult i64 %107, %112
  br i1 %113, label %114, label %173

114:                                              ; preds = %105
  %115 = load i32*, i32** %4, align 8
  %116 = load i32, i32* %115, align 4
  switch i32 %116, label %167 [
    i32 128, label %117
    i32 132, label %127
    i32 130, label %137
    i32 131, label %147
    i32 129, label %157
  ]

117:                                              ; preds = %114
  %118 = load i32*, i32** %4, align 8
  %119 = ptrtoint i32* %118 to i32
  %120 = call i32 @HaliMPProcessorInfo(i32 %119)
  %121 = load i32*, i32** %4, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 4
  store i32* %122, i32** %4, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = add i64 %124, 4
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %5, align 4
  br label %172

127:                                              ; preds = %114
  %128 = load i32*, i32** %4, align 8
  %129 = ptrtoint i32* %128 to i32
  %130 = call i32 @HaliMPBusInfo(i32 %129)
  %131 = load i32*, i32** %4, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 4
  store i32* %132, i32** %4, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = add i64 %134, 4
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %5, align 4
  br label %172

137:                                              ; preds = %114
  %138 = load i32*, i32** %4, align 8
  %139 = ptrtoint i32* %138 to i32
  %140 = call i32 @HaliMPIOApicInfo(i32 %139)
  %141 = load i32*, i32** %4, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 4
  store i32* %142, i32** %4, align 8
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = add i64 %144, 4
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %5, align 4
  br label %172

147:                                              ; preds = %114
  %148 = load i32*, i32** %4, align 8
  %149 = ptrtoint i32* %148 to i32
  %150 = call i32 @HaliMPIntSrcInfo(i32 %149)
  %151 = load i32*, i32** %4, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 4
  store i32* %152, i32** %4, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = add i64 %154, 4
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %5, align 4
  br label %172

157:                                              ; preds = %114
  %158 = load i32*, i32** %4, align 8
  %159 = ptrtoint i32* %158 to i32
  %160 = call i32 @HaliMPIntLocalInfo(i32 %159)
  %161 = load i32*, i32** %4, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 4
  store i32* %162, i32** %4, align 8
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = add i64 %164, 4
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %5, align 4
  br label %172

167:                                              ; preds = %114
  %168 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %169 = load i32, i32* @FALSE, align 4
  %170 = call i32 @ASSERT(i32 %169)
  %171 = load i32, i32* @FALSE, align 4
  store i32 %171, i32* %2, align 4
  br label %175

172:                                              ; preds = %157, %147, %137, %127, %117
  br label %105

173:                                              ; preds = %105
  %174 = load i32, i32* @TRUE, align 4
  store i32 %174, i32* %2, align 4
  br label %175

175:                                              ; preds = %173, %167, %81, %67, %52, %12
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local i32 @DPRINT1(i8*, ...) #1

declare dso_local i32 @KeBugCheckEx(i32, i32, i32, i32, i32) #1

declare dso_local i64 @MPChecksum(i32*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @DPRINT(i8*, i32, ...) #1

declare dso_local i32 @HaliMPProcessorInfo(i32) #1

declare dso_local i32 @HaliMPBusInfo(i32) #1

declare dso_local i32 @HaliMPIOApicInfo(i32) #1

declare dso_local i32 @HaliMPIntSrcInfo(i32) #1

declare dso_local i32 @HaliMPIntLocalInfo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
