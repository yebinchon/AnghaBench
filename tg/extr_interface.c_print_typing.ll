; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_print_typing.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_print_typing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_ev = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"doing nothing\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"typing\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"deleting typed message\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"recording video\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"uploading video\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"recording audio\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"uploading audio\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"uploading photo\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"uploading document\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"choosing location\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"choosing contact\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_typing(%struct.in_ev* %0, i32 %1) #0 {
  %3 = alloca %struct.in_ev*, align 8
  %4 = alloca i32, align 4
  store %struct.in_ev* %0, %struct.in_ev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %39 [
    i32 135, label %6
    i32 132, label %9
    i32 138, label %12
    i32 133, label %15
    i32 128, label %18
    i32 134, label %21
    i32 131, label %24
    i32 129, label %27
    i32 130, label %30
    i32 136, label %33
    i32 137, label %36
  ]

6:                                                ; preds = %2
  %7 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %8 = call i32 @mprintf(%struct.in_ev* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %39

9:                                                ; preds = %2
  %10 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %11 = call i32 @mprintf(%struct.in_ev* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %39

12:                                               ; preds = %2
  %13 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %14 = call i32 @mprintf(%struct.in_ev* %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %39

15:                                               ; preds = %2
  %16 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %17 = call i32 @mprintf(%struct.in_ev* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %39

18:                                               ; preds = %2
  %19 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %20 = call i32 @mprintf(%struct.in_ev* %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %39

21:                                               ; preds = %2
  %22 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %23 = call i32 @mprintf(%struct.in_ev* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %39

24:                                               ; preds = %2
  %25 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %26 = call i32 @mprintf(%struct.in_ev* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %39

27:                                               ; preds = %2
  %28 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %29 = call i32 @mprintf(%struct.in_ev* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %39

30:                                               ; preds = %2
  %31 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %32 = call i32 @mprintf(%struct.in_ev* %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %39

33:                                               ; preds = %2
  %34 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %35 = call i32 @mprintf(%struct.in_ev* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  br label %39

36:                                               ; preds = %2
  %37 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %38 = call i32 @mprintf(%struct.in_ev* %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  br label %39

39:                                               ; preds = %2, %36, %33, %30, %27, %24, %21, %18, %15, %12, %9, %6
  ret void
}

declare dso_local i32 @mprintf(%struct.in_ev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
