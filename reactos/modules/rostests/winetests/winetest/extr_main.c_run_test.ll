; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winetest/extr_main.c_run_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winetest/extr_main.c_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wine_test = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%s:%s start %s %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"%s:%s done (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wine_test*, i8*, i8*)* @run_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_test(%struct.wine_test* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.wine_test*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.wine_test* %0, %struct.wine_test** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.wine_test*, %struct.wine_test** %4, align 8
  %12 = getelementptr inbounds %struct.wine_test, %struct.wine_test* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i8* @get_test_source_file(i32 %13, i8* %14)
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i8* @get_file_rev(i8* %16)
  store i8* %17, i8** %9, align 8
  %18 = load %struct.wine_test*, %struct.wine_test** %4, align 8
  %19 = getelementptr inbounds %struct.wine_test, %struct.wine_test* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = call i8* @strmake(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %20, i8* %21)
  store i8* %22, i8** %10, align 8
  %23 = load %struct.wine_test*, %struct.wine_test** %4, align 8
  %24 = getelementptr inbounds %struct.wine_test, %struct.wine_test* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 (i8*, i32, i8*, ...) @xprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %25, i8* %26, i8* %27, i8* %28)
  %30 = load i8*, i8** %10, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @run_ex(i8* %30, i32* null, i8* %31, i32 120000)
  store i32 %32, i32* %7, align 4
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 @free(i8* %33)
  %35 = load %struct.wine_test*, %struct.wine_test** %4, align 8
  %36 = getelementptr inbounds %struct.wine_test, %struct.wine_test* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 (i8*, i32, i8*, ...) @xprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %37, i8* %38, i32 %39)
  ret void
}

declare dso_local i8* @get_test_source_file(i32, i8*) #1

declare dso_local i8* @get_file_rev(i8*) #1

declare dso_local i8* @strmake(i32*, i8*, i32, i8*) #1

declare dso_local i32 @xprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @run_ex(i8*, i32*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
