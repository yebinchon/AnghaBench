; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/utilities/extr_utcopy.c_AcpiUtCopyIsimpleToEsimple.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/utilities/extr_utcopy.c_AcpiUtCopyIsimpleToEsimple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_32__, %struct.TYPE_30__, %struct.TYPE_28__, %struct.TYPE_27__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_32__ = type { i32, i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_28__ = type { i32, i64 }
%struct.TYPE_27__ = type { i32, i64 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_20__, %struct.TYPE_33__, %struct.TYPE_31__, %struct.TYPE_29__, %struct.TYPE_26__, %struct.TYPE_25__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_33__ = type { i32, i32, i32 }
%struct.TYPE_31__ = type { i32, i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32* }
%struct.TYPE_25__ = type { i8*, i32 }

@AE_OK = common dso_local global i32 0, align 4
@UtCopyIsimpleToEsimple = common dso_local global i32 0, align 4
@AE_TYPE = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Unsupported object type, cannot convert to external object: %s\00", align 1
@AE_SUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, %struct.TYPE_24__*, i32*, i64*)* @AcpiUtCopyIsimpleToEsimple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AcpiUtCopyIsimpleToEsimple(%struct.TYPE_23__* %0, %struct.TYPE_24__* %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load i32, i32* @AE_OK, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* @UtCopyIsimpleToEsimple, align 4
  %13 = call i32 @ACPI_FUNCTION_TRACE(i32 %12)
  %14 = load i64*, i64** %9, align 8
  store i64 0, i64* %14, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %16 = icmp ne %struct.TYPE_23__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @AE_OK, align 4
  %19 = call i32 @return_ACPI_STATUS(i32 %18)
  br label %20

20:                                               ; preds = %17, %4
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %22 = call i32 @memset(%struct.TYPE_24__* %21, i32 0, i32 72)
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %170 [
    i32 128, label %33
    i32 133, label %70
    i32 132, label %100
    i32 131, label %108
    i32 129, label %133
    i32 130, label %155
  ]

33:                                               ; preds = %20
  %34 = load i32*, i32** %8, align 8
  %35 = bitcast i32* %34 to i8*
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 0
  store i8* %35, i8** %38, align 8
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 6
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 8
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, 1
  %52 = trunc i64 %51 to i32
  %53 = call i64 @ACPI_ROUND_UP_TO_NATIVE_WORD(i32 %52)
  %54 = load i64*, i64** %9, align 8
  store i64 %53, i64* %54, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = bitcast i32* %55 to i8*
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 6
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, 1
  %68 = trunc i64 %67 to i32
  %69 = call i32 @memcpy(i8* %56, i8* %61, i32 %68)
  br label %180

70:                                               ; preds = %20
  %71 = load i32*, i32** %8, align 8
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 1
  store i32* %71, i32** %74, align 8
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @ACPI_ROUND_UP_TO_NATIVE_WORD(i32 %85)
  %87 = load i64*, i64** %9, align 8
  store i64 %86, i64* %87, align 8
  %88 = load i32*, i32** %8, align 8
  %89 = bitcast i32* %88 to i8*
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to i8*
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @memcpy(i8* %89, i8* %94, i32 %98)
  br label %180

100:                                              ; preds = %20
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  br label %180

108:                                              ; preds = %20
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  switch i32 %112, label %129 [
    i32 134, label %113
  ]

113:                                              ; preds = %108
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 4
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @AcpiNsGetType(i32 %124)
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %127, i32 0, i32 0
  store i32 %125, i32* %128, align 8
  br label %132

129:                                              ; preds = %108
  %130 = load i32, i32* @AE_TYPE, align 4
  %131 = call i32 @return_ACPI_STATUS(i32 %130)
  br label %132

132:                                              ; preds = %129, %113
  br label %180

133:                                              ; preds = %20
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %139, i32 0, i32 2
  store i32 %137, i32* %140, align 4
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %146, i32 0, i32 1
  store i32 %144, i32* %147, align 4
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %153, i32 0, i32 0
  store i32 %151, i32* %154, align 4
  br label %180

155:                                              ; preds = %20
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 1
  store i32 %159, i32* %162, align 4
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 0
  store i32 %166, i32* %169, align 4
  br label %180

170:                                              ; preds = %20
  %171 = load i32, i32* @AE_INFO, align 4
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @AcpiUtGetTypeName(i32 %175)
  %177 = call i32 @ACPI_ERROR(i32 %176)
  %178 = load i32, i32* @AE_SUPPORT, align 4
  %179 = call i32 @return_ACPI_STATUS(i32 %178)
  br label %180

180:                                              ; preds = %170, %155, %133, %132, %100, %70, %33
  %181 = load i32, i32* %10, align 4
  %182 = call i32 @return_ACPI_STATUS(i32 %181)
  %183 = load i32, i32* %5, align 4
  ret i32 %183
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @memset(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i64 @ACPI_ROUND_UP_TO_NATIVE_WORD(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @AcpiNsGetType(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @AcpiUtGetTypeName(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
