; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_tree.c_dump_tree_contents.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_tree.c_dump_tree_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_tree_contents(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [64 x i8], align 16
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  store i8 47, i8* %12, align 16
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %25, 1
  %27 = call i32 @dump_node_contents(%struct.TYPE_7__* %18, i64 %21, i8* %22, i32 1, i64 %26)
  br label %28

28:                                               ; preds = %17, %2
  %29 = load i32, i32* @stdout, align 4
  %30 = call i32 @fflush(i32 %29)
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @dump_node_contents(%struct.TYPE_7__*, i64, i8*, i32, i64) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
