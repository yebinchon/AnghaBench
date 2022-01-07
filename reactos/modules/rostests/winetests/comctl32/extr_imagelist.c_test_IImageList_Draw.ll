; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_test_IImageList_Draw.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_test_IImageList_Draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i8*, i8*, i32, i64, i32*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"couldn't get DC\0A\00", align 1
@ILC_COLOR16 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to create imagelist\0A\00", align 1
@bitmap_bits = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"no bitmap 1\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"no bitmap 2\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"no bitmap 3\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"failed to add bitmap 1\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"failed to add bitmap 2\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Setimage count failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"failed to replace bitmap 3\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@IMAGELISTDRAWPARAMS_V3_SIZE = common dso_local global i32 0, align 4
@SRCCOPY = common dso_local global i32 0, align 4
@CLR_DEFAULT = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [16 x i8] c"should succeed\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"should fail\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"removing 1st bitmap\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"removing 2nd bitmap\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"removing 3rd bitmap\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"bitmap 1 can't be deleted\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"bitmap 2 can't be deleted\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"bitmap 3 can't be deleted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_IImageList_Draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_IImageList_Draw() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = call i32 (...) @create_window()
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32* @GetDC(i32 %12)
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ILC_COLOR16, align 4
  %19 = call i64 @pImageList_Create(i32 48, i32 48, i32 %18, i32 0, i32 3)
  store i64 %19, i64* %2, align 8
  %20 = load i64, i64* %2, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i64, i64* %2, align 8
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %1, align 8
  %26 = load i32, i32* @bitmap_bits, align 4
  %27 = call i64 @CreateBitmap(i32 48, i32 48, i32 1, i32 1, i32 %26)
  store i64 %27, i64* %3, align 8
  %28 = load i64, i64* %3, align 8
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32, i32* @bitmap_bits, align 4
  %33 = call i64 @CreateBitmap(i32 48, i32 48, i32 1, i32 1, i32 %32)
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %4, align 8
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i32, i32* @bitmap_bits, align 4
  %39 = call i64 @CreateBitmap(i32 48, i32 48, i32 1, i32 1, i32 %38)
  store i64 %39, i64* %5, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  %44 = load i32*, i32** %1, align 8
  %45 = load i64, i64* %3, align 8
  %46 = call i64 @IImageList_Add(i32* %44, i64 %45, i32 0, i32* %10)
  %47 = load i64, i64* @S_OK, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %0
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %50, 0
  br label %52

52:                                               ; preds = %49, %0
  %53 = phi i1 [ false, %0 ], [ %51, %49 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  %56 = load i32*, i32** %1, align 8
  %57 = load i64, i64* %4, align 8
  %58 = call i64 @IImageList_Add(i32* %56, i64 %57, i32 0, i32* %10)
  %59 = load i64, i64* @S_OK, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load i32, i32* %10, align 4
  %63 = icmp eq i32 %62, 1
  br label %64

64:                                               ; preds = %61, %52
  %65 = phi i1 [ false, %52 ], [ %63, %61 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %68 = load i32*, i32** %1, align 8
  %69 = call i64 @IImageList_SetImageCount(i32* %68, i32 3)
  %70 = load i64, i64* @S_OK, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %74 = load i32*, i32** %1, align 8
  %75 = load i64, i64* %5, align 8
  %76 = call i64 @IImageList_Replace(i32* %74, i32 2, i64 %75, i32 0)
  %77 = load i64, i64* @S_OK, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %81 = call i32 @memset(%struct.TYPE_4__* %6, i32 0, i32 64)
  %82 = load i32*, i32** %1, align 8
  %83 = call i64 @IImageList_Draw(i32* %82, %struct.TYPE_4__* %6)
  store i64 %83, i64* %8, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* @E_INVALIDARG, align 8
  %86 = icmp eq i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = load i64, i64* %8, align 8
  %89 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i64 %88)
  %90 = load i32, i32* @IMAGELISTDRAWPARAMS_V3_SIZE, align 4
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 8
  store i32 %90, i32* %91, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 7
  store i32* %92, i32** %93, align 8
  %94 = load i64, i64* %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 6
  store i64 %94, i64* %95, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @force_redraw(i32 %96)
  %98 = load i32, i32* @SRCCOPY, align 4
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 5
  store i32 %98, i32* %99, align 8
  %100 = load i8*, i8** @CLR_DEFAULT, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 4
  store i8* %100, i8** %101, align 8
  %102 = load i8*, i8** @CLR_DEFAULT, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  store i8* %102, i8** %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 100, i32* %104, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i32 100, i32* %105, align 4
  %106 = load i32*, i32** %1, align 8
  %107 = call i64 @IImageList_Draw(i32* %106, %struct.TYPE_4__* %6)
  %108 = load i64, i64* @S_OK, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 8
  %115 = load i32*, i32** %1, align 8
  %116 = call i64 @IImageList_Draw(i32* %115, %struct.TYPE_4__* %6)
  %117 = load i64, i64* @S_OK, align 8
  %118 = icmp eq i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 8
  %124 = load i32*, i32** %1, align 8
  %125 = call i64 @IImageList_Draw(i32* %124, %struct.TYPE_4__* %6)
  %126 = load i64, i64* @S_OK, align 8
  %127 = icmp eq i64 %125, %126
  %128 = zext i1 %127 to i32
  %129 = call i32 (i32, i8*, ...) @ok(i32 %128, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 8
  %133 = load i32*, i32** %1, align 8
  %134 = call i64 @IImageList_Draw(i32* %133, %struct.TYPE_4__* %6)
  %135 = load i64, i64* @E_INVALIDARG, align 8
  %136 = icmp eq i64 %134, %135
  %137 = zext i1 %136 to i32
  %138 = call i32 (i32, i8*, ...) @ok(i32 %137, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %139 = load i32*, i32** %1, align 8
  %140 = call i64 @IImageList_Remove(i32* %139, i32 0)
  %141 = load i64, i64* @S_OK, align 8
  %142 = icmp eq i64 %140, %141
  %143 = zext i1 %142 to i32
  %144 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  %145 = load i32*, i32** %1, align 8
  %146 = call i64 @IImageList_Remove(i32* %145, i32 0)
  %147 = load i64, i64* @S_OK, align 8
  %148 = icmp eq i64 %146, %147
  %149 = zext i1 %148 to i32
  %150 = call i32 (i32, i8*, ...) @ok(i32 %149, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  %151 = load i32*, i32** %1, align 8
  %152 = call i64 @IImageList_Remove(i32* %151, i32 0)
  %153 = load i64, i64* @S_OK, align 8
  %154 = icmp eq i64 %152, %153
  %155 = zext i1 %154 to i32
  %156 = call i32 (i32, i8*, ...) @ok(i32 %155, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  %157 = load i32*, i32** %1, align 8
  %158 = call i32 @IImageList_Release(i32* %157)
  %159 = load i64, i64* %3, align 8
  %160 = call i32 @DeleteObject(i64 %159)
  %161 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0))
  %162 = load i64, i64* %4, align 8
  %163 = call i32 @DeleteObject(i64 %162)
  %164 = call i32 (i32, i8*, ...) @ok(i32 %163, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0))
  %165 = load i64, i64* %5, align 8
  %166 = call i32 @DeleteObject(i64 %165)
  %167 = call i32 (i32, i8*, ...) @ok(i32 %166, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0))
  %168 = load i32, i32* %7, align 4
  %169 = load i32*, i32** %9, align 8
  %170 = call i32 @ReleaseDC(i32 %168, i32* %169)
  %171 = load i32, i32* %7, align 4
  %172 = call i32 @DestroyWindow(i32 %171)
  ret void
}

declare dso_local i32 @create_window(...) #1

declare dso_local i32* @GetDC(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @pImageList_Create(i32, i32, i32, i32, i32) #1

declare dso_local i64 @CreateBitmap(i32, i32, i32, i32, i32) #1

declare dso_local i64 @IImageList_Add(i32*, i64, i32, i32*) #1

declare dso_local i64 @IImageList_SetImageCount(i32*, i32) #1

declare dso_local i64 @IImageList_Replace(i32*, i32, i64, i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @IImageList_Draw(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @force_redraw(i32) #1

declare dso_local i64 @IImageList_Remove(i32*, i32) #1

declare dso_local i32 @IImageList_Release(i32*) #1

declare dso_local i32 @DeleteObject(i64) #1

declare dso_local i32 @ReleaseDC(i32, i32*) #1

declare dso_local i32 @DestroyWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
