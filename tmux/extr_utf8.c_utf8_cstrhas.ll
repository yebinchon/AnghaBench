; ModuleID = '/home/carl/AnghaBench/tmux/extr_utf8.c_utf8_cstrhas.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_utf8.c_utf8_cstrhas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utf8_data = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utf8_cstrhas(i8* %0, %struct.utf8_data* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.utf8_data*, align 8
  %5 = alloca %struct.utf8_data*, align 8
  %6 = alloca %struct.utf8_data*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.utf8_data* %1, %struct.utf8_data** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = call %struct.utf8_data* @utf8_fromcstr(i8* %8)
  store %struct.utf8_data* %9, %struct.utf8_data** %5, align 8
  %10 = load %struct.utf8_data*, %struct.utf8_data** %5, align 8
  store %struct.utf8_data* %10, %struct.utf8_data** %6, align 8
  br label %11

11:                                               ; preds = %39, %2
  %12 = load %struct.utf8_data*, %struct.utf8_data** %6, align 8
  %13 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %11
  %17 = load %struct.utf8_data*, %struct.utf8_data** %6, align 8
  %18 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.utf8_data*, %struct.utf8_data** %4, align 8
  %21 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %39

25:                                               ; preds = %16
  %26 = load %struct.utf8_data*, %struct.utf8_data** %6, align 8
  %27 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.utf8_data*, %struct.utf8_data** %4, align 8
  %30 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.utf8_data*, %struct.utf8_data** %6, align 8
  %33 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @memcmp(i32 %28, i32 %31, i64 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  store i32 1, i32* %7, align 4
  br label %42

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38, %24
  %40 = load %struct.utf8_data*, %struct.utf8_data** %6, align 8
  %41 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %40, i32 1
  store %struct.utf8_data* %41, %struct.utf8_data** %6, align 8
  br label %11

42:                                               ; preds = %37, %11
  %43 = load %struct.utf8_data*, %struct.utf8_data** %5, align 8
  %44 = call i32 @free(%struct.utf8_data* %43)
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local %struct.utf8_data* @utf8_fromcstr(i8*) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i32 @free(%struct.utf8_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
