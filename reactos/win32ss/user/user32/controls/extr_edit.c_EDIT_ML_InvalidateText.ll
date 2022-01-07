; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_ML_InvalidateText.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_ML_InvalidateText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i64, i64)* @EDIT_ML_InvalidateText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EDIT_ML_InvalidateText(%struct.TYPE_9__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = call i64 @get_vertical_line_count(%struct.TYPE_9__* %17)
  store i64 %18, i64* %7, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @EDIT_EM_LineFromChar(%struct.TYPE_9__* %19, i64 %20)
  store i64 %21, i64* %8, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i64 @EDIT_EM_LineFromChar(%struct.TYPE_9__* %22, i64 %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %25, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %3
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = add nsw i64 %34, %35
  %37 = icmp sgt i64 %31, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30, %3
  br label %156

39:                                               ; preds = %30
  %40 = load i64, i64* %5, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i64 @EDIT_EM_LineIndex(%struct.TYPE_9__* %41, i64 %42)
  %44 = sub nsw i64 %40, %43
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i64 @EDIT_EM_LineIndex(%struct.TYPE_9__* %46, i64 %47)
  %49 = sub nsw i64 %45, %48
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %50, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %39
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %8, align 8
  store i64 0, i64* %10, align 8
  br label %59

59:                                               ; preds = %55, %39
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = add nsw i64 %63, %64
  %66 = icmp sgt i64 %60, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %59
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = add nsw i64 %70, %71
  store i64 %72, i64* %9, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %75 = load i64, i64* %9, align 8
  %76 = call i64 @EDIT_EM_LineIndex(%struct.TYPE_9__* %74, i64 %75)
  %77 = call i64 @EDIT_EM_LineLength(%struct.TYPE_9__* %73, i64 %76)
  store i64 %77, i64* %11, align 8
  br label %78

78:                                               ; preds = %67, %59
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @GetClientRect(i32 %81, i32* %12)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = call i64 @IntersectRect(i32* %13, i32* %12, i32* %84)
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* %9, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %78
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* %11, align 8
  %94 = call i32 @EDIT_GetLineRect(%struct.TYPE_9__* %90, i64 %91, i64 %92, i64 %93, i32* %14)
  %95 = call i64 @IntersectRect(i32* %15, i32* %13, i32* %14)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %89
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %99 = load i32, i32* @TRUE, align 4
  %100 = call i32 @EDIT_UpdateText(%struct.TYPE_9__* %98, i32* %15, i32 %99)
  br label %101

101:                                              ; preds = %97, %89
  br label %156

102:                                              ; preds = %78
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %104 = load i64, i64* %8, align 8
  %105 = load i64, i64* %10, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %108 = load i64, i64* %8, align 8
  %109 = call i64 @EDIT_EM_LineIndex(%struct.TYPE_9__* %107, i64 %108)
  %110 = call i64 @EDIT_EM_LineLength(%struct.TYPE_9__* %106, i64 %109)
  %111 = call i32 @EDIT_GetLineRect(%struct.TYPE_9__* %103, i64 %104, i64 %105, i64 %110, i32* %14)
  %112 = call i64 @IntersectRect(i32* %15, i32* %13, i32* %14)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %102
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %116 = load i32, i32* @TRUE, align 4
  %117 = call i32 @EDIT_UpdateText(%struct.TYPE_9__* %115, i32* %15, i32 %116)
  br label %118

118:                                              ; preds = %114, %102
  %119 = load i64, i64* %8, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %16, align 8
  br label %121

121:                                              ; preds = %141, %118
  %122 = load i64, i64* %16, align 8
  %123 = load i64, i64* %9, align 8
  %124 = icmp slt i64 %122, %123
  br i1 %124, label %125, label %144

125:                                              ; preds = %121
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %127 = load i64, i64* %16, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %130 = load i64, i64* %16, align 8
  %131 = call i64 @EDIT_EM_LineIndex(%struct.TYPE_9__* %129, i64 %130)
  %132 = call i64 @EDIT_EM_LineLength(%struct.TYPE_9__* %128, i64 %131)
  %133 = call i32 @EDIT_GetLineRect(%struct.TYPE_9__* %126, i64 %127, i64 0, i64 %132, i32* %14)
  %134 = call i64 @IntersectRect(i32* %15, i32* %13, i32* %14)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %125
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %138 = load i32, i32* @TRUE, align 4
  %139 = call i32 @EDIT_UpdateText(%struct.TYPE_9__* %137, i32* %15, i32 %138)
  br label %140

140:                                              ; preds = %136, %125
  br label %141

141:                                              ; preds = %140
  %142 = load i64, i64* %16, align 8
  %143 = add nsw i64 %142, 1
  store i64 %143, i64* %16, align 8
  br label %121

144:                                              ; preds = %121
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %146 = load i64, i64* %9, align 8
  %147 = load i64, i64* %11, align 8
  %148 = call i32 @EDIT_GetLineRect(%struct.TYPE_9__* %145, i64 %146, i64 0, i64 %147, i32* %14)
  %149 = call i64 @IntersectRect(i32* %15, i32* %13, i32* %14)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %144
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %153 = load i32, i32* @TRUE, align 4
  %154 = call i32 @EDIT_UpdateText(%struct.TYPE_9__* %152, i32* %15, i32 %153)
  br label %155

155:                                              ; preds = %151, %144
  br label %156

156:                                              ; preds = %38, %155, %101
  ret void
}

declare dso_local i64 @get_vertical_line_count(%struct.TYPE_9__*) #1

declare dso_local i64 @EDIT_EM_LineFromChar(%struct.TYPE_9__*, i64) #1

declare dso_local i64 @EDIT_EM_LineIndex(%struct.TYPE_9__*, i64) #1

declare dso_local i64 @EDIT_EM_LineLength(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @GetClientRect(i32, i32*) #1

declare dso_local i64 @IntersectRect(i32*, i32*, i32*) #1

declare dso_local i32 @EDIT_GetLineRect(%struct.TYPE_9__*, i64, i64, i64, i32*) #1

declare dso_local i32 @EDIT_UpdateText(%struct.TYPE_9__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
