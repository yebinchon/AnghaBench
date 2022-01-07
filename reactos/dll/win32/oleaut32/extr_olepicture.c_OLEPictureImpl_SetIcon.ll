; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_olepicture.c_OLEPictureImpl_SetIcon.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_olepicture.c_OLEPictureImpl_SetIcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"icon handle %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"bitmap handle for icon is %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"GetObject fails on icon bitmap\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"GetIconInfo() fails on icon %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @OLEPictureImpl_SetIcon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OLEPictureImpl_SetIcon(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_14__, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @GetIconInfo(i64 %18, %struct.TYPE_14__* %3)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %88

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  br label %34

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i64 [ %30, %28 ], [ %33, %31 ]
  %36 = call i32 @GetObjectW(i64 %35, i32 8, %struct.TYPE_15__* %5)
  %37 = sext i32 %36 to i64
  %38 = icmp ne i64 %37, 8
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %96

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  br label %56

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sdiv i32 %54, 2
  br label %56

56:                                               ; preds = %52, %49
  %57 = phi i32 [ %51, %49 ], [ %55, %52 ]
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = call i32 @GetDC(i32 0)
  store i32 %60, i32* %4, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @xpixels_to_himetric(i32 %63, i32 %64)
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @ypixels_to_himetric(i32 %70, i32 %71)
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @ReleaseDC(i32 0, i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @DeleteObject(i64 %78)
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %56
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @DeleteObject(i64 %85)
  br label %87

87:                                               ; preds = %83, %56
  br label %96

88:                                               ; preds = %1
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %94)
  br label %96

96:                                               ; preds = %39, %88, %87
  ret void
}

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i64 @GetIconInfo(i64, %struct.TYPE_14__*) #1

declare dso_local i32 @GetObjectW(i64, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @xpixels_to_himetric(i32, i32) #1

declare dso_local i32 @ypixels_to_himetric(i32, i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i32 @DeleteObject(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
