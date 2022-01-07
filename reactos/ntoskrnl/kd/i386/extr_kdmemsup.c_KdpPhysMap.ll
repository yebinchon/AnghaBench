; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kd/i386/extr_kdmemsup.c_KdpPhysMap.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kd/i386/extr_kdmemsup.c_KdpPhysMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@PDE_PRESENT_BIT = common dso_local global i32 0, align 4
@PDE_W_BIT = common dso_local global i32 0, align 4
@PDE_PWT_BIT = common dso_local global i32 0, align 4
@PDE_PCD_BIT = common dso_local global i32 0, align 4
@PDE_ACCESSED_BIT = common dso_local global i32 0, align 4
@PDE_DIRTY_BIT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@MI_KDBG_TMP_PAGE_1 = common dso_local global i64 0, align 8
@MI_KDBG_TMP_PAGE_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @KdpPhysMap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @KdpPhysMap(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @PDE_PRESENT_BIT, align 4
  %9 = load i32, i32* @PDE_W_BIT, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @PDE_PWT_BIT, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @PDE_PCD_BIT, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @PDE_ACCESSED_BIT, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @PDE_DIRTY_BIT, align 4
  %18 = or i32 %16, %17
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = sub nsw i32 %22, 1
  %24 = and i32 %21, %23
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %24, %25
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %2
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @PAGE_SHIFT, align 4
  %32 = ashr i32 %30, %31
  %33 = add nsw i32 %32, 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load i64, i64* @MI_KDBG_TMP_PAGE_1, align 8
  %38 = trunc i64 %37 to i32
  %39 = call %struct.TYPE_8__* @MiAddressToPte(i32 %38)
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %6, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = bitcast %struct.TYPE_8__* %40 to i8*
  %42 = bitcast %struct.TYPE_8__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 8, i1 false)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = ptrtoint %struct.TYPE_8__* %43 to i32
  %45 = shl i32 %44, 10
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @KeInvalidateTlbEntry(i32 %46)
  br label %48

48:                                               ; preds = %29, %2
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @PAGE_SHIFT, align 4
  %51 = ashr i32 %49, %50
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = load i64, i64* @MI_KDBG_TMP_PAGE_0, align 8
  %56 = trunc i64 %55 to i32
  %57 = call %struct.TYPE_8__* @MiAddressToPte(i32 %56)
  store %struct.TYPE_8__* %57, %struct.TYPE_8__** %6, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = bitcast %struct.TYPE_8__* %58 to i8*
  %60 = bitcast %struct.TYPE_8__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 %60, i64 8, i1 false)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %62 = ptrtoint %struct.TYPE_8__* %61 to i32
  %63 = shl i32 %62, 10
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @KeInvalidateTlbEntry(i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @PAGE_SIZE, align 4
  %69 = sub nsw i32 %68, 1
  %70 = and i32 %67, %69
  %71 = add nsw i32 %66, %70
  ret i32 %71
}

declare dso_local %struct.TYPE_8__* @MiAddressToPte(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @KeInvalidateTlbEntry(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
