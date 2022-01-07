; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_filter-rar.c_rar_parse_operand.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_filter-rar.c_rar_parse_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemBitReader = type { i32 }

@RARAbsoluteAddressingMode = common dso_local global i32 0, align 4
@RARImmediateAddressingMode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MemBitReader*, i32, i32, i64, i32*, i64*)* @rar_parse_operand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rar_parse_operand(%struct.MemBitReader* %0, i32 %1, i32 %2, i64 %3, i32* %4, i64* %5) #0 {
  %7 = alloca %struct.MemBitReader*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  store %struct.MemBitReader* %0, %struct.MemBitReader** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i64* %5, i64** %12, align 8
  %13 = load %struct.MemBitReader*, %struct.MemBitReader** %7, align 8
  %14 = call i64 @br_bits(%struct.MemBitReader* %13, i32 1)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %6
  %17 = load %struct.MemBitReader*, %struct.MemBitReader** %7, align 8
  %18 = call i64 @br_bits(%struct.MemBitReader* %17, i32 3)
  %19 = trunc i64 %18 to i32
  %20 = call i32 @RARRegisterAddressingMode(i32 %19)
  %21 = load i32*, i32** %11, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i64*, i64** %12, align 8
  store i64 0, i64* %22, align 8
  br label %118

23:                                               ; preds = %6
  %24 = load %struct.MemBitReader*, %struct.MemBitReader** %7, align 8
  %25 = call i64 @br_bits(%struct.MemBitReader* %24, i32 1)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %56

27:                                               ; preds = %23
  %28 = load %struct.MemBitReader*, %struct.MemBitReader** %7, align 8
  %29 = call i64 @br_bits(%struct.MemBitReader* %28, i32 1)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = load %struct.MemBitReader*, %struct.MemBitReader** %7, align 8
  %33 = call i64 @br_bits(%struct.MemBitReader* %32, i32 1)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @RARAbsoluteAddressingMode, align 4
  %37 = load i32*, i32** %11, align 8
  store i32 %36, i32* %37, align 4
  br label %44

38:                                               ; preds = %31
  %39 = load %struct.MemBitReader*, %struct.MemBitReader** %7, align 8
  %40 = call i64 @br_bits(%struct.MemBitReader* %39, i32 3)
  %41 = trunc i64 %40 to i32
  %42 = call i32 @RARIndexedAbsoluteAddressingMode(i32 %41)
  %43 = load i32*, i32** %11, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %38, %35
  %45 = load %struct.MemBitReader*, %struct.MemBitReader** %7, align 8
  %46 = call i64 @br_next_rarvm_number(%struct.MemBitReader* %45)
  %47 = load i64*, i64** %12, align 8
  store i64 %46, i64* %47, align 8
  br label %55

48:                                               ; preds = %27
  %49 = load %struct.MemBitReader*, %struct.MemBitReader** %7, align 8
  %50 = call i64 @br_bits(%struct.MemBitReader* %49, i32 3)
  %51 = trunc i64 %50 to i32
  %52 = call i32 @RARRegisterIndirectAddressingMode(i32 %51)
  %53 = load i32*, i32** %11, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i64*, i64** %12, align 8
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %48, %44
  br label %117

56:                                               ; preds = %23
  %57 = load i32, i32* @RARImmediateAddressingMode, align 4
  %58 = load i32*, i32** %11, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = load %struct.MemBitReader*, %struct.MemBitReader** %7, align 8
  %63 = call i64 @br_next_rarvm_number(%struct.MemBitReader* %62)
  %64 = load i64*, i64** %12, align 8
  store i64 %63, i64* %64, align 8
  br label %69

65:                                               ; preds = %56
  %66 = load %struct.MemBitReader*, %struct.MemBitReader** %7, align 8
  %67 = call i64 @br_bits(%struct.MemBitReader* %66, i32 8)
  %68 = load i64*, i64** %12, align 8
  store i64 %67, i64* %68, align 8
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i64, i64* %10, align 8
  %71 = icmp ne i64 %70, -1
  br i1 %71, label %72, label %116

72:                                               ; preds = %69
  %73 = load i32, i32* %8, align 4
  %74 = call i64 @RARInstructionIsRelativeJump(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %116

76:                                               ; preds = %72
  %77 = load i64*, i64** %12, align 8
  %78 = load i64, i64* %77, align 8
  %79 = icmp sge i64 %78, 256
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i64*, i64** %12, align 8
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %82, 256
  store i64 %83, i64* %81, align 8
  br label %115

84:                                               ; preds = %76
  %85 = load i64*, i64** %12, align 8
  %86 = load i64, i64* %85, align 8
  %87 = icmp sge i64 %86, 136
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i64*, i64** %12, align 8
  %90 = load i64, i64* %89, align 8
  %91 = sub nsw i64 %90, 264
  store i64 %91, i64* %89, align 8
  br label %110

92:                                               ; preds = %84
  %93 = load i64*, i64** %12, align 8
  %94 = load i64, i64* %93, align 8
  %95 = icmp sge i64 %94, 16
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load i64*, i64** %12, align 8
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %98, 8
  store i64 %99, i64* %97, align 8
  br label %109

100:                                              ; preds = %92
  %101 = load i64*, i64** %12, align 8
  %102 = load i64, i64* %101, align 8
  %103 = icmp sge i64 %102, 8
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i64*, i64** %12, align 8
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %106, 16
  store i64 %107, i64* %105, align 8
  br label %108

108:                                              ; preds = %104, %100
  br label %109

109:                                              ; preds = %108, %96
  br label %110

110:                                              ; preds = %109, %88
  %111 = load i64, i64* %10, align 8
  %112 = load i64*, i64** %12, align 8
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, %111
  store i64 %114, i64* %112, align 8
  br label %115

115:                                              ; preds = %110, %80
  br label %116

116:                                              ; preds = %115, %72, %69
  br label %117

117:                                              ; preds = %116, %55
  br label %118

118:                                              ; preds = %117, %16
  %119 = load %struct.MemBitReader*, %struct.MemBitReader** %7, align 8
  %120 = getelementptr inbounds %struct.MemBitReader, %struct.MemBitReader* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  ret i32 %124
}

declare dso_local i64 @br_bits(%struct.MemBitReader*, i32) #1

declare dso_local i32 @RARRegisterAddressingMode(i32) #1

declare dso_local i32 @RARIndexedAbsoluteAddressingMode(i32) #1

declare dso_local i64 @br_next_rarvm_number(%struct.MemBitReader*) #1

declare dso_local i32 @RARRegisterIndirectAddressingMode(i32) #1

declare dso_local i64 @RARInstructionIsRelativeJump(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
