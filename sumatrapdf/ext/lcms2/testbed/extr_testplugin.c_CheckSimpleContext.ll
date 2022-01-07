; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testplugin.c_CheckSimpleContext.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testplugin.c_CheckSimpleContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"Creation of user data failed\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Modification of user data failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheckSimpleContext() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 1, i32* %2, align 4
  store i32 32, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %8 = call i32 @WatchDogContext(i32* %2)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @cmsDeleteContext(i32 %9)
  %11 = call i32 @WatchDogContext(i32* %2)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @DupContext(i32 %12, i32* null)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @DupContext(i32 %14, i32* null)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @cmsGetContextUserData(i32 %16)
  %18 = inttoptr i64 %17 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 1
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @cmsDeleteContext(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @cmsDeleteContext(i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @cmsDeleteContext(i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %0
  %31 = call i32 @Fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %58

32:                                               ; preds = %0
  %33 = call i32 @cmsCreateContext(i32* null, i32* %2)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @DebugMemDontCheckThis(i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @DupContext(i32 %36, i32* null)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @DupContext(i32 %38, i32* %3)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @cmsGetContextUserData(i32 %40)
  %42 = inttoptr i64 %41 to i32*
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 32
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @cmsDeleteContext(i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @cmsDeleteContext(i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @cmsDeleteContext(i32 %50)
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %32
  %55 = call i32 @Fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %58

56:                                               ; preds = %32
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %1, align 4
  br label %58

58:                                               ; preds = %56, %54, %30
  %59 = load i32, i32* %1, align 4
  ret i32 %59
}

declare dso_local i32 @WatchDogContext(i32*) #1

declare dso_local i32 @cmsDeleteContext(i32) #1

declare dso_local i32 @DupContext(i32, i32*) #1

declare dso_local i64 @cmsGetContextUserData(i32) #1

declare dso_local i32 @Fail(i8*) #1

declare dso_local i32 @cmsCreateContext(i32*, i32*) #1

declare dso_local i32 @DebugMemDontCheckThis(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
