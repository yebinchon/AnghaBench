; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_ui_line.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_ui_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@mousex = common dso_local global i32 0, align 4
@mousey = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_line(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_3__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %12, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %6
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %10, align 4
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %13, align 4
  store i32 -1, i32* %15, align 4
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %20, align 4
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %22, align 4
  br label %39

33:                                               ; preds = %6
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sub nsw i32 %34, %35
  store i32 %36, i32* %13, align 4
  store i32 1, i32* %15, align 4
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %20, align 4
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %22, align 4
  br label %39

39:                                               ; preds = %33, %27
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %11, align 4
  %46 = sub nsw i32 %44, %45
  store i32 %46, i32* %14, align 4
  store i32 -1, i32* %16, align 4
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %21, align 4
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %23, align 4
  br label %55

49:                                               ; preds = %39
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %9, align 4
  %52 = sub nsw i32 %50, %51
  store i32 %52, i32* %14, align 4
  store i32 1, i32* %16, align 4
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %21, align 4
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %23, align 4
  br label %55

55:                                               ; preds = %49, %43
  %56 = load i32, i32* %20, align 4
  %57 = load i32, i32* %21, align 4
  %58 = load i32, i32* %22, align 4
  %59 = load i32, i32* %20, align 4
  %60 = sub nsw i32 %58, %59
  %61 = add nsw i32 %60, 1
  %62 = load i32, i32* %23, align 4
  %63 = load i32, i32* %21, align 4
  %64 = sub nsw i32 %62, %63
  %65 = add nsw i32 %64, 1
  %66 = call i64 @contains_mouse(i32 %56, i32 %57, i32 %61, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %55
  %69 = load i32, i32* @mousex, align 4
  %70 = load i32, i32* @mousey, align 4
  %71 = call i32 @draw_cursor_under(i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %55
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %121

76:                                               ; preds = %72
  %77 = load i32, i32* %14, align 4
  %78 = shl i32 %77, 1
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* %13, align 4
  %81 = shl i32 %80, 1
  %82 = sub nsw i32 %79, %81
  store i32 %82, i32* %18, align 4
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* %13, align 4
  %85 = sub nsw i32 %83, %84
  store i32 %85, i32* %19, align 4
  br label %86

86:                                               ; preds = %117, %76
  %87 = load i32, i32* %13, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %120

89:                                               ; preds = %86
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @set_pixel(i32 %90, i32 %91, i32 %94, i32 %95)
  %97 = load i32, i32* %19, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %89
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* %19, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %19, align 4
  br label %116

109:                                              ; preds = %89
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* %19, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %19, align 4
  br label %116

116:                                              ; preds = %109, %99
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %13, align 4
  br label %86

120:                                              ; preds = %86
  br label %166

121:                                              ; preds = %72
  %122 = load i32, i32* %13, align 4
  %123 = shl i32 %122, 1
  store i32 %123, i32* %17, align 4
  %124 = load i32, i32* %17, align 4
  %125 = load i32, i32* %14, align 4
  %126 = shl i32 %125, 1
  %127 = sub nsw i32 %124, %126
  store i32 %127, i32* %18, align 4
  %128 = load i32, i32* %17, align 4
  %129 = load i32, i32* %14, align 4
  %130 = sub nsw i32 %128, %129
  store i32 %130, i32* %19, align 4
  br label %131

131:                                              ; preds = %162, %121
  %132 = load i32, i32* %14, align 4
  %133 = icmp sge i32 %132, 0
  br i1 %133, label %134, label %165

134:                                              ; preds = %131
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @set_pixel(i32 %135, i32 %136, i32 %139, i32 %140)
  %142 = load i32, i32* %19, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %134
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* %9, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %18, align 4
  %152 = load i32, i32* %19, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %19, align 4
  br label %161

154:                                              ; preds = %134
  %155 = load i32, i32* %16, align 4
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %9, align 4
  %158 = load i32, i32* %17, align 4
  %159 = load i32, i32* %19, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* %19, align 4
  br label %161

161:                                              ; preds = %154, %144
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %14, align 4
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %14, align 4
  br label %131

165:                                              ; preds = %131
  br label %166

166:                                              ; preds = %165, %120
  %167 = load i32, i32* %20, align 4
  %168 = load i32, i32* %21, align 4
  %169 = load i32, i32* %22, align 4
  %170 = load i32, i32* %20, align 4
  %171 = sub nsw i32 %169, %170
  %172 = add nsw i32 %171, 1
  %173 = load i32, i32* %23, align 4
  %174 = load i32, i32* %21, align 4
  %175 = sub nsw i32 %173, %174
  %176 = add nsw i32 %175, 1
  %177 = load i32, i32* @True, align 4
  %178 = call i32 @cache_rect(i32 %167, i32 %168, i32 %172, i32 %176, i32 %177)
  ret void
}

declare dso_local i64 @contains_mouse(i32, i32, i32, i32) #1

declare dso_local i32 @draw_cursor_under(i32, i32) #1

declare dso_local i32 @set_pixel(i32, i32, i32, i32) #1

declare dso_local i32 @cache_rect(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
