; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_mapping.c_test_isotropic_mapping.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_mapping.c_test_isotropic_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@MM_ISOTROPIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_isotropic_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_isotropic_mapping() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @GetDC(i32 0)
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MM_ISOTROPIC, align 4
  %7 = call i32 @SetMapMode(i32 %5, i32 %6)
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @GetWindowExtEx(i32 %8, %struct.TYPE_4__* %1)
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @GetViewportExtEx(i32 %10, %struct.TYPE_4__* %2)
  %12 = load i32, i32* %3, align 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 10, %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 10, %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 10, %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 10, %23
  %25 = call i32 @test_SetViewportExt(i32 %12, i32 %15, i32 %18, i32 %21, i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 10, %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 10, %35
  %37 = call i32 @test_SetWindowExt(i32 %26, i32 %28, i32 %30, i32 %33, i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 2, %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 10, %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 5, %48
  %50 = call i32 @test_SetWindowExt(i32 %38, i32 %41, i32 %43, i32 %46, i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 5, %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 5, %60
  %62 = call i32 @test_SetWindowExt(i32 %51, i32 %53, i32 %55, i32 %58, i32 %61)
  %63 = load i32, i32* %3, align 4
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 4, %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 2, %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 2, %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 2, %74
  %76 = call i32 @test_SetViewportExt(i32 %63, i32 %66, i32 %69, i32 %72, i32 %75)
  %77 = load i32, i32* %3, align 4
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 2, %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @test_SetViewportExt(i32 %77, i32 %79, i32 %82, i32 %84, i32 %86)
  %88 = load i32, i32* %3, align 4
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 2, %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 2, %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 2, %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 2, %99
  %101 = call i32 @test_SetViewportExt(i32 %88, i32 %91, i32 %94, i32 %97, i32 %100)
  %102 = load i32, i32* %3, align 4
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 4, %104
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 2, %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 2, %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 2, %113
  %115 = call i32 @test_SetViewportExt(i32 %102, i32 %105, i32 %108, i32 %111, i32 %114)
  %116 = load i32, i32* %3, align 4
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 4, %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 2, %121
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 2, %124
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @test_SetWindowExt(i32 %116, i32 %119, i32 %122, i32 %125, i32 %127)
  %129 = load i32, i32* %3, align 4
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = mul nsw i32 -2, %131
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = mul nsw i32 -4, %134
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = mul nsw i32 -2, %137
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 0, %140
  %142 = call i32 @test_SetViewportExt(i32 %129, i32 %132, i32 %135, i32 %138, i32 %141)
  %143 = load i32, i32* %3, align 4
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = mul nsw i32 -2, %145
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = mul nsw i32 -1, %148
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 -2, %151
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = sub nsw i32 0, %154
  %156 = call i32 @test_SetViewportExt(i32 %143, i32 %146, i32 %149, i32 %152, i32 %155)
  %157 = load i32, i32* %3, align 4
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = mul nsw i32 -4, %159
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = mul nsw i32 -2, %162
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = mul nsw i32 -2, %165
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = sub nsw i32 0, %168
  %170 = call i32 @test_SetWindowExt(i32 %157, i32 %160, i32 %163, i32 %166, i32 %169)
  %171 = load i32, i32* %3, align 4
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = mul nsw i32 4, %173
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = mul nsw i32 -4, %176
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = sub nsw i32 0, %179
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = sub nsw i32 0, %182
  %184 = call i32 @test_SetWindowExt(i32 %171, i32 %174, i32 %177, i32 %180, i32 %183)
  %185 = load i32, i32* %3, align 4
  %186 = call i32 @ReleaseDC(i32 0, i32 %185)
  ret void
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @SetMapMode(i32, i32) #1

declare dso_local i32 @GetWindowExtEx(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @GetViewportExtEx(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @test_SetViewportExt(i32, i32, i32, i32, i32) #1

declare dso_local i32 @test_SetWindowExt(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
