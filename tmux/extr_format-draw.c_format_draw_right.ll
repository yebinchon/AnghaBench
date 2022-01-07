; ModuleID = '/home/carl/AnghaBench/tmux/extr_format-draw.c_format_draw_right.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_format-draw.c_format_draw_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_write_ctx = type { i32 }
%struct.screen = type { i64 }
%struct.format_ranges = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.screen_write_ctx*, i64, i64, i64, %struct.screen*, %struct.screen*, %struct.screen*, %struct.screen*, %struct.screen*, %struct.screen*, %struct.screen*, i32, i32, %struct.format_ranges*)* @format_draw_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_draw_right(%struct.screen_write_ctx* %0, i64 %1, i64 %2, i64 %3, %struct.screen* %4, %struct.screen* %5, %struct.screen* %6, %struct.screen* %7, %struct.screen* %8, %struct.screen* %9, %struct.screen* %10, i32 %11, i32 %12, %struct.format_ranges* %13) #0 {
  %15 = alloca %struct.screen_write_ctx*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.screen*, align 8
  %20 = alloca %struct.screen*, align 8
  %21 = alloca %struct.screen*, align 8
  %22 = alloca %struct.screen*, align 8
  %23 = alloca %struct.screen*, align 8
  %24 = alloca %struct.screen*, align 8
  %25 = alloca %struct.screen*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.format_ranges*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca %struct.screen_write_ctx, align 4
  store %struct.screen_write_ctx* %0, %struct.screen_write_ctx** %15, align 8
  store i64 %1, i64* %16, align 8
  store i64 %2, i64* %17, align 8
  store i64 %3, i64* %18, align 8
  store %struct.screen* %4, %struct.screen** %19, align 8
  store %struct.screen* %5, %struct.screen** %20, align 8
  store %struct.screen* %6, %struct.screen** %21, align 8
  store %struct.screen* %7, %struct.screen** %22, align 8
  store %struct.screen* %8, %struct.screen** %23, align 8
  store %struct.screen* %9, %struct.screen** %24, align 8
  store %struct.screen* %10, %struct.screen** %25, align 8
  store i32 %11, i32* %26, align 4
  store i32 %12, i32* %27, align 4
  store %struct.format_ranges* %13, %struct.format_ranges** %28, align 8
  %35 = load %struct.screen*, %struct.screen** %19, align 8
  %36 = getelementptr inbounds %struct.screen, %struct.screen* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %29, align 8
  %38 = load %struct.screen*, %struct.screen** %20, align 8
  %39 = getelementptr inbounds %struct.screen, %struct.screen* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %30, align 8
  %41 = load %struct.screen*, %struct.screen** %21, align 8
  %42 = getelementptr inbounds %struct.screen, %struct.screen* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %31, align 8
  %44 = load %struct.screen*, %struct.screen** %22, align 8
  %45 = getelementptr inbounds %struct.screen, %struct.screen* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %32, align 8
  %47 = load %struct.screen*, %struct.screen** %25, align 8
  %48 = getelementptr inbounds %struct.screen, %struct.screen* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %33, align 8
  br label %50

50:                                               ; preds = %92, %14
  %51 = load i64, i64* %29, align 8
  %52 = load i64, i64* %30, align 8
  %53 = add nsw i64 %51, %52
  %54 = load i64, i64* %31, align 8
  %55 = add nsw i64 %53, %54
  %56 = load i64, i64* %32, align 8
  %57 = add nsw i64 %55, %56
  %58 = load i64, i64* %33, align 8
  %59 = add nsw i64 %57, %58
  %60 = load i64, i64* %16, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %93

62:                                               ; preds = %50
  %63 = load i64, i64* %30, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i64, i64* %30, align 8
  %67 = add nsw i64 %66, -1
  store i64 %67, i64* %30, align 8
  br label %92

68:                                               ; preds = %62
  %69 = load i64, i64* %32, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i64, i64* %32, align 8
  %73 = add nsw i64 %72, -1
  store i64 %73, i64* %32, align 8
  br label %91

74:                                               ; preds = %68
  %75 = load i64, i64* %31, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i64, i64* %31, align 8
  %79 = add nsw i64 %78, -1
  store i64 %79, i64* %31, align 8
  br label %90

80:                                               ; preds = %74
  %81 = load i64, i64* %33, align 8
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i64, i64* %33, align 8
  %85 = add nsw i64 %84, -1
  store i64 %85, i64* %33, align 8
  br label %89

86:                                               ; preds = %80
  %87 = load i64, i64* %29, align 8
  %88 = add nsw i64 %87, -1
  store i64 %88, i64* %29, align 8
  br label %89

89:                                               ; preds = %86, %83
  br label %90

90:                                               ; preds = %89, %77
  br label %91

91:                                               ; preds = %90, %71
  br label %92

92:                                               ; preds = %91, %65
  br label %50

93:                                               ; preds = %50
  %94 = load i64, i64* %32, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %93
  %97 = load %struct.screen*, %struct.screen** %21, align 8
  %98 = call i32 @screen_write_start(%struct.screen_write_ctx* %34, i32* null, %struct.screen* %97)
  %99 = load %struct.screen*, %struct.screen** %25, align 8
  %100 = load i64, i64* %33, align 8
  %101 = call i32 @screen_write_fast_copy(%struct.screen_write_ctx* %34, %struct.screen* %99, i32 0, i32 0, i64 %100, i32 1)
  %102 = call i32 @screen_write_stop(%struct.screen_write_ctx* %34)
  %103 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %15, align 8
  %104 = load i64, i64* %16, align 8
  %105 = load i64, i64* %17, align 8
  %106 = load i64, i64* %18, align 8
  %107 = load %struct.screen*, %struct.screen** %19, align 8
  %108 = load %struct.screen*, %struct.screen** %20, align 8
  %109 = load %struct.screen*, %struct.screen** %21, align 8
  %110 = load %struct.format_ranges*, %struct.format_ranges** %28, align 8
  %111 = call i32 @format_draw_none(%struct.screen_write_ctx* %103, i64 %104, i64 %105, i64 %106, %struct.screen* %107, %struct.screen* %108, %struct.screen* %109, %struct.format_ranges* %110)
  br label %203

112:                                              ; preds = %93
  %113 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %15, align 8
  %114 = load i64, i64* %17, align 8
  %115 = load i64, i64* %18, align 8
  %116 = load %struct.screen*, %struct.screen** %19, align 8
  %117 = load %struct.format_ranges*, %struct.format_ranges** %28, align 8
  %118 = load i64, i64* %29, align 8
  %119 = call i32 @format_draw_put(%struct.screen_write_ctx* %113, i64 %114, i64 %115, %struct.screen* %116, %struct.format_ranges* %117, i64 0, i32 0, i64 %118)
  %120 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %15, align 8
  %121 = load i64, i64* %17, align 8
  %122 = load i64, i64* %18, align 8
  %123 = load %struct.screen*, %struct.screen** %25, align 8
  %124 = load %struct.format_ranges*, %struct.format_ranges** %28, align 8
  %125 = load i64, i64* %16, align 8
  %126 = load i64, i64* %33, align 8
  %127 = sub nsw i64 %125, %126
  %128 = load %struct.screen*, %struct.screen** %25, align 8
  %129 = getelementptr inbounds %struct.screen, %struct.screen* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %33, align 8
  %132 = sub nsw i64 %130, %131
  %133 = trunc i64 %132 to i32
  %134 = load i64, i64* %33, align 8
  %135 = call i32 @format_draw_put(%struct.screen_write_ctx* %120, i64 %121, i64 %122, %struct.screen* %123, %struct.format_ranges* %124, i64 %127, i32 %133, i64 %134)
  %136 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %15, align 8
  %137 = load i64, i64* %17, align 8
  %138 = load i64, i64* %18, align 8
  %139 = load %struct.screen*, %struct.screen** %21, align 8
  %140 = load %struct.format_ranges*, %struct.format_ranges** %28, align 8
  %141 = load i64, i64* %16, align 8
  %142 = load i64, i64* %31, align 8
  %143 = sub nsw i64 %141, %142
  %144 = load i64, i64* %32, align 8
  %145 = sub nsw i64 %143, %144
  %146 = load i64, i64* %33, align 8
  %147 = sub nsw i64 %145, %146
  %148 = load i64, i64* %31, align 8
  %149 = call i32 @format_draw_put(%struct.screen_write_ctx* %136, i64 %137, i64 %138, %struct.screen* %139, %struct.format_ranges* %140, i64 %147, i32 0, i64 %148)
  %150 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %15, align 8
  %151 = load i64, i64* %17, align 8
  %152 = load i64, i64* %18, align 8
  %153 = load %struct.screen*, %struct.screen** %20, align 8
  %154 = load %struct.format_ranges*, %struct.format_ranges** %28, align 8
  %155 = load i64, i64* %29, align 8
  %156 = load i64, i64* %16, align 8
  %157 = load i64, i64* %31, align 8
  %158 = sub nsw i64 %156, %157
  %159 = load i64, i64* %32, align 8
  %160 = sub nsw i64 %158, %159
  %161 = load i64, i64* %33, align 8
  %162 = sub nsw i64 %160, %161
  %163 = load i64, i64* %29, align 8
  %164 = sub nsw i64 %162, %163
  %165 = sdiv i64 %164, 2
  %166 = add nsw i64 %155, %165
  %167 = load i64, i64* %30, align 8
  %168 = sdiv i64 %167, 2
  %169 = sub nsw i64 %166, %168
  %170 = load %struct.screen*, %struct.screen** %20, align 8
  %171 = getelementptr inbounds %struct.screen, %struct.screen* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = sdiv i64 %172, 2
  %174 = load i64, i64* %30, align 8
  %175 = sdiv i64 %174, 2
  %176 = sub nsw i64 %173, %175
  %177 = trunc i64 %176 to i32
  %178 = load i64, i64* %30, align 8
  %179 = call i32 @format_draw_put(%struct.screen_write_ctx* %150, i64 %151, i64 %152, %struct.screen* %153, %struct.format_ranges* %154, i64 %169, i32 %177, i64 %178)
  %180 = load i32, i32* %26, align 4
  %181 = icmp eq i32 %180, -1
  br i1 %181, label %185, label %182

182:                                              ; preds = %112
  %183 = load i32, i32* %27, align 4
  %184 = icmp eq i32 %183, -1
  br i1 %184, label %185, label %186

185:                                              ; preds = %182, %112
  store i32 0, i32* %27, align 4
  store i32 0, i32* %26, align 4
  br label %186

186:                                              ; preds = %185, %182
  %187 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %15, align 8
  %188 = load i64, i64* %17, align 8
  %189 = load i64, i64* %18, align 8
  %190 = load i64, i64* %16, align 8
  %191 = load i64, i64* %32, align 8
  %192 = sub nsw i64 %190, %191
  %193 = load i64, i64* %33, align 8
  %194 = sub nsw i64 %192, %193
  %195 = load i64, i64* %32, align 8
  %196 = load %struct.screen*, %struct.screen** %22, align 8
  %197 = load %struct.screen*, %struct.screen** %23, align 8
  %198 = load %struct.screen*, %struct.screen** %24, align 8
  %199 = load i32, i32* %26, align 4
  %200 = load i32, i32* %27, align 4
  %201 = load %struct.format_ranges*, %struct.format_ranges** %28, align 8
  %202 = call i32 @format_draw_put_list(%struct.screen_write_ctx* %187, i64 %188, i64 %189, i64 %194, i64 %195, %struct.screen* %196, %struct.screen* %197, %struct.screen* %198, i32 %199, i32 %200, %struct.format_ranges* %201)
  br label %203

203:                                              ; preds = %186, %96
  ret void
}

declare dso_local i32 @screen_write_start(%struct.screen_write_ctx*, i32*, %struct.screen*) #1

declare dso_local i32 @screen_write_fast_copy(%struct.screen_write_ctx*, %struct.screen*, i32, i32, i64, i32) #1

declare dso_local i32 @screen_write_stop(%struct.screen_write_ctx*) #1

declare dso_local i32 @format_draw_none(%struct.screen_write_ctx*, i64, i64, i64, %struct.screen*, %struct.screen*, %struct.screen*, %struct.format_ranges*) #1

declare dso_local i32 @format_draw_put(%struct.screen_write_ctx*, i64, i64, %struct.screen*, %struct.format_ranges*, i64, i32, i64) #1

declare dso_local i32 @format_draw_put_list(%struct.screen_write_ctx*, i64, i64, i64, i64, %struct.screen*, %struct.screen*, %struct.screen*, i32, i32, %struct.format_ranges*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
