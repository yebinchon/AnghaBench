; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckFloatLabTransforms.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckFloatLabTransforms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"Lab4/Lab4\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Lab2/Lab2\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Lab4/Lab2\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Lab2/Lab4\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckFloatLabTransforms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckFloatLabTransforms() #0 {
  %1 = call i32 (...) @DbgThread()
  %2 = call i32 @cmsCreateLab4Profile(i32 %1, i32* null)
  %3 = call i32 (...) @DbgThread()
  %4 = call i32 @cmsCreateLab4Profile(i32 %3, i32* null)
  %5 = call i64 @OneTrivialLab(i32 %2, i32 %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %0
  %8 = call i32 (...) @DbgThread()
  %9 = call i32 @cmsCreateLab2Profile(i32 %8, i32* null)
  %10 = call i32 (...) @DbgThread()
  %11 = call i32 @cmsCreateLab2Profile(i32 %10, i32* null)
  %12 = call i64 @OneTrivialLab(i32 %9, i32 %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %7
  %15 = call i32 (...) @DbgThread()
  %16 = call i32 @cmsCreateLab4Profile(i32 %15, i32* null)
  %17 = call i32 (...) @DbgThread()
  %18 = call i32 @cmsCreateLab2Profile(i32 %17, i32* null)
  %19 = call i64 @OneTrivialLab(i32 %16, i32 %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = call i32 (...) @DbgThread()
  %23 = call i32 @cmsCreateLab2Profile(i32 %22, i32* null)
  %24 = call i32 (...) @DbgThread()
  %25 = call i32 @cmsCreateLab4Profile(i32 %24, i32* null)
  %26 = call i64 @OneTrivialLab(i32 %23, i32 %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %21, %14, %7, %0
  %29 = phi i1 [ false, %14 ], [ false, %7 ], [ false, %0 ], [ %27, %21 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

declare dso_local i64 @OneTrivialLab(i32, i32, i8*) #1

declare dso_local i32 @cmsCreateLab4Profile(i32, i32*) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @cmsCreateLab2Profile(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
