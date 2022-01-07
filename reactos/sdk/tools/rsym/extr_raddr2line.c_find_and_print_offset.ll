; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_raddr2line.c_find_and_print_offset.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_raddr2line.c_find_and_print_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [12 x i8] c"%s:%u (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_and_print_offset(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %6, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %14, i64 %18
  %20 = bitcast i8* %19 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %7, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %21, i64 %25
  store i8* %26, i8** %8, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = udiv i64 %30, 4
  store i64 %31, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %32

32:                                               ; preds = %69, %2
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %72

36:                                               ; preds = %32
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = load i64, i64* %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %44, label %68

44:                                               ; preds = %36
  %45 = load i64, i64* %10, align 8
  %46 = add i64 %45, -1
  store i64 %46, i64* %10, align 8
  %47 = icmp ne i64 %45, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %73

49:                                               ; preds = %44
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %51
  store %struct.TYPE_4__* %52, %struct.TYPE_4__** %11, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i8*, i8** %8, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %57, i32 %61, i8* %66)
  store i32 0, i32* %3, align 4
  br label %73

68:                                               ; preds = %36
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %10, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %10, align 8
  br label %32

72:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %49, %48
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @printf(i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
