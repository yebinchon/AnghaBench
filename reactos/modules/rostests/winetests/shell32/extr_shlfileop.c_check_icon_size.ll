; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlfileop.c_check_icon_size.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlfileop.c_check_icon_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i64 }

@SHGFI_SMALLICON = common dso_local global i32 0, align 4
@SHIL_SMALL = common dso_local global i32 0, align 4
@SHIL_LARGE = common dso_local global i32 0, align 4
@IID_IImageList = common dso_local global i32 0, align 4
@SM_CXSMICON = common dso_local global i32 0, align 4
@SM_CXICON = common dso_local global i32 0, align 4
@SM_CYSMICON = common dso_local global i32 0, align 4
@SM_CYICON = common dso_local global i32 0, align 4
@SHGFI_SHELLICONSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"got %d expected %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @check_icon_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_icon_size(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__, align 4
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @GetIconInfo(i32 %10, %struct.TYPE_7__* %5)
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @GetObjectW(i32 %13, i32 16, %struct.TYPE_8__* %6)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @SHGFI_SMALLICON, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @SHIL_SMALL, align 4
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @SHIL_LARGE, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = bitcast i32** %9 to i8**
  %26 = call i32 @SHGetImageList(i32 %24, i32* @IID_IImageList, i8** %25)
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %30 = call i32 @IImageList_GetIconSize(i32* %27, i64* %28, i64* %29)
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @IImageList_Release(i32* %31)
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @SHGFI_SMALLICON, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %23
  %38 = load i32, i32* @SM_CXSMICON, align 4
  br label %41

39:                                               ; preds = %23
  %40 = load i32, i32* @SM_CXICON, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = call i8* @GetSystemMetrics(i32 %42)
  %44 = ptrtoint i8* %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i64 %44, i64* %45, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @SHGFI_SMALLICON, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* @SM_CYSMICON, align 4
  br label %54

52:                                               ; preds = %41
  %53 = load i32, i32* @SM_CYICON, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = call i8* @GetSystemMetrics(i32 %55)
  %57 = ptrtoint i8* %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  store i64 %57, i64* %58, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @SHGFI_SHELLICONSIZE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %86

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %65, %67
  %69 = zext i1 %68 to i32
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @ok(i32 %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %71, i64 %73)
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %76, %78
  %80 = zext i1 %79 to i32
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @ok(i32 %80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %82, i64 %84)
  br label %109

86:                                               ; preds = %54
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %88, %90
  %92 = zext i1 %91 to i32
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @ok(i32 %92, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %94, i64 %96)
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %99, %101
  %103 = zext i1 %102 to i32
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @ok(i32 %103, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %105, i64 %107)
  br label %109

109:                                              ; preds = %86, %63
  ret void
}

declare dso_local i32 @GetIconInfo(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @GetObjectW(i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @SHGetImageList(i32, i32*, i8**) #1

declare dso_local i32 @IImageList_GetIconSize(i32*, i64*, i64*) #1

declare dso_local i32 @IImageList_Release(i32*) #1

declare dso_local i8* @GetSystemMetrics(i32) #1

declare dso_local i32 @ok(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
