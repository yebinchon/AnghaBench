; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xwin.c_ui_ellipse.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xwin.c_ui_ellipse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32*, i32, i32 }

@hatch_patterns = common dso_local global i32 0, align 4
@FillOpaqueStippled = common dso_local global i32 0, align 4
@FillSolid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"brush %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_ellipse(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.TYPE_10__* %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_10__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [8 x i32], align 16
  %24 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store %struct.TYPE_10__* %7, %struct.TYPE_10__** %18, align 8
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @SET_FUNCTION(i32 %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %28 = icmp ne %struct.TYPE_10__* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %10
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %21, align 4
  br label %34

33:                                               ; preds = %10
  store i32 0, i32* %21, align 4
  br label %34

34:                                               ; preds = %33, %29
  %35 = load i32, i32* %21, align 4
  switch i32 %35, label %205 [
    i32 0, label %36
    i32 2, label %45
    i32 3, label %120
  ]

36:                                               ; preds = %34
  %37 = load i32, i32* %20, align 4
  %38 = call i32 @SET_FOREGROUND(i32 %37)
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @DRAW_ELLIPSE(i32 %39, i32 %40, i32 %41, i32 %42, i32 %43)
  br label %210

45:                                               ; preds = %34
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %47 = load i32, i32* @hatch_patterns, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %52, 8
  %54 = add nsw i32 %47, %53
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i32*
  %57 = call i32 @ui_create_glyph(%struct.TYPE_9__* %46, i32 8, i32 8, i32* %56)
  store i32 %57, i32* %24, align 4
  %58 = load i32, i32* %20, align 4
  %59 = call i32 @SET_FOREGROUND(i32 %58)
  %60 = load i32, i32* %19, align 4
  %61 = call i32 @SET_BACKGROUND(i32 %60)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @FillOpaqueStippled, align 4
  %70 = call i32 @XSetFillStyle(i32 %64, i32 %68, i32 %69)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %24, align 4
  %79 = call i32 @XSetStipple(i32 %73, i32 %77, i32 %78)
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @XSetTSOrigin(i32 %82, i32 %86, i32 %89, i32 %92)
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @DRAW_ELLIPSE(i32 %94, i32 %95, i32 %96, i32 %97, i32 %98)
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @FillSolid, align 4
  %108 = call i32 @XSetFillStyle(i32 %102, i32 %106, i32 %107)
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @XSetTSOrigin(i32 %111, i32 %115, i32 0, i32 0)
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %118 = load i32, i32* %24, align 4
  %119 = call i32 @ui_destroy_glyph(%struct.TYPE_9__* %117, i32 %118)
  br label %210

120:                                              ; preds = %34
  store i32 0, i32* %22, align 4
  br label %121

121:                                              ; preds = %136, %120
  %122 = load i32, i32* %22, align 4
  %123 = icmp ne i32 %122, 8
  br i1 %123, label %124, label %139

124:                                              ; preds = %121
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %22, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %22, align 4
  %133 = sub nsw i32 7, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 %134
  store i32 %131, i32* %135, align 4
  br label %136

136:                                              ; preds = %124
  %137 = load i32, i32* %22, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %22, align 4
  br label %121

139:                                              ; preds = %121
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  %142 = call i32 @ui_create_glyph(%struct.TYPE_9__* %140, i32 8, i32 8, i32* %141)
  store i32 %142, i32* %24, align 4
  %143 = load i32, i32* %19, align 4
  %144 = call i32 @SET_FOREGROUND(i32 %143)
  %145 = load i32, i32* %20, align 4
  %146 = call i32 @SET_BACKGROUND(i32 %145)
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @FillOpaqueStippled, align 4
  %155 = call i32 @XSetFillStyle(i32 %149, i32 %153, i32 %154)
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %24, align 4
  %164 = call i32 @XSetStipple(i32 %158, i32 %162, i32 %163)
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @XSetTSOrigin(i32 %167, i32 %171, i32 %174, i32 %177)
  %179 = load i32, i32* %14, align 4
  %180 = load i32, i32* %15, align 4
  %181 = load i32, i32* %16, align 4
  %182 = load i32, i32* %17, align 4
  %183 = load i32, i32* %13, align 4
  %184 = call i32 @DRAW_ELLIPSE(i32 %179, i32 %180, i32 %181, i32 %182, i32 %183)
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @FillSolid, align 4
  %193 = call i32 @XSetFillStyle(i32 %187, i32 %191, i32 %192)
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @XSetTSOrigin(i32 %196, i32 %200, i32 0, i32 0)
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %203 = load i32, i32* %24, align 4
  %204 = call i32 @ui_destroy_glyph(%struct.TYPE_9__* %202, i32 %203)
  br label %210

205:                                              ; preds = %34
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @unimpl(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %208)
  br label %210

210:                                              ; preds = %205, %139, %45, %36
  %211 = load i32, i32* %12, align 4
  %212 = call i32 @RESET_FUNCTION(i32 %211)
  ret void
}

declare dso_local i32 @SET_FUNCTION(i32) #1

declare dso_local i32 @SET_FOREGROUND(i32) #1

declare dso_local i32 @DRAW_ELLIPSE(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ui_create_glyph(%struct.TYPE_9__*, i32, i32, i32*) #1

declare dso_local i32 @SET_BACKGROUND(i32) #1

declare dso_local i32 @XSetFillStyle(i32, i32, i32) #1

declare dso_local i32 @XSetStipple(i32, i32, i32) #1

declare dso_local i32 @XSetTSOrigin(i32, i32, i32, i32) #1

declare dso_local i32 @ui_destroy_glyph(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @unimpl(i8*, i32) #1

declare dso_local i32 @RESET_FUNCTION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
