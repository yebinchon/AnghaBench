; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_heif.c_ReadDerivationData_Grid.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_heif.c_ReadDerivationData_Grid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.heif_derivation_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i8*, i8* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, %union.heif_derivation_data*)* @ReadDerivationData_Grid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadDerivationData_Grid(i32* %0, i64 %1, %union.heif_derivation_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %union.heif_derivation_data*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %union.heif_derivation_data* %2, %union.heif_derivation_data** %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp ult i64 %9, 8
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11, %3
  %17 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %17, i32* %4, align 4
  br label %72

18:                                               ; preds = %11
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 1
  %23 = add nsw i32 %22, 1
  %24 = shl i32 %23, 1
  store i32 %24, i32* %8, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  %28 = load %union.heif_derivation_data*, %union.heif_derivation_data** %7, align 8
  %29 = bitcast %union.heif_derivation_data* %28 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = load %union.heif_derivation_data*, %union.heif_derivation_data** %7, align 8
  %35 = bitcast %union.heif_derivation_data* %34 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %52

39:                                               ; preds = %18
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  %42 = call i8* @GetWBE(i32* %41)
  %43 = load %union.heif_derivation_data*, %union.heif_derivation_data** %7, align 8
  %44 = bitcast %union.heif_derivation_data* %43 to %struct.TYPE_2__*
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  store i8* %42, i8** %45, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 6
  %48 = call i8* @GetWBE(i32* %47)
  %49 = load %union.heif_derivation_data*, %union.heif_derivation_data** %7, align 8
  %50 = bitcast %union.heif_derivation_data* %49 to %struct.TYPE_2__*
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  store i8* %48, i8** %51, align 8
  br label %70

52:                                               ; preds = %18
  %53 = load i64, i64* %6, align 8
  %54 = icmp ult i64 %53, 12
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %56, i32* %4, align 4
  br label %72

57:                                               ; preds = %52
  %58 = load i32*, i32** %5, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  %60 = call i8* @GetDWBE(i32* %59)
  %61 = load %union.heif_derivation_data*, %union.heif_derivation_data** %7, align 8
  %62 = bitcast %union.heif_derivation_data* %61 to %struct.TYPE_2__*
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  store i8* %60, i8** %63, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 8
  %66 = call i8* @GetDWBE(i32* %65)
  %67 = load %union.heif_derivation_data*, %union.heif_derivation_data** %7, align 8
  %68 = bitcast %union.heif_derivation_data* %67 to %struct.TYPE_2__*
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  store i8* %66, i8** %69, align 8
  br label %70

70:                                               ; preds = %57, %39
  %71 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %55, %16
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i8* @GetWBE(i32*) #1

declare dso_local i8* @GetDWBE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
