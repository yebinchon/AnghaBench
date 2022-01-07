; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_calc_widths.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_calc_widths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32*, i32*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__, i32, i32, i64, i64, i64, i64, i64 }
%struct.TYPE_10__ = type { i64, i64, i64, i64 }

@Globals = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@LB_GETCOUNT = common dso_local global i32 0, align 4
@COLUMNS = common dso_local global i32 0, align 4
@LB_GETITEMDATA = common dso_local global i32 0, align 4
@IMAGE_WIDTH = common dso_local global i32 0, align 4
@LB_SETHORIZONTALEXTENT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32)* @calc_widths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_widths(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_12__, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @Globals, i32 0, i32 1, i32 0), align 4
  %21 = mul nsw i32 3, %20
  store i32 %21, i32* %9, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @LB_GETCOUNT, align 4
  %26 = call i32 @SendMessageW(i32 %24, i32 %25, i32 0, i32 0)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* @COLUMNS, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %11, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %12, align 8
  %31 = load i32, i32* @COLUMNS, align 4
  %32 = add nsw i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %13, align 8
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %2
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = mul nuw i64 4, %28
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memcpy(i32* %30, i32* %40, i32 %42)
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = mul nuw i64 4, %33
  %48 = trunc i64 %47 to i32
  %49 = call i32 @memcpy(i32* %34, i32* %46, i32 %48)
  br label %50

50:                                               ; preds = %37, %2
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %62, %50
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @COLUMNS, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 0, i32* %61, align 4
  br label %62

62:                                               ; preds = %55
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %51

65:                                               ; preds = %51
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @GetDC(i32 %68)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @Globals, i32 0, i32 0), align 4
  %72 = call i32 @SelectObject(i32 %70, i32 %71)
  store i32 %72, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %73

73:                                               ; preds = %109, %65
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %112

77:                                               ; preds = %73
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @LB_GETITEMDATA, align 4
  %82 = load i32, i32* %16, align 4
  %83 = call i32 @SendMessageW(i32 %80, i32 %81, i32 %82, i32 0)
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i32*
  store i32* %85, i32** %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 7
  store i64 0, i64* %86, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 6
  store i64 0, i64* %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 5
  store i64 0, i64* %88, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 4
  store i64 0, i64* %89, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 3
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* %15, align 4
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  store i32 %95, i32* %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 3
  store i64 0, i64* %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  store i64 0, i64* %100, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  store i64 0, i64* %102, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  store i64 0, i64* %104, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %106 = load i32*, i32** %17, align 8
  %107 = load i32, i32* @COLUMNS, align 4
  %108 = call i32 @draw_item(%struct.TYPE_11__* %105, %struct.TYPE_12__* %18, i32* %106, i32 %107)
  br label %109

109:                                              ; preds = %77
  %110 = load i32, i32* %16, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %16, align 4
  br label %73

112:                                              ; preds = %73
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @SelectObject(i32 %113, i32 %114)
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %15, align 4
  %120 = call i32 @ReleaseDC(i32 %118, i32 %119)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %121

121:                                              ; preds = %163, %112
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @COLUMNS, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %166

125:                                              ; preds = %121
  %126 = load i32, i32* %7, align 4
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  store i32 %126, i32* %132, align 4
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %159

142:                                              ; preds = %125
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @IMAGE_WIDTH, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %142
  %150 = load i32, i32* @IMAGE_WIDTH, align 4
  store i32 %150, i32* %8, align 4
  br label %151

151:                                              ; preds = %149, %142
  %152 = load i32, i32* %8, align 4
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32 %152, i32* %158, align 4
  br label %159

159:                                              ; preds = %151, %125
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, %160
  store i32 %162, i32* %7, align 4
  br label %163

163:                                              ; preds = %159
  %164 = load i32, i32* %6, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %6, align 4
  br label %121

166:                                              ; preds = %121
  %167 = load i32, i32* %7, align 4
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* @COLUMNS, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32 %167, i32* %173, align 4
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @LB_SETHORIZONTALEXTENT, align 4
  %178 = load i32, i32* %7, align 4
  %179 = call i32 @SendMessageW(i32 %176, i32 %177, i32 %178, i32 0)
  %180 = load i32, i32* %5, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %192, label %182

182:                                              ; preds = %166
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = mul nuw i64 4, %28
  %187 = trunc i64 %186 to i32
  %188 = call i32 @memcmp(i32* %30, i32* %185, i32 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %192, label %190

190:                                              ; preds = %182
  %191 = load i32, i32* @FALSE, align 4
  store i32 %191, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %236

192:                                              ; preds = %182, %166
  %193 = load i32, i32* %5, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %229, label %195

195:                                              ; preds = %192
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  %200 = load i32, i32* %199, align 4
  %201 = getelementptr inbounds i32, i32* %30, i64 0
  %202 = load i32, i32* %201, align 16
  %203 = icmp slt i32 %200, %202
  br i1 %203, label %204, label %229

204:                                              ; preds = %195
  %205 = getelementptr inbounds i32, i32* %30, i64 1
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 1
  %210 = mul nuw i64 4, %28
  %211 = sub i64 %210, 4
  %212 = trunc i64 %211 to i32
  %213 = call i32 @memcmp(i32* %205, i32* %209, i32 %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %229, label %215

215:                                              ; preds = %204
  %216 = getelementptr inbounds i32, i32* %30, i64 0
  %217 = load i32, i32* %216, align 16
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 0
  store i32 %217, i32* %221, align 4
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = mul nuw i64 4, %33
  %226 = trunc i64 %225 to i32
  %227 = call i32 @memcpy(i32* %224, i32* %34, i32 %226)
  %228 = load i32, i32* @FALSE, align 4
  store i32 %228, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %236

229:                                              ; preds = %204, %195, %192
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @TRUE, align 4
  %234 = call i32 @InvalidateRect(i32 %232, i32 0, i32 %233)
  %235 = load i32, i32* @TRUE, align 4
  store i32 %235, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %236

236:                                              ; preds = %229, %215, %190
  %237 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %237)
  %238 = load i32, i32* %3, align 4
  ret i32 %238
}

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @draw_item(%struct.TYPE_11__*, %struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @InvalidateRect(i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
