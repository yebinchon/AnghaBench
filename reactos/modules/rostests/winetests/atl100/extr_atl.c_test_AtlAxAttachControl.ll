; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/atl100/extr_atl.c_test_AtlAxAttachControl.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/atl100/extr_atl.c_test_AtlAxAttachControl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_INVALIDARG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Expected AtlAxAttachControl to return E_INVALIDARG, got 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"Expected the output container pointer to be untouched, got %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"returned %p\0A\00", align 1
@CLSID_WebBrowser = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@CLSCTX_INPROC_HANDLER = common dso_local global i32 0, align 4
@IID_IOleObject = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"Expected CoCreateInstance to return S_OK, got 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Couldn't obtain a test IOleObject instance\0A\00", align 1
@S_FALSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [59 x i8] c"Expected AtlAxAttachControl to return S_FALSE, got 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@GWLP_USERDATA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [56 x i8] c"Expected AtlAxAttachControl to return S_OK, got 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"returned %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Expected not NULL!\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Expected unchanged, returned %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_AtlAxAttachControl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_AtlAxAttachControl() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = call i32 @AtlAxAttachControl(i32* null, i32* null, i32** null)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @E_INVALIDARG, align 4
  %9 = icmp eq i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* %2, align 4
  %12 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %4, align 8
  %13 = call i32 @AtlAxAttachControl(i32* null, i32* null, i32** %4)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @E_INVALIDARG, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %2, align 4
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = icmp eq i32* %20, inttoptr (i64 3735928559 to i32*)
  %22 = zext i1 %21 to i32
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32* %23)
  %25 = call i32* (...) @create_container_window()
  store i32* %25, i32** %1, align 8
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @AtlAxAttachControl(i32* null, i32* %26, i32** null)
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @E_INVALIDARG, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %2, align 4
  %33 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32*, i32** %1, align 8
  %35 = call i32 @DestroyWindow(i32* %34)
  %36 = call i32* (...) @create_container_window()
  store i32* %36, i32** %1, align 8
  store i32* inttoptr (i64 3735928559 to i32*), i32** %4, align 8
  %37 = load i32*, i32** %1, align 8
  %38 = call i32 @AtlAxAttachControl(i32* null, i32* %37, i32** %4)
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @E_INVALIDARG, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %2, align 4
  %44 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32*, i32** %4, align 8
  %46 = icmp eq i32* %45, inttoptr (i64 3735928559 to i32*)
  %47 = zext i1 %46 to i32
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %48)
  %50 = load i32*, i32** %1, align 8
  %51 = call i32 @DestroyWindow(i32* %50)
  %52 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %53 = load i32, i32* @CLSCTX_INPROC_HANDLER, align 4
  %54 = or i32 %52, %53
  %55 = bitcast i32** %3 to i8**
  %56 = call i32 @CoCreateInstance(i32* @CLSID_WebBrowser, i32* null, i32 %54, i32* @IID_IOleObject, i8** %55)
  store i32 %56, i32* %2, align 4
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* @S_OK, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %2, align 4
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %2, align 4
  %64 = call i64 @FAILED(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %0
  %67 = call i32 @skip(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %146

68:                                               ; preds = %0
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @AtlAxAttachControl(i32* %69, i32* null, i32** null)
  store i32 %70, i32* %2, align 4
  %71 = load i32, i32* %2, align 4
  %72 = load i32, i32* @S_FALSE, align 4
  %73 = icmp eq i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %2, align 4
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i32 %75)
  store i32* null, i32** %4, align 8
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @AtlAxAttachControl(i32* %77, i32* null, i32** %4)
  store i32 %78, i32* %2, align 4
  %79 = load i32, i32* %2, align 4
  %80 = load i32, i32* @S_FALSE, align 4
  %81 = icmp eq i32 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i32, i32* %2, align 4
  %84 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i32 %83)
  %85 = load i32*, i32** %4, align 8
  %86 = icmp ne i32* %85, null
  %87 = zext i1 %86 to i32
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32* %88)
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @IUnknown_Release(i32* %90)
  %92 = call i32* (...) @create_container_window()
  store i32* %92, i32** %1, align 8
  %93 = load i32*, i32** %1, align 8
  %94 = load i32, i32* @GWLP_USERDATA, align 4
  %95 = call i32 @SetWindowLongW(i32* %93, i32 %94, i32 -559038737)
  %96 = load i32*, i32** %3, align 8
  %97 = load i32*, i32** %1, align 8
  %98 = call i32 @AtlAxAttachControl(i32* %96, i32* %97, i32** null)
  store i32 %98, i32* %2, align 4
  %99 = load i32, i32* %2, align 4
  %100 = load i32, i32* @S_OK, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %2, align 4
  %104 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), i32 %103)
  %105 = load i32*, i32** %1, align 8
  %106 = load i32, i32* @GWLP_USERDATA, align 4
  %107 = call i32 @GetWindowLongW(i32* %105, i32 %106)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp eq i32 %108, -559038737
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* %5, align 4
  %112 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %111)
  %113 = load i32*, i32** %1, align 8
  %114 = call i32 @DestroyWindow(i32* %113)
  %115 = call i32* (...) @create_container_window()
  store i32* %115, i32** %1, align 8
  %116 = load i32*, i32** %1, align 8
  %117 = load i32, i32* @GWLP_USERDATA, align 4
  %118 = call i32 @SetWindowLongW(i32* %116, i32 %117, i32 -559038737)
  store i32* null, i32** %4, align 8
  %119 = load i32*, i32** %3, align 8
  %120 = load i32*, i32** %1, align 8
  %121 = call i32 @AtlAxAttachControl(i32* %119, i32* %120, i32** %4)
  store i32 %121, i32* %2, align 4
  %122 = load i32, i32* %2, align 4
  %123 = load i32, i32* @S_OK, align 4
  %124 = icmp eq i32 %122, %123
  %125 = zext i1 %124 to i32
  %126 = load i32, i32* %2, align 4
  %127 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), i32 %126)
  %128 = load i32*, i32** %4, align 8
  %129 = icmp ne i32* %128, null
  %130 = zext i1 %129 to i32
  %131 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %132 = load i32*, i32** %4, align 8
  %133 = call i32 @IUnknown_Release(i32* %132)
  %134 = load i32*, i32** %1, align 8
  %135 = load i32, i32* @GWLP_USERDATA, align 4
  %136 = call i32 @GetWindowLongW(i32* %134, i32 %135)
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* %5, align 4
  %138 = icmp eq i32 %137, -559038737
  %139 = zext i1 %138 to i32
  %140 = load i32, i32* %5, align 4
  %141 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i32 %140)
  %142 = load i32*, i32** %1, align 8
  %143 = call i32 @DestroyWindow(i32* %142)
  %144 = load i32*, i32** %3, align 8
  %145 = call i32 @IUnknown_Release(i32* %144)
  br label %146

146:                                              ; preds = %68, %66
  ret void
}

declare dso_local i32 @AtlAxAttachControl(i32*, i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32* @create_container_window(...) #1

declare dso_local i32 @DestroyWindow(i32*) #1

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @SetWindowLongW(i32*, i32, i32) #1

declare dso_local i32 @GetWindowLongW(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
