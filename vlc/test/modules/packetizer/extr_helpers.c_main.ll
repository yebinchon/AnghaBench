; ModuleID = '/home/carl/AnghaBench/vlc/test/modules/packetizer/extr_helpers.c_main.c'
source_filename = "/home/carl/AnghaBench/vlc/test/modules/packetizer/extr_helpers.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.results_s = type { i32, i32 }

@__const.main.test1_annexbdata = private unnamed_addr constant [33 x i32] [i32 0, i32 0, i32 0, i32 1, i32 85, i32 85, i32 85, i32 85, i32 85, i32 0, i32 0, i32 1, i32 34, i32 34, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 17, i32 0, i32 0, i32 1], align 16
@__const.main.test1_results = private unnamed_addr constant [7 x %struct.results_s] [%struct.results_s { i32 1, i32 8 }, %struct.results_s { i32 9, i32 5 }, %struct.results_s { i32 14, i32 5 }, %struct.results_s { i32 19, i32 3 }, %struct.results_s { i32 22, i32 4 }, %struct.results_s { i32 26, i32 4 }, %struct.results_s { i32 30, i32 3 }], align 16
@.str = private unnamed_addr constant [27 x i8] c"* Running tests on set 1:\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"* Running tests on extended set 1:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [33 x i32], align 16
  %3 = alloca [7 x %struct.results_s], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %7 = bitcast [33 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([33 x i32]* @__const.main.test1_annexbdata to i8*), i64 132, i1 false)
  %8 = bitcast [7 x %struct.results_s]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([7 x %struct.results_s]* @__const.main.test1_results to i8*), i64 56, i1 false)
  %9 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %10 = getelementptr inbounds [33 x i32], [33 x i32]* %2, i64 0, i64 0
  %11 = getelementptr inbounds [33 x i32], [33 x i32]* %2, i64 0, i64 0
  %12 = getelementptr inbounds i32, i32* %11, i64 132
  %13 = getelementptr inbounds [7 x %struct.results_s], [7 x %struct.results_s]* %3, i64 0, i64 0
  %14 = getelementptr inbounds [7 x %struct.results_s], [7 x %struct.results_s]* %3, i64 0, i64 0
  %15 = call i32 @ARRAY_SIZE(%struct.results_s* %14)
  %16 = call i32 @run_annexb_sets(i32* %10, i32* %12, %struct.results_s* %13, i32 %15, i64 0)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %0
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %1, align 4
  br label %48

21:                                               ; preds = %0
  %22 = call i32* @malloc(i32 4096)
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %47

25:                                               ; preds = %21
  store i64 3853, i64* %6, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @memset(i32* %26, i32 66, i32 4096)
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3853
  %30 = getelementptr inbounds [33 x i32], [33 x i32]* %2, i64 0, i64 0
  %31 = call i32 @memcpy(i32* %29, i32* %30, i32 132)
  %32 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4096
  %36 = getelementptr inbounds [7 x %struct.results_s], [7 x %struct.results_s]* %3, i64 0, i64 0
  %37 = getelementptr inbounds [7 x %struct.results_s], [7 x %struct.results_s]* %3, i64 0, i64 0
  %38 = call i32 @ARRAY_SIZE(%struct.results_s* %37)
  %39 = call i32 @run_annexb_sets(i32* %33, i32* %35, %struct.results_s* %36, i32 %38, i64 3853)
  store i32 %39, i32* %4, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @free(i32* %40)
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %25
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %1, align 4
  br label %48

46:                                               ; preds = %25
  br label %47

47:                                               ; preds = %46, %21
  store i32 0, i32* %1, align 4
  br label %48

48:                                               ; preds = %47, %44, %19
  %49 = load i32, i32* %1, align 4
  ret i32 %49
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @run_annexb_sets(i32*, i32*, %struct.results_s*, i32, i64) #2

declare dso_local i32 @ARRAY_SIZE(%struct.results_s*) #2

declare dso_local i32* @malloc(i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
