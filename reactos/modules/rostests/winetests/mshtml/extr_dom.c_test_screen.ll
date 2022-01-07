; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_screen.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"get_screen failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"screen == NULL\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"screen2 != screen\0A\00", align 1
@IID_IDispatchEx = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Could not get IDispatchEx interface: %08x\0A\00", align 1
@DIID_DispHTMLScreen = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"[object]\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@HORZRES = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"get_width failed: %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"width = %d, expected %d\0A\00", align 1
@VERTRES = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"get_height failed: %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"height = %d, expected %d\0A\00", align 1
@BITSPIXEL = common dso_local global i32 0, align 4
@SPI_GETWORKAREA = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"get_availHeight failed: %08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"availHeight = %d, expected %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"get_availWidth failed: %08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"availWidth = %d, expected %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_screen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_screen(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @IHTMLWindow2_get_screen(i32* %11, i32** %3)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @S_OK, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %10, align 4
  %18 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @IHTMLWindow2_get_screen(i32* %23, i32** %4)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @S_OK, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %10, align 4
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32*, i32** %4, align 8
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32*, i32** %4, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @iface_cmp(i32* %35, i32* %36)
  %38 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @IHTMLScreen_Release(i32* %39)
  %41 = load i32*, i32** %3, align 8
  %42 = bitcast i32** %5 to i8**
  %43 = call i32 @IHTMLScreen_QueryInterface(i32* %41, i32* @IID_IDispatchEx, i8** %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @S_OK, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %54, label %47

47:                                               ; preds = %1
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @E_NOINTERFACE, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @broken(i32 %51)
  %53 = icmp ne i64 %52, 0
  br label %54

54:                                               ; preds = %47, %1
  %55 = phi i1 [ true, %1 ], [ %53, %47 ]
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %10, align 4
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %10, align 4
  %60 = call i64 @SUCCEEDED(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %54
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @test_disp(i32* %63, i32* @DIID_DispHTMLScreen, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @IDispatchEx_Release(i32* %65)
  br label %67

67:                                               ; preds = %62, %54
  %68 = call i32 @CreateICA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* null, i32* null, i32* null)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @HORZRES, align 4
  %71 = call i32 @GetDeviceCaps(i32 %69, i32 %70)
  store i32 %71, i32* %8, align 4
  store i32 -559038737, i32* %7, align 4
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @IHTMLScreen_get_width(i32* %72, i32* %7)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @S_OK, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %10, align 4
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp eq i32 %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %84, i32 %85)
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @VERTRES, align 4
  %89 = call i32 @GetDeviceCaps(i32 %87, i32 %88)
  store i32 %89, i32* %8, align 4
  store i32 -559038737, i32* %7, align 4
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 @IHTMLScreen_get_height(i32* %90, i32* %7)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @S_OK, align 4
  %94 = icmp eq i32 %92, %93
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* %10, align 4
  %97 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp eq i32 %98, %99
  %101 = zext i1 %100 to i32
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %102, i32 %103)
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @BITSPIXEL, align 4
  %107 = call i32 @GetDeviceCaps(i32 %105, i32 %106)
  store i32 %107, i32* %8, align 4
  store i32 -559038737, i32* %7, align 4
  %108 = load i32*, i32** %3, align 8
  %109 = call i32 @IHTMLScreen_get_colorDepth(i32* %108, i32* %7)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @S_OK, align 4
  %112 = icmp eq i32 %110, %111
  %113 = zext i1 %112 to i32
  %114 = load i32, i32* %10, align 4
  %115 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp eq i32 %116, %117
  %119 = zext i1 %118 to i32
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %8, align 4
  %122 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %120, i32 %121)
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @DeleteObject(i32 %123)
  %125 = load i32, i32* @SPI_GETWORKAREA, align 4
  %126 = call i32 @SystemParametersInfoW(i32 %125, i32 0, %struct.TYPE_3__* %6, i32 0)
  store i32 -559038737, i32* %7, align 4
  %127 = load i32*, i32** %3, align 8
  %128 = call i32 @IHTMLScreen_get_availHeight(i32* %127, i32* %7)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @S_OK, align 4
  %131 = icmp eq i32 %129, %130
  %132 = zext i1 %131 to i32
  %133 = load i32, i32* %10, align 4
  %134 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* %7, align 4
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = sub nsw i32 %137, %139
  %141 = icmp eq i32 %135, %140
  %142 = zext i1 %141 to i32
  %143 = load i32, i32* %7, align 4
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = sub nsw i32 %145, %147
  %149 = call i32 (i32, i8*, ...) @ok(i32 %142, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %143, i32 %148)
  store i32 -559038737, i32* %7, align 4
  %150 = load i32*, i32** %3, align 8
  %151 = call i32 @IHTMLScreen_get_availWidth(i32* %150, i32* %7)
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* @S_OK, align 4
  %154 = icmp eq i32 %152, %153
  %155 = zext i1 %154 to i32
  %156 = load i32, i32* %10, align 4
  %157 = call i32 (i32, i8*, ...) @ok(i32 %155, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* %7, align 4
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = sub nsw i32 %160, %162
  %164 = icmp eq i32 %158, %163
  %165 = zext i1 %164 to i32
  %166 = load i32, i32* %7, align 4
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = sub nsw i32 %168, %170
  %172 = call i32 (i32, i8*, ...) @ok(i32 %165, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i32 %166, i32 %171)
  %173 = load i32*, i32** %3, align 8
  %174 = call i32 @IHTMLScreen_Release(i32* %173)
  ret void
}

declare dso_local i32 @IHTMLWindow2_get_screen(i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @iface_cmp(i32*, i32*) #1

declare dso_local i32 @IHTMLScreen_Release(i32*) #1

declare dso_local i32 @IHTMLScreen_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @test_disp(i32*, i32*, i8*) #1

declare dso_local i32 @IDispatchEx_Release(i32*) #1

declare dso_local i32 @CreateICA(i8*, i32*, i32*, i32*) #1

declare dso_local i32 @GetDeviceCaps(i32, i32) #1

declare dso_local i32 @IHTMLScreen_get_width(i32*, i32*) #1

declare dso_local i32 @IHTMLScreen_get_height(i32*, i32*) #1

declare dso_local i32 @IHTMLScreen_get_colorDepth(i32*, i32*) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @SystemParametersInfoW(i32, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @IHTMLScreen_get_availHeight(i32*, i32*) #1

declare dso_local i32 @IHTMLScreen_get_availWidth(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
