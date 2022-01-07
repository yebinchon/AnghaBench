; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_classes.c_load_all_verbs.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_classes.c_load_all_verbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@load_all_verbs.query = internal constant [21 x i8] c"SELECT * FROM `Verb`\00", align 16
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@iterate_load_verb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*)* @load_all_verbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @load_all_verbs(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @MSI_DatabaseOpenViewW(i32 %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @load_all_verbs.query, i64 0, i64 0), %struct.TYPE_7__** %4)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @ERROR_SUCCESS, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %14, i64* %2, align 8
  br label %24

15:                                               ; preds = %1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = load i32, i32* @iterate_load_verb, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = call i64 @MSI_IterateRecords(%struct.TYPE_7__* %16, i32* null, i32 %17, %struct.TYPE_8__* %18)
  store i64 %19, i64* %5, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = call i32 @msiobj_release(i32* %21)
  %23 = load i64, i64* %5, align 8
  store i64 %23, i64* %2, align 8
  br label %24

24:                                               ; preds = %15, %13
  %25 = load i64, i64* %2, align 8
  ret i64 %25
}

declare dso_local i64 @MSI_DatabaseOpenViewW(i32, i8*, %struct.TYPE_7__**) #1

declare dso_local i64 @MSI_IterateRecords(%struct.TYPE_7__*, i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
