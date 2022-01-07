; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_draw.c_UITOOLS95_DrawFrameScroll.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_draw.c_UITOOLS95_DrawFrameScroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8*, i8*, i64, i64 }
%struct.TYPE_7__ = type { i32, i64, i64, i64 }

@FW_NORMAL = common dso_local global i8* null, align 8
@DEFAULT_CHARSET = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"Marlett\00", align 1
@TRANSPARENT = common dso_local global i32 0, align 4
@DFCS_MONO = common dso_local global i32 0, align 4
@DFCS_FLAT = common dso_local global i32 0, align 4
@COLOR_BTNHIGHLIGHT = common dso_local global i32 0, align 4
@COLOR_BTNSHADOW = common dso_local global i32 0, align 4
@COLOR_WINDOWFRAME = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Invalid scroll; flags=0x%04x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@DFCS_PUSHED = common dso_local global i32 0, align 4
@EDGE_SUNKEN = common dso_local global i32 0, align 4
@EDGE_RAISED = common dso_local global i32 0, align 4
@BF_MIDDLE = common dso_local global i32 0, align 4
@BF_RECT = common dso_local global i32 0, align 4
@DFCS_INACTIVE = common dso_local global i32 0, align 4
@COLOR_BTNTEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @UITOOLS95_DrawFrameScroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UITOOLS95_DrawFrameScroll(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, 255
  switch i32 %16, label %108 [
    i32 134, label %17
    i32 133, label %17
    i32 128, label %18
    i32 132, label %19
    i32 131, label %20
    i32 130, label %21
    i32 129, label %21
  ]

17:                                               ; preds = %3, %3
  store i8 54, i8* %14, align 1
  br label %112

18:                                               ; preds = %3
  store i8 53, i8* %14, align 1
  br label %112

19:                                               ; preds = %3
  store i8 51, i8* %14, align 1
  br label %112

20:                                               ; preds = %3
  store i8 52, i8* %14, align 1
  br label %112

21:                                               ; preds = %3, %3
  %22 = call i32 @ZeroMemory(%struct.TYPE_8__* %8, i32 40)
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @UITOOLS_MakeSquareRect(i32 %23, %struct.TYPE_7__* %12)
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %26, %28
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 4
  store i64 %29, i64* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load i8*, i8** @FW_NORMAL, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  store i8* %32, i8** %33, align 8
  %34 = load i8*, i8** @DEFAULT_CHARSET, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i8* %34, i8** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @TEXT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %39 = call i32 @lstrcpy(i32 %37, i32 %38)
  %40 = call i32 @CreateFontIndirect(%struct.TYPE_8__* %8)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @SelectObject(i32 %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @GetTextColor(i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @GetBkMode(i32 %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @TRANSPARENT, align 4
  %50 = call i32 @SetBkMode(i32 %48, i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @DFCS_MONO, align 4
  %53 = load i32, i32* @DFCS_FLAT, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %51, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %78, label %57

57:                                               ; preds = %21
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @COLOR_BTNHIGHLIGHT, align 4
  %60 = call i32 @GetSysColor(i32 %59)
  %61 = call i32 @SetTextColor(i32 %58, i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, 255
  %64 = icmp eq i32 %63, 130
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 111, i32 120
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %14, align 1
  %68 = load i32, i32* %5, align 4
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @TextOut(i32 %68, i64 %70, i64 %72, i8* %14, i32 1)
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @COLOR_BTNSHADOW, align 4
  %76 = call i32 @GetSysColor(i32 %75)
  %77 = call i32 @SetTextColor(i32 %74, i32 %76)
  br label %83

78:                                               ; preds = %21
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @COLOR_WINDOWFRAME, align 4
  %81 = call i32 @GetSysColor(i32 %80)
  %82 = call i32 @SetTextColor(i32 %79, i32 %81)
  br label %83

83:                                               ; preds = %78, %57
  %84 = load i32, i32* %7, align 4
  %85 = and i32 %84, 255
  %86 = icmp eq i32 %85, 130
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 112, i32 121
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %14, align 1
  %90 = load i32, i32* %5, align 4
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @TextOut(i32 %90, i64 %92, i64 %94, i8* %14, i32 1)
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @SetTextColor(i32 %96, i32 %97)
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @SelectObject(i32 %99, i32 %100)
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @SetBkMode(i32 %102, i32 %103)
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @DeleteObject(i32 %105)
  %107 = load i32, i32* @TRUE, align 4
  store i32 %107, i32* %4, align 4
  br label %230

108:                                              ; preds = %3
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @FALSE, align 4
  store i32 %111, i32* %4, align 4
  br label %230

112:                                              ; preds = %20, %19, %18, %17
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @DFCS_PUSHED, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = load i32, i32* @EDGE_SUNKEN, align 4
  br label %123

121:                                              ; preds = %112
  %122 = load i32, i32* @EDGE_RAISED, align 4
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i32 [ %120, %119 ], [ %122, %121 ]
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @DFCS_FLAT, align 4
  %127 = and i32 %125, %126
  %128 = load i32, i32* @BF_MIDDLE, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @BF_RECT, align 4
  %131 = or i32 %129, %130
  %132 = call i32 @IntDrawRectEdge(i32 %113, i32 %114, i32 %124, i32 %131, i32 1)
  %133 = call i32 @ZeroMemory(%struct.TYPE_8__* %8, i32 40)
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @UITOOLS_MakeSquareRect(i32 %134, %struct.TYPE_7__* %12)
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* %136, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %139, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sub nsw i32 %143, 1
  store i32 %144, i32* %142, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = sub nsw i64 %146, 1
  store i64 %147, i64* %145, align 8
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* @DFCS_PUSHED, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %123
  %153 = call i32 @OffsetRect(%struct.TYPE_7__* %12, i32 1, i32 1)
  br label %154

154:                                              ; preds = %152, %123
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = sub nsw i64 %156, %158
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 4
  store i64 %159, i64* %160, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  store i64 0, i64* %161, align 8
  %162 = load i8*, i8** @FW_NORMAL, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  store i8* %162, i8** %163, align 8
  %164 = load i8*, i8** @DEFAULT_CHARSET, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i8* %164, i8** %165, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @TEXT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %169 = call i32 @lstrcpy(i32 %167, i32 %168)
  %170 = call i32 @CreateFontIndirect(%struct.TYPE_8__* %8)
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %5, align 4
  %172 = load i32, i32* %9, align 4
  %173 = call i32 @SelectObject(i32 %171, i32 %172)
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* %5, align 4
  %175 = call i32 @GetTextColor(i32 %174)
  store i32 %175, i32* %11, align 4
  %176 = load i32, i32* %5, align 4
  %177 = call i32 @GetBkMode(i32 %176)
  store i32 %177, i32* %13, align 4
  %178 = load i32, i32* %5, align 4
  %179 = load i32, i32* @TRANSPARENT, align 4
  %180 = call i32 @SetBkMode(i32 %178, i32 %179)
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* @DFCS_INACTIVE, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %198

185:                                              ; preds = %154
  %186 = load i32, i32* %5, align 4
  %187 = load i32, i32* @COLOR_BTNHIGHLIGHT, align 4
  %188 = call i32 @GetSysColor(i32 %187)
  %189 = call i32 @SetTextColor(i32 %186, i32 %188)
  %190 = load i32, i32* %5, align 4
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = add nsw i64 %192, 1
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = add nsw i64 %195, 1
  %197 = call i32 @TextOut(i32 %190, i64 %193, i64 %196, i8* %14, i32 1)
  br label %198

198:                                              ; preds = %185, %154
  %199 = load i32, i32* %5, align 4
  %200 = load i32, i32* %7, align 4
  %201 = load i32, i32* @DFCS_INACTIVE, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %198
  %205 = load i32, i32* @COLOR_BTNSHADOW, align 4
  br label %208

206:                                              ; preds = %198
  %207 = load i32, i32* @COLOR_BTNTEXT, align 4
  br label %208

208:                                              ; preds = %206, %204
  %209 = phi i32 [ %205, %204 ], [ %207, %206 ]
  %210 = call i32 @GetSysColor(i32 %209)
  %211 = call i32 @SetTextColor(i32 %199, i32 %210)
  %212 = load i32, i32* %5, align 4
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = call i32 @TextOut(i32 %212, i64 %214, i64 %216, i8* %14, i32 1)
  %218 = load i32, i32* %5, align 4
  %219 = load i32, i32* %11, align 4
  %220 = call i32 @SetTextColor(i32 %218, i32 %219)
  %221 = load i32, i32* %5, align 4
  %222 = load i32, i32* %10, align 4
  %223 = call i32 @SelectObject(i32 %221, i32 %222)
  %224 = load i32, i32* %5, align 4
  %225 = load i32, i32* %13, align 4
  %226 = call i32 @SetBkMode(i32 %224, i32 %225)
  %227 = load i32, i32* %9, align 4
  %228 = call i32 @DeleteObject(i32 %227)
  %229 = load i32, i32* @TRUE, align 4
  store i32 %229, i32* %4, align 4
  br label %230

230:                                              ; preds = %208, %108, %83
  %231 = load i32, i32* %4, align 4
  ret i32 %231
}

declare dso_local i32 @ZeroMemory(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @UITOOLS_MakeSquareRect(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @lstrcpy(i32, i32) #1

declare dso_local i32 @TEXT(i8*) #1

declare dso_local i32 @CreateFontIndirect(%struct.TYPE_8__*) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @GetTextColor(i32) #1

declare dso_local i32 @GetBkMode(i32) #1

declare dso_local i32 @SetBkMode(i32, i32) #1

declare dso_local i32 @SetTextColor(i32, i32) #1

declare dso_local i32 @GetSysColor(i32) #1

declare dso_local i32 @TextOut(i32, i64, i64, i8*, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @IntDrawRectEdge(i32, i32, i32, i32, i32) #1

declare dso_local i32 @OffsetRect(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
