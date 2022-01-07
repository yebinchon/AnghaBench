; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_path.c_test_closefigure.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_path.c_test_closefigure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"wrong pos %d,%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"Wrong number of points, no point should be added by CloseFigure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_closefigure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_closefigure() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @GetDC(i32 0)
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @MoveToEx(i32 %6, i32 100, i32 100, i32* null)
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @GetCurrentPositionEx(i32 %8, %struct.TYPE_3__* %3)
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 100
  br i1 %12, label %13, label %17

13:                                               ; preds = %0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 100
  br label %17

17:                                               ; preds = %13, %0
  %18 = phi i1 [ false, %0 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @BeginPath(i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @GetCurrentPositionEx(i32 %27, %struct.TYPE_3__* %3)
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 100
  br i1 %31, label %32, label %36

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 100
  br label %36

36:                                               ; preds = %32, %17
  %37 = phi i1 [ false, %17 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @MoveToEx(i32 %44, i32 95, i32 95, i32* null)
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @GetCurrentPositionEx(i32 %46, %struct.TYPE_3__* %3)
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 95
  br i1 %50, label %51, label %55

51:                                               ; preds = %36
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 95
  br label %55

55:                                               ; preds = %51, %36
  %56 = phi i1 [ false, %36 ], [ %54, %51 ]
  %57 = zext i1 %56 to i32
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %61)
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @LineTo(i32 %63, i32 95, i32 0)
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @GetCurrentPositionEx(i32 %65, %struct.TYPE_3__* %3)
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 95
  br i1 %69, label %70, label %74

70:                                               ; preds = %55
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 0
  br label %74

74:                                               ; preds = %70, %55
  %75 = phi i1 [ false, %55 ], [ %73, %70 ]
  %76 = zext i1 %75 to i32
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %80)
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @LineTo(i32 %82, i32 0, i32 95)
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @GetCurrentPositionEx(i32 %84, %struct.TYPE_3__* %3)
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %74
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 95
  br label %93

93:                                               ; preds = %89, %74
  %94 = phi i1 [ false, %74 ], [ %92, %89 ]
  %95 = zext i1 %94 to i32
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %99)
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @CloseFigure(i32 %101)
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @GetCurrentPositionEx(i32 %103, %struct.TYPE_3__* %3)
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %93
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 95
  br label %112

112:                                              ; preds = %108, %93
  %113 = phi i1 [ false, %93 ], [ %111, %108 ]
  %114 = zext i1 %113 to i32
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %116, i32 %118)
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @EndPath(i32 %120)
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @GetCurrentPositionEx(i32 %122, %struct.TYPE_3__* %3)
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %112
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 95
  br label %131

131:                                              ; preds = %127, %112
  %132 = phi i1 [ false, %112 ], [ %130, %127 ]
  %133 = zext i1 %132 to i32
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i32, i8*, ...) @ok(i32 %133, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %135, i32 %137)
  %139 = load i32, i32* %4, align 4
  %140 = call i32 @GetPath(i32 %139, i32* null, i32* null, i32 0)
  store i32 %140, i32* %1, align 4
  %141 = load i32, i32* %4, align 4
  %142 = call i32 @AbortPath(i32 %141)
  %143 = load i32, i32* %4, align 4
  %144 = call i32 @BeginPath(i32 %143)
  %145 = load i32, i32* %4, align 4
  %146 = call i32 @MoveToEx(i32 %145, i32 95, i32 95, i32* null)
  %147 = load i32, i32* %4, align 4
  %148 = call i32 @LineTo(i32 %147, i32 95, i32 0)
  %149 = load i32, i32* %4, align 4
  %150 = call i32 @LineTo(i32 %149, i32 0, i32 95)
  %151 = load i32, i32* %4, align 4
  %152 = call i32 @EndPath(i32 %151)
  %153 = load i32, i32* %4, align 4
  %154 = call i32 @GetPath(i32 %153, i32* null, i32* null, i32 0)
  store i32 %154, i32* %2, align 4
  %155 = load i32, i32* %1, align 4
  %156 = load i32, i32* %2, align 4
  %157 = icmp eq i32 %155, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 (i32, i8*, ...) @ok(i32 %158, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %160 = load i32, i32* %4, align 4
  %161 = call i32 @ReleaseDC(i32 0, i32 %160)
  ret void
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @MoveToEx(i32, i32, i32, i32*) #1

declare dso_local i32 @GetCurrentPositionEx(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @BeginPath(i32) #1

declare dso_local i32 @LineTo(i32, i32, i32) #1

declare dso_local i32 @CloseFigure(i32) #1

declare dso_local i32 @EndPath(i32) #1

declare dso_local i32 @GetPath(i32, i32*, i32*, i32) #1

declare dso_local i32 @AbortPath(i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
