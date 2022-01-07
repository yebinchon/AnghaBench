; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olefont.c_test_ifont_size.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olefont.c_test_ifont_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_10__, i8*, i8*, i8*, i64, i64, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }

@arial_font = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@IID_IFont = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"%s: OCFI returns 0x%08x instead of S_OK.\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: OCFI returns NULL.\0A\00", align 1
@E_FAIL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"%s: IFont_SetRatio unexpectedly returned 0x%08x.\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"%s: IFont_get_size returns 0x%08x instead of S_OK.\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"%s: IFont_get_Size: Lo=%d, Hi=%d; expected Lo=%d, Hi=%d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"%s: IFont_get_hFont returns 0x%08x instead of S_OK.\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"GetObject(hfont) failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"%s: hFont has lf.lfHeight=%d, expected %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i64, i8*)* @test_ifont_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ifont_size(i32 %0, i64 %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_12__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_11__, align 8
  %16 = alloca %struct.TYPE_13__, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_14__, align 4
  %20 = alloca %struct.TYPE_14__, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  store i32 64, i32* %21, align 8
  %22 = load i32, i32* @arial_font, align 4
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 7
  store i32 %22, i32* %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 6
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 5
  store i64 0, i64* %28, align 8
  %29 = load i8*, i8** @FALSE, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 4
  store i8* %29, i8** %30, align 8
  %31 = load i8*, i8** @FALSE, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  store i8* %31, i8** %32, align 8
  %33 = load i8*, i8** @FALSE, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 2
  store i8* %33, i8** %34, align 8
  %35 = call i64 @pOleCreateFontIndirect(%struct.TYPE_12__* %11, i32* @IID_IFont, i32** %12)
  store i64 %35, i64* %17, align 8
  %36 = load i32*, i32** %12, align 8
  store i32* %36, i32** %13, align 8
  %37 = load i64, i64* %17, align 8
  %38 = load i64, i64* @S_OK, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i8*, i8** %10, align 8
  %42 = load i64, i64* %17, align 8
  %43 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %41, i64 %42)
  %44 = load i32*, i32** %12, align 8
  %45 = icmp ne i32* %44, null
  %46 = zext i1 %45 to i32
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  %49 = load i32*, i32** %13, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i64 @IFont_SetRatio(i32* %49, i64 %50, i64 %51)
  store i64 %52, i64* %17, align 8
  %53 = load i64, i64* %7, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %5
  %56 = load i64, i64* %8, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i64, i64* %17, align 8
  %60 = load i64, i64* @S_OK, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  br label %68

63:                                               ; preds = %55, %5
  %64 = load i64, i64* %17, align 8
  %65 = load i64, i64* @E_FAIL, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  br label %68

68:                                               ; preds = %63, %58
  %69 = phi i32 [ %62, %58 ], [ %67, %63 ]
  %70 = load i8*, i8** %10, align 8
  %71 = load i64, i64* %17, align 8
  %72 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %70, i64 %71)
  %73 = load i32*, i32** %13, align 8
  %74 = call i64 @IFont_get_Size(i32* %73, %struct.TYPE_13__* %16)
  store i64 %74, i64* %17, align 8
  %75 = load i64, i64* %17, align 8
  %76 = load i64, i64* @S_OK, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i8*, i8** %10, align 8
  %80 = load i64, i64* %17, align 8
  %81 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i8* %79, i64 %80)
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %6, align 4
  %85 = sub nsw i32 %83, %84
  %86 = icmp slt i32 %85, 10000
  br i1 %86, label %87, label %93

87:                                               ; preds = %68
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %6, align 4
  %91 = sub nsw i32 %89, %90
  %92 = icmp sgt i32 %91, -10000
  br label %93

93:                                               ; preds = %87, %68
  %94 = phi i1 [ false, %68 ], [ %92, %87 ]
  %95 = zext i1 %94 to i32
  %96 = load i8*, i8** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @S(i32 %98)
  %100 = bitcast %struct.TYPE_14__* %19 to i64*
  store i64 %99, i64* %100, align 4
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @S(i32 %104)
  %106 = bitcast %struct.TYPE_14__* %20 to i64*
  store i64 %105, i64* %106, align 4
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i8* %96, i32 %102, i32 %108, i32 %111, i32 %114)
  %116 = load i32*, i32** %13, align 8
  %117 = call i64 @IFont_get_hFont(i32* %116, i32* %14)
  store i64 %117, i64* %17, align 8
  %118 = load i64, i64* %17, align 8
  %119 = load i64, i64* @S_OK, align 8
  %120 = icmp eq i64 %118, %119
  %121 = zext i1 %120 to i32
  %122 = load i8*, i8** %10, align 8
  %123 = load i64, i64* %17, align 8
  %124 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i8* %122, i64 %123)
  %125 = load i32, i32* %14, align 4
  %126 = call i64 @GetObjectA(i32 %125, i32 8, %struct.TYPE_11__* %15)
  store i64 %126, i64* %18, align 8
  %127 = load i64, i64* %18, align 8
  %128 = icmp sgt i64 %127, 0
  %129 = zext i1 %128 to i32
  %130 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %9, align 8
  %134 = sub nsw i64 %132, %133
  %135 = call i32 @abs(i64 %134)
  %136 = icmp sle i32 %135, 1
  %137 = zext i1 %136 to i32
  %138 = load i8*, i8** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %9, align 8
  %142 = call i32 (i32, i8*, ...) @ok(i32 %137, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i8* %138, i64 %140, i64 %141)
  %143 = load i32*, i32** %13, align 8
  %144 = call i32 @IFont_Release(i32* %143)
  ret void
}

declare dso_local i64 @pOleCreateFontIndirect(%struct.TYPE_12__*, i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IFont_SetRatio(i32*, i64, i64) #1

declare dso_local i64 @IFont_get_Size(i32*, %struct.TYPE_13__*) #1

declare dso_local i64 @S(i32) #1

declare dso_local i64 @IFont_get_hFont(i32*, i32*) #1

declare dso_local i64 @GetObjectA(i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @IFont_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
