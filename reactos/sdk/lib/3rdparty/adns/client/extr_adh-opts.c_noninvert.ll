; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adh-opts.c_noninvert.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adh-opts.c_noninvert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optioninfo = type { i8*, i8* }

@.str = private unnamed_addr constant [38 x i8] c"option %s%s%s%s%s may not be inverted\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" / \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.optioninfo*)* @noninvert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @noninvert(%struct.optioninfo* %0) #0 {
  %2 = alloca %struct.optioninfo*, align 8
  store %struct.optioninfo* %0, %struct.optioninfo** %2, align 8
  %3 = load %struct.optioninfo*, %struct.optioninfo** %2, align 8
  %4 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  %7 = zext i1 %6 to i64
  %8 = select i1 %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %9 = load %struct.optioninfo*, %struct.optioninfo** %2, align 8
  %10 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.optioninfo*, %struct.optioninfo** %2, align 8
  %15 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi i8* [ %16, %13 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %17 ]
  %20 = load %struct.optioninfo*, %struct.optioninfo** %2, align 8
  %21 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.optioninfo*, %struct.optioninfo** %2, align 8
  %26 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br label %29

29:                                               ; preds = %24, %18
  %30 = phi i1 [ false, %18 ], [ %28, %24 ]
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %33 = load %struct.optioninfo*, %struct.optioninfo** %2, align 8
  %34 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %39 = load %struct.optioninfo*, %struct.optioninfo** %2, align 8
  %40 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %29
  %44 = load %struct.optioninfo*, %struct.optioninfo** %2, align 8
  %45 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  br label %48

47:                                               ; preds = %29
  br label %48

48:                                               ; preds = %47, %43
  %49 = phi i8* [ %46, %43 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %47 ]
  %50 = call i32 @usageerr(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %8, i8* %19, i8* %32, i8* %38, i8* %49)
  ret void
}

declare dso_local i32 @usageerr(i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
