; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_EM_SetMargins.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_EM_SetMargins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_11__, i32, i64 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@EC_USEFONTINFO = common dso_local global i64 0, align 8
@TMPF_VECTOR = common dso_local global i32 0, align 4
@TMPF_TRUETYPE = common dso_local global i32 0, align 4
@EC_LEFTMARGIN = common dso_local global i32 0, align 4
@EC_RIGHTMARGIN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"left=%d, right=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32, i64, i64, i64)* @EDIT_EM_SetMargins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EDIT_EM_SetMargins(%struct.TYPE_14__* %0, i32 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_12__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_13__, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %103

22:                                               ; preds = %5
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @EC_USEFONTINFO, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @EC_USEFONTINFO, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %103

30:                                               ; preds = %26, %22
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @GetDC(i32 %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @SelectObject(i32 %35, i64 %38)
  store i64 %39, i64* %15, align 8
  %40 = load i32, i32* %14, align 4
  %41 = call i32 @GdiGetCharDimensions(i32 %40, %struct.TYPE_12__* %11, i32* null)
  store i32 %41, i32* %16, align 4
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @TMPF_VECTOR, align 4
  %45 = load i32, i32* @TMPF_TRUETYPE, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %94

49:                                               ; preds = %30
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @is_cjk(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %88, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %16, align 4
  %56 = sdiv i32 %55, 2
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %16, align 4
  %58 = sdiv i32 %57, 2
  store i32 %58, i32* %13, align 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @GetClientRect(i32 %61, %struct.TYPE_13__* %17)
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %64, %66
  %68 = load i32, i32* %16, align 4
  %69 = sdiv i32 %68, 2
  %70 = load i32, i32* %16, align 4
  %71 = add nsw i32 %69, %70
  %72 = mul nsw i32 %71, 2
  %73 = icmp slt i32 %67, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %54
  %75 = load i32, i32* %16, align 4
  %76 = icmp sge i32 %75, 28
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = call i32 @IsRectEmpty(%struct.TYPE_13__* %17)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %77, %74
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %12, align 4
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %80, %77, %54
  br label %93

88:                                               ; preds = %49
  %89 = load i32, i32* %16, align 4
  %90 = sdiv i32 %89, 2
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %16, align 4
  %92 = sdiv i32 %91, 2
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %88, %87
  br label %94

94:                                               ; preds = %93, %30
  %95 = load i32, i32* %14, align 4
  %96 = load i64, i64* %15, align 8
  %97 = call i64 @SelectObject(i32 %95, i64 %96)
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @ReleaseDC(i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %94, %26, %5
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @EC_LEFTMARGIN, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %138

108:                                              ; preds = %103
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sub nsw i32 %115, %111
  store i32 %116, i32* %114, align 8
  %117 = load i64, i64* %8, align 8
  %118 = load i64, i64* @EC_USEFONTINFO, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %108
  %121 = load i64, i64* %8, align 8
  %122 = trunc i64 %121 to i32
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  br label %129

125:                                              ; preds = %108
  %126 = load i32, i32* %12, align 4
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  br label %129

129:                                              ; preds = %125, %120
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, %132
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %129, %103
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @EC_RIGHTMARGIN, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %173

143:                                              ; preds = %138
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, %146
  store i32 %151, i32* %149, align 4
  %152 = load i64, i64* %9, align 8
  %153 = load i64, i64* @EC_USEFONTINFO, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %143
  %156 = load i64, i64* %9, align 8
  %157 = trunc i64 %156 to i32
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  br label %164

160:                                              ; preds = %143
  %161 = load i32, i32* %13, align 4
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %160, %155
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = sub nsw i32 %171, %167
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %164, %138
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* @EC_LEFTMARGIN, align 4
  %176 = load i32, i32* @EC_RIGHTMARGIN, align 4
  %177 = or i32 %175, %176
  %178 = and i32 %174, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %173
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %182 = call i32 @EDIT_AdjustFormatRect(%struct.TYPE_14__* %181)
  %183 = load i64, i64* %10, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %180
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %187 = load i32, i32* @TRUE, align 4
  %188 = call i32 @EDIT_UpdateText(%struct.TYPE_14__* %186, i32* null, i32 %187)
  br label %189

189:                                              ; preds = %185, %180
  br label %190

190:                                              ; preds = %189, %173
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %193, i32 %196)
  ret void
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i64 @SelectObject(i32, i64) #1

declare dso_local i32 @GdiGetCharDimensions(i32, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @is_cjk(i32) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @IsRectEmpty(%struct.TYPE_13__*) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i32 @EDIT_AdjustFormatRect(%struct.TYPE_14__*) #1

declare dso_local i32 @EDIT_UpdateText(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
