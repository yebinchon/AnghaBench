; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_dc.c_test_pscript_printer_dc.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_dc.c_test_pscript_printer_dc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Default printer is not a PostScript device\0A\00", align 1
@GETFACENAME = common dso_local global i32 0, align 4
@QUERYESCSUPPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"GETFACENAME is supported\0A\00", align 1
@DOWNLOADFACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"DOWNLOADFACE is not supported\0A\00", align 1
@OPENCHANNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"OPENCHANNEL is not supported\0A\00", align 1
@DOWNLOADHEADER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"DOWNLOADHEADER is not supported\0A\00", align 1
@CLOSECHANNEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"CLOSECHANNEL is not supported\0A\00", align 1
@POSTSCRIPT_PASSTHROUGH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"POSTSCRIPT_PASSTHROUGH is not supported\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"GETFACENAME failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"face name: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_pscript_printer_dc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_pscript_printer_dc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @FALSE, align 4
  %6 = call i32 @create_printer_dc(i32 100, i32 %5)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %88

10:                                               ; preds = %0
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @is_postscript_printer(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = call i32 @skip(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @DeleteDC(i32 %16)
  br label %88

18:                                               ; preds = %10
  %19 = load i32, i32* @GETFACENAME, align 4
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* @QUERYESCSUPPORT, align 4
  %22 = ptrtoint i32* %3 to i32
  %23 = call i32 @Escape(i32 %20, i32 %21, i32 4, i32 %22, i32* null)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @DOWNLOADFACE, align 4
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* @QUERYESCSUPPORT, align 4
  %32 = ptrtoint i32* %3 to i32
  %33 = call i32 @Escape(i32 %30, i32 %31, i32 4, i32 %32, i32* null)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 1
  %36 = zext i1 %35 to i32
  %37 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* @OPENCHANNEL, align 4
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* @QUERYESCSUPPORT, align 4
  %41 = ptrtoint i32* %3 to i32
  %42 = call i32 @Escape(i32 %39, i32 %40, i32 4, i32 %41, i32* null)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 1
  %45 = zext i1 %44 to i32
  %46 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i32, i32* @DOWNLOADHEADER, align 4
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %1, align 4
  %49 = load i32, i32* @QUERYESCSUPPORT, align 4
  %50 = ptrtoint i32* %3 to i32
  %51 = call i32 @Escape(i32 %48, i32 %49, i32 4, i32 %50, i32* null)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %52, 1
  %54 = zext i1 %53 to i32
  %55 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %56 = load i32, i32* @CLOSECHANNEL, align 4
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %1, align 4
  %58 = load i32, i32* @QUERYESCSUPPORT, align 4
  %59 = ptrtoint i32* %3 to i32
  %60 = call i32 @Escape(i32 %57, i32 %58, i32 4, i32 %59, i32* null)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp eq i32 %61, 1
  %63 = zext i1 %62 to i32
  %64 = call i32 @ok(i32 %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %65 = load i32, i32* @POSTSCRIPT_PASSTHROUGH, align 4
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %1, align 4
  %67 = load i32, i32* @QUERYESCSUPPORT, align 4
  %68 = ptrtoint i32* %3 to i32
  %69 = call i32 @Escape(i32 %66, i32 %67, i32 4, i32 %68, i32* null)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp eq i32 %70, 1
  %72 = zext i1 %71 to i32
  %73 = call i32 @ok(i32 %72, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %74 = load i32, i32* %1, align 4
  %75 = load i32, i32* @GETFACENAME, align 4
  %76 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %77 = call i32 @ExtEscape(i32 %74, i32 %75, i32 0, i32* null, i32 256, i8* %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp eq i32 %78, 1
  %80 = zext i1 %79 to i32
  %81 = call i32 @ok(i32 %80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %82 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %83 = call i32 @trace(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %82)
  %84 = load i32, i32* %1, align 4
  %85 = call i32 @print_something(i32 %84)
  %86 = load i32, i32* %1, align 4
  %87 = call i32 @DeleteDC(i32 %86)
  br label %88

88:                                               ; preds = %18, %14, %9
  ret void
}

declare dso_local i32 @create_printer_dc(i32, i32) #1

declare dso_local i32 @is_postscript_printer(i32) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @DeleteDC(i32) #1

declare dso_local i32 @Escape(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @ExtEscape(i32, i32, i32, i32*, i32, i8*) #1

declare dso_local i32 @trace(i8*, i8*) #1

declare dso_local i32 @print_something(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
