; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_file.c_file_cd.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_file.c_file_cd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, i32, %struct.TYPE_4__* }

@MSDOS_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__** @file_cd(%struct.TYPE_4__** %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__**, align 8
  %4 = alloca %struct.TYPE_4__**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__**, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %8 = icmp ne %struct.TYPE_4__** %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %2
  store %struct.TYPE_4__** null, %struct.TYPE_4__*** %3, align 8
  br label %45

14:                                               ; preds = %9
  %15 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  store %struct.TYPE_4__** %15, %struct.TYPE_4__*** %6, align 8
  br label %16

16:                                               ; preds = %40, %14
  %17 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %44

20:                                               ; preds = %16
  %21 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* @MSDOS_NAME, align 4
  %27 = call i32 @strncmp(i32 %24, i8* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %20
  %30 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = icmp ne %struct.TYPE_4__* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store %struct.TYPE_4__** %38, %struct.TYPE_4__*** %3, align 8
  br label %45

39:                                               ; preds = %29, %20
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store %struct.TYPE_4__** %43, %struct.TYPE_4__*** %6, align 8
  br label %16

44:                                               ; preds = %16
  store %struct.TYPE_4__** null, %struct.TYPE_4__*** %3, align 8
  br label %45

45:                                               ; preds = %44, %35, %13
  %46 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  ret %struct.TYPE_4__** %46
}

declare dso_local i32 @strncmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
