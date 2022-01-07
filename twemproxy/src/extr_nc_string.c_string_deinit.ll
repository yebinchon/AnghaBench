; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_string.c_string_deinit.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_string.c_string_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @string_deinit(%struct.string* %0) #0 {
  %2 = alloca %struct.string*, align 8
  store %struct.string* %0, %struct.string** %2, align 8
  %3 = load %struct.string*, %struct.string** %2, align 8
  %4 = getelementptr inbounds %struct.string, %struct.string* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.string*, %struct.string** %2, align 8
  %9 = getelementptr inbounds %struct.string, %struct.string* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.string*, %struct.string** %2, align 8
  %14 = getelementptr inbounds %struct.string, %struct.string* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.string*, %struct.string** %2, align 8
  %19 = getelementptr inbounds %struct.string, %struct.string* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br label %22

22:                                               ; preds = %17, %12
  %23 = phi i1 [ false, %12 ], [ %21, %17 ]
  br label %24

24:                                               ; preds = %22, %7
  %25 = phi i1 [ true, %7 ], [ %23, %22 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load %struct.string*, %struct.string** %2, align 8
  %29 = getelementptr inbounds %struct.string, %struct.string* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = load %struct.string*, %struct.string** %2, align 8
  %34 = getelementptr inbounds %struct.string, %struct.string* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @nc_free(i32* %35)
  %37 = load %struct.string*, %struct.string** %2, align 8
  %38 = call i32 @string_init(%struct.string* %37)
  br label %39

39:                                               ; preds = %32, %24
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @nc_free(i32*) #1

declare dso_local i32 @string_init(%struct.string*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
