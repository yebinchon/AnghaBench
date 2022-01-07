; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_com_class_threadingmodel.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_com_class_threadingmodel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@parse_com_class_threadingmodel.apartW = internal constant [10 x i8] c"Apartment\00", align 1
@parse_com_class_threadingmodel.neutralW = internal constant [8 x i8] c"Neutral\00", align 1
@parse_com_class_threadingmodel.freeW = internal constant [5 x i8] c"Free\00", align 1
@parse_com_class_threadingmodel.bothW = internal constant [5 x i8] c"Both\00", align 1
@ThreadingModel_No = common dso_local global i32 0, align 4
@ThreadingModel_Apartment = common dso_local global i32 0, align 4
@ThreadingModel_Free = common dso_local global i32 0, align 4
@ThreadingModel_Both = common dso_local global i32 0, align 4
@ThreadingModel_Neutral = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @parse_com_class_threadingmodel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_com_class_threadingmodel(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @ThreadingModel_No, align 4
  store i32 %9, i32* %2, align 4
  br label %36

10:                                               ; preds = %1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = call i64 @xmlstr_cmp(%struct.TYPE_4__* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @parse_com_class_threadingmodel.apartW, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @ThreadingModel_Apartment, align 4
  store i32 %15, i32* %2, align 4
  br label %36

16:                                               ; preds = %10
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = call i64 @xmlstr_cmp(%struct.TYPE_4__* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @parse_com_class_threadingmodel.freeW, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @ThreadingModel_Free, align 4
  store i32 %21, i32* %2, align 4
  br label %36

22:                                               ; preds = %16
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = call i64 @xmlstr_cmp(%struct.TYPE_4__* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @parse_com_class_threadingmodel.bothW, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @ThreadingModel_Both, align 4
  store i32 %27, i32* %2, align 4
  br label %36

28:                                               ; preds = %22
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = call i64 @xmlstr_cmp(%struct.TYPE_4__* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @parse_com_class_threadingmodel.neutralW, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @ThreadingModel_Neutral, align 4
  store i32 %33, i32* %2, align 4
  br label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @ThreadingModel_No, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %32, %26, %20, %14, %8
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @xmlstr_cmp(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
