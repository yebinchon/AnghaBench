; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_button.c_test_get_set_imagelist.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_button.c_test_get_set_imagelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Expect hbmp not null\0A\00", align 1
@ILC_COLOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Expect himl not null\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Expect index == 0\0A\00", align 1
@BS_PUSHBUTTON = common dso_local global i64 0, align 8
@BS_DEFCOMMANDLINK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"Expect hwnd not null\0A\00", align 1
@BCM_GETIMAGELIST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Expect BCM_GETIMAGELIST return true\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Expect BUTTON_IMAGELIST is empty\0A\00", align 1
@BUTTON_IMAGELIST_ALIGN_CENTER = common dso_local global i8* null, align 8
@BCM_SETIMAGELIST = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"Expect BCM_SETIMAGELIST return true\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Expect himl to be same\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Expect uAlign to be %x\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Expect BCM_SETIMAGELIST return false\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Expect BCM_GETIMAGELIST return false\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_get_set_imagelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_get_set_imagelist() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_2__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = bitcast %struct.TYPE_2__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  store i64 16, i64* %6, align 8
  store i64 16, i64* %7, align 8
  %12 = call i32 @GetDC(i32 0)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32* @CreateCompatibleBitmap(i32 %13, i64 %14, i64 %15)
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* @ILC_COLOR, align 4
  %24 = call i32* @pImageList_Create(i64 %21, i64 %22, i32 %23, i32 1, i32 0)
  store i32* %24, i32** %2, align 8
  %25 = load i32*, i32** %2, align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32*, i32** %2, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i64 @pImageList_Add(i32* %29, i32* %30, i32* null)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @DeleteObject(i32* %36)
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @ReleaseDC(i32 0, i32 %38)
  %40 = load i64, i64* @BS_PUSHBUTTON, align 8
  store i64 %40, i64* %9, align 8
  br label %41

41:                                               ; preds = %176, %0
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* @BS_DEFCOMMANDLINK, align 8
  %44 = icmp sle i64 %42, %43
  br i1 %44, label %45, label %179

45:                                               ; preds = %41
  %46 = load i64, i64* %9, align 8
  %47 = call i32* @create_button(i64 %46, i32* null)
  store i32* %47, i32** %1, align 8
  %48 = load i32*, i32** %1, align 8
  %49 = icmp ne i32* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i32*, i32** %1, align 8
  %53 = load i32, i32* @BCM_GETIMAGELIST, align 4
  %54 = ptrtoint %struct.TYPE_2__* %3 to i32
  %55 = call i32 @SendMessageA(i32* %52, i32 %53, i32 0, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %45
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 2
  %63 = call i64 @IsRectEmpty(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 0
  br label %69

69:                                               ; preds = %65, %61, %45
  %70 = phi i1 [ false, %61 ], [ false, %45 ], [ %68, %65 ]
  %71 = zext i1 %70 to i32
  %72 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 1
  store i32* null, i32** %73, align 8
  %74 = load i8*, i8** @BUTTON_IMAGELIST_ALIGN_CENTER, align 8
  %75 = ptrtoint i8* %74 to i32
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  store i32 %75, i32* %76, align 8
  %77 = load i32*, i32** %1, align 8
  %78 = load i32, i32* @BCM_SETIMAGELIST, align 4
  %79 = ptrtoint %struct.TYPE_2__* %3 to i32
  %80 = call i32 @SendMessageA(i32* %77, i32 %78, i32 0, i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %69
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = call i64 @broken(i32 %87)
  %89 = icmp ne i64 %88, 0
  br label %90

90:                                               ; preds = %83, %69
  %91 = phi i1 [ true, %69 ], [ %89, %83 ]
  %92 = zext i1 %91 to i32
  %93 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %94 = load i32*, i32** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 1
  store i32* %94, i32** %95, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  store i32 -1, i32* %96, align 8
  %97 = load i32*, i32** %1, align 8
  %98 = load i32, i32* @BCM_SETIMAGELIST, align 4
  %99 = ptrtoint %struct.TYPE_2__* %3 to i32
  %100 = call i32 @SendMessageA(i32* %97, i32 %98, i32 0, i32 %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %103 = load i32*, i32** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 1
  store i32* %103, i32** %104, align 8
  %105 = load i8*, i8** @BUTTON_IMAGELIST_ALIGN_CENTER, align 8
  %106 = ptrtoint i8* %105 to i32
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  store i32 %106, i32* %107, align 8
  %108 = load i32*, i32** %1, align 8
  %109 = load i32, i32* @BCM_SETIMAGELIST, align 4
  %110 = ptrtoint %struct.TYPE_2__* %3 to i32
  %111 = call i32 @SendMessageA(i32* %108, i32 %109, i32 0, i32 %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %114 = load i32*, i32** %1, align 8
  %115 = load i32, i32* @BCM_GETIMAGELIST, align 4
  %116 = ptrtoint %struct.TYPE_2__* %3 to i32
  %117 = call i32 @SendMessageA(i32* %114, i32 %115, i32 0, i32 %116)
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i32*, i32** %2, align 8
  %123 = icmp eq i32* %121, %122
  %124 = zext i1 %123 to i32
  %125 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = inttoptr i64 %128 to i8*
  %130 = load i8*, i8** @BUTTON_IMAGELIST_ALIGN_CENTER, align 8
  %131 = icmp eq i8* %129, %130
  %132 = zext i1 %131 to i32
  %133 = load i8*, i8** @BUTTON_IMAGELIST_ALIGN_CENTER, align 8
  %134 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %133)
  %135 = load i32*, i32** %1, align 8
  %136 = load i32, i32* @BCM_SETIMAGELIST, align 4
  %137 = call i32 @SendMessageA(i32* %135, i32 %136, i32 0, i32 0)
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  %142 = call i32 (i32, i8*, ...) @ok(i32 %141, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  %143 = load i32*, i32** %1, align 8
  %144 = load i32, i32* @BCM_GETIMAGELIST, align 4
  %145 = ptrtoint %struct.TYPE_2__* %3 to i32
  %146 = call i32 @SendMessageA(i32* %143, i32 %144, i32 0, i32 %145)
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = call i32 (i32, i8*, ...) @ok(i32 %147, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i32*, i32** %2, align 8
  %152 = icmp eq i32* %150, %151
  %153 = zext i1 %152 to i32
  %154 = call i32 (i32, i8*, ...) @ok(i32 %153, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %155 = load i32*, i32** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 1
  store i32* %155, i32** %156, align 8
  %157 = load i8*, i8** @BUTTON_IMAGELIST_ALIGN_CENTER, align 8
  %158 = ptrtoint i8* %157 to i32
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  store i32 %158, i32* %159, align 8
  %160 = load i32*, i32** %1, align 8
  %161 = load i32, i32* @BCM_SETIMAGELIST, align 4
  %162 = ptrtoint %struct.TYPE_2__* %3 to i32
  %163 = call i32 @SendMessageA(i32* %160, i32 %161, i32 0, i32 %162)
  store i32 %163, i32* %10, align 4
  %164 = load i32, i32* %10, align 4
  %165 = call i32 (i32, i8*, ...) @ok(i32 %164, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %166 = load i32*, i32** %1, align 8
  %167 = load i32, i32* @BCM_GETIMAGELIST, align 4
  %168 = call i32 @SendMessageA(i32* %166, i32 %167, i32 0, i32 0)
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* %10, align 4
  %170 = icmp ne i32 %169, 0
  %171 = xor i1 %170, true
  %172 = zext i1 %171 to i32
  %173 = call i32 (i32, i8*, ...) @ok(i32 %172, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0))
  %174 = load i32*, i32** %1, align 8
  %175 = call i32 @DestroyWindow(i32* %174)
  br label %176

176:                                              ; preds = %90
  %177 = load i64, i64* %9, align 8
  %178 = add nsw i64 %177, 1
  store i64 %178, i64* %9, align 8
  br label %41

179:                                              ; preds = %41
  %180 = load i32*, i32** %2, align 8
  %181 = call i32 @pImageList_Destroy(i32* %180)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @GetDC(i32) #2

declare dso_local i32* @CreateCompatibleBitmap(i32, i64, i64) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32* @pImageList_Create(i64, i64, i32, i32, i32) #2

declare dso_local i64 @pImageList_Add(i32*, i32*, i32*) #2

declare dso_local i32 @DeleteObject(i32*) #2

declare dso_local i32 @ReleaseDC(i32, i32) #2

declare dso_local i32* @create_button(i64, i32*) #2

declare dso_local i32 @SendMessageA(i32*, i32, i32, i32) #2

declare dso_local i64 @IsRectEmpty(i32*) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @DestroyWindow(i32*) #2

declare dso_local i32 @pImageList_Destroy(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
