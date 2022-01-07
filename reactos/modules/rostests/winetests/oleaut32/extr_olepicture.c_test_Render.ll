; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olepicture.c_test_Render.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olepicture.c_test_Render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@IID_IPicture = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to create a picture, hr %#x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"IPicture_get_Type does not return S_OK, but 0x%08x\0A\00", align 1
@PICTYPE_UNINITIALIZED = common dso_local global i16 0, align 2
@.str.2 = private unnamed_addr constant [49 x i8] c"Expected type = PICTYPE_UNINITIALIZED, got = %d\0A\00", align 1
@CTL_E_INVALIDPROPERTYVALUE = common dso_local global i32 0, align 4
@PICTYPE_ICON = common dso_local global i32 0, align 4
@IDI_APPLICATION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"LoadIcon failed. Skipping...\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"Color at 0,0 should be unchanged 0x%06X, but was 0x%06X\0A\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"Color at 5,5 should have changed, but still was 0x%06X\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"Color at 10,10 should be unchanged 0x%06X, but was 0x%06X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_Render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_Render() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = call i32 (...) @create_render_dc()
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* @TRUE, align 4
  %12 = bitcast i32** %1 to i8**
  %13 = call i32 @OleCreatePictureIndirect(%struct.TYPE_5__* null, i32* @IID_IPicture, i32 %11, i8** %12)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @S_OK, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %2, align 4
  %19 = trunc i32 %18 to i16
  %20 = call i32 (i32, i8*, i16, ...) @ok(i32 %17, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i16 signext %19)
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @IPicture_get_Type(i32* %21, i16* %3)
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @S_OK, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %2, align 4
  %28 = trunc i32 %27 to i16
  %29 = call i32 (i32, i8*, i16, ...) @ok(i32 %26, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i16 signext %28)
  %30 = load i16, i16* %3, align 2
  %31 = sext i16 %30 to i32
  %32 = load i16, i16* @PICTYPE_UNINITIALIZED, align 2
  %33 = sext i16 %32 to i32
  %34 = icmp eq i32 %31, %33
  %35 = zext i1 %34 to i32
  %36 = load i16, i16* %3, align 2
  %37 = call i32 (i32, i8*, i16, ...) @ok(i32 %35, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i16 signext %36)
  %38 = load i32*, i32** %1, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @picture_render(i32* %38, i32 %39, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32* null)
  store i32 %40, i32* %2, align 4
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @CTL_E_INVALIDPROPERTYVALUE, align 4
  %43 = call i32 @ole_expect(i32 %41, i32 %42)
  %44 = load i32*, i32** %1, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @picture_render(i32* %44, i32 %45, i32 0, i32 0, i32 10, i32 10, i32 0, i32 0, i32 10, i32 0, i32* null)
  store i32 %46, i32* %2, align 4
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @CTL_E_INVALIDPROPERTYVALUE, align 4
  %49 = call i32 @ole_expect(i32 %47, i32 %48)
  %50 = load i32*, i32** %1, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @picture_render(i32* %50, i32 %51, i32 0, i32 0, i32 10, i32 10, i32 0, i32 0, i32 0, i32 10, i32* null)
  store i32 %52, i32* %2, align 4
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* @CTL_E_INVALIDPROPERTYVALUE, align 4
  %55 = call i32 @ole_expect(i32 %53, i32 %54)
  %56 = load i32*, i32** %1, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @picture_render(i32* %56, i32 %57, i32 0, i32 0, i32 10, i32 10, i32 0, i32 0, i32 0, i32 0, i32* null)
  store i32 %58, i32* %2, align 4
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* @CTL_E_INVALIDPROPERTYVALUE, align 4
  %61 = call i32 @ole_expect(i32 %59, i32 %60)
  %62 = load i32*, i32** %1, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @picture_render(i32* %62, i32 %63, i32 0, i32 0, i32 0, i32 10, i32 0, i32 0, i32 10, i32 10, i32* null)
  store i32 %64, i32* %2, align 4
  %65 = load i32, i32* %2, align 4
  %66 = load i32, i32* @CTL_E_INVALIDPROPERTYVALUE, align 4
  %67 = call i32 @ole_expect(i32 %65, i32 %66)
  %68 = load i32*, i32** %1, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @picture_render(i32* %68, i32 %69, i32 0, i32 0, i32 10, i32 0, i32 0, i32 0, i32 10, i32 10, i32* null)
  store i32 %70, i32* %2, align 4
  %71 = load i32, i32* %2, align 4
  %72 = load i32, i32* @CTL_E_INVALIDPROPERTYVALUE, align 4
  %73 = call i32 @ole_expect(i32 %71, i32 %72)
  %74 = load i32*, i32** %1, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @picture_render(i32* %74, i32 %75, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 10, i32* null)
  store i32 %76, i32* %2, align 4
  %77 = load i32, i32* %2, align 4
  %78 = load i32, i32* @CTL_E_INVALIDPROPERTYVALUE, align 4
  %79 = call i32 @ole_expect(i32 %77, i32 %78)
  %80 = load i32*, i32** %1, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @picture_render(i32* %80, i32 %81, i32 0, i32 0, i32 10, i32 10, i32 0, i32 0, i32 10, i32 10, i32* null)
  store i32 %82, i32* %2, align 4
  %83 = load i32, i32* %2, align 4
  %84 = load i32, i32* @S_OK, align 4
  %85 = call i32 @ole_expect(i32 %83, i32 %84)
  %86 = load i32*, i32** %1, align 8
  %87 = call i32 @IPicture_Release(i32* %86)
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i32 12, i32* %88, align 4
  %89 = load i32, i32* @PICTYPE_ICON, align 4
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  store i32 %89, i32* %90, align 4
  %91 = load i64, i64* @IDI_APPLICATION, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i32 @LoadIconA(i32* null, i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %0
  %101 = call i32 @win_skip(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @delete_render_dc(i32 %102)
  br label %218

104:                                              ; preds = %0
  %105 = load i32, i32* @TRUE, align 4
  %106 = bitcast i32** %1 to i8**
  %107 = call i32 @OleCreatePictureIndirect(%struct.TYPE_5__* %4, i32* @IID_IPicture, i32 %105, i8** %106)
  store i32 %107, i32* %2, align 4
  %108 = load i32, i32* %2, align 4
  %109 = load i32, i32* @S_OK, align 4
  %110 = icmp eq i32 %108, %109
  %111 = zext i1 %110 to i32
  %112 = load i32, i32* %2, align 4
  %113 = trunc i32 %112 to i16
  %114 = call i32 (i32, i8*, i16, ...) @ok(i32 %111, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i16 signext %113)
  %115 = load i32*, i32** %1, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @picture_render(i32* %115, i32 %116, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32* null)
  store i32 %117, i32* %2, align 4
  %118 = load i32, i32* %2, align 4
  %119 = load i32, i32* @CTL_E_INVALIDPROPERTYVALUE, align 4
  %120 = call i32 @ole_expect(i32 %118, i32 %119)
  %121 = load i32*, i32** %1, align 8
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @picture_render(i32* %121, i32 %122, i32 0, i32 0, i32 10, i32 10, i32 0, i32 0, i32 10, i32 0, i32* null)
  store i32 %123, i32* %2, align 4
  %124 = load i32, i32* %2, align 4
  %125 = load i32, i32* @CTL_E_INVALIDPROPERTYVALUE, align 4
  %126 = call i32 @ole_expect(i32 %124, i32 %125)
  %127 = load i32*, i32** %1, align 8
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @picture_render(i32* %127, i32 %128, i32 0, i32 0, i32 10, i32 10, i32 0, i32 0, i32 0, i32 10, i32* null)
  store i32 %129, i32* %2, align 4
  %130 = load i32, i32* %2, align 4
  %131 = load i32, i32* @CTL_E_INVALIDPROPERTYVALUE, align 4
  %132 = call i32 @ole_expect(i32 %130, i32 %131)
  %133 = load i32*, i32** %1, align 8
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @picture_render(i32* %133, i32 %134, i32 0, i32 0, i32 10, i32 10, i32 0, i32 0, i32 0, i32 0, i32* null)
  store i32 %135, i32* %2, align 4
  %136 = load i32, i32* %2, align 4
  %137 = load i32, i32* @CTL_E_INVALIDPROPERTYVALUE, align 4
  %138 = call i32 @ole_expect(i32 %136, i32 %137)
  %139 = load i32*, i32** %1, align 8
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @picture_render(i32* %139, i32 %140, i32 0, i32 0, i32 0, i32 10, i32 0, i32 0, i32 10, i32 10, i32* null)
  store i32 %141, i32* %2, align 4
  %142 = load i32, i32* %2, align 4
  %143 = load i32, i32* @CTL_E_INVALIDPROPERTYVALUE, align 4
  %144 = call i32 @ole_expect(i32 %142, i32 %143)
  %145 = load i32*, i32** %1, align 8
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @picture_render(i32* %145, i32 %146, i32 0, i32 0, i32 10, i32 0, i32 0, i32 0, i32 10, i32 10, i32* null)
  store i32 %147, i32* %2, align 4
  %148 = load i32, i32* %2, align 4
  %149 = load i32, i32* @CTL_E_INVALIDPROPERTYVALUE, align 4
  %150 = call i32 @ole_expect(i32 %148, i32 %149)
  %151 = load i32*, i32** %1, align 8
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @picture_render(i32* %151, i32 %152, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 10, i32* null)
  store i32 %153, i32* %2, align 4
  %154 = load i32, i32* %2, align 4
  %155 = load i32, i32* @CTL_E_INVALIDPROPERTYVALUE, align 4
  %156 = call i32 @ole_expect(i32 %154, i32 %155)
  %157 = load i32*, i32** %1, align 8
  %158 = call i32 @IPicture_get_Width(i32* %157, i32* %5)
  %159 = load i32*, i32** %1, align 8
  %160 = call i32 @IPicture_get_Height(i32* %159, i32* %6)
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @SetPixelV(i32 %161, i32 0, i32 0, i32 2241348)
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @SetPixelV(i32 %163, i32 5, i32 5, i32 2241348)
  %165 = load i32, i32* %9, align 4
  %166 = call i32 @SetPixelV(i32 %165, i32 10, i32 10, i32 2241348)
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @GetPixel(i32 %167, i32 0, i32 0)
  store i32 %168, i32* %8, align 4
  %169 = load i32*, i32** %1, align 8
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* %6, align 4
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* %6, align 4
  %174 = sub nsw i32 0, %173
  %175 = call i32 @picture_render(i32* %169, i32 %170, i32 1, i32 1, i32 9, i32 9, i32 0, i32 %171, i32 %172, i32 %174, i32* null)
  store i32 %175, i32* %2, align 4
  %176 = load i32, i32* %2, align 4
  %177 = load i32, i32* @S_OK, align 4
  %178 = call i32 @ole_expect(i32 %176, i32 %177)
  %179 = load i32, i32* %2, align 4
  %180 = load i32, i32* @S_OK, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %104
  br label %213

183:                                              ; preds = %104
  %184 = load i32, i32* %9, align 4
  %185 = call i32 @GetPixel(i32 %184, i32 0, i32 0)
  store i32 %185, i32* %7, align 4
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* %8, align 4
  %188 = icmp eq i32 %186, %187
  %189 = zext i1 %188 to i32
  %190 = load i32, i32* %8, align 4
  %191 = trunc i32 %190 to i16
  %192 = load i32, i32* %7, align 4
  %193 = call i32 (i32, i8*, i16, ...) @ok(i32 %189, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i16 signext %191, i32 %192)
  %194 = load i32, i32* %9, align 4
  %195 = call i32 @GetPixel(i32 %194, i32 5, i32 5)
  store i32 %195, i32* %7, align 4
  %196 = load i32, i32* %7, align 4
  %197 = load i32, i32* %8, align 4
  %198 = icmp ne i32 %196, %197
  %199 = zext i1 %198 to i32
  %200 = load i32, i32* %8, align 4
  %201 = trunc i32 %200 to i16
  %202 = call i32 (i32, i8*, i16, ...) @ok(i32 %199, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i16 signext %201)
  %203 = load i32, i32* %9, align 4
  %204 = call i32 @GetPixel(i32 %203, i32 10, i32 10)
  store i32 %204, i32* %7, align 4
  %205 = load i32, i32* %7, align 4
  %206 = load i32, i32* %8, align 4
  %207 = icmp eq i32 %205, %206
  %208 = zext i1 %207 to i32
  %209 = load i32, i32* %8, align 4
  %210 = trunc i32 %209 to i16
  %211 = load i32, i32* %7, align 4
  %212 = call i32 (i32, i8*, i16, ...) @ok(i32 %208, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i16 signext %210, i32 %211)
  br label %213

213:                                              ; preds = %183, %182
  %214 = load i32*, i32** %1, align 8
  %215 = call i32 @IPicture_Release(i32* %214)
  %216 = load i32, i32* %9, align 4
  %217 = call i32 @delete_render_dc(i32 %216)
  br label %218

218:                                              ; preds = %213, %100
  ret void
}

declare dso_local i32 @create_render_dc(...) #1

declare dso_local i32 @OleCreatePictureIndirect(%struct.TYPE_5__*, i32*, i32, i8**) #1

declare dso_local i32 @ok(i32, i8*, i16 signext, ...) #1

declare dso_local i32 @IPicture_get_Type(i32*, i16*) #1

declare dso_local i32 @picture_render(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ole_expect(i32, i32) #1

declare dso_local i32 @IPicture_Release(i32*) #1

declare dso_local i32 @LoadIconA(i32*, i32) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @delete_render_dc(i32) #1

declare dso_local i32 @IPicture_get_Width(i32*, i32*) #1

declare dso_local i32 @IPicture_get_Height(i32*, i32*) #1

declare dso_local i32 @SetPixelV(i32, i32, i32, i32) #1

declare dso_local i32 @GetPixel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
