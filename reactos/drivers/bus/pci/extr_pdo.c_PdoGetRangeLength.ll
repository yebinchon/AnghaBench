; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/pci/extr_pdo.c_PdoGetRangeLength.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/pci/extr_pdo.c_PdoGetRangeLength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@PCI_ADDRESS_IO_SPACE = common dso_local global i32 0, align 4
@PCI_ADDRESS_MEMORY_TYPE_MASK = common dso_local global i32 0, align 4
@PCI_TYPE_32BIT = common dso_local global i32 0, align 4
@PCI_TYPE_20BIT = common dso_local global i32 0, align 4
@PCI_TYPE_64BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unused address register\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@PCI_ADDRESS_IO_ADDRESS_MASK_64 = common dso_local global i32 0, align 4
@PCI_ADDRESS_MEMORY_ADDRESS_MASK_64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*, i32*, i32*, i32*)* @PdoGetRangeLength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PdoGetRangeLength(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %union.anon, align 4
  %17 = alloca %union.anon.0, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load i32, i32* %10, align 4
  %20 = mul nsw i32 %19, 4
  %21 = add nsw i32 16, %20
  store i32 %21, i32* %18, align 4
  %22 = load i32, i32* %10, align 4
  %23 = add nsw i32 %22, 1
  %24 = load i32*, i32** %14, align 8
  store i32 %23, i32* %24, align 4
  %25 = bitcast %union.anon* %16 to i32*
  store i32 0, i32* %25, align 4
  %26 = bitcast %union.anon.0* %17 to i32*
  store i32 0, i32* %26, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %18, align 4
  %29 = bitcast %union.anon* %16 to %struct.anon*
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %29, i32 0, i32 0
  %31 = bitcast %union.anon.0* %17 to %struct.anon.1*
  %32 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %31, i32 0, i32 0
  %33 = call i32 @PdoReadPciBar(i32 %27, i32 %28, i32* %30, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %7
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %8, align 4
  br label %181

37:                                               ; preds = %7
  %38 = bitcast %union.anon* %16 to %struct.anon*
  %39 = getelementptr inbounds %struct.anon, %struct.anon* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PCI_ADDRESS_IO_SPACE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %105, label %44

44:                                               ; preds = %37
  %45 = load i32*, i32** %15, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %80

47:                                               ; preds = %44
  %48 = bitcast %union.anon* %16 to %struct.anon*
  %49 = getelementptr inbounds %struct.anon, %struct.anon* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PCI_ADDRESS_MEMORY_TYPE_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @PCI_TYPE_32BIT, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32*, i32** %15, align 8
  store i32 -1, i32* %56, align 4
  br label %79

57:                                               ; preds = %47
  %58 = bitcast %union.anon* %16 to %struct.anon*
  %59 = getelementptr inbounds %struct.anon, %struct.anon* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @PCI_ADDRESS_MEMORY_TYPE_MASK, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* @PCI_TYPE_20BIT, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32*, i32** %15, align 8
  store i32 1048575, i32* %66, align 4
  br label %78

67:                                               ; preds = %57
  %68 = bitcast %union.anon* %16 to %struct.anon*
  %69 = getelementptr inbounds %struct.anon, %struct.anon* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @PCI_ADDRESS_MEMORY_TYPE_MASK, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* @PCI_TYPE_64BIT, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32*, i32** %15, align 8
  store i32 -1, i32* %76, align 4
  br label %77

77:                                               ; preds = %75, %67
  br label %78

78:                                               ; preds = %77, %65
  br label %79

79:                                               ; preds = %78, %55
  br label %80

80:                                               ; preds = %79, %44
  %81 = bitcast %union.anon* %16 to %struct.anon*
  %82 = getelementptr inbounds %struct.anon, %struct.anon* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @PCI_ADDRESS_MEMORY_TYPE_MASK, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* @PCI_TYPE_64BIT, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %104

88:                                               ; preds = %80
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 2
  %91 = load i32*, i32** %14, align 8
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %18, align 4
  %94 = add nsw i32 %93, 4
  %95 = bitcast %union.anon* %16 to %struct.anon*
  %96 = getelementptr inbounds %struct.anon, %struct.anon* %95, i32 0, i32 1
  %97 = bitcast %union.anon.0* %17 to %struct.anon.1*
  %98 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %97, i32 0, i32 1
  %99 = call i32 @PdoReadPciBar(i32 %92, i32 %94, i32* %96, i32* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %88
  %102 = load i32, i32* @FALSE, align 4
  store i32 %102, i32* %8, align 4
  br label %181

103:                                              ; preds = %88
  br label %104

104:                                              ; preds = %103, %80
  br label %111

105:                                              ; preds = %37
  %106 = load i32*, i32** %15, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = load i32*, i32** %15, align 8
  store i32 -1, i32* %109, align 4
  br label %110

110:                                              ; preds = %108, %105
  br label %111

111:                                              ; preds = %110, %104
  %112 = bitcast %union.anon.0* %17 to i32*
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = call i32 @DPRINT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %117 = load i32*, i32** %11, align 8
  store i32 0, i32* %117, align 4
  %118 = load i32*, i32** %12, align 8
  store i32 0, i32* %118, align 4
  %119 = load i32*, i32** %13, align 8
  store i32 0, i32* %119, align 4
  %120 = load i32, i32* @TRUE, align 4
  store i32 %120, i32* %8, align 4
  br label %181

121:                                              ; preds = %111
  %122 = bitcast %union.anon* %16 to i32*
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @PCI_ADDRESS_IO_SPACE, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = bitcast %union.anon* %16 to i32*
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @PCI_ADDRESS_IO_ADDRESS_MASK_64, align 4
  %131 = and i32 %129, %130
  br label %137

132:                                              ; preds = %121
  %133 = bitcast %union.anon* %16 to i32*
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @PCI_ADDRESS_MEMORY_ADDRESS_MASK_64, align 4
  %136 = and i32 %134, %135
  br label %137

137:                                              ; preds = %132, %127
  %138 = phi i32 [ %131, %127 ], [ %136, %132 ]
  %139 = load i32*, i32** %11, align 8
  store i32 %138, i32* %139, align 4
  %140 = bitcast %union.anon.0* %17 to i32*
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @PCI_ADDRESS_IO_SPACE, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %137
  %146 = bitcast %union.anon.0* %17 to i32*
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @PCI_ADDRESS_IO_ADDRESS_MASK_64, align 4
  %149 = and i32 %147, %148
  br label %155

150:                                              ; preds = %137
  %151 = bitcast %union.anon.0* %17 to i32*
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @PCI_ADDRESS_MEMORY_ADDRESS_MASK_64, align 4
  %154 = and i32 %152, %153
  br label %155

155:                                              ; preds = %150, %145
  %156 = phi i32 [ %149, %145 ], [ %154, %150 ]
  %157 = xor i32 %156, -1
  %158 = add nsw i32 %157, 1
  %159 = load i32*, i32** %12, align 8
  store i32 %158, i32* %159, align 4
  %160 = bitcast %union.anon.0* %17 to i32*
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @PCI_ADDRESS_IO_SPACE, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %155
  %166 = bitcast %union.anon.0* %17 to i32*
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @PCI_ADDRESS_IO_ADDRESS_MASK_64, align 4
  %169 = xor i32 %168, -1
  %170 = and i32 %167, %169
  br label %177

171:                                              ; preds = %155
  %172 = bitcast %union.anon.0* %17 to i32*
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @PCI_ADDRESS_MEMORY_ADDRESS_MASK_64, align 4
  %175 = xor i32 %174, -1
  %176 = and i32 %173, %175
  br label %177

177:                                              ; preds = %171, %165
  %178 = phi i32 [ %170, %165 ], [ %176, %171 ]
  %179 = load i32*, i32** %13, align 8
  store i32 %178, i32* %179, align 4
  %180 = load i32, i32* @TRUE, align 4
  store i32 %180, i32* %8, align 4
  br label %181

181:                                              ; preds = %177, %115, %101, %35
  %182 = load i32, i32* %8, align 4
  ret i32 %182
}

declare dso_local i32 @PdoReadPciBar(i32, i32, i32*, i32*) #1

declare dso_local i32 @DPRINT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
