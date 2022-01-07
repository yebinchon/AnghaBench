; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_palette.c_split_box.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_palette.c_split_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.histogram = type { i32 }
%struct.box = type { i32, i32, i32, i32, i32, i32 }

@R_SHIFT = common dso_local global i32 0, align 4
@R_SCALE = common dso_local global i32 0, align 4
@G_SHIFT = common dso_local global i32 0, align 4
@G_SCALE = common dso_local global i32 0, align 4
@B_SHIFT = common dso_local global i32 0, align 4
@B_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.histogram*, %struct.box*, %struct.box*)* @split_box to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @split_box(%struct.histogram* %0, %struct.box* %1, %struct.box* %2) #0 {
  %4 = alloca %struct.histogram*, align 8
  %5 = alloca %struct.box*, align 8
  %6 = alloca %struct.box*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.histogram* %0, %struct.histogram** %4, align 8
  store %struct.box* %1, %struct.box** %5, align 8
  store %struct.box* %2, %struct.box** %6, align 8
  %10 = load %struct.box*, %struct.box** %5, align 8
  %11 = getelementptr inbounds %struct.box, %struct.box* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.box*, %struct.box** %5, align 8
  %14 = getelementptr inbounds %struct.box, %struct.box* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %12, %15
  %17 = load i32, i32* @R_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = load i32, i32* @R_SCALE, align 4
  %20 = mul nsw i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.box*, %struct.box** %5, align 8
  %22 = getelementptr inbounds %struct.box, %struct.box* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.box*, %struct.box** %5, align 8
  %25 = getelementptr inbounds %struct.box, %struct.box* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %23, %26
  %28 = load i32, i32* @G_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* @G_SCALE, align 4
  %31 = mul nsw i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.box*, %struct.box** %5, align 8
  %33 = getelementptr inbounds %struct.box, %struct.box* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.box*, %struct.box** %5, align 8
  %36 = getelementptr inbounds %struct.box, %struct.box* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %34, %37
  %39 = load i32, i32* @B_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* @B_SCALE, align 4
  %42 = mul nsw i32 %40, %41
  store i32 %42, i32* %9, align 4
  %43 = load %struct.box*, %struct.box** %6, align 8
  %44 = load %struct.box*, %struct.box** %5, align 8
  %45 = bitcast %struct.box* %43 to i8*
  %46 = bitcast %struct.box* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 24, i1 false)
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %3
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load %struct.box*, %struct.box** %5, align 8
  %56 = getelementptr inbounds %struct.box, %struct.box* %55, i32 0, i32 5
  %57 = load %struct.box*, %struct.box** %6, align 8
  %58 = getelementptr inbounds %struct.box, %struct.box* %57, i32 0, i32 4
  %59 = call i32 @set_avg(i32* %56, i32* %58)
  br label %66

60:                                               ; preds = %50
  %61 = load %struct.box*, %struct.box** %5, align 8
  %62 = getelementptr inbounds %struct.box, %struct.box* %61, i32 0, i32 1
  %63 = load %struct.box*, %struct.box** %6, align 8
  %64 = getelementptr inbounds %struct.box, %struct.box* %63, i32 0, i32 0
  %65 = call i32 @set_avg(i32* %62, i32* %64)
  br label %66

66:                                               ; preds = %60, %54
  br label %84

67:                                               ; preds = %3
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load %struct.box*, %struct.box** %5, align 8
  %73 = getelementptr inbounds %struct.box, %struct.box* %72, i32 0, i32 5
  %74 = load %struct.box*, %struct.box** %6, align 8
  %75 = getelementptr inbounds %struct.box, %struct.box* %74, i32 0, i32 4
  %76 = call i32 @set_avg(i32* %73, i32* %75)
  br label %83

77:                                               ; preds = %67
  %78 = load %struct.box*, %struct.box** %5, align 8
  %79 = getelementptr inbounds %struct.box, %struct.box* %78, i32 0, i32 3
  %80 = load %struct.box*, %struct.box** %6, align 8
  %81 = getelementptr inbounds %struct.box, %struct.box* %80, i32 0, i32 2
  %82 = call i32 @set_avg(i32* %79, i32* %81)
  br label %83

83:                                               ; preds = %77, %71
  br label %84

84:                                               ; preds = %83, %66
  %85 = load %struct.histogram*, %struct.histogram** %4, align 8
  %86 = load %struct.box*, %struct.box** %5, align 8
  %87 = call i32 @shrink_box(%struct.histogram* %85, %struct.box* %86)
  %88 = load %struct.histogram*, %struct.histogram** %4, align 8
  %89 = load %struct.box*, %struct.box** %6, align 8
  %90 = call i32 @shrink_box(%struct.histogram* %88, %struct.box* %89)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @set_avg(i32*, i32*) #2

declare dso_local i32 @shrink_box(%struct.histogram*, %struct.box*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
