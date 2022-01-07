; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_ncscrollbar.c_SCROLL_DrawInterior.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_ncscrollbar.c_SCROLL_DrawInterior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i8*, i8* }
%struct.TYPE_12__ = type { i8*, i8* }
%struct.TYPE_15__ = type { i64, i64, i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i64, i64, i64 }

@SBP_UPPERTRACKVERT = common dso_local global i32 0, align 4
@SBP_UPPERTRACKHORZ = common dso_local global i32 0, align 4
@BUTTON_NORMAL = common dso_local global i32 0, align 4
@SCROLL_THUMB = common dso_local global i32 0, align 4
@SBP_LOWERTRACKVERT = common dso_local global i32 0, align 4
@SCROLL_TOP_RECT = common dso_local global i32 0, align 4
@SCROLL_BOTTOM_RECT = common dso_local global i32 0, align 4
@SBP_THUMBBTNVERT = common dso_local global i32 0, align 4
@SBP_GRIPPERVERT = common dso_local global i32 0, align 4
@SBP_LOWERTRACKHORZ = common dso_local global i32 0, align 4
@SBP_THUMBBTNHORZ = common dso_local global i32 0, align 4
@SBP_GRIPPERHORZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_15__*, i8*, i64, i32, i32)* @SCROLL_DrawInterior to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SCROLL_DrawInterior(%struct.TYPE_17__* %0, %struct.TYPE_15__* %1, i8* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_16__, align 8
  %14 = alloca %struct.TYPE_16__, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 3
  %17 = bitcast %struct.TYPE_16__* %13 to i8*
  %18 = bitcast %struct.TYPE_16__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 32, i1 false)
  %19 = load i64, i64* %10, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %53

21:                                               ; preds = %6
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = ptrtoint i8* %29 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr i8, i8* %38, i64 %37
  store i8* %39, i8** %9, align 8
  br label %40

40:                                               ; preds = %24, %21
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, %43
  store i64 %46, i64* %44, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %51, %49
  store i64 %52, i64* %50, align 8
  br label %85

53:                                               ; preds = %6
  %54 = load i8*, i8** %9, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %72

56:                                               ; preds = %53
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = ptrtoint i8* %61 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = load i8*, i8** %9, align 8
  %71 = getelementptr i8, i8* %70, i64 %69
  store i8* %71, i8** %9, align 8
  br label %72

72:                                               ; preds = %56, %53
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, %75
  store i64 %78, i64* %76, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %83, %81
  store i64 %84, i64* %82, align 8
  br label %85

85:                                               ; preds = %72, %40
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp sle i64 %87, %89
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp sle i64 %93, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91, %85
  br label %232

98:                                               ; preds = %91
  %99 = load i8*, i8** %9, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %117, label %101

101:                                              ; preds = %98
  %102 = bitcast %struct.TYPE_16__* %14 to i8*
  %103 = bitcast %struct.TYPE_16__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %102, i8* align 8 %103, i64 32, i1 false)
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %105 = load i64, i64* %10, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* @SBP_UPPERTRACKVERT, align 4
  br label %111

109:                                              ; preds = %101
  %110 = load i32, i32* @SBP_UPPERTRACKHORZ, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  %113 = load i32, i32* @BUTTON_NORMAL, align 4
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %115 = load i32, i32* @SCROLL_THUMB, align 4
  %116 = call i32 @SCROLL_ThemeDrawPart(%struct.TYPE_17__* %104, i32 %112, i32 %113, %struct.TYPE_15__* %114, i32 %115, i32 0, i32 0, %struct.TYPE_16__* %14)
  br label %232

117:                                              ; preds = %98
  %118 = load i64, i64* %10, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %176

120:                                              ; preds = %117
  %121 = bitcast %struct.TYPE_16__* %14 to i8*
  %122 = bitcast %struct.TYPE_16__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %121, i8* align 8 %122, i64 32, i1 false)
  %123 = load i8*, i8** %9, align 8
  %124 = ptrtoint i8* %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  store i64 %124, i64* %125, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %127 = load i32, i32* @SBP_LOWERTRACKVERT, align 4
  %128 = load i32, i32* @BUTTON_NORMAL, align 4
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %130 = load i32, i32* @SCROLL_TOP_RECT, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %12, align 4
  %133 = call i32 @SCROLL_ThemeDrawPart(%struct.TYPE_17__* %126, i32 %127, i32 %128, %struct.TYPE_15__* %129, i32 %130, i32 %131, i32 %132, %struct.TYPE_16__* %14)
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %135, i64* %136, align 8
  %137 = bitcast %struct.TYPE_16__* %14 to i8*
  %138 = bitcast %struct.TYPE_16__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %137, i8* align 8 %138, i64 32, i1 false)
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = sub nsw i64 %141, %144
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %147, %145
  store i64 %148, i64* %146, align 8
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %150 = load i32, i32* @SBP_UPPERTRACKVERT, align 4
  %151 = load i32, i32* @BUTTON_NORMAL, align 4
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %153 = load i32, i32* @SCROLL_BOTTOM_RECT, align 4
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* %12, align 4
  %156 = call i32 @SCROLL_ThemeDrawPart(%struct.TYPE_17__* %149, i32 %150, i32 %151, %struct.TYPE_15__* %152, i32 %153, i32 %154, i32 %155, %struct.TYPE_16__* %14)
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  store i64 %158, i64* %159, align 8
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %161 = load i32, i32* @SBP_THUMBBTNVERT, align 4
  %162 = load i32, i32* @BUTTON_NORMAL, align 4
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %164 = load i32, i32* @SCROLL_THUMB, align 4
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* %12, align 4
  %167 = call i32 @SCROLL_ThemeDrawPart(%struct.TYPE_17__* %160, i32 %161, i32 %162, %struct.TYPE_15__* %163, i32 %164, i32 %165, i32 %166, %struct.TYPE_16__* %13)
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %169 = load i32, i32* @SBP_GRIPPERVERT, align 4
  %170 = load i32, i32* @BUTTON_NORMAL, align 4
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %172 = load i32, i32* @SCROLL_THUMB, align 4
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* %12, align 4
  %175 = call i32 @SCROLL_ThemeDrawPart(%struct.TYPE_17__* %168, i32 %169, i32 %170, %struct.TYPE_15__* %171, i32 %172, i32 %173, i32 %174, %struct.TYPE_16__* %13)
  br label %232

176:                                              ; preds = %117
  %177 = bitcast %struct.TYPE_16__* %14 to i8*
  %178 = bitcast %struct.TYPE_16__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %177, i8* align 8 %178, i64 32, i1 false)
  %179 = load i8*, i8** %9, align 8
  %180 = ptrtoint i8* %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 3
  store i64 %180, i64* %181, align 8
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %183 = load i32, i32* @SBP_LOWERTRACKHORZ, align 4
  %184 = load i32, i32* @BUTTON_NORMAL, align 4
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %186 = load i32, i32* @SCROLL_TOP_RECT, align 4
  %187 = load i32, i32* %11, align 4
  %188 = load i32, i32* %12, align 4
  %189 = call i32 @SCROLL_ThemeDrawPart(%struct.TYPE_17__* %182, i32 %183, i32 %184, %struct.TYPE_15__* %185, i32 %186, i32 %187, i32 %188, %struct.TYPE_16__* %14)
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  store i64 %191, i64* %192, align 8
  %193 = bitcast %struct.TYPE_16__* %14 to i8*
  %194 = bitcast %struct.TYPE_16__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %193, i8* align 8 %194, i64 32, i1 false)
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = sub nsw i64 %197, %200
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = add nsw i64 %203, %201
  store i64 %204, i64* %202, align 8
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %206 = load i32, i32* @SBP_UPPERTRACKHORZ, align 4
  %207 = load i32, i32* @BUTTON_NORMAL, align 4
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %209 = load i32, i32* @SCROLL_BOTTOM_RECT, align 4
  %210 = load i32, i32* %11, align 4
  %211 = load i32, i32* %12, align 4
  %212 = call i32 @SCROLL_ThemeDrawPart(%struct.TYPE_17__* %205, i32 %206, i32 %207, %struct.TYPE_15__* %208, i32 %209, i32 %210, i32 %211, %struct.TYPE_16__* %14)
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 3
  store i64 %214, i64* %215, align 8
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %217 = load i32, i32* @SBP_THUMBBTNHORZ, align 4
  %218 = load i32, i32* @BUTTON_NORMAL, align 4
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %220 = load i32, i32* @SCROLL_THUMB, align 4
  %221 = load i32, i32* %11, align 4
  %222 = load i32, i32* %12, align 4
  %223 = call i32 @SCROLL_ThemeDrawPart(%struct.TYPE_17__* %216, i32 %217, i32 %218, %struct.TYPE_15__* %219, i32 %220, i32 %221, i32 %222, %struct.TYPE_16__* %13)
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %225 = load i32, i32* @SBP_GRIPPERHORZ, align 4
  %226 = load i32, i32* @BUTTON_NORMAL, align 4
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %228 = load i32, i32* @SCROLL_THUMB, align 4
  %229 = load i32, i32* %11, align 4
  %230 = load i32, i32* %12, align 4
  %231 = call i32 @SCROLL_ThemeDrawPart(%struct.TYPE_17__* %224, i32 %225, i32 %226, %struct.TYPE_15__* %227, i32 %228, i32 %229, i32 %230, %struct.TYPE_16__* %13)
  br label %232

232:                                              ; preds = %97, %111, %176, %120
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @SCROLL_ThemeDrawPart(%struct.TYPE_17__*, i32, i32, %struct.TYPE_15__*, i32, i32, i32, %struct.TYPE_16__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
