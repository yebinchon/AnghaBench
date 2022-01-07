; ModuleID = '/home/carl/AnghaBench/systemd/src/tmpfiles/extr_tmpfiles.c_remove_item.c'
source_filename = "/home/carl/AnghaBench/systemd/src/tmpfiles/extr_tmpfiles.c_remove_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Running remove action for entry %c %s\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"rm -rf \22%s\22\00", align 1
@REMOVE_PHYSICAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"rm_rf(%s): %m\00", align 1
@remove_item_instance = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @remove_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_item(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_5__* %5)
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = trunc i32 %9 to i8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i8*, i8, ...) @log_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8 signext %10, i32 %13)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %47 [
    i32 128, label %18
    i32 129, label %43
    i32 130, label %43
  ]

18:                                               ; preds = %1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = trunc i32 %21 to i8
  %23 = call i32 (i8*, i8, ...) @log_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8 signext %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @REMOVE_PHYSICAL, align 4
  %28 = call i32 @rm_rf(i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %18
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @log_error_errno(i32 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  store i32 %41, i32* %2, align 4
  br label %48

42:                                               ; preds = %31, %18
  store i32 0, i32* %2, align 4
  br label %48

43:                                               ; preds = %1, %1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = load i32, i32* @remove_item_instance, align 4
  %46 = call i32 @glob_item(%struct.TYPE_5__* %44, i32 %45)
  store i32 %46, i32* %2, align 4
  br label %48

47:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %43, %42, %36
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i32 @log_debug(i8*, i8 signext, ...) #1

declare dso_local i32 @rm_rf(i32, i32) #1

declare dso_local i32 @log_error_errno(i32, i8*, i32) #1

declare dso_local i32 @glob_item(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
