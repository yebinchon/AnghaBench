; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/mfdrv/extr_objects.c_MFDRV_CreateFontIndirect.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/mfdrv/extr_objects.c_MFDRV_CreateFontIndirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@META_CREATEFONTINDIRECT = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@LF_FACESIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_7__*)* @MFDRV_CreateFontIndirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MFDRV_CreateFontIndirect(i32 %0, i32 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca [74 x i8], align 16
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %12 = bitcast [74 x i8]* %8 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %9, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 37, i32* %14, align 4
  %15 = load i32, i32* @META_CREATEFONTINDIRECT, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = bitcast i32* %19 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %10, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 13
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 13
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 12
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 12
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 11
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 11
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 10
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 10
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 9
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 9
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* @CP_ACP, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @LF_FACESIZE, align 8
  %94 = sub nsw i64 %93, 1
  %95 = call i64 @WideCharToMultiByte(i32 %86, i32 0, i32 %89, i32 -1, i64 %92, i64 %94, i32* null, i32* null)
  store i64 %95, i64* %11, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %11, align 8
  %100 = add nsw i64 %98, %99
  %101 = load i64, i64* @LF_FACESIZE, align 8
  %102 = load i64, i64* %11, align 8
  %103 = sub nsw i64 %101, %102
  %104 = call i32 @memset(i64 %100, i32 0, i64 %103)
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %109, 2
  %111 = call i32 @MFDRV_WriteRecord(i32 %105, %struct.TYPE_6__* %106, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %3
  store i32 0, i32* %4, align 4
  br label %118

114:                                              ; preds = %3
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @MFDRV_AddHandle(i32 %115, i32 %116)
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %114, %113
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i64 @WideCharToMultiByte(i32, i32, i32, i32, i64, i64, i32*, i32*) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @MFDRV_WriteRecord(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @MFDRV_AddHandle(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
