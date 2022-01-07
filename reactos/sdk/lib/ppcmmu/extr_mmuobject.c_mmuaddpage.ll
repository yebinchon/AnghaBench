; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/ppcmmu/extr_mmuobject.c_mmuaddpage.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/ppcmmu/extr_mmuobject.c_mmuaddpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__** }
%struct.TYPE_14__ = type { %struct.TYPE_12__** }

@PPC_PAGE_MASK = common dso_local global i32 0, align 4
@PpcPageTable = common dso_local global %struct.TYPE_12__* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"Allocated physical: %x, logical %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"PagePtr %x (page %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"info [ %x %x %x %x ]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmuaddpage(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %209, %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %212

22:                                               ; preds = %18
  %23 = load i32, i32* @PPC_PAGE_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %24
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @PPC_PAGE_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %33
  store i32 %40, i32* %38, align 4
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 28
  %54 = and i32 %53, 15
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 4
  %62 = or i32 %54, %61
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call %struct.TYPE_15__* @findvsid(i32 %63)
  store %struct.TYPE_15__* %64, %struct.TYPE_15__** %16, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %66 = icmp ne %struct.TYPE_15__* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %213

68:                                               ; preds = %22
  %69 = load i32, i32* %8, align 4
  %70 = shl i32 %69, 7
  %71 = or i32 -2147483648, %70
  %72 = load i32, i32* %10, align 4
  %73 = ashr i32 %72, 22
  %74 = and i32 %73, 63
  %75 = or i32 %71, %74
  store i32 %75, i32* %11, align 4
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %68
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** @PpcPageTable, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @PPC_PAGE_NUMBER(i32 %90)
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i64 %91
  store %struct.TYPE_12__* %92, %struct.TYPE_12__** %15, align 8
  br label %99

93:                                               ; preds = %68
  %94 = call %struct.TYPE_12__* (...) @allocpage()
  store %struct.TYPE_12__* %94, %struct.TYPE_12__** %15, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %96 = icmp ne %struct.TYPE_12__* %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  store i32 0, i32* %3, align 4
  br label %213

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %98, %83
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** @PpcPageTable, align 8
  %102 = ptrtoint %struct.TYPE_12__* %100 to i64
  %103 = ptrtoint %struct.TYPE_12__* %101 to i64
  %104 = sub i64 %102, %103
  %105 = sdiv exact i64 %104, 16
  %106 = trunc i64 %105 to i32
  %107 = call i32 @PPC_PAGE_ADDR(i32 %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @PPC_PAGE_MASK, align 4
  %110 = xor i32 %109, -1
  %111 = and i32 %108, %110
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp slt i32 %112, 196608
  br i1 %113, label %114, label %147

114:                                              ; preds = %99
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %10, align 4
  %117 = call i32 (i8*, ...) @fmtout(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %115, i32 %116)
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %119 = load i32, i32* %6, align 4
  %120 = call i32 (i8*, ...) @fmtout(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_12__* %118, i32 %119)
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i8*, ...) @fmtout(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %126, i32 %132, i32 %138, i32 %144)
  br label %146

146:                                              ; preds = %114, %146
  br label %146

147:                                              ; preds = %99
  %148 = load i32, i32* %11, align 4
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  store i32 %148, i32* %151, align 4
  %152 = load i32, i32* %12, align 4
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  store i32 %152, i32* %155, align 4
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 4
  %164 = load i32, i32* %10, align 4
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* %10, align 4
  %168 = ashr i32 %167, 20
  %169 = and i32 %168, 255
  store i32 %169, i32* %13, align 4
  %170 = load i32, i32* %10, align 4
  %171 = ashr i32 %170, 12
  %172 = and i32 %171, 255
  store i32 %172, i32* %14, align 4
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %174, align 8
  %176 = load i32, i32* %13, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %175, i64 %177
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %178, align 8
  %180 = icmp ne %struct.TYPE_14__* %179, null
  br i1 %180, label %189, label %181

181:                                              ; preds = %147
  %182 = call %struct.TYPE_14__* (...) @allocvsidtree()
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %184, align 8
  %186 = load i32, i32* %13, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %185, i64 %187
  store %struct.TYPE_14__* %182, %struct.TYPE_14__** %188, align 8
  br label %189

189:                                              ; preds = %181, %147
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %191, align 8
  %193 = load i32, i32* %13, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %192, i64 %194
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %195, align 8
  store %struct.TYPE_14__* %196, %struct.TYPE_14__** %17, align 8
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %198 = icmp ne %struct.TYPE_14__* %197, null
  br i1 %198, label %200, label %199

199:                                              ; preds = %189
  store i32 0, i32* %3, align 4
  br label %213

200:                                              ; preds = %189
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %203, align 8
  %205 = load i32, i32* %14, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %204, i64 %206
  store %struct.TYPE_12__* %201, %struct.TYPE_12__** %207, align 8
  %208 = load i32, i32* %7, align 4
  call void asm sideeffect "tlbie $0\0A\09sync\0A\09isync", "r,~{dirflag},~{fpsr},~{flags}"(i32 %208) #2, !srcloc !2
  br label %209

209:                                              ; preds = %200
  %210 = load i32, i32* %6, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %6, align 4
  br label %18

212:                                              ; preds = %18
  store i32 1, i32* %3, align 4
  br label %213

213:                                              ; preds = %212, %199, %97, %67
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local %struct.TYPE_15__* @findvsid(i32) #1

declare dso_local i64 @PPC_PAGE_NUMBER(i32) #1

declare dso_local %struct.TYPE_12__* @allocpage(...) #1

declare dso_local i32 @PPC_PAGE_ADDR(i32) #1

declare dso_local i32 @fmtout(i8*, ...) #1

declare dso_local %struct.TYPE_14__* @allocvsidtree(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 2394, i32 2405, i32 2413}
