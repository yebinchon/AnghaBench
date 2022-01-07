; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_string.c_test_StrCpyW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_string.c_test_StrCpyW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@StrFormatSize_results = common dso_local global %struct.TYPE_3__* null, align 8
@CP_ACP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Copied string %s wrong\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_StrCpyW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_StrCpyW() #0 {
  %1 = alloca [256 x i32], align 16
  %2 = alloca [256 x i32], align 16
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @StrFormatSize_results, align 8
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %3, align 8
  br label %6

6:                                                ; preds = %31, %0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %6
  %12 = load i32, i32* @CP_ACP, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 0
  %17 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 0
  %18 = call i32 @ARRAY_SIZE(i32* %17)
  %19 = call i32 @MultiByteToWideChar(i32 %12, i32 0, i32 %15, i32 -1, i32* %16, i32 %18)
  %20 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %21 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 0
  %22 = call i32* @StrCpyW(i32* %20, i32* %21)
  store i32* %22, i32** %4, align 8
  %23 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 0
  %24 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %25 = call i32 @StrCmpW(i32* %23, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %11
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %30 = icmp eq i32* %28, %29
  br label %31

31:                                               ; preds = %27, %11
  %32 = phi i1 [ false, %11 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 1
  store %struct.TYPE_3__* %39, %struct.TYPE_3__** %3, align 8
  br label %6

40:                                               ; preds = %6
  ret void
}

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32* @StrCpyW(i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @StrCmpW(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
