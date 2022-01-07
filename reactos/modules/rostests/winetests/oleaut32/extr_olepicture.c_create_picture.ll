; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olepicture.c_create_picture.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olepicture.c_create_picture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i16, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@IID_IPicture = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IDI_APPLICATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"picture type %d is not supported\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16, i32**)* @create_picture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_picture(i16 signext %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_11__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i16 %0, i16* %4, align 2
  store i32** %1, i32*** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  store i32 36, i32* %9, align 4
  %10 = load i16, i16* %4, align 2
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  store i16 %10, i16* %11, align 4
  %12 = load i16, i16* %4, align 2
  %13 = sext i16 %12 to i32
  switch i32 %13, label %47 [
    i32 128, label %14
    i32 129, label %19
    i32 133, label %20
    i32 131, label %26
    i32 130, label %31
    i32 132, label %41
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @TRUE, align 4
  %16 = load i32**, i32*** %5, align 8
  %17 = bitcast i32** %16 to i8**
  %18 = call i32 @OleCreatePictureIndirect(%struct.TYPE_11__* null, i32* @IID_IPicture, i32 %15, i8** %17)
  store i32 %18, i32* %3, align 4
  br label %56

19:                                               ; preds = %2
  br label %51

20:                                               ; preds = %2
  %21 = call i32 @CreateBitmap(i32 1, i32 1, i32 1, i32 1, i32* null)
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store i32 -1091576147, i32* %25, align 4
  br label %51

26:                                               ; preds = %2
  %27 = load i32, i32* @IDI_APPLICATION, align 4
  %28 = call i32 @LoadIconA(i32* null, i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %51

31:                                               ; preds = %2
  %32 = call i32 @CreateMetaFileA(i32* null)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @CloseMetaFile(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  br label %51

41:                                               ; preds = %2
  %42 = call i32 @CreateEnhMetaFileA(i32 0, i32* null, i32* null, i32* null)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @CloseEnhMetaFile(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %51

47:                                               ; preds = %2
  %48 = load i16, i16* %4, align 2
  %49 = call i32 @ok(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i16 signext %48)
  %50 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %50, i32* %3, align 4
  br label %56

51:                                               ; preds = %41, %31, %26, %20, %19
  %52 = load i32, i32* @TRUE, align 4
  %53 = load i32**, i32*** %5, align 8
  %54 = bitcast i32** %53 to i8**
  %55 = call i32 @OleCreatePictureIndirect(%struct.TYPE_11__* %6, i32* @IID_IPicture, i32 %52, i8** %54)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %51, %47, %14
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @OleCreatePictureIndirect(%struct.TYPE_11__*, i32*, i32, i8**) #1

declare dso_local i32 @CreateBitmap(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @LoadIconA(i32*, i32) #1

declare dso_local i32 @CreateMetaFileA(i32*) #1

declare dso_local i32 @CloseMetaFile(i32) #1

declare dso_local i32 @CreateEnhMetaFileA(i32, i32*, i32*, i32*) #1

declare dso_local i32 @CloseEnhMetaFile(i32) #1

declare dso_local i32 @ok(i32, i8*, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
