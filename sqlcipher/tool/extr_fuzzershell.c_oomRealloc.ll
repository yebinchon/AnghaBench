; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_fuzzershell.c_oomRealloc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_fuzzershell.c_oomRealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, %struct.TYPE_3__, i32, i64 }
%struct.TYPE_3__ = type { i8* (i8*, i32)* }

@g = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @oomRealloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @oomRealloc(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %32

8:                                                ; preds = %2
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 4), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 0), align 8
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %11
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 0), align 8
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 0), align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 0), align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 1), align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 (...) @oomFault()
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 1), align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 1), align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 3), align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 0), align 8
  br label %30

30:                                               ; preds = %29, %24
  store i8* null, i8** %3, align 8
  br label %37

31:                                               ; preds = %14
  br label %32

32:                                               ; preds = %31, %11, %8, %2
  %33 = load i8* (i8*, i32)*, i8* (i8*, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 2, i32 0), align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i8* %33(i8* %34, i32 %35)
  store i8* %36, i8** %3, align 8
  br label %37

37:                                               ; preds = %32, %30
  %38 = load i8*, i8** %3, align 8
  ret i8* %38
}

declare dso_local i32 @oomFault(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
