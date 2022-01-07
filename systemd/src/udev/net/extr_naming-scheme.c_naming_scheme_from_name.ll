; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/net/extr_naming-scheme.c_naming_scheme_from_name.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/net/extr_naming-scheme.c_naming_scheme_from_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"latest\00", align 1
@naming_schemes = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i8*)* @naming_scheme_from_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @naming_scheme_from_name(i8* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i64 @streq(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @naming_schemes, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @naming_schemes, align 8
  %11 = call i64 @ELEMENTSOF(%struct.TYPE_5__* %10)
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i64 -1
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %2, align 8
  br label %38

14:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %15

15:                                               ; preds = %34, %14
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @naming_schemes, align 8
  %18 = call i64 @ELEMENTSOF(%struct.TYPE_5__* %17)
  %19 = icmp ult i64 %16, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %15
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @naming_schemes, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = call i64 @streq(i8* %25, i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @naming_schemes, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %31
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %2, align 8
  br label %38

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %4, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %4, align 8
  br label %15

37:                                               ; preds = %15
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %38

38:                                               ; preds = %37, %29, %8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %39
}

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i64 @ELEMENTSOF(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
