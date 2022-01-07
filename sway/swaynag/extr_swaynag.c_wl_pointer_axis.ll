; ModuleID = '/home/carl/AnghaBench/sway/swaynag/extr_swaynag.c_wl_pointer_axis.c'
source_filename = "/home/carl/AnghaBench/sway/swaynag/extr_swaynag.c_wl_pointer_axis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_pointer = type { i32 }
%struct.swaynag = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_3__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_pointer*, i32, i32, i32)* @wl_pointer_axis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl_pointer_axis(i8* %0, %struct.wl_pointer* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wl_pointer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.swaynag*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.wl_pointer* %1, %struct.wl_pointer** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.swaynag*
  store %struct.swaynag* %15, %struct.swaynag** %11, align 8
  %16 = load %struct.swaynag*, %struct.swaynag** %11, align 8
  %17 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %81

21:                                               ; preds = %5
  %22 = load %struct.swaynag*, %struct.swaynag** %11, align 8
  %23 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.swaynag*, %struct.swaynag** %11, align 8
  %27 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %25, %29
  br i1 %30, label %81, label %31

31:                                               ; preds = %21
  %32 = load %struct.swaynag*, %struct.swaynag** %11, align 8
  %33 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.swaynag*, %struct.swaynag** %11, align 8
  %37 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %35, %39
  br i1 %40, label %81, label %41

41:                                               ; preds = %31
  %42 = load %struct.swaynag*, %struct.swaynag** %11, align 8
  %43 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.swaynag*, %struct.swaynag** %11, align 8
  %47 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.swaynag*, %struct.swaynag** %11, align 8
  %51 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %49, %53
  %55 = icmp sge i64 %45, %54
  br i1 %55, label %81, label %56

56:                                               ; preds = %41
  %57 = load %struct.swaynag*, %struct.swaynag** %11, align 8
  %58 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.swaynag*, %struct.swaynag** %11, align 8
  %62 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.swaynag*, %struct.swaynag** %11, align 8
  %66 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %64, %68
  %70 = icmp sge i64 %60, %69
  br i1 %70, label %81, label %71

71:                                               ; preds = %56
  %72 = load %struct.swaynag*, %struct.swaynag** %11, align 8
  %73 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.swaynag*, %struct.swaynag** %11, align 8
  %77 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %75, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %71, %56, %41, %31, %21, %5
  br label %129

82:                                               ; preds = %71
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @wl_fixed_to_int(i32 %83)
  store i32 %84, i32* %12, align 4
  %85 = load %struct.swaynag*, %struct.swaynag** %11, align 8
  %86 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.swaynag*, %struct.swaynag** %11, align 8
  %90 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %88, %92
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %82
  %98 = load %struct.swaynag*, %struct.swaynag** %11, align 8
  %99 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load %struct.swaynag*, %struct.swaynag** %11, align 8
  %105 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %106, align 8
  br label %126

109:                                              ; preds = %97, %82
  %110 = load i32, i32* %12, align 4
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %109
  %113 = load %struct.swaynag*, %struct.swaynag** %11, align 8
  %114 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %13, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %112
  %120 = load %struct.swaynag*, %struct.swaynag** %11, align 8
  %121 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %119, %112, %109
  br label %126

126:                                              ; preds = %125, %103
  %127 = load %struct.swaynag*, %struct.swaynag** %11, align 8
  %128 = call i32 @render_frame(%struct.swaynag* %127)
  br label %129

129:                                              ; preds = %126, %81
  ret void
}

declare dso_local i32 @wl_fixed_to_int(i32) #1

declare dso_local i32 @render_frame(%struct.swaynag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
