; ModuleID = '/home/carl/AnghaBench/tmux/extr_format-draw.c_format_draw_centre.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_format-draw.c_format_draw_centre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_write_ctx = type { i32 }
%struct.screen = type { i64 }
%struct.format_ranges = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.screen_write_ctx*, i64, i64, i64, %struct.screen*, %struct.screen*, %struct.screen*, %struct.screen*, %struct.screen*, %struct.screen*, %struct.screen*, i32, i32, %struct.format_ranges*)* @format_draw_centre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_draw_centre(%struct.screen_write_ctx* %0, i64 %1, i64 %2, i64 %3, %struct.screen* %4, %struct.screen* %5, %struct.screen* %6, %struct.screen* %7, %struct.screen* %8, %struct.screen* %9, %struct.screen* %10, i32 %11, i32 %12, %struct.format_ranges* %13) #0 {
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
  %34 = alloca i64, align 8
  %35 = alloca %struct.screen_write_ctx, align 4
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
  %36 = load %struct.screen*, %struct.screen** %19, align 8
  %37 = getelementptr inbounds %struct.screen, %struct.screen* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %29, align 8
  %39 = load %struct.screen*, %struct.screen** %20, align 8
  %40 = getelementptr inbounds %struct.screen, %struct.screen* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %30, align 8
  %42 = load %struct.screen*, %struct.screen** %21, align 8
  %43 = getelementptr inbounds %struct.screen, %struct.screen* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %31, align 8
  %45 = load %struct.screen*, %struct.screen** %22, align 8
  %46 = getelementptr inbounds %struct.screen, %struct.screen* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %32, align 8
  %48 = load %struct.screen*, %struct.screen** %25, align 8
  %49 = getelementptr inbounds %struct.screen, %struct.screen* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %33, align 8
  br label %51

51:                                               ; preds = %93, %14
  %52 = load i64, i64* %29, align 8
  %53 = load i64, i64* %30, align 8
  %54 = add nsw i64 %52, %53
  %55 = load i64, i64* %31, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i64, i64* %32, align 8
  %58 = add nsw i64 %56, %57
  %59 = load i64, i64* %33, align 8
  %60 = add nsw i64 %58, %59
  %61 = load i64, i64* %16, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %94

63:                                               ; preds = %51
  %64 = load i64, i64* %32, align 8
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i64, i64* %32, align 8
  %68 = add nsw i64 %67, -1
  store i64 %68, i64* %32, align 8
  br label %93

69:                                               ; preds = %63
  %70 = load i64, i64* %33, align 8
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i64, i64* %33, align 8
  %74 = add nsw i64 %73, -1
  store i64 %74, i64* %33, align 8
  br label %92

75:                                               ; preds = %69
  %76 = load i64, i64* %30, align 8
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i64, i64* %30, align 8
  %80 = add nsw i64 %79, -1
  store i64 %80, i64* %30, align 8
  br label %91

81:                                               ; preds = %75
  %82 = load i64, i64* %31, align 8
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i64, i64* %31, align 8
  %86 = add nsw i64 %85, -1
  store i64 %86, i64* %31, align 8
  br label %90

87:                                               ; preds = %81
  %88 = load i64, i64* %29, align 8
  %89 = add nsw i64 %88, -1
  store i64 %89, i64* %29, align 8
  br label %90

90:                                               ; preds = %87, %84
  br label %91

91:                                               ; preds = %90, %78
  br label %92

92:                                               ; preds = %91, %72
  br label %93

93:                                               ; preds = %92, %66
  br label %51

94:                                               ; preds = %51
  %95 = load i64, i64* %32, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %113

97:                                               ; preds = %94
  %98 = load %struct.screen*, %struct.screen** %20, align 8
  %99 = call i32 @screen_write_start(%struct.screen_write_ctx* %35, i32* null, %struct.screen* %98)
  %100 = load %struct.screen*, %struct.screen** %25, align 8
  %101 = load i64, i64* %33, align 8
  %102 = call i32 @screen_write_fast_copy(%struct.screen_write_ctx* %35, %struct.screen* %100, i32 0, i32 0, i64 %101, i32 1)
  %103 = call i32 @screen_write_stop(%struct.screen_write_ctx* %35)
  %104 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %15, align 8
  %105 = load i64, i64* %16, align 8
  %106 = load i64, i64* %17, align 8
  %107 = load i64, i64* %18, align 8
  %108 = load %struct.screen*, %struct.screen** %19, align 8
  %109 = load %struct.screen*, %struct.screen** %20, align 8
  %110 = load %struct.screen*, %struct.screen** %21, align 8
  %111 = load %struct.format_ranges*, %struct.format_ranges** %28, align 8
  %112 = call i32 @format_draw_none(%struct.screen_write_ctx* %104, i64 %105, i64 %106, i64 %107, %struct.screen* %108, %struct.screen* %109, %struct.screen* %110, %struct.format_ranges* %111)
  br label %197

113:                                              ; preds = %94
  %114 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %15, align 8
  %115 = load i64, i64* %17, align 8
  %116 = load i64, i64* %18, align 8
  %117 = load %struct.screen*, %struct.screen** %19, align 8
  %118 = load %struct.format_ranges*, %struct.format_ranges** %28, align 8
  %119 = load i64, i64* %29, align 8
  %120 = call i32 @format_draw_put(%struct.screen_write_ctx* %114, i64 %115, i64 %116, %struct.screen* %117, %struct.format_ranges* %118, i64 0, i64 0, i64 %119)
  %121 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %15, align 8
  %122 = load i64, i64* %17, align 8
  %123 = load i64, i64* %18, align 8
  %124 = load %struct.screen*, %struct.screen** %21, align 8
  %125 = load %struct.format_ranges*, %struct.format_ranges** %28, align 8
  %126 = load i64, i64* %16, align 8
  %127 = load i64, i64* %31, align 8
  %128 = sub nsw i64 %126, %127
  %129 = load %struct.screen*, %struct.screen** %21, align 8
  %130 = getelementptr inbounds %struct.screen, %struct.screen* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %31, align 8
  %133 = sub nsw i64 %131, %132
  %134 = load i64, i64* %31, align 8
  %135 = call i32 @format_draw_put(%struct.screen_write_ctx* %121, i64 %122, i64 %123, %struct.screen* %124, %struct.format_ranges* %125, i64 %128, i64 %133, i64 %134)
  %136 = load i64, i64* %29, align 8
  %137 = load i64, i64* %16, align 8
  %138 = load i64, i64* %31, align 8
  %139 = sub nsw i64 %137, %138
  %140 = load i64, i64* %29, align 8
  %141 = sub nsw i64 %139, %140
  %142 = sdiv i64 %141, 2
  %143 = add nsw i64 %136, %142
  store i64 %143, i64* %34, align 8
  %144 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %15, align 8
  %145 = load i64, i64* %17, align 8
  %146 = load i64, i64* %18, align 8
  %147 = load %struct.screen*, %struct.screen** %20, align 8
  %148 = load %struct.format_ranges*, %struct.format_ranges** %28, align 8
  %149 = load i64, i64* %34, align 8
  %150 = load i64, i64* %32, align 8
  %151 = sdiv i64 %150, 2
  %152 = sub nsw i64 %149, %151
  %153 = load i64, i64* %30, align 8
  %154 = sub nsw i64 %152, %153
  %155 = load i64, i64* %30, align 8
  %156 = call i32 @format_draw_put(%struct.screen_write_ctx* %144, i64 %145, i64 %146, %struct.screen* %147, %struct.format_ranges* %148, i64 %154, i64 0, i64 %155)
  %157 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %15, align 8
  %158 = load i64, i64* %17, align 8
  %159 = load i64, i64* %18, align 8
  %160 = load %struct.screen*, %struct.screen** %25, align 8
  %161 = load %struct.format_ranges*, %struct.format_ranges** %28, align 8
  %162 = load i64, i64* %34, align 8
  %163 = load i64, i64* %32, align 8
  %164 = sdiv i64 %163, 2
  %165 = sub nsw i64 %162, %164
  %166 = load i64, i64* %32, align 8
  %167 = add nsw i64 %165, %166
  %168 = load i64, i64* %33, align 8
  %169 = call i32 @format_draw_put(%struct.screen_write_ctx* %157, i64 %158, i64 %159, %struct.screen* %160, %struct.format_ranges* %161, i64 %167, i64 0, i64 %168)
  %170 = load i32, i32* %26, align 4
  %171 = icmp eq i32 %170, -1
  br i1 %171, label %175, label %172

172:                                              ; preds = %113
  %173 = load i32, i32* %27, align 4
  %174 = icmp eq i32 %173, -1
  br i1 %174, label %175, label %181

175:                                              ; preds = %172, %113
  %176 = load %struct.screen*, %struct.screen** %22, align 8
  %177 = getelementptr inbounds %struct.screen, %struct.screen* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = sdiv i64 %178, 2
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %27, align 4
  store i32 %180, i32* %26, align 4
  br label %181

181:                                              ; preds = %175, %172
  %182 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %15, align 8
  %183 = load i64, i64* %17, align 8
  %184 = load i64, i64* %18, align 8
  %185 = load i64, i64* %34, align 8
  %186 = load i64, i64* %32, align 8
  %187 = sdiv i64 %186, 2
  %188 = sub nsw i64 %185, %187
  %189 = load i64, i64* %32, align 8
  %190 = load %struct.screen*, %struct.screen** %22, align 8
  %191 = load %struct.screen*, %struct.screen** %23, align 8
  %192 = load %struct.screen*, %struct.screen** %24, align 8
  %193 = load i32, i32* %26, align 4
  %194 = load i32, i32* %27, align 4
  %195 = load %struct.format_ranges*, %struct.format_ranges** %28, align 8
  %196 = call i32 @format_draw_put_list(%struct.screen_write_ctx* %182, i64 %183, i64 %184, i64 %188, i64 %189, %struct.screen* %190, %struct.screen* %191, %struct.screen* %192, i32 %193, i32 %194, %struct.format_ranges* %195)
  br label %197

197:                                              ; preds = %181, %97
  ret void
}

declare dso_local i32 @screen_write_start(%struct.screen_write_ctx*, i32*, %struct.screen*) #1

declare dso_local i32 @screen_write_fast_copy(%struct.screen_write_ctx*, %struct.screen*, i32, i32, i64, i32) #1

declare dso_local i32 @screen_write_stop(%struct.screen_write_ctx*) #1

declare dso_local i32 @format_draw_none(%struct.screen_write_ctx*, i64, i64, i64, %struct.screen*, %struct.screen*, %struct.screen*, %struct.format_ranges*) #1

declare dso_local i32 @format_draw_put(%struct.screen_write_ctx*, i64, i64, %struct.screen*, %struct.format_ranges*, i64, i64, i64) #1

declare dso_local i32 @format_draw_put_list(%struct.screen_write_ctx*, i64, i64, i64, i64, %struct.screen*, %struct.screen*, %struct.screen*, i32, i32, %struct.format_ranges*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
