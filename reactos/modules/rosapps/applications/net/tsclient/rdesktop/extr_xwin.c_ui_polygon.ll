; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xwin.c_ui_polygon.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xwin.c_ui_polygon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32*, i32, i32 }

@EvenOddRule = common dso_local global i32 0, align 4
@WindingRule = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"fill mode %d\0A\00", align 1
@hatch_patterns = common dso_local global i32 0, align 4
@FillOpaqueStippled = common dso_local global i32 0, align 4
@FillSolid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"brush %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_polygon(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32* %3, i32 %4, %struct.TYPE_10__* %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [8 x i32], align 16
  %20 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @SET_FUNCTION(i32 %21)
  %23 = load i32, i32* %11, align 4
  switch i32 %23, label %44 [
    i32 129, label %24
    i32 128, label %34
  ]

24:                                               ; preds = %8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @EvenOddRule, align 4
  %33 = call i32 @XSetFillRule(i32 %27, i32 %31, i32 %32)
  br label %47

34:                                               ; preds = %8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @WindingRule, align 4
  %43 = call i32 @XSetFillRule(i32 %37, i32 %41, i32 %42)
  br label %47

44:                                               ; preds = %8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @unimpl(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %44, %34, %24
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %49 = icmp ne %struct.TYPE_10__* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %17, align 4
  br label %55

54:                                               ; preds = %47
  store i32 0, i32* %17, align 4
  br label %55

55:                                               ; preds = %54, %50
  %56 = load i32, i32* %17, align 4
  switch i32 %56, label %217 [
    i32 0, label %57
    i32 2, label %63
    i32 3, label %135
  ]

57:                                               ; preds = %55
  %58 = load i32, i32* %16, align 4
  %59 = call i32 @SET_FOREGROUND(i32 %58)
  %60 = load i32*, i32** %12, align 8
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @FILL_POLYGON(i32* %60, i32 %61)
  br label %222

63:                                               ; preds = %55
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %65 = load i32, i32* @hatch_patterns, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %70, 8
  %72 = add nsw i32 %65, %71
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i32*
  %75 = call i32 @ui_create_glyph(%struct.TYPE_9__* %64, i32 8, i32 8, i32* %74)
  store i32 %75, i32* %20, align 4
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @SET_FOREGROUND(i32 %76)
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @SET_BACKGROUND(i32 %78)
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @FillOpaqueStippled, align 4
  %88 = call i32 @XSetFillStyle(i32 %82, i32 %86, i32 %87)
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %20, align 4
  %97 = call i32 @XSetStipple(i32 %91, i32 %95, i32 %96)
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @XSetTSOrigin(i32 %100, i32 %104, i32 %107, i32 %110)
  %112 = load i32*, i32** %12, align 8
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @FILL_POLYGON(i32* %112, i32 %113)
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @FillSolid, align 4
  %123 = call i32 @XSetFillStyle(i32 %117, i32 %121, i32 %122)
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @XSetTSOrigin(i32 %126, i32 %130, i32 0, i32 0)
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %133 = load i32, i32* %20, align 4
  %134 = call i32 @ui_destroy_glyph(%struct.TYPE_9__* %132, i32 %133)
  br label %222

135:                                              ; preds = %55
  store i32 0, i32* %18, align 4
  br label %136

136:                                              ; preds = %151, %135
  %137 = load i32, i32* %18, align 4
  %138 = icmp ne i32 %137, 8
  br i1 %138, label %139, label %154

139:                                              ; preds = %136
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %18, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %18, align 4
  %148 = sub nsw i32 7, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 %149
  store i32 %146, i32* %150, align 4
  br label %151

151:                                              ; preds = %139
  %152 = load i32, i32* %18, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %18, align 4
  br label %136

154:                                              ; preds = %136
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %156 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0
  %157 = call i32 @ui_create_glyph(%struct.TYPE_9__* %155, i32 8, i32 8, i32* %156)
  store i32 %157, i32* %20, align 4
  %158 = load i32, i32* %15, align 4
  %159 = call i32 @SET_FOREGROUND(i32 %158)
  %160 = load i32, i32* %16, align 4
  %161 = call i32 @SET_BACKGROUND(i32 %160)
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @FillOpaqueStippled, align 4
  %170 = call i32 @XSetFillStyle(i32 %164, i32 %168, i32 %169)
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %20, align 4
  %179 = call i32 @XSetStipple(i32 %173, i32 %177, i32 %178)
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @XSetTSOrigin(i32 %182, i32 %186, i32 %189, i32 %192)
  %194 = load i32*, i32** %12, align 8
  %195 = load i32, i32* %13, align 4
  %196 = call i32 @FILL_POLYGON(i32* %194, i32 %195)
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @FillSolid, align 4
  %205 = call i32 @XSetFillStyle(i32 %199, i32 %203, i32 %204)
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @XSetTSOrigin(i32 %208, i32 %212, i32 0, i32 0)
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %215 = load i32, i32* %20, align 4
  %216 = call i32 @ui_destroy_glyph(%struct.TYPE_9__* %214, i32 %215)
  br label %222

217:                                              ; preds = %55
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @unimpl(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %220)
  br label %222

222:                                              ; preds = %217, %154, %63, %57
  %223 = load i32, i32* %10, align 4
  %224 = call i32 @RESET_FUNCTION(i32 %223)
  ret void
}

declare dso_local i32 @SET_FUNCTION(i32) #1

declare dso_local i32 @XSetFillRule(i32, i32, i32) #1

declare dso_local i32 @unimpl(i8*, i32) #1

declare dso_local i32 @SET_FOREGROUND(i32) #1

declare dso_local i32 @FILL_POLYGON(i32*, i32) #1

declare dso_local i32 @ui_create_glyph(%struct.TYPE_9__*, i32, i32, i32*) #1

declare dso_local i32 @SET_BACKGROUND(i32) #1

declare dso_local i32 @XSetFillStyle(i32, i32, i32) #1

declare dso_local i32 @XSetStipple(i32, i32, i32) #1

declare dso_local i32 @XSetTSOrigin(i32, i32, i32, i32) #1

declare dso_local i32 @ui_destroy_glyph(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @RESET_FUNCTION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
