; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_string.c_test_StrDupA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_string.c_test_StrDupA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64 }

@StrFormatSize_results = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"Dup failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Copied string wrong\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"NULL string returned %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_StrDupA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_StrDupA() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** @StrFormatSize_results, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %2, align 8
  br label %4

4:                                                ; preds = %32, %0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i8* @StrDupA(i32* %12)
  store i8* %13, i8** %1, align 8
  %14 = load i8*, i8** %1, align 8
  %15 = icmp ne i8* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %18 = load i8*, i8** %1, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %9
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i8*, i8** %1, align 8
  %25 = call i32 @strcmp(i32* %23, i8* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i8*, i8** %1, align 8
  %31 = call i32 @LocalFree(i8* %30)
  br label %32

32:                                               ; preds = %20, %9
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 1
  store %struct.TYPE_3__* %34, %struct.TYPE_3__** %2, align 8
  br label %4

35:                                               ; preds = %4
  %36 = call i8* @StrDupA(i32* null)
  store i8* %36, i8** %1, align 8
  %37 = load i8*, i8** %1, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load i8*, i8** %1, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br label %44

44:                                               ; preds = %39, %35
  %45 = phi i1 [ true, %35 ], [ %43, %39 ]
  %46 = zext i1 %45 to i32
  %47 = load i8*, i8** %1, align 8
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  %49 = load i8*, i8** %1, align 8
  %50 = call i32 @LocalFree(i8* %49)
  ret void
}

declare dso_local i8* @StrDupA(i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @strcmp(i32*, i8*) #1

declare dso_local i32 @LocalFree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
