; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_clipping.c_test_GetClipRgn.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_clipping.c_test_GetClipRgn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [42 x i8] c"Expected GetClipRgn to return -1, got %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Expected GetDC to return a valid device context handle\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Expected GetClipRgn to return 0, got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"Expected CreateRectRgn to return a handle to a new rectangular region\0A\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"Expected EqualRgn to compare the two regions as equal, got %d\0A\00", align 1
@NULLREGION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [53 x i8] c"Expected SelectClipRgn to return NULLREGION, got %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Expected GetClipRgn to return 1, got %d\0A\00", align 1
@SIMPLEREGION = common dso_local global i32 0, align 4
@COMPLEXREGION = common dso_local global i32 0, align 4
@SM_CMONITORS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [55 x i8] c"Expected SelectClipRgn to return SIMPLEREGION, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetClipRgn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetClipRgn() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = call i32 @GetClipRgn(i32* null, i32* null)
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp eq i32 %8, -1
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* %6, align 4
  %12 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = call i32* @GetDC(i32* null)
  store i32* %13, i32** %1, align 8
  %14 = load i32*, i32** %1, align 8
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @GetClipRgn(i32* %18, i32* null)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %0
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, -1
  br label %25

25:                                               ; preds = %22, %0
  %26 = phi i1 [ true, %0 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = call i32* @CreateRectRgn(i32 100, i32 100, i32 100, i32 100)
  store i32* %30, i32** %2, align 8
  %31 = load i32*, i32** %2, align 8
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0))
  %35 = call i32* @CreateRectRgn(i32 1, i32 2, i32 3, i32 4)
  store i32* %35, i32** %3, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = icmp ne i32* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0))
  %40 = call i32* @CreateRectRgn(i32 1, i32 2, i32 3, i32 4)
  store i32* %40, i32** %4, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = icmp ne i32* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0))
  %45 = call i32* @CreateRectRgn(i32 1, i32 2, i32 3, i32 4)
  store i32* %45, i32** %5, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = icmp ne i32* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i32*, i32** %1, align 8
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @GetClipRgn(i32* %50, i32* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %6, align 4
  %57 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %3, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @EqualRgn(i32* %58, i32* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %61, 1
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* %6, align 4
  %65 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  %66 = load i32*, i32** %1, align 8
  %67 = load i32*, i32** %2, align 8
  %68 = call i32 @SelectClipRgn(i32* %66, i32* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @NULLREGION, align 4
  %71 = icmp eq i32 %69, %70
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %6, align 4
  %74 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %73)
  %75 = load i32*, i32** %1, align 8
  %76 = call i32 @GetClipRgn(i32* %75, i32* null)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp eq i32 %77, -1
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %6, align 4
  %81 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load i32*, i32** %1, align 8
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @GetClipRgn(i32* %82, i32* %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp eq i32 %85, 1
  %87 = zext i1 %86 to i32
  %88 = load i32, i32* %6, align 4
  %89 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %88)
  %90 = load i32*, i32** %2, align 8
  %91 = load i32*, i32** %3, align 8
  %92 = call i32 @EqualRgn(i32* %90, i32* %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp eq i32 %93, 1
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* %6, align 4
  %97 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i32 %96)
  %98 = load i32*, i32** %1, align 8
  %99 = call i32 @SelectClipRgn(i32* %98, i32* null)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @SIMPLEREGION, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %113, label %103

103:                                              ; preds = %25
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @COMPLEXREGION, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i32, i32* @SM_CMONITORS, align 4
  %109 = call i32 @GetSystemMetrics(i32 %108)
  %110 = icmp sgt i32 %109, 1
  br label %111

111:                                              ; preds = %107, %103
  %112 = phi i1 [ false, %103 ], [ %110, %107 ]
  br label %113

113:                                              ; preds = %111, %25
  %114 = phi i1 [ true, %25 ], [ %112, %111 ]
  %115 = zext i1 %114 to i32
  %116 = load i32, i32* %6, align 4
  %117 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i32 %116)
  %118 = load i32*, i32** %1, align 8
  %119 = call i32 @GetClipRgn(i32* %118, i32* null)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %113
  %123 = load i32, i32* %6, align 4
  %124 = icmp eq i32 %123, -1
  br label %125

125:                                              ; preds = %122, %113
  %126 = phi i1 [ true, %113 ], [ %124, %122 ]
  %127 = zext i1 %126 to i32
  %128 = load i32, i32* %6, align 4
  %129 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %128)
  %130 = load i32*, i32** %1, align 8
  %131 = load i32*, i32** %4, align 8
  %132 = call i32 @GetClipRgn(i32* %130, i32* %131)
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp eq i32 %133, 0
  %135 = zext i1 %134 to i32
  %136 = load i32, i32* %6, align 4
  %137 = call i32 (i32, i8*, ...) @ok(i32 %135, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %136)
  %138 = load i32*, i32** %4, align 8
  %139 = load i32*, i32** %5, align 8
  %140 = call i32 @EqualRgn(i32* %138, i32* %139)
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %6, align 4
  %142 = icmp eq i32 %141, 1
  %143 = zext i1 %142 to i32
  %144 = load i32, i32* %6, align 4
  %145 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i32 %144)
  %146 = load i32*, i32** %5, align 8
  %147 = call i32 @DeleteObject(i32* %146)
  %148 = load i32*, i32** %4, align 8
  %149 = call i32 @DeleteObject(i32* %148)
  %150 = load i32*, i32** %3, align 8
  %151 = call i32 @DeleteObject(i32* %150)
  %152 = load i32*, i32** %2, align 8
  %153 = call i32 @DeleteObject(i32* %152)
  %154 = load i32*, i32** %1, align 8
  %155 = call i32 @ReleaseDC(i32* null, i32* %154)
  ret void
}

declare dso_local i32 @GetClipRgn(i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32* @GetDC(i32*) #1

declare dso_local i32* @CreateRectRgn(i32, i32, i32, i32) #1

declare dso_local i32 @EqualRgn(i32*, i32*) #1

declare dso_local i32 @SelectClipRgn(i32*, i32*) #1

declare dso_local i32 @GetSystemMetrics(i32) #1

declare dso_local i32 @DeleteObject(i32*) #1

declare dso_local i32 @ReleaseDC(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
