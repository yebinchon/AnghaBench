; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_dump_config_from_label.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_dump_config_from_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@dump_opt = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"    labels = \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i64, i32)* @dump_config_from_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_config_from_label(%struct.TYPE_4__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** @dump_opt, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 113
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %47

12:                                               ; preds = %3
  %13 = load i32*, i32** @dump_opt, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 108
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 3
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @first_label(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %47

25:                                               ; preds = %17, %12
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @print_label_header(%struct.TYPE_4__* %26, i32 %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dump_nvlist(i32 %31, i32 4)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @print_label_numbers(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** @dump_opt, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 108
  %39 = load i32, i32* %38, align 4
  %40 = icmp sge i32 %39, 2
  br i1 %40, label %41, label %47

41:                                               ; preds = %25
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @dump_nvlist_stats(i32 %44, i64 %45)
  br label %47

47:                                               ; preds = %11, %24, %41, %25
  ret void
}

declare dso_local i32 @first_label(i32) #1

declare dso_local i32 @print_label_header(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @dump_nvlist(i32, i32) #1

declare dso_local i32 @print_label_numbers(i8*, i32) #1

declare dso_local i32 @dump_nvlist_stats(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
