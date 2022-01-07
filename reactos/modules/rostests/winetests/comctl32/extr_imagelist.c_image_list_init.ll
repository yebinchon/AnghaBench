; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_image_list_init.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_image_list_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_data = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.test_data.0 = type { i32, i32, i32, i32, i32, i32, i8* }

@image_list_init.td = internal constant [24 x %struct.test_data] [%struct.test_data { i32 255, i32 128, i32 128, i32 1, i32 2, i32 24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0) }, %struct.test_data { i32 170, i32 128, i32 128, i32 2, i32 7, i32 24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0) }, %struct.test_data { i32 85, i32 128, i32 128, i32 3, i32 7, i32 24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0) }, %struct.test_data { i32 0, i32 128, i32 128, i32 4, i32 7, i32 24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0) }, %struct.test_data { i32 0, i32 128, i32 128, i32 5, i32 7, i32 24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0) }, %struct.test_data { i32 85, i32 128, i32 128, i32 6, i32 7, i32 24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0) }, %struct.test_data { i32 170, i32 128, i32 128, i32 7, i32 12, i32 24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0) }, %struct.test_data { i32 255, i32 128, i32 128, i32 8, i32 12, i32 24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0) }, %struct.test_data { i32 255, i32 128, i32 128, i32 9, i32 12, i32 24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0) }, %struct.test_data { i32 170, i32 128, i32 128, i32 10, i32 12, i32 24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0) }, %struct.test_data { i32 85, i32 128, i32 128, i32 11, i32 12, i32 24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0) }, %struct.test_data { i32 0, i32 128, i32 128, i32 12, i32 17, i32 24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0) }, %struct.test_data { i32 0, i32 128, i32 128, i32 13, i32 17, i32 24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0) }, %struct.test_data { i32 85, i32 128, i32 128, i32 14, i32 17, i32 24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0) }, %struct.test_data { i32 170, i32 128, i32 128, i32 15, i32 17, i32 24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0) }, %struct.test_data { i32 255, i32 128, i32 128, i32 16, i32 17, i32 24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0) }, %struct.test_data { i32 255, i32 128, i32 128, i32 17, i32 22, i32 24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0) }, %struct.test_data { i32 170, i32 128, i32 128, i32 18, i32 22, i32 24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0) }, %struct.test_data { i32 85, i32 128, i32 128, i32 19, i32 22, i32 24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0) }, %struct.test_data { i32 0, i32 128, i32 128, i32 20, i32 22, i32 24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0) }, %struct.test_data { i32 0, i32 128, i32 128, i32 21, i32 22, i32 24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0) }, %struct.test_data { i32 85, i32 128, i32 128, i32 22, i32 27, i32 24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0) }, %struct.test_data { i32 170, i32 128, i32 128, i32 23, i32 27, i32 24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0) }, %struct.test_data { i32 255, i32 128, i32 128, i32 24, i32 27, i32 24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [8 x i8] c"total 1\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"total 2\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"total 3\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"total 4\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"total 5\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"total 6\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"total 7\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"total 8\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"total 9\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"total 10\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"total 11\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"total 12\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"total 13\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"total 14\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"total 15\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"total 16\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"total 17\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"total 18\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"total 19\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"total 20\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"total 21\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"total 22\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"total 23\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"total 24\00", align 1
@ILC_COLOR24 = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [8 x i8] c"total 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @image_list_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @image_list_init(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @ILC_COLOR24, align 4
  %9 = call i32 @check_iml_data(i32 %6, i32 128, i32 128, i32 0, i32 2, i32 %7, i32 %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %57, %2
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @ARRAY_SIZE(%struct.test_data.0* bitcast ([24 x %struct.test_data]* @image_list_init.td to %struct.test_data.0*))
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %60

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [24 x %struct.test_data], [24 x %struct.test_data]* @image_list_init.td, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.test_data, %struct.test_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 16
  %21 = load i32, i32* %5, align 4
  %22 = add i32 %21, 1
  %23 = call i32 @image_list_add_bitmap(i32 %15, i32 %20, i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds [24 x %struct.test_data], [24 x %struct.test_data]* @image_list_init.td, i64 0, i64 %26
  %28 = getelementptr inbounds %struct.test_data, %struct.test_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [24 x %struct.test_data], [24 x %struct.test_data]* @image_list_init.td, i64 0, i64 %31
  %33 = getelementptr inbounds %struct.test_data, %struct.test_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [24 x %struct.test_data], [24 x %struct.test_data]* @image_list_init.td, i64 0, i64 %36
  %38 = getelementptr inbounds %struct.test_data, %struct.test_data* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds [24 x %struct.test_data], [24 x %struct.test_data]* @image_list_init.td, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.test_data, %struct.test_data* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 16
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds [24 x %struct.test_data], [24 x %struct.test_data]* @image_list_init.td, i64 0, i64 %47
  %49 = getelementptr inbounds %struct.test_data, %struct.test_data* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [24 x %struct.test_data], [24 x %struct.test_data]* @image_list_init.td, i64 0, i64 %52
  %54 = getelementptr inbounds %struct.test_data, %struct.test_data* %53, i32 0, i32 6
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @check_iml_data(i32 %24, i32 %29, i32 %34, i32 %39, i32 %44, i32 %45, i32 %50, i8* %55)
  br label %57

57:                                               ; preds = %14
  %58 = load i32, i32* %5, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %10

60:                                               ; preds = %10
  ret void
}

declare dso_local i32 @check_iml_data(i32, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.test_data.0*) #1

declare dso_local i32 @image_list_add_bitmap(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
