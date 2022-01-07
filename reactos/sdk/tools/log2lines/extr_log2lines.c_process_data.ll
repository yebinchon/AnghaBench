; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/log2lines/extr_log2lines.c_process_data.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/log2lines/extr_log2lines.c_process_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"??:0\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Offset not found: %x\0A\00", align 1
@summ = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*)* @process_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_data(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.TYPE_4__* @get_sectionheader(i8* %10)
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %9, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 2, i32* %4, align 4
  br label %43

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %16, i64 %20
  %22 = load i64, i64* %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @print_offset(i8* %21, i64 %22, i8* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %15
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @sprintf(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %35

33:                                               ; preds = %27
  %34 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i64, i64* %6, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @l2l_dbg(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @summ, i32 0, i32 0), align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @summ, i32 0, i32 0), align 4
  br label %41

41:                                               ; preds = %35, %15
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %14
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.TYPE_4__* @get_sectionheader(i8*) #1

declare dso_local i32 @print_offset(i8*, i64, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @l2l_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
