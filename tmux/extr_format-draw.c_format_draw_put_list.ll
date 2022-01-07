; ModuleID = '/home/carl/AnghaBench/tmux/extr_format-draw.c_format_draw_put_list.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_format-draw.c_format_draw_put_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_write_ctx = type { i32 }
%struct.screen = type { i32 }
%struct.format_ranges = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.screen_write_ctx*, i32, i32, i32, i32, %struct.screen*, %struct.screen*, %struct.screen*, i32, i32, %struct.format_ranges*)* @format_draw_put_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_draw_put_list(%struct.screen_write_ctx* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.screen* %5, %struct.screen* %6, %struct.screen* %7, i32 %8, i32 %9, %struct.format_ranges* %10) #0 {
  %12 = alloca %struct.screen_write_ctx*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.screen*, align 8
  %18 = alloca %struct.screen*, align 8
  %19 = alloca %struct.screen*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.format_ranges*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.screen_write_ctx* %0, %struct.screen_write_ctx** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store %struct.screen* %5, %struct.screen** %17, align 8
  store %struct.screen* %6, %struct.screen** %18, align 8
  store %struct.screen* %7, %struct.screen** %19, align 8
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store %struct.format_ranges* %10, %struct.format_ranges** %22, align 8
  %25 = load i32, i32* %16, align 4
  %26 = load %struct.screen*, %struct.screen** %17, align 8
  %27 = getelementptr inbounds %struct.screen, %struct.screen* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %25, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %11
  %31 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %12, align 8
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load %struct.screen*, %struct.screen** %17, align 8
  %35 = load %struct.format_ranges*, %struct.format_ranges** %22, align 8
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %16, align 4
  %38 = call i32 @format_draw_put(%struct.screen_write_ctx* %31, i32 %32, i32 %33, %struct.screen* %34, %struct.format_ranges* %35, i32 %36, i32 0, i32 %37)
  br label %152

39:                                               ; preds = %11
  %40 = load i32, i32* %20, align 4
  %41 = load i32, i32* %21, align 4
  %42 = load i32, i32* %20, align 4
  %43 = sub nsw i32 %41, %42
  %44 = sdiv i32 %43, 2
  %45 = add nsw i32 %40, %44
  store i32 %45, i32* %24, align 4
  %46 = load i32, i32* %24, align 4
  %47 = load i32, i32* %16, align 4
  %48 = sdiv i32 %47, 2
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  store i32 0, i32* %23, align 4
  br label %56

51:                                               ; preds = %39
  %52 = load i32, i32* %24, align 4
  %53 = load i32, i32* %16, align 4
  %54 = sdiv i32 %53, 2
  %55 = sub nsw i32 %52, %54
  store i32 %55, i32* %23, align 4
  br label %56

56:                                               ; preds = %51, %50
  %57 = load i32, i32* %23, align 4
  %58 = load i32, i32* %16, align 4
  %59 = add nsw i32 %57, %58
  %60 = load %struct.screen*, %struct.screen** %17, align 8
  %61 = getelementptr inbounds %struct.screen, %struct.screen* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %59, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = load %struct.screen*, %struct.screen** %17, align 8
  %66 = getelementptr inbounds %struct.screen, %struct.screen* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %16, align 4
  %69 = sub nsw i32 %67, %68
  store i32 %69, i32* %23, align 4
  br label %70

70:                                               ; preds = %64, %56
  %71 = load i32, i32* %23, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %107

73:                                               ; preds = %70
  %74 = load i32, i32* %16, align 4
  %75 = load %struct.screen*, %struct.screen** %18, align 8
  %76 = getelementptr inbounds %struct.screen, %struct.screen* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %74, %77
  br i1 %78, label %79, label %107

79:                                               ; preds = %73
  %80 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %12, align 8
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %81, %82
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @screen_write_cursormove(%struct.screen_write_ctx* %80, i32 %83, i32 %84, i32 0)
  %86 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %12, align 8
  %87 = load %struct.screen*, %struct.screen** %18, align 8
  %88 = load %struct.screen*, %struct.screen** %18, align 8
  %89 = getelementptr inbounds %struct.screen, %struct.screen* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @screen_write_fast_copy(%struct.screen_write_ctx* %86, %struct.screen* %87, i32 0, i32 0, i32 %90, i32 1)
  %92 = load %struct.screen*, %struct.screen** %18, align 8
  %93 = getelementptr inbounds %struct.screen, %struct.screen* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %15, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %15, align 4
  %97 = load %struct.screen*, %struct.screen** %18, align 8
  %98 = getelementptr inbounds %struct.screen, %struct.screen* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %23, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %23, align 4
  %102 = load %struct.screen*, %struct.screen** %18, align 8
  %103 = getelementptr inbounds %struct.screen, %struct.screen* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %16, align 4
  %106 = sub nsw i32 %105, %104
  store i32 %106, i32* %16, align 4
  br label %107

107:                                              ; preds = %79, %73, %70
  %108 = load i32, i32* %23, align 4
  %109 = load i32, i32* %16, align 4
  %110 = add nsw i32 %108, %109
  %111 = load %struct.screen*, %struct.screen** %17, align 8
  %112 = getelementptr inbounds %struct.screen, %struct.screen* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %142

115:                                              ; preds = %107
  %116 = load i32, i32* %16, align 4
  %117 = load %struct.screen*, %struct.screen** %19, align 8
  %118 = getelementptr inbounds %struct.screen, %struct.screen* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp sgt i32 %116, %119
  br i1 %120, label %121, label %142

121:                                              ; preds = %115
  %122 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %12, align 8
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %15, align 4
  %125 = add nsw i32 %123, %124
  %126 = load i32, i32* %16, align 4
  %127 = add nsw i32 %125, %126
  %128 = sub nsw i32 %127, 1
  %129 = load i32, i32* %14, align 4
  %130 = call i32 @screen_write_cursormove(%struct.screen_write_ctx* %122, i32 %128, i32 %129, i32 0)
  %131 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %12, align 8
  %132 = load %struct.screen*, %struct.screen** %19, align 8
  %133 = load %struct.screen*, %struct.screen** %19, align 8
  %134 = getelementptr inbounds %struct.screen, %struct.screen* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @screen_write_fast_copy(%struct.screen_write_ctx* %131, %struct.screen* %132, i32 0, i32 0, i32 %135, i32 1)
  %137 = load %struct.screen*, %struct.screen** %19, align 8
  %138 = getelementptr inbounds %struct.screen, %struct.screen* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %16, align 4
  %141 = sub nsw i32 %140, %139
  store i32 %141, i32* %16, align 4
  br label %142

142:                                              ; preds = %121, %115, %107
  %143 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %12, align 8
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %14, align 4
  %146 = load %struct.screen*, %struct.screen** %17, align 8
  %147 = load %struct.format_ranges*, %struct.format_ranges** %22, align 8
  %148 = load i32, i32* %15, align 4
  %149 = load i32, i32* %23, align 4
  %150 = load i32, i32* %16, align 4
  %151 = call i32 @format_draw_put(%struct.screen_write_ctx* %143, i32 %144, i32 %145, %struct.screen* %146, %struct.format_ranges* %147, i32 %148, i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %142, %30
  ret void
}

declare dso_local i32 @format_draw_put(%struct.screen_write_ctx*, i32, i32, %struct.screen*, %struct.format_ranges*, i32, i32, i32) #1

declare dso_local i32 @screen_write_cursormove(%struct.screen_write_ctx*, i32, i32, i32) #1

declare dso_local i32 @screen_write_fast_copy(%struct.screen_write_ctx*, %struct.screen*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
