; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/direct/extr_getdfree.c__getdiskfree.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/direct/extr_getdfree.c__getdiskfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._diskfree_t = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_getdiskfree(i32 %0, %struct._diskfree_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct._diskfree_t*, align 8
  %6 = alloca [10 x i8], align 1
  store i32 %0, i32* %4, align 4
  store %struct._diskfree_t* %1, %struct._diskfree_t** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, 64
  %9 = call signext i8 @toupper(i32 %8)
  %10 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  store i8 %9, i8* %10, align 1
  %11 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 1
  store i8 58, i8* %11, align 1
  %12 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 2
  store i8 92, i8* %12, align 1
  %13 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 3
  store i8 0, i8* %13, align 1
  %14 = load %struct._diskfree_t*, %struct._diskfree_t** %5, align 8
  %15 = icmp eq %struct._diskfree_t* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

17:                                               ; preds = %2
  %18 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %19 = load %struct._diskfree_t*, %struct._diskfree_t** %5, align 8
  %20 = getelementptr inbounds %struct._diskfree_t, %struct._diskfree_t* %19, i32 0, i32 3
  %21 = ptrtoint i32* %20 to i32
  %22 = load %struct._diskfree_t*, %struct._diskfree_t** %5, align 8
  %23 = getelementptr inbounds %struct._diskfree_t, %struct._diskfree_t* %22, i32 0, i32 2
  %24 = ptrtoint i32* %23 to i32
  %25 = load %struct._diskfree_t*, %struct._diskfree_t** %5, align 8
  %26 = getelementptr inbounds %struct._diskfree_t, %struct._diskfree_t* %25, i32 0, i32 0
  %27 = ptrtoint i32* %26 to i32
  %28 = load %struct._diskfree_t*, %struct._diskfree_t** %5, align 8
  %29 = getelementptr inbounds %struct._diskfree_t, %struct._diskfree_t* %28, i32 0, i32 1
  %30 = ptrtoint i32* %29 to i32
  %31 = call i32 @GetDiskFreeSpaceA(i8* %18, i32 %21, i32 %24, i32 %27, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %38

34:                                               ; preds = %17
  %35 = load %struct._diskfree_t*, %struct._diskfree_t** %5, align 8
  %36 = getelementptr inbounds %struct._diskfree_t, %struct._diskfree_t* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %34, %33, %16
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local signext i8 @toupper(i32) #1

declare dso_local i32 @GetDiskFreeSpaceA(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
