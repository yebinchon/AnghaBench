; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_uri.c_test_CreateUri_InvalidFlags.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_uri.c_test_CreateUri_InvalidFlags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@invalid_flag_tests = common dso_local global %struct.TYPE_3__* null, align 8
@http_urlW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Error: CreateUri returned 0x%08x, expected 0x%08x, flags=0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Error: expected the IUri to be NULL, but it was %p instead\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CreateUri_InvalidFlags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CreateUri_InvalidFlags() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  store i64 0, i64* %1, align 8
  br label %4

4:                                                ; preds = %43, %0
  %5 = load i64, i64* %1, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @invalid_flag_tests, align 8
  %7 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %6)
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %46

9:                                                ; preds = %4
  store i32* inttoptr (i64 3735928559 to i32*), i32** %3, align 8
  %10 = load i32, i32* @http_urlW, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @invalid_flag_tests, align 8
  %12 = load i64, i64* %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @pCreateUri(i32 %10, i32 %15, i32 0, i32** %3)
  store i64 %16, i64* %2, align 8
  %17 = load i64, i64* %2, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @invalid_flag_tests, align 8
  %19 = load i64, i64* %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %17, %22
  %24 = zext i1 %23 to i32
  %25 = load i64, i64* %2, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @invalid_flag_tests, align 8
  %27 = load i64, i64* %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @invalid_flag_tests, align 8
  %32 = load i64, i64* %1, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i32, i8*, i64, ...) @ok(i32 %24, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %30, i32 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = icmp eq i32* %37, null
  %39 = zext i1 %38 to i32
  %40 = load i32*, i32** %3, align 8
  %41 = ptrtoint i32* %40 to i64
  %42 = call i32 (i32, i8*, i64, ...) @ok(i32 %39, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  br label %43

43:                                               ; preds = %9
  %44 = load i64, i64* %1, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %1, align 8
  br label %4

46:                                               ; preds = %4
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @pCreateUri(i32, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
