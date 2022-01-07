; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_elem_bounding_client_rect.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_elem_bounding_client_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"getBoundingClientRect failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"rect == NULL\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"rect == rect2\0A\00", align 1
@IID_IHTMLRect = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"[object]\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"get_top failed: %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"l = 0xdeadbeef\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"get_left failed: %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"get_bottom failed: %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"get_right failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_elem_bounding_client_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_elem_bounding_client_rect(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i32* @get_elem2_iface(i32* %8)
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i64 @IHTMLElement2_getBoundingClientRect(i32* %10, i32** %3)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @S_OK, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %7, align 8
  %17 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i32*, i32** %5, align 8
  %19 = call i64 @IHTMLElement2_getBoundingClientRect(i32* %18, i32** %4)
  store i64 %19, i64* %7, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @IHTMLElement2_Release(i32* %20)
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @S_OK, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* %7, align 8
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32*, i32** %3, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = icmp ne i32* %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @IHTMLRect_Release(i32* %37)
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @test_disp(i32* %39, i32* @IID_IHTMLRect, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 -559038737, i32* %6, align 4
  %41 = load i32*, i32** %3, align 8
  %42 = call i64 @IHTMLRect_get_top(i32* %41, i32* %6)
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @S_OK, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i64, i64* %7, align 8
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i64 %47)
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, -559038737
  %51 = zext i1 %50 to i32
  %52 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  store i32 -559038737, i32* %6, align 4
  %53 = load i32*, i32** %3, align 8
  %54 = call i64 @IHTMLRect_get_left(i32* %53, i32* %6)
  store i64 %54, i64* %7, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* @S_OK, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i64, i64* %7, align 8
  %60 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i64 %59)
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, -559038737
  %63 = zext i1 %62 to i32
  %64 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  store i32 -559038737, i32* %6, align 4
  %65 = load i32*, i32** %3, align 8
  %66 = call i64 @IHTMLRect_get_bottom(i32* %65, i32* %6)
  store i64 %66, i64* %7, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* @S_OK, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i64, i64* %7, align 8
  %72 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i64 %71)
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, -559038737
  %75 = zext i1 %74 to i32
  %76 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  store i32 -559038737, i32* %6, align 4
  %77 = load i32*, i32** %3, align 8
  %78 = call i64 @IHTMLRect_get_right(i32* %77, i32* %6)
  store i64 %78, i64* %7, align 8
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* @S_OK, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i64, i64* %7, align 8
  %84 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i64 %83)
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, -559038737
  %87 = zext i1 %86 to i32
  %88 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 @IHTMLRect_Release(i32* %89)
  ret void
}

declare dso_local i32* @get_elem2_iface(i32*) #1

declare dso_local i64 @IHTMLElement2_getBoundingClientRect(i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @IHTMLElement2_Release(i32*) #1

declare dso_local i32 @IHTMLRect_Release(i32*) #1

declare dso_local i32 @test_disp(i32*, i32*, i8*) #1

declare dso_local i64 @IHTMLRect_get_top(i32*, i32*) #1

declare dso_local i64 @IHTMLRect_get_left(i32*, i32*) #1

declare dso_local i64 @IHTMLRect_get_bottom(i32*, i32*) #1

declare dso_local i64 @IHTMLRect_get_right(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
