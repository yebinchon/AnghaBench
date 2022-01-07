; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/dd/ne2000/ne2000/extr_8390.c_NICWriteDataAlign.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/dd/ne2000/ne2000/extr_8390.c_NICWriteDataAlign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@PG0_CR = common dso_local global i64 0, align 8
@CR_STA = common dso_local global i32 0, align 4
@CR_RD2 = common dso_local global i32 0, align 4
@CR_PAGE0 = common dso_local global i32 0, align 4
@PG0_RSAR0 = common dso_local global i64 0, align 8
@PG0_RSAR1 = common dso_local global i64 0, align 8
@PG0_RBCR0 = common dso_local global i64 0, align 8
@PG0_RBCR1 = common dso_local global i64 0, align 8
@CR_RD0 = common dso_local global i32 0, align 4
@NIC_DATA = common dso_local global i64 0, align 8
@PG0_ISR = common dso_local global i64 0, align 8
@ISR_RDC = common dso_local global i32 0, align 4
@CR_RD1 = common dso_local global i32 0, align 4
@MIN_TRACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NICWriteDataAlign(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PG0_CR, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i32, i32* @CR_STA, align 4
  %18 = load i32, i32* @CR_RD2, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @CR_PAGE0, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @NdisRawWritePortUchar(i64 %16, i32 %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PG0_RSAR0, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 255
  %30 = call i32 @NdisRawWritePortUchar(i64 %27, i32 %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PG0_RSAR1, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i32, i32* %7, align 4
  %37 = ashr i32 %36, 8
  %38 = call i32 @NdisRawWritePortUchar(i64 %35, i32 %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PG0_RBCR0, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @NdisRawWritePortUchar(i64 %43, i32 2)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PG0_RBCR1, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @NdisRawWritePortUchar(i64 %49, i32 0)
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PG0_CR, align 8
  %55 = add nsw i64 %53, %54
  %56 = load i32, i32* @CR_STA, align 4
  %57 = load i32, i32* @CR_RD0, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @CR_PAGE0, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @NdisRawWritePortUchar(i64 %55, i32 %60)
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @NIC_DATA, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @NdisRawReadPortUshort(i64 %66, i32* %11)
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %85, %4
  %69 = load i32, i32* %11, align 4
  %70 = icmp slt i32 %69, 65535
  br i1 %70, label %71, label %88

71:                                               ; preds = %68
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @PG0_ISR, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @NdisRawReadPortUchar(i64 %76, i32* %10)
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @ISR_RDC, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  br label %88

83:                                               ; preds = %71
  %84 = call i32 @NdisStallExecution(i32 4)
  br label %85

85:                                               ; preds = %83
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %68

88:                                               ; preds = %82, %68
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @PG0_ISR, align 8
  %93 = add nsw i64 %91, %92
  %94 = load i32, i32* @ISR_RDC, align 4
  %95 = call i32 @NdisRawWritePortUchar(i64 %93, i32 %94)
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %11, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @PG0_RSAR0, align 8
  %101 = add nsw i64 %99, %100
  %102 = load i32, i32* %7, align 4
  %103 = and i32 %102, 255
  %104 = call i32 @NdisRawWritePortUchar(i64 %101, i32 %103)
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @PG0_RSAR1, align 8
  %109 = add nsw i64 %107, %108
  %110 = load i32, i32* %7, align 4
  %111 = ashr i32 %110, 8
  %112 = call i32 @NdisRawWritePortUchar(i64 %109, i32 %111)
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @PG0_RBCR0, align 8
  %117 = add nsw i64 %115, %116
  %118 = load i32, i32* %11, align 4
  %119 = and i32 %118, 255
  %120 = call i32 @NdisRawWritePortUchar(i64 %117, i32 %119)
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @PG0_RBCR1, align 8
  %125 = add nsw i64 %123, %124
  %126 = load i32, i32* %11, align 4
  %127 = ashr i32 %126, 8
  %128 = call i32 @NdisRawWritePortUchar(i64 %125, i32 %127)
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @PG0_CR, align 8
  %133 = add nsw i64 %131, %132
  %134 = load i32, i32* @CR_STA, align 4
  %135 = load i32, i32* @CR_RD1, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @CR_PAGE0, align 4
  %138 = or i32 %136, %137
  %139 = call i32 @NdisRawWritePortUchar(i64 %133, i32 %138)
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %88
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @NIC_DATA, align 8
  %149 = add nsw i64 %147, %148
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %11, align 4
  %152 = ashr i32 %151, 1
  %153 = call i32 @NdisRawWritePortBufferUshort(i64 %149, i32 %150, i32 %152)
  br label %163

154:                                              ; preds = %88
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @NIC_DATA, align 8
  %159 = add nsw i64 %157, %158
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* %11, align 4
  %162 = call i32 @NdisRawWritePortBufferUchar(i64 %159, i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %154, %144
  store i32 0, i32* %11, align 4
  br label %164

164:                                              ; preds = %181, %163
  %165 = load i32, i32* %11, align 4
  %166 = icmp slt i32 %165, 65535
  br i1 %166, label %167, label %184

167:                                              ; preds = %164
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @PG0_ISR, align 8
  %172 = add nsw i64 %170, %171
  %173 = call i32 @NdisRawReadPortUchar(i64 %172, i32* %10)
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* @ISR_RDC, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %167
  br label %184

179:                                              ; preds = %167
  %180 = call i32 @NdisStallExecution(i32 4)
  br label %181

181:                                              ; preds = %179
  %182 = load i32, i32* %11, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %11, align 4
  br label %164

184:                                              ; preds = %178, %164
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @PG0_ISR, align 8
  %189 = add nsw i64 %187, %188
  %190 = load i32, i32* @ISR_RDC, align 4
  %191 = call i32 @NdisRawWritePortUchar(i64 %189, i32 %190)
  %192 = load i32, i32* %5, align 4
  ret i32 %192
}

declare dso_local i32 @NdisRawWritePortUchar(i64, i32) #1

declare dso_local i32 @NdisRawReadPortUshort(i64, i32*) #1

declare dso_local i32 @NdisRawReadPortUchar(i64, i32*) #1

declare dso_local i32 @NdisStallExecution(i32) #1

declare dso_local i32 @NdisRawWritePortBufferUshort(i64, i32, i32) #1

declare dso_local i32 @NdisRawWritePortBufferUchar(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
